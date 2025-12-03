@interface PXDedupingBadgeView
- (PXDedupingBadgeView)initWithDedupingType:(id)type;
- (id)symbolWithDedupingType:(id)type;
- (void)setDedupingType:(id)type;
@end

@implementation PXDedupingBadgeView

- (id)symbolWithDedupingType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"SimilarStacking"])
  {
    v4 = @"⏏️";
  }

  else if ([typeCopy isEqualToString:@"Semantic"])
  {
    v4 = @"🔀";
  }

  else if ([typeCopy isEqualToString:@"SDOFOrHDR"])
  {
    v4 = @"⤴️";
  }

  else if ([typeCopy isEqualToString:@"Timing"])
  {
    v4 = @"🔃";
  }

  else if ([typeCopy isEqualToString:@"SimilarVideo"])
  {
    v4 = @"🎦";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDedupingType:(id)type
{
  v4 = [(PXDedupingBadgeView *)self symbolWithDedupingType:type];
  [(PXTextSymbolView *)self setSymbol:v4];
}

- (PXDedupingBadgeView)initWithDedupingType:(id)type
{
  v4 = [(PXDedupingBadgeView *)self symbolWithDedupingType:type];
  v7.receiver = self;
  v7.super_class = PXDedupingBadgeView;
  v5 = [(PXTextSymbolView *)&v7 initWithSymbol:v4];

  return v5;
}

@end