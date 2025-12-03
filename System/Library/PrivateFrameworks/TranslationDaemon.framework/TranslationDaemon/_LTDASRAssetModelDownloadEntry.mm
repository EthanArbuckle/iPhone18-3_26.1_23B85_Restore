@interface _LTDASRAssetModelDownloadEntry
- (_LTDASRAssetModelDownloadEntry)initWithAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion;
@end

@implementation _LTDASRAssetModelDownloadEntry

- (_LTDASRAssetModelDownloadEntry)initWithAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion
{
  assetCopy = asset;
  progressCopy = progress;
  completionCopy = completion;
  v23.receiver = self;
  v23.super_class = _LTDASRAssetModelDownloadEntry;
  v14 = [(_LTDASRAssetModelDownloadEntry *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_asset, asset);
    v15->_options = options;
    v16 = MEMORY[0x238398770](progressCopy);
    progress = v15->_progress;
    v15->_progress = v16;

    v18 = MEMORY[0x238398770](completionCopy);
    completion = v15->_completion;
    v15->_completion = v18;

    array = [MEMORY[0x277CBEB18] array];
    duplicateEntries = v15->_duplicateEntries;
    v15->_duplicateEntries = array;
  }

  return v15;
}

@end