@interface TVPAVTimedMetadataGroupChapter
- (TVPAVTimedMetadataGroupChapter)initWithAVTimedMetadataGroup:(id)group filterByLanguages:(id)languages;
- (void)_loadChapterNameFromMetadataItem:(id)item;
@end

@implementation TVPAVTimedMetadataGroupChapter

- (TVPAVTimedMetadataGroupChapter)initWithAVTimedMetadataGroup:(id)group filterByLanguages:(id)languages
{
  groupCopy = group;
  languagesCopy = languages;
  v24.receiver = self;
  v24.super_class = TVPAVTimedMetadataGroupChapter;
  v8 = [(TVPAVTimedMetadataGroupChapter *)&v24 init];
  if (v8)
  {
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    if (groupCopy)
    {
      [groupCopy timeRange];
      if ((BYTE12(v21) & 1) != 0 && (BYTE4(v23) & 1) != 0 && !*(&v23 + 1) && (*(&v22 + 1) & 0x8000000000000000) == 0)
      {
        v9 = [TVPTimeRange alloc];
        v20[0] = v21;
        v20[1] = v22;
        v20[2] = v23;
        v10 = [(TVPTimeRange *)v9 initWithCMTimeRange:v20];
        timeRange = v8->super.super._timeRange;
        v8->super.super._timeRange = v10;

        items = [groupCopy items];
        v13 = [MEMORY[0x277CE6520] metadataItemsFromArray:items withKey:*MEMORY[0x277CE5F28] keySpace:0];
        v14 = [MEMORY[0x277CE6520] metadataItemsFromArray:items withKey:*MEMORY[0x277CE5F10] keySpace:0];
        firstObject = [v14 firstObject];
        if (firstObject)
        {
          [(TVPAVTimedMetadataGroupChapter *)v8 setImageMetadataItem:firstObject];
        }

        v16 = [MEMORY[0x277CE6520] metadataItemsFromArray:v13 filteredAndSortedAccordingToPreferredLanguages:languagesCopy];
        if (![v16 count])
        {
          v17 = v13;

          v16 = v17;
        }

        firstObject2 = [v16 firstObject];
        [(TVPAVTimedMetadataGroupChapter *)v8 _loadChapterNameFromMetadataItem:firstObject2];
      }
    }
  }

  return v8;
}

- (void)_loadChapterNameFromMetadataItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy)
  {
    v6 = [itemCopy statusOfValueForKey:@"value" error:0];
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        stringValue = [v5 stringValue];
        [(TVPChapter *)self setLocalizedName:stringValue];
      }

      else
      {
        objc_initWeak(&location, self);
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __67__TVPAVTimedMetadataGroupChapter__loadChapterNameFromMetadataItem___block_invoke;
        v8[3] = &unk_279D7C080;
        v9 = v5;
        objc_copyWeak(&v10, &location);
        [v9 loadValuesAsynchronouslyForKeys:&unk_287E59AB0 completionHandler:v8];
        objc_destroyWeak(&v10);

        objc_destroyWeak(&location);
      }
    }
  }
}

void __67__TVPAVTimedMetadataGroupChapter__loadChapterNameFromMetadataItem___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) statusOfValueForKey:@"value" error:0] == 2)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __67__TVPAVTimedMetadataGroupChapter__loadChapterNameFromMetadataItem___block_invoke_2;
    v2[3] = &unk_279D7BA58;
    objc_copyWeak(&v4, (a1 + 40));
    v3 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v2);

    objc_destroyWeak(&v4);
  }
}

void __67__TVPAVTimedMetadataGroupChapter__loadChapterNameFromMetadataItem___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) stringValue];
  [WeakRetained setLocalizedName:v2];
}

@end