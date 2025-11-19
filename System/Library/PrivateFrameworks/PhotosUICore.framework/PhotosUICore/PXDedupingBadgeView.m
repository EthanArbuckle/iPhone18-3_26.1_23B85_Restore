@interface PXDedupingBadgeView
- (PXDedupingBadgeView)initWithDedupingType:(id)a3;
- (id)symbolWithDedupingType:(id)a3;
- (void)setDedupingType:(id)a3;
@end

@implementation PXDedupingBadgeView

- (id)symbolWithDedupingType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SimilarStacking"])
  {
    v4 = @"⏏️";
  }

  else if ([v3 isEqualToString:@"Semantic"])
  {
    v4 = @"🔀";
  }

  else if ([v3 isEqualToString:@"SDOFOrHDR"])
  {
    v4 = @"⤴️";
  }

  else if ([v3 isEqualToString:@"Timing"])
  {
    v4 = @"🔃";
  }

  else if ([v3 isEqualToString:@"SimilarVideo"])
  {
    v4 = @"🎦";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDedupingType:(id)a3
{
  v4 = [(PXDedupingBadgeView *)self symbolWithDedupingType:a3];
  [(PXTextSymbolView *)self setSymbol:v4];
}

- (PXDedupingBadgeView)initWithDedupingType:(id)a3
{
  v4 = [(PXDedupingBadgeView *)self symbolWithDedupingType:a3];
  v7.receiver = self;
  v7.super_class = PXDedupingBadgeView;
  v5 = [(PXTextSymbolView *)&v7 initWithSymbol:v4];

  return v5;
}

@end