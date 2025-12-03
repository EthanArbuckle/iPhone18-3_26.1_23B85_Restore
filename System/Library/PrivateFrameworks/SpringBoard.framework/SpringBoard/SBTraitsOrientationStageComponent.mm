@interface SBTraitsOrientationStageComponent
- (NSString)description;
- (SBTraitsOrientationStageComponent)initWithComponentOrder:(id)order;
@end

@implementation SBTraitsOrientationStageComponent

- (SBTraitsOrientationStageComponent)initWithComponentOrder:(id)order
{
  orderCopy = order;
  v9.receiver = self;
  v9.super_class = SBTraitsOrientationStageComponent;
  v5 = [(SBTraitsOrientationStageComponent *)&v9 init];
  if (v5)
  {
    v6 = [orderCopy copy];
    componentOrder = v5->_componentOrder;
    v5->_componentOrder = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v8.receiver = self;
  v8.super_class = SBTraitsOrientationStageComponent;
  v4 = [(SBTraitsOrientationStageComponent *)&v8 description];
  v5 = [v3 stringWithString:v4];

  stringValue = [(NSNumber *)self->_componentOrder stringValue];
  [v5 appendFormat:@" order: %@", stringValue];

  return v5;
}

@end