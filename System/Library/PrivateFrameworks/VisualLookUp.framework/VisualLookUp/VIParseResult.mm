@interface VIParseResult
- (BOOL)isEqual:(id)a3;
- (VIParseResult)initWithVisualUnderstanding:(id)a3;
@end

@implementation VIParseResult

- (VIParseResult)initWithVisualUnderstanding:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VIParseResult;
  v5 = [(VIParseResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    visualUnderstanding = v5->_visualUnderstanding;
    v5->_visualUnderstanding = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v15 = v5;
  v16 = v3;
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  visualUnderstanding = self->_visualUnderstanding;
  v13 = [v11 visualUnderstanding];
  LOBYTE(visualUnderstanding) = VIObjectIsEqual(visualUnderstanding, v13);

  return visualUnderstanding;
}

@end