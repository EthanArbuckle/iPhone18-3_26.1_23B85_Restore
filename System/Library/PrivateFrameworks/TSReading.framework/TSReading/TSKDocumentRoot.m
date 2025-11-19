@interface TSKDocumentRoot
- (BOOL)documentCacheHasAtMostFileProtection:(id)a3;
- (BOOL)hasICloudConflict;
- (BOOL)hasICloudTeardownObserver;
- (BOOL)writeData:(id)a3 atDocumentCachePath:(id)a4;
- (CGImageSource)newImageSourceForDocumentCachePath:(id)a3;
- (NSString)creationLanguage;
- (TSKDocumentRoot)initWithContext:(id)a3;
- (TSKDocumentViewController)viewController;
- (TSSStylesheet)stylesheet;
- (TSSTheme)theme;
- (id)additionalDocumentPropertiesForWrite;
- (id)commandForPropagatingPresetChangeCommand:(id)a3 alwaysPreserveAppearance:(BOOL)a4;
- (id)dataFromDocumentCachePath:(id)a3;
- (id)documentFonts;
- (id)modelEnumerator;
- (id)modelEnumeratorForObjectsConformingToProtocol:(id)a3;
- (id)modelEnumeratorForObjectsOfClass:(Class)a3;
- (id)modelEnumeratorForObjectsPassingTest:(id)a3;
- (id)modelEnumeratorForObjectsRespondingToSelector:(SEL)a3;
- (id)unavailableDocumentFonts;
- (id)uniqueDocumentCachePathForProposedPath:(id)a3;
- (int64_t)addObserverForICloudTeardownWithBlock:(id)a3;
- (unint64_t)applicationType;
- (unint64_t)nextRootSearchTargetIndexFromIndex:(unint64_t)a3 forString:(id)a4 options:(unint64_t)a5 inDirection:(unint64_t)a6;
- (unint64_t)rootSearchTargetCountThroughIndex:(unint64_t)a3;
- (void)changeDocumentCacheFileProtection:(id)a3;
- (void)coalesceChanges:(id)a3;
- (void)dealloc;
- (void)didSaveWithEncryptionChange;
- (void)documentDidLoad;
- (void)enumerateStyleClientsUsingBlock:(id)a3;
- (void)markAsModifiedIfLocaleIsOutOfDate;
- (void)notifyICloudTeardownObservers;
- (void)removeICloudTeardownObserver:(int64_t)a3;
- (void)setTheme:(id)a3;
- (void)setThemeForTemplateImport:(id)a3;
- (void)withRootSearchTargetAtIndex:(unint64_t)a3 executeBlock:(id)a4;
@end

@implementation TSKDocumentRoot

- (TSKDocumentRoot)initWithContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSKDocumentRoot;
  v3 = [(TSPObject *)&v5 initWithContext:a3];
  if (v3)
  {
    v3->_annotationAuthorStorage = [(TSPObject *)[TSKAnnotationAuthorStorage alloc] initWithContext:[(TSPObject *)v3 context]];
  }

  return v3;
}

- (void)dealloc
{
  iCloudTeardownStackQueue = self->_iCloudTeardownStackQueue;
  if (iCloudTeardownStackQueue)
  {
    dispatch_release(iCloudTeardownStackQueue);
    self->_iCloudTeardownStackQueue = 0;
  }

  v4.receiver = self;
  v4.super_class = TSKDocumentRoot;
  [(TSKDocumentRoot *)&v4 dealloc];
}

- (unint64_t)applicationType
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot applicationType]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"), 178, @"should be overridden in app-specific document roots!"}];
  return 3;
}

- (id)dataFromDocumentCachePath:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot dataFromDocumentCachePath:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"), 186, @"should be overridden in TSADocumentRoot"}];
  return 0;
}

- (BOOL)writeData:(id)a3 atDocumentCachePath:(id)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot writeData:atDocumentCachePath:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"), 192, @"should be overridden in TSADocumentRoot"}];
  return 0;
}

- (CGImageSource)newImageSourceForDocumentCachePath:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot newImageSourceForDocumentCachePath:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"), 198, @"should be overridden in TSADocumentRoot"}];
  return 0;
}

- (id)uniqueDocumentCachePathForProposedPath:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot uniqueDocumentCachePathForProposedPath:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"), 204, @"should be overridden in TSADocumentRoot"}];
  return 0;
}

- (void)changeDocumentCacheFileProtection:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot changeDocumentCacheFileProtection:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:210 description:@"should be overridden in TSADocumentRoot"];
}

- (BOOL)documentCacheHasAtMostFileProtection:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot documentCacheHasAtMostFileProtection:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"), 215, @"should be overridden in TSADocumentRoot"}];
  return 0;
}

- (void)didSaveWithEncryptionChange
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot didSaveWithEncryptionChange]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"];

  [v2 handleFailureInFunction:v3 file:v4 lineNumber:221 description:@"should be overridden in TSADocumentRoot"];
}

- (void)documentDidLoad
{
  self->_accessController = [[TSKAccessController alloc] initWithDelegate:self];
  self->_changeNotifier = objc_alloc_init(TSKChangeNotifier);
  self->_iCloudTeardownStackQueue = dispatch_queue_create("TSKDocumentRoot.iCloudTeardownStack", 0);
}

- (NSString)creationLanguage
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot creationLanguage]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"), 250, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKDocumentRoot creationLanguage]"), 0}]);
}

- (id)modelEnumerator
{
  v2 = [[TSKDocumentModelEnumerator alloc] initWithRootModelObject:self filter:0];

  return v2;
}

- (id)modelEnumeratorForObjectsPassingTest:(id)a3
{
  v3 = [[TSKDocumentModelEnumerator alloc] initWithRootModelObject:self filter:a3];

  return v3;
}

- (id)modelEnumeratorForObjectsOfClass:(Class)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__TSKDocumentRoot_modelEnumeratorForObjectsOfClass___block_invoke;
  v4[3] = &unk_279D477C8;
  v4[4] = a3;
  return [(TSKDocumentRoot *)self modelEnumeratorForObjectsPassingTest:v4];
}

- (id)modelEnumeratorForObjectsConformingToProtocol:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__TSKDocumentRoot_modelEnumeratorForObjectsConformingToProtocol___block_invoke;
  v4[3] = &unk_279D477C8;
  v4[4] = a3;
  return [(TSKDocumentRoot *)self modelEnumeratorForObjectsPassingTest:v4];
}

- (id)modelEnumeratorForObjectsRespondingToSelector:(SEL)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__TSKDocumentRoot_modelEnumeratorForObjectsRespondingToSelector___block_invoke;
  v4[3] = &__block_descriptor_40_e24_B24__0___TSKModel__8_B16l;
  v4[4] = a3;
  return [(TSKDocumentRoot *)self modelEnumeratorForObjectsPassingTest:v4];
}

- (id)additionalDocumentPropertiesForWrite
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"locale";
  v4[0] = [objc_msgSend(MEMORY[0x277CBEAF8] "autoupdatingCurrentLocale")];
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
}

- (void)coalesceChanges:(id)a3
{
  v4 = [a3 count];
  if (v4 >= 2)
  {
    v5 = 0;
    v6 = v4 - 1;
    do
    {
      v7 = [a3 objectAtIndex:v6];
      if ([v7 kind] == 2)
      {
        v8 = ([objc_msgSend(objc_msgSend(v7 "details")] >> 3) & 1;
        if ((v8 & v5) == 1)
        {
          [a3 removeObjectAtIndex:v6];
          v5 = 1;
        }

        else
        {
          v5 |= v8;
        }
      }

      --v6;
    }

    while (v6 != -1);
  }
}

- (void)markAsModifiedIfLocaleIsOutOfDate
{
  v3 = [(NSLocale *)[(TSKDocumentRoot *)self locale] localeIdentifier];
  if (!-[NSString isEqualToString:](v3, "isEqualToString:", [objc_msgSend(MEMORY[0x277CBEAF8] "currentLocale")]))
  {

    [(TSPObject *)self willModify];
  }
}

- (void)withRootSearchTargetAtIndex:(unint64_t)a3 executeBlock:(id)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot withRootSearchTargetAtIndex:executeBlock:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"), 514, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKDocumentRoot withRootSearchTargetAtIndex:executeBlock:]"), 0}]);
}

- (unint64_t)rootSearchTargetCountThroughIndex:(unint64_t)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot rootSearchTargetCountThroughIndex:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"), 519, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKDocumentRoot rootSearchTargetCountThroughIndex:]"), 0}]);
}

- (unint64_t)nextRootSearchTargetIndexFromIndex:(unint64_t)a3 forString:(id)a4 options:(unint64_t)a5 inDirection:(unint64_t)a6
{
  v6 = a3;
  if (a6 == 1)
  {
    if (a3)
    {
      if (a3 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return [(TSKDocumentRoot *)self rootSearchTargetCountThroughIndex:0x7FFFFFFFFFFFFFFFLL, a4, a5]- 1;
      }

      else
      {
        return a3 - 1;
      }
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else if (!a6)
  {
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else if ([(TSKDocumentRoot *)self rootSearchTargetCountThroughIndex:a3, a4, a5]- 1 > a3)
    {
      ++v6;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v6;
}

- (id)commandForPropagatingPresetChangeCommand:(id)a3 alwaysPreserveAppearance:(BOOL)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot commandForPropagatingPresetChangeCommand:alwaysPreserveAppearance:]"];
  [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"), 567, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKDocumentRoot commandForPropagatingPresetChangeCommand:alwaysPreserveAppearance:]"), 0}]);
}

- (int64_t)addObserverForICloudTeardownWithBlock:(id)a3
{
  if (self->_iCloudTeardownStackQueue || (v5 = [MEMORY[0x277D6C290] currentHandler], v6 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSKDocumentRoot addObserverForICloudTeardownWithBlock:]"), objc_msgSend(v5, "handleFailureInFunction:file:lineNumber:description:", v6, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"), 580, @"invalid nil value for '%s'", "_iCloudTeardownStackQueue"), self->_iCloudTeardownStackQueue))
  {
    v7 = [[TSKDocumentRootICloudObserver alloc] initWithBlock:a3];
    iCloudTeardownStackQueue = self->_iCloudTeardownStackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__TSKDocumentRoot_addObserverForICloudTeardownWithBlock___block_invoke;
    block[3] = &unk_279D47708;
    block[4] = self;
    block[5] = v7;
    dispatch_async(iCloudTeardownStackQueue, block);
  }

  else
  {
    v7 = 0;
  }

  return [(TSKDocumentRootICloudObserver *)v7 identifer];
}

uint64_t __57__TSKDocumentRoot_addObserverForICloudTeardownWithBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  if (!v2)
  {
    *(*(a1 + 32) + 104) = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2 = *(*(a1 + 32) + 104);
  }

  v3 = *(a1 + 40);

  return [v2 addObject:v3];
}

- (void)removeICloudTeardownObserver:(int64_t)a3
{
  iCloudTeardownStackQueue = self->_iCloudTeardownStackQueue;
  if (iCloudTeardownStackQueue || (v6 = [MEMORY[0x277D6C290] currentHandler], v7 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSKDocumentRoot removeICloudTeardownObserver:]"), objc_msgSend(v6, "handleFailureInFunction:file:lineNumber:description:", v7, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"), 599, @"invalid nil value for '%s'", "_iCloudTeardownStackQueue"), (iCloudTeardownStackQueue = self->_iCloudTeardownStackQueue) != 0))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__TSKDocumentRoot_removeICloudTeardownObserver___block_invoke;
    block[3] = &unk_279D47810;
    block[4] = self;
    block[5] = a3;
    dispatch_async(iCloudTeardownStackQueue, block);
  }
}

uint64_t __48__TSKDocumentRoot_removeICloudTeardownObserver___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(*(a1 + 32) + 104) reverseObjectEnumerator];
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if ([v7 identifer] == *(a1 + 40))
        {
          return [*(*(a1 + 32) + 104) removeObjectIdenticalTo:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)notifyICloudTeardownObservers
{
  iCloudTeardownStackQueue = self->_iCloudTeardownStackQueue;
  if (iCloudTeardownStackQueue || (v4 = [MEMORY[0x277D6C290] currentHandler], v5 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSKDocumentRoot notifyICloudTeardownObservers]"), objc_msgSend(v4, "handleFailureInFunction:file:lineNumber:description:", v5, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"), 620, @"invalid nil value for '%s'", "_iCloudTeardownStackQueue"), (iCloudTeardownStackQueue = self->_iCloudTeardownStackQueue) != 0))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__TSKDocumentRoot_notifyICloudTeardownObservers__block_invoke;
    block[3] = &unk_279D46770;
    block[4] = self;
    dispatch_sync(iCloudTeardownStackQueue, block);
  }
}

uint64_t __48__TSKDocumentRoot_notifyICloudTeardownObservers__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(*(a1 + 32) + 104) reverseObjectEnumerator];
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) invokeWithDocumentRoot:*(a1 + 32)];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (BOOL)hasICloudTeardownObserver
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  iCloudTeardownStackQueue = self->_iCloudTeardownStackQueue;
  if (iCloudTeardownStackQueue || (v4 = [MEMORY[0x277D6C290] currentHandler], v5 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "-[TSKDocumentRoot hasICloudTeardownObserver]"), objc_msgSend(v4, "handleFailureInFunction:file:lineNumber:description:", v5, objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"), 636, @"invalid nil value for '%s'", "_iCloudTeardownStackQueue"), (iCloudTeardownStackQueue = self->_iCloudTeardownStackQueue) != 0))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__TSKDocumentRoot_hasICloudTeardownObserver__block_invoke;
    block[3] = &unk_279D47838;
    block[4] = self;
    block[5] = &v9;
    dispatch_sync(iCloudTeardownStackQueue, block);
  }

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __44__TSKDocumentRoot_hasICloudTeardownObserver__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 104) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (BOOL)hasICloudConflict
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot hasICloudConflict]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot.mm"), 649, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKDocumentRoot hasICloudConflict]"), 0}]);
}

- (TSKDocumentViewController)viewController
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot(iOS) viewController]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentRoot_iOS.m"), 12, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKDocumentRoot(iOS) viewController]"), 0}]);
}

- (TSSTheme)theme
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot(TSSAdditions) theme]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSKDocumentRoot_TSSAdditions.m"), 20, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKDocumentRoot(TSSAdditions) theme]"), 0}]);
}

- (void)setTheme:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot(TSSAdditions) setTheme:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSKDocumentRoot_TSSAdditions.m"), 25, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKDocumentRoot(TSSAdditions) setTheme:]"), 0}]);
}

- (void)setThemeForTemplateImport:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot(TSSAdditions) setThemeForTemplateImport:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSKDocumentRoot_TSSAdditions.m"), 30, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKDocumentRoot(TSSAdditions) setThemeForTemplateImport:]"), 0}]);
}

- (TSSStylesheet)stylesheet
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentRoot(TSSAdditions) stylesheet]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSKDocumentRoot_TSSAdditions.m"), 35, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSKDocumentRoot(TSSAdditions) stylesheet]"), 0}]);
}

- (void)enumerateStyleClientsUsingBlock:(id)a3
{
  v4 = [(TSKDocumentRoot *)self modelEnumerator];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__TSKDocumentRoot_TSSAdditions__enumerateStyleClientsUsingBlock___block_invoke;
  v5[3] = &unk_279D48158;
  v5[4] = a3;
  [v4 enumerateUsingBlock:v5];
}

uint64_t __65__TSKDocumentRoot_TSSAdditions__enumerateStyleClientsUsingBlock___block_invoke(uint64_t a1)
{
  objc_opt_class();
  result = TSUClassAndProtocolCast();
  if (result)
  {
    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  return result;
}

- (id)documentFonts
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v27[0] = [(TSKDocumentRoot *)self stylesheet];
  v27[1] = [(TSSTheme *)[(TSKDocumentRoot *)self theme] stylesheet];
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v15 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v15)
  {
    v14 = *v22;
    do
    {
      v4 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v21 + 1) + 8 * v4);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v25[0] = objc_opt_class();
        v25[1] = objc_opt_class();
        v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
        v7 = [v6 countByEnumeratingWithState:&v17 objects:v26 count:16];
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
                objc_enumerationMutation(v6);
              }

              v11 = [v5 stylesOfClass:*(*(&v17 + 1) + 8 * v10)];
              v16[0] = MEMORY[0x277D85DD0];
              v16[1] = 3221225472;
              v16[2] = __47__TSKDocumentRoot_TSWPAdditions__documentFonts__block_invoke;
              v16[3] = &unk_279D497F0;
              v16[4] = v3;
              [v11 enumerateObjectsUsingBlock:v16];
              ++v10;
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v17 objects:v26 count:16];
          }

          while (v8);
        }

        ++v4;
      }

      while (v4 != v15);
      v15 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v15);
  }

  return v3;
}

uint64_t __47__TSKDocumentRoot_TSWPAdditions__documentFonts__block_invoke(uint64_t a1, void *a2)
{
  result = [objc_msgSend(a2 "propertyMap")];
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 32);

    return [v5 addObject:v4];
  }

  return result;
}

- (id)unavailableDocumentFonts
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [(TSKDocumentRoot *)self documentFonts];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = *MEMORY[0x277CC4908];
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v18 = v7;
        v19 = v9;
        v10 = CTFontDescriptorCreateWithAttributes([MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1]);
        if (v10 && (v11 = v10, MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(v10, 0), CFRelease(v11), MatchingFontDescriptors))
        {
          CFRelease(MatchingFontDescriptors);
        }

        else
        {
          [v3 addObject:v9];
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [v2 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }

  return v3;
}

@end