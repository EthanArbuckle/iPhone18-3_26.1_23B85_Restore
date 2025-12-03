@interface SXInsertedAdComponent
- (SXComponentClassification)classification;
- (SXInsertedAdComponent)initWithAdType:(unint64_t)type;
@end

@implementation SXInsertedAdComponent

- (SXInsertedAdComponent)initWithAdType:(unint64_t)type
{
  v10.receiver = self;
  v10.super_class = SXInsertedAdComponent;
  v4 = [(SXInsertedAdComponent *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_adType = type;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    placementIdentifier = v5->_placementIdentifier;
    v5->_placementIdentifier = uUIDString;
  }

  return v5;
}

- (SXComponentClassification)classification
{
  type = [(SXInsertedAdComponent *)self type];
  v3 = [SXComponentClassification classificationForComponentWithType:type];

  return v3;
}

@end