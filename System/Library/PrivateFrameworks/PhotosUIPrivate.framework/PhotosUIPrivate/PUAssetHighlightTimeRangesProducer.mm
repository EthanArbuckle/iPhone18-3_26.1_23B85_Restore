@interface PUAssetHighlightTimeRangesProducer
- (NSArray)highlightTimeRanges;
- (NSString)searchContextualVideoThumbnailIdentifier;
- (PUAssetHighlightTimeRangesProducerDelegate)delegate;
- (PXDisplayAsset)asset;
- (PXSearchQueryMatchInfo)searchQueryMatchInfo;
- (void)setAsset:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setHighlightTimeRanges:(id)a3;
- (void)setSearchContextualVideoThumbnailIdentifier:(id)a3;
- (void)setSearchQueryMatchInfo:(id)a3;
@end

@implementation PUAssetHighlightTimeRangesProducer

- (PXDisplayAsset)asset
{
  v2 = sub_1B383F928();

  return v2;
}

- (void)setAsset:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1B383F9A8(a3);
}

- (PXSearchQueryMatchInfo)searchQueryMatchInfo
{
  v2 = sub_1B383FBB4();

  return v2;
}

- (void)setSearchQueryMatchInfo:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B383FC54(a3);
}

- (NSString)searchContextualVideoThumbnailIdentifier
{
  sub_1B383FEE0();
  if (v2)
  {
    v3 = sub_1B3C9C5A8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSearchContextualVideoThumbnailIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_1B3C9C5E8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1B383FFB0(v4, v6);
}

- (PUAssetHighlightTimeRangesProducerDelegate)delegate
{
  v2 = sub_1B3840220();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1B38402C0();
}

- (NSArray)highlightTimeRanges
{
  if (sub_1B3840444())
  {
    sub_1B3710718(0, &unk_1EB84F780);
    v2 = sub_1B3C9C778();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setHighlightTimeRanges:(id)a3
{
  v3 = a3;
  if (a3)
  {
    sub_1B3710718(0, &unk_1EB84F780);
    v3 = sub_1B3C9C788();
  }

  v5 = self;
  sub_1B3840534(v3);
}

@end