@interface SASafariAssistantAssetManager
- (id)assetVersionForLocale:(id)a3;
- (id)prefilterSafariSummarizationPrefetchRequestModelWithUrlString:(id)a3;
- (id)prefilterSafariSummarizationPrefetchRequestModelWithUrlString:(id)a3 prefetchHashPrefixLength:(unint64_t)a4;
- (id)prefilterSafariSummarizationPrefetchRequestWithUrlString:(id)a3 prefetchHashPrefixLength:(unint64_t)a4;
- (void)resetSafariSummarizationAssets;
- (void)unsubscribeFromSafariSummarizationAssetsWithCompletionHandler:(id)a3;
@end

@implementation SASafariAssistantAssetManager

- (id)prefilterSafariSummarizationPrefetchRequestModelWithUrlString:(id)a3
{
  v4 = sub_21580B890();
  v6 = v5;
  v7 = self;
  v8 = sub_2157E7DAC(v4, v6);

  return v8;
}

- (id)prefilterSafariSummarizationPrefetchRequestModelWithUrlString:(id)a3 prefetchHashPrefixLength:(unint64_t)a4
{
  v5 = sub_21580B890();
  v7 = v6;
  v8 = self;
  v9 = sub_2157E802C(v5, v7);

  return v9;
}

- (id)prefilterSafariSummarizationPrefetchRequestWithUrlString:(id)a3 prefetchHashPrefixLength:(unint64_t)a4
{
  v5 = sub_21580B890();
  v7 = v6;
  v8 = self;
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

- (void)unsubscribeFromSafariSummarizationAssetsWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_2157E734C(&unk_21580CB90, v5);
}

- (void)resetSafariSummarizationAssets
{
  v2 = self;
  sub_2157E8598();
}

- (id)assetVersionForLocale:(id)a3
{
  v4 = sub_21580B890();
  v6 = v5;
  v7 = self;
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