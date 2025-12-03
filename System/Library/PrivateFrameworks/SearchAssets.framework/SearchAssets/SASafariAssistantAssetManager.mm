@interface SASafariAssistantAssetManager
- (id)assetVersionForLocale:(id)locale;
- (id)prefilterSafariSummarizationPrefetchRequestModelWithUrlString:(id)string;
- (id)prefilterSafariSummarizationPrefetchRequestModelWithUrlString:(id)string prefetchHashPrefixLength:(unint64_t)length;
- (id)prefilterSafariSummarizationPrefetchRequestWithUrlString:(id)string prefetchHashPrefixLength:(unint64_t)length;
- (void)resetSafariSummarizationAssets;
- (void)unsubscribeFromSafariSummarizationAssetsWithCompletionHandler:(id)handler;
@end

@implementation SASafariAssistantAssetManager

- (id)prefilterSafariSummarizationPrefetchRequestModelWithUrlString:(id)string
{
  v4 = sub_21580B890();
  v6 = v5;
  selfCopy = self;
  v8 = sub_2157E7DAC(v4, v6);

  return v8;
}

- (id)prefilterSafariSummarizationPrefetchRequestModelWithUrlString:(id)string prefetchHashPrefixLength:(unint64_t)length
{
  v5 = sub_21580B890();
  v7 = v6;
  selfCopy = self;
  v9 = sub_2157E802C(v5, v7);

  return v9;
}

- (id)prefilterSafariSummarizationPrefetchRequestWithUrlString:(id)string prefetchHashPrefixLength:(unint64_t)length
{
  v5 = sub_21580B890();
  v7 = v6;
  selfCopy = self;
  sub_2157E80A4(v5, v7);
  v10 = v9;

  if (v10)
  {
    v11 = sub_21580B880();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)unsubscribeFromSafariSummarizationAssetsWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_2157E734C(&unk_21580CB90, v5);
}

- (void)resetSafariSummarizationAssets
{
  selfCopy = self;
  sub_2157E8598();
}

- (id)assetVersionForLocale:(id)locale
{
  v4 = sub_21580B890();
  v6 = v5;
  selfCopy = self;
  sub_2157E8658(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_21580B880();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end