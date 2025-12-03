@interface WFContentItemProxy
+ (id)previewRetrievalQueue;
- (BOOL)isEqual:(id)equal;
- (NSString)previewItemTitle;
- (NSURL)previewItemURL;
- (WFContentItem)item;
- (WFContentItem)originalItem;
- (unint64_t)hash;
@end

@implementation WFContentItemProxy

- (WFContentItem)originalItem
{
  WeakRetained = objc_loadWeakRetained(&self->_originalItem);

  return WeakRetained;
}

- (WFContentItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    file = [(WFContentItemProxy *)self file];
    file2 = [equalCopy file];
    v7 = file;
    v8 = file2;
    v9 = v8;
    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v7 && v8)
      {
        v10 = [v7 isEqual:v8];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  file = [(WFContentItemProxy *)self file];
  v3 = [file hash];

  return v3;
}

- (NSString)previewItemTitle
{
  item = [(WFContentItemProxy *)self item];
  name = [item name];

  return name;
}

- (NSURL)previewItemURL
{
  file = [(WFContentItemProxy *)self file];

  if (!file)
  {
    null = [MEMORY[0x277CBEB68] null];
    [(WFContentItemProxy *)self setFile:null];

    previewRetrievalQueue = [objc_opt_class() previewRetrievalQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__WFContentItemProxy_previewItemURL__block_invoke;
    block[3] = &unk_279EF5240;
    block[4] = self;
    dispatch_async(previewRetrievalQueue, block);
  }

  file2 = [(WFContentItemProxy *)self file];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fileURL = 0;
  }

  else
  {
    file3 = [(WFContentItemProxy *)self file];
    fileURL = [file3 fileURL];
  }

  return fileURL;
}

void __36__WFContentItemProxy_previewItemURL__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) item];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__WFContentItemProxy_previewItemURL__block_invoke_2;
  v3[3] = &unk_279EF5240;
  v3[4] = *(a1 + 32);
  [v2 prepareForPresentationWithCompletionHandler:v3];
}

void __36__WFContentItemProxy_previewItemURL__block_invoke_2(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CFC2A0];
  v3 = [*(a1 + 32) preferredFileType];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __36__WFContentItemProxy_previewItemURL__block_invoke_3;
  v14[3] = &unk_279EF4FB0;
  v14[4] = *(a1 + 32);
  v4 = [v2 requestForCoercingToFileType:v3 completionHandler:v14];

  v5 = MEMORY[0x277D79F68];
  v6 = WFLivePhotoFileType();
  v7 = [v5 typeWithUTType:v6];
  v17[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];

  v9 = MEMORY[0x277CFC298];
  v10 = *MEMORY[0x277CFC630];
  v15[0] = *MEMORY[0x277CFC628];
  v15[1] = v10;
  v16[0] = v8;
  v16[1] = MEMORY[0x277CBEC38];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = [v9 optionsWithDictionary:v11];
  [v4 setOptions:v12];

  v13 = [*(a1 + 32) item];
  [v13 performCoercion:v4];
}

void __36__WFContentItemProxy_previewItemURL__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = [v6 wfType];
  v8 = [v7 conformsToUTType:*MEMORY[0x277CE1D80]];

  if (v8)
  {
    v9 = [v6 fileURL];
    v10 = [v9 wf_localizedDisplayName];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v9 lastPathComponent];
    }

    v13 = v12;

    v14 = MEMORY[0x277CCACA8];
    v15 = WFLocalizedString(@"Folder (%@)");
    v16 = [v14 stringWithFormat:v15, v13];

    v17 = MEMORY[0x277CFC3C8];
    v18 = [v16 dataUsingEncoding:4];
    v19 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E20]];
    v20 = [v17 fileWithData:v18 ofType:v19 proposedFilename:0];

    v6 = v20;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__WFContentItemProxy_previewItemURL__block_invoke_4;
  block[3] = &unk_279EF4F88;
  block[4] = *(a1 + 32);
  v24 = v6;
  v25 = v5;
  v21 = v5;
  v22 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __36__WFContentItemProxy_previewItemURL__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"previewItemURL"];
  if (*(a1 + 40) || (v2 = *(a1 + 48)) == 0)
  {
    [*(a1 + 32) setFile:?];
  }

  else
  {
    v3 = MEMORY[0x277CFC3C8];
    v4 = [v2 localizedDescription];
    v5 = [v4 dataUsingEncoding:4];
    v6 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E20]];
    v7 = [v3 fileWithData:v5 ofType:v6 proposedFilename:0];
    [*(a1 + 32) setFile:v7];
  }

  v8 = [*(a1 + 32) refreshBlock];

  if (v8)
  {
    v9 = [*(a1 + 32) refreshBlock];
    v9[2]();

    [*(a1 + 32) setRefreshBlock:0];
  }

  v10 = *(a1 + 32);

  return [v10 didChangeValueForKey:@"previewItemURL"];
}

+ (id)previewRetrievalQueue
{
  if (previewRetrievalQueue_onceToken != -1)
  {
    dispatch_once(&previewRetrievalQueue_onceToken, &__block_literal_global);
  }

  v3 = previewRetrievalQueue_previewRetrievalQueue;

  return v3;
}

void __43__WFContentItemProxy_previewRetrievalQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.shortcuts.previewRetrievalQueue", 0);
  v1 = previewRetrievalQueue_previewRetrievalQueue;
  previewRetrievalQueue_previewRetrievalQueue = v0;
}

@end