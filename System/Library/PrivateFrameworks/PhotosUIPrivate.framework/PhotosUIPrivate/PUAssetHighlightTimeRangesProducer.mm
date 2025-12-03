@interface PUAssetHighlightTimeRangesProducer
- (NSArray)highlightTimeRanges;
- (NSString)searchContextualVideoThumbnailIdentifier;
- (PUAssetHighlightTimeRangesProducerDelegate)delegate;
- (PXDisplayAsset)asset;
- (PXSearchQueryMatchInfo)searchQueryMatchInfo;
- (void)setAsset:(id)asset;
- (void)setDelegate:(id)delegate;
- (void)setHighlightTimeRanges:(id)ranges;
- (void)setSearchContextualVideoThumbnailIdentifier:(id)identifier;
- (void)setSearchQueryMatchInfo:(id)info;
@end

@implementation PUAssetHighlightTimeRangesProducer

- (PXDisplayAsset)asset
{
  v2 = sub_1B383F928();

  return v2;
}

- (void)setAsset:(id)asset
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B383F9A8(asset);
}

- (PXSearchQueryMatchInfo)searchQueryMatchInfo
{
  v2 = sub_1B383FBB4();

  return v2;
}

- (void)setSearchQueryMatchInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_1B383FC54(info);
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

- (void)setSearchContextualVideoThumbnailIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_1B3C9C5E8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1B383FFB0(v4, v6);
}

- (PUAssetHighlightTimeRangesProducerDelegate)delegate
{
  v2 = sub_1B3840220();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
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

- (void)setHighlightTimeRanges:(id)ranges
{
  rangesCopy = ranges;
  if (ranges)
  {
    sub_1B3710718(0, &unk_1EB84F780);
    rangesCopy = sub_1B3C9C788();
  }

  selfCopy = self;
  sub_1B3840534(rangesCopy);
}

@end