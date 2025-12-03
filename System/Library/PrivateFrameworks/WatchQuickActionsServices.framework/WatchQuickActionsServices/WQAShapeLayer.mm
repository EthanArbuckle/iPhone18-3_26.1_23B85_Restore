@interface WQAShapeLayer
- (id)description;
@end

@implementation WQAShapeLayer

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = WQAShapeLayer;
  v4 = [(WQAShapeLayer *)&v9 description];
  quickActionVisualsToken = [(WQAShapeLayer *)self quickActionVisualsToken];
  quickActionIdentifier = [(WQAShapeLayer *)self quickActionIdentifier];
  v7 = [v3 stringWithFormat:@"[%@] token=%li, identifier=%@", v4, quickActionVisualsToken, quickActionIdentifier];

  return v7;
}

@end