@interface SXResolvedObject
- (id)initWitObject:(id)object conditionTypes:(id)types;
@end

@implementation SXResolvedObject

- (id)initWitObject:(id)object conditionTypes:(id)types
{
  objectCopy = object;
  typesCopy = types;
  v14.receiver = self;
  v14.super_class = SXResolvedObject;
  v9 = [(SXResolvedObject *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_object, object);
    v11 = [typesCopy copy];
    conditionTypes = v10->_conditionTypes;
    v10->_conditionTypes = v11;
  }

  return v10;
}

@end