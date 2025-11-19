@interface SBTraitsZOrderStageComponent
- (NSString)description;
- (SBTraitsZOrderStageComponent)initWithComponentOrder:(id)a3;
@end

@implementation SBTraitsZOrderStageComponent

- (SBTraitsZOrderStageComponent)initWithComponentOrder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBTraitsZOrderStageComponent;
  v5 = [(SBTraitsZOrderStageComponent *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    componentOrder = v5->_componentOrder;
    v5->_componentOrder = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v8.receiver = self;
  v8.super_class = SBTraitsZOrderStageComponent;
  v4 = [(SBTraitsZOrderStageComponent *)&v8 description];
  v5 = [v3 stringWithString:v4];

  v6 = [(NSNumber *)self->_componentOrder stringValue];
  [v5 appendFormat:@" order: %@", v6];

  return v5;
}

@end