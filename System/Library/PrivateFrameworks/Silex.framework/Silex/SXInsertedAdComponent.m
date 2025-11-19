@interface SXInsertedAdComponent
- (SXComponentClassification)classification;
- (SXInsertedAdComponent)initWithAdType:(unint64_t)a3;
@end

@implementation SXInsertedAdComponent

- (SXInsertedAdComponent)initWithAdType:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = SXInsertedAdComponent;
  v4 = [(SXInsertedAdComponent *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_adType = a3;
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v6 UUIDString];
    placementIdentifier = v5->_placementIdentifier;
    v5->_placementIdentifier = v7;
  }

  return v5;
}

- (SXComponentClassification)classification
{
  v2 = [(SXInsertedAdComponent *)self type];
  v3 = [SXComponentClassification classificationForComponentWithType:v2];

  return v3;
}

@end