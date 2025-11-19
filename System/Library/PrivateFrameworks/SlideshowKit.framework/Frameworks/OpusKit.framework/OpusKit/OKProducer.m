@interface OKProducer
- (BOOL)author:(BOOL)a3 progressBlock:(id)a4 requiresProducer:(BOOL *)a5 error:(id *)a6;
- (BOOL)liveAuthorInitialBootstrap:(id)a3 error:(id *)a4;
- (BOOL)migratePresentation:(id)a3 error:(id *)a4;
- (BOOL)needsLiveAuthoring;
- (BOOL)prepareLiveAuthoringIfNeeded:(id)a3 error:(id *)a4;
- (BOOL)resetLiveAuthoring;
- (OKProducer)init;
- (OKProducer)initWithPresentation:(id)a3 andPlugin:(id)a4;
- (double)_continueLiveAuthoringDelay;
- (float)currentLiveAuthoringProgress;
- (float)liveAuthoringProgressForMediaItem:(id)a3;
- (id)liveAuthorNextChunk:(id)a3 error:(id *)a4;
- (id)liveAuthoringOperationQueue;
- (unint64_t)totalNumberOfLiveAuthoringItems;
- (void)_continueLiveAuthoring;
- (void)cancelLiveAuthoring:(BOOL)a3;
- (void)cleanupPresentation:(id)a3;
- (void)dealloc;
- (void)didChangeTextForWidget:(id)a3 toSettings:(id)a4;
- (void)didPanMediaForWidget:(id)a3 toState:(id)a4;
- (void)startLiveAuthoringIfNeeded;
- (void)updateSynopsisGuideline;
@end

@implementation OKProducer

- (OKProducer)init
{
  v5.receiver = self;
  v5.super_class = OKProducer;
  v2 = [(OKProducer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_delegate, 0);
    v3->_presentation = 0;
    v3->_liveAuthoringOperationQueue = 0;
    v3->_plugin = 0;
    v3->_liveAuthoringInProgress = 0;
  }

  return v3;
}

- (OKProducer)initWithPresentation:(id)a3 andPlugin:(id)a4
{
  v6 = [(OKProducer *)self init];
  v7 = v6;
  if (v6)
  {
    [(OKProducer *)v6 setPresentation:a3];
    [(OKProducer *)v7 setPlugin:a4];
    [a4 loadRetain];
  }

  return v7;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  [(OKProducerPlugin *)self->_plugin unloadRelease];
  plugin = self->_plugin;
  if (plugin)
  {

    self->_plugin = 0;
  }

  presentation = self->_presentation;
  if (presentation)
  {

    self->_presentation = 0;
  }

  [(OKProducer *)self cancelLiveAuthoring:1];
  liveAuthoringOperationQueue = self->_liveAuthoringOperationQueue;
  if (liveAuthoringOperationQueue)
  {

    self->_liveAuthoringOperationQueue = 0;
  }

  v6.receiver = self;
  v6.super_class = OKProducer;
  [(OKProducer *)&v6 dealloc];
}

- (BOOL)migratePresentation:(id)a3 error:(id *)a4
{
  [(OKPresentationInfo *)[(OKPresentation *)self->_presentation info:a3] producerVersion];
  [(OKProducerBundle *)self->_plugin version];
  v7 = 0;
  (*(a3 + 2))(a3, &v7, 1.0);
  return 1;
}

- (void)cleanupPresentation:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  [(OKPresentation *)[(OKProducer *)self presentation] removeAllFeeders];
  [(OKPresentation *)[(OKProducer *)self presentation] removeAllTemplates];
  [(OKPresentation *)[(OKProducer *)self presentation] removeAllNavigators];
  [(OKPresentation *)[(OKProducer *)self presentation] removeAllPages];
  [(OKPresentation *)[(OKProducer *)self presentation] removeAllCouches];
  [(OKPresentation *)[(OKProducer *)self presentation] removeMainScript];
  v5 = [(OKPresentation *)[(OKProducer *)self presentation] guidelineAuthoringProducerMediaItems];
  v6 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 addObject:{objc_msgSend(v11, "uniqueURL")}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v16 = 0;
  if ([v6 count])
  {
    if ([(OKPresentation *)[(OKProducer *)self presentation] document])
    {
      v12 = [(OKPresentation *)[(OKProducer *)self presentation] document];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __34__OKProducer_cleanupPresentation___block_invoke;
      v15[3] = &unk_279C8FDA0;
      v15[4] = a3;
      if (![(OKDocument *)v12 deleteImportedResourceURLs:v6 progressBlock:v15 error:&v16]&& *MEMORY[0x277D62808] >= 4)
      {
        v13 = MEMORY[0x277D627B8];
        v14 = [(UIDocument *)[(OKPresentation *)[(OKProducer *)self presentation] document] fileURL];
        [v13 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducer.m" line:203 andFormat:@"Failed to cleanup presentation %@: %@", v14, objc_msgSend(v16, "localizedDescription")];
      }
    }
  }
}

- (BOOL)author:(BOOL)a3 progressBlock:(id)a4 requiresProducer:(BOOL *)a5 error:(id *)a6
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v10 = MEMORY[0x277D627B8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducer.m" line:210 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v12, NSStringFromSelector(a2)];
  }

  *a5 = !a3;
  return !a6 || *a6 == 0;
}

- (void)updateSynopsisGuideline
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducer.m" line:219 andFormat:@"updateSynopsisGuideline must be implemented by subclass"];
  }
}

- (id)liveAuthoringOperationQueue
{
  objc_sync_enter(self);
  liveAuthoringOperationQueue = self->_liveAuthoringOperationQueue;
  if (!liveAuthoringOperationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    self->_liveAuthoringOperationQueue = v4;
    [(NSOperationQueue *)v4 setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)self->_liveAuthoringOperationQueue setQualityOfService:17];
    v5 = dispatch_queue_create("liveAuthoringOperationQueue", 0);
    [(NSOperationQueue *)self->_liveAuthoringOperationQueue setUnderlyingQueue:v5];
    dispatch_release(v5);
    liveAuthoringOperationQueue = self->_liveAuthoringOperationQueue;
  }

  objc_sync_exit(self);
  return liveAuthoringOperationQueue;
}

- (BOOL)prepareLiveAuthoringIfNeeded:(id)a3 error:(id *)a4
{
  objc_sync_enter(self);
  if (!self->_liveAuthoringInProgress && -[OKProducer supportsLiveAuthoring](self, "supportsLiveAuthoring") && -[OKProducer needsLiveAuthoring](self, "needsLiveAuthoring") && ((v15 = 0, [objc_msgSend(MEMORY[0x277CBEAA8] "date")], self->_startLiveAuthorTime = v7, v14[0] = MEMORY[0x277D85DD0], v14[1] = 3221225472, v14[2] = __49__OKProducer_prepareLiveAuthoringIfNeeded_error___block_invoke, v14[3] = &unk_279C8FDA0, v14[4] = a3, v8 = -[OKProducer liveAuthorNextChunk:error:](self, "liveAuthorNextChunk:error:", v14, &v15), (v9 = v15) == 0) ? (v10 = v8 == 0) : (v10 = 1), v10 ? (v11 = 0) : (v11 = 1), a4 && (v11 & 1) == 0))
  {
    if (!v15)
    {
      v9 = [OKError errorForCode:-1];
    }

    v12 = 0;
    *a4 = v9;
  }

  else
  {
    v12 = 1;
  }

  objc_sync_exit(self);
  return v12;
}

uint64_t __49__OKProducer_prepareLiveAuthoringIfNeeded_error___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (double)_continueLiveAuthoringDelay
{
  [(OKProducer *)self currentLiveAuthoringProgress];
  v4 = v3;
  v5 = [(OKProducer *)self totalNumberOfLiveAuthoringItems];
  if (v4 == 0.0 || v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0.0;
  }

  v7 = v5;
  if ((v4 * v5) <= 512.0)
  {
    return 0.0;
  }

  if (![(OKProducer *)self delegate])
  {
    return 0.0;
  }

  [(OKProducer *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0.0;
  }

  v8 = [-[OKProducerDelegate visibleMediaItemsForProducer:](-[OKProducer delegate](self "delegate")];
  if (!v8)
  {
    return 0.0;
  }

  [(OKProducer *)self liveAuthoringProgressForMediaItem:v8];
  v10 = v4 - v9;
  if ((v10 * v7) <= 512.0)
  {
    return 0.0;
  }

  v12 = (((v10 * v7) + -512.0) * ((v10 * v7) + -512.0));

  return log10(v12);
}

- (void)_continueLiveAuthoring
{
  objc_sync_enter(self);
  liveAuthoringInProgress = self->_liveAuthoringInProgress;
  objc_sync_exit(self);
  if (liveAuthoringInProgress)
  {
    v4 = [(OKProducer *)self liveAuthoringOperationQueue];
    v5 = [MEMORY[0x277D62800] weakReferenceHolderWithObject:v4];
    v6 = objc_alloc_init(MEMORY[0x277CCA8C8]);
    v7 = [MEMORY[0x277D62800] weakReferenceHolderWithObject:v6];
    v8 = [MEMORY[0x277D62800] weakReferenceHolderWithObject:self];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__OKProducer__continueLiveAuthoring__block_invoke;
    v9[3] = &unk_279C900A0;
    v9[4] = v8;
    v9[5] = v7;
    v9[6] = self;
    v9[7] = v5;
    [v6 addExecutionBlock:v9];
    [v6 setQualityOfService:{objc_msgSend(v4, "qualityOfService")}];
    [v4 addOperation:v6];
    if (v6)
    {
    }
  }
}

void __36__OKProducer__continueLiveAuthoring__block_invoke(id *a1)
{
  v2 = [a1[4] object];
  v3 = [a1[5] object];
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = v3, ![v2 needsLiveAuthoring]))
  {
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    if (*MEMORY[0x277D62808] >= 5)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:5 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducer.m" line:398 andFormat:@"[PRODUCER][LIVE UPDATE][Generated in %f secondes for %d medias]", v9 - *(a1[6] + 6), objc_msgSend(objc_msgSend(objc_msgSend(v2, "presentation"), "rootMediaFeeder"), "numberOfMediaItems")];
    }
  }

  else
  {
    v17 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __36__OKProducer__continueLiveAuthoring__block_invoke_2;
    v16[3] = &unk_279C8F8E0;
    v16[4] = v5;
    v6 = [v2 liveAuthorNextChunk:v16 error:&v17];
    if (!v17)
    {
      v7 = v6;
      if (v6)
      {
        if ([v2 delegate])
        {
          [v2 delegate];
          if (objc_opt_respondsToSelector())
          {
            [objc_msgSend(v2 "delegate")];
          }
        }
      }
    }

    [a1[6] _continueLiveAuthoringDelay];
    if (v8 == 0.0)
    {
      [v2 _continueLiveAuthoring];
    }

    else
    {
      v10 = v8;
      v11 = [a1[7] object];
      if (v11)
      {
        v12 = v11;
        v13 = dispatch_time(0, (v10 * 1000000000.0));
        v14 = [v12 underlyingQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __36__OKProducer__continueLiveAuthoring__block_invoke_3;
        block[3] = &unk_279C90078;
        block[4] = v5;
        block[5] = v2;
        dispatch_after(v13, v14, block);
      }
    }
  }
}

uint64_t __36__OKProducer__continueLiveAuthoring__block_invoke_2(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) isCancelled];
  *a2 = result;
  return result;
}

uint64_t __36__OKProducer__continueLiveAuthoring__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);

    return [v3 _continueLiveAuthoring];
  }

  return result;
}

- (void)startLiveAuthoringIfNeeded
{
  objc_sync_enter(self);
  if (!self->_liveAuthoringInProgress && [(OKProducer *)self supportsLiveAuthoring]&& [(OKProducer *)self needsLiveAuthoring])
  {
    self->_liveAuthoringInProgress = 1;
    [(OKProducer *)self _continueLiveAuthoring];
  }

  objc_sync_exit(self);
}

- (void)cancelLiveAuthoring:(BOOL)a3
{
  v3 = a3;
  objc_sync_enter(self);
  if (self->_liveAuthoringInProgress)
  {
    [(NSOperationQueue *)self->_liveAuthoringOperationQueue cancelAllOperations];
    if (v3)
    {
      [(NSOperationQueue *)self->_liveAuthoringOperationQueue waitUntilAllOperationsAreFinished];
    }

    self->_liveAuthoringInProgress = 0;
  }

  objc_sync_exit(self);
}

- (BOOL)needsLiveAuthoring
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v3 = MEMORY[0x277D627B8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [v3 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducer.m" line:452 andFormat:@"%@ %@ MUST be subclassed", v5, NSStringFromSelector(a2)];
  }

  return 0;
}

- (BOOL)resetLiveAuthoring
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v3 = MEMORY[0x277D627B8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [v3 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducer.m" line:459 andFormat:@"%@ %@ MUST be subclassed", v5, NSStringFromSelector(a2)];
  }

  return 0;
}

- (BOOL)liveAuthorInitialBootstrap:(id)a3 error:(id *)a4
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v6 = MEMORY[0x277D627B8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducer.m" line:466 andFormat:@"%@ %@ MUST be subclassed", v8, NSStringFromSelector(a2)];
  }

  if (a4)
  {
    *a4 = [OKError errorForCode:-1];
  }

  return 0;
}

- (id)liveAuthorNextChunk:(id)a3 error:(id *)a4
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v6 = MEMORY[0x277D627B8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducer.m" line:478 andFormat:@"%@ %@ MUST be subclassed", v8, NSStringFromSelector(a2)];
  }

  if (a4)
  {
    *a4 = [OKError errorForCode:-1];
  }

  return 0;
}

- (unint64_t)totalNumberOfLiveAuthoringItems
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v3 = MEMORY[0x277D627B8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [v3 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducer.m" line:490 andFormat:@"%@ %@ MUST be subclassed", v5, NSStringFromSelector(a2)];
  }

  return 0;
}

- (float)currentLiveAuthoringProgress
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v3 = MEMORY[0x277D627B8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [v3 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducer.m" line:497 andFormat:@"%@ %@ MUST be subclassed", v5, NSStringFromSelector(a2)];
  }

  return 0.0;
}

- (float)liveAuthoringProgressForMediaItem:(id)a3
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v4 = MEMORY[0x277D627B8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [v4 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Producer/OKProducer.m" line:504 andFormat:@"%@ %@ MUST be subclassed", v6, NSStringFromSelector(a2)];
  }

  return 0.0;
}

- (void)didPanMediaForWidget:(id)a3 toState:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(objc_msgSend(a3, "mergedSettings"), "objectForKeyedSubscript:", @"url"}];
  if (v7)
  {
    v8 = v7;
    v9 = [(OKProducer *)self presentation];
    v10 = [v8 absoluteString];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__OKProducer_didPanMediaForWidget_toState___block_invoke;
    v12[3] = &unk_279C900C8;
    v12[4] = a4;
    [(OKPresentation *)v9 guidelineAuthoringMediaAttributesUpdateForKey:v10 updateBlock:v12];
  }

  v13[0] = @"offset";
  v11 = [a4 objectForKeyedSubscript:?];
  v13[1] = @"scale";
  v14[0] = v11;
  v14[1] = &unk_287AF2268;
  [a3 addSettingsFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v14, v13, 2)}];
}

uint64_t __43__OKProducer_didPanMediaForWidget_toState___block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{@"offset", "CGPointValue"}];
  [a2 setOffset:?];

  return [a2 setScale:1.0];
}

- (void)didChangeTextForWidget:(id)a3 toSettings:(id)a4
{
  v7 = [a4 objectForKeyedSubscript:@"attributedText"];
  if (v7)
  {
    v8 = v7;
    if ([v7 length])
    {
      if ([objc_msgSend(objc_msgSend(a3 "userData")])
      {
        [(OKPresentation *)[(OKProducer *)self presentation] addGuideline:[OKPresentationGuideline guidelineAuthoringAttributedTitle:v8]];
        [(OKPresentation *)[(OKProducer *)self presentation] removeGuidelineForGlobalUniqueKey:[OKPresentationGuideline globalUniqueKeyForKey:@"authoringTitle"]];
      }

      else
      {
        v9 = [MEMORY[0x277CBEBC0] URLWithString:{objc_msgSend(objc_msgSend(a3, "mergedSettings"), "objectForKeyedSubscript:", @"associatedMediaURL"}];
        if (v9)
        {
          v10 = v9;
          v11 = [(OKProducer *)self presentation];
          v12 = [v10 absoluteString];
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __48__OKProducer_didChangeTextForWidget_toSettings___block_invoke;
          v13[3] = &unk_279C900C8;
          v13[4] = v8;
          [(OKPresentation *)v11 guidelineAuthoringMediaAttributesUpdateForKey:v12 updateBlock:v13];
        }
      }

      [a3 addSettingsFromDictionary:a4];
    }
  }
}

@end