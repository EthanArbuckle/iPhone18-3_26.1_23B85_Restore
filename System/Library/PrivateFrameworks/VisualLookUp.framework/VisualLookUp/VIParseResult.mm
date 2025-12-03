@interface VIParseResult
- (BOOL)isEqual:(id)equal;
- (VIParseResult)initWithVisualUnderstanding:(id)understanding;
@end

@implementation VIParseResult

- (VIParseResult)initWithVisualUnderstanding:(id)understanding
{
  understandingCopy = understanding;
  v9.receiver = self;
  v9.super_class = VIParseResult;
  v5 = [(VIParseResult *)&v9 init];
  if (v5)
  {
    v6 = [understandingCopy copy];
    visualUnderstanding = v5->_visualUnderstanding;
    v5->_visualUnderstanding = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  v15 = v5;
  v16 = v3;
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = equalCopy;
  }

  else
  {
    v11 = 0;
  }

  visualUnderstanding = self->_visualUnderstanding;
  visualUnderstanding = [v11 visualUnderstanding];
  LOBYTE(visualUnderstanding) = VIObjectIsEqual(visualUnderstanding, visualUnderstanding);

  return visualUnderstanding;
}

@end