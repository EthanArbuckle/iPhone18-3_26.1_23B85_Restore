@interface _LTDAssetModelDownloadEntry
- (_LTDAssetModelDownloadEntry)initWithAsset:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6;
@end

@implementation _LTDAssetModelDownloadEntry

- (_LTDAssetModelDownloadEntry)initWithAsset:(id)a3 options:(unint64_t)a4 progress:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = _LTDAssetModelDownloadEntry;
  v14 = [(_LTDAssetModelDownloadEntry *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_asset, a3);
    v15->_options = a4;
    v16 = MEMORY[0x238398770](v12);
    progress = v15->_progress;
    v15->_progress = v16;

    v18 = MEMORY[0x238398770](v13);
    completion = v15->_completion;
    v15->_completion = v18;

    v20 = [MEMORY[0x277CBEB18] array];
    duplicateEntries = v15->_duplicateEntries;
    v15->_duplicateEntries = v20;
  }

  return v15;
}

@end