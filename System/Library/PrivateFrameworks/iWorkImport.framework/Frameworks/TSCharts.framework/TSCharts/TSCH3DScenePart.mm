@interface TSCH3DScenePart
+ (id)scenePartWithEnumerator:(id)enumerator properties:(id)properties;
- (TSCH3DScenePart)initWithEnumerator:(id)enumerator properties:(id)properties;
@end

@implementation TSCH3DScenePart

+ (id)scenePartWithEnumerator:(id)enumerator properties:(id)properties
{
  enumeratorCopy = enumerator;
  propertiesCopy = properties;
  v8 = [self alloc];
  v13 = objc_msgSend_initWithEnumerator_properties_(v8, v9, v10, v11, v12, enumeratorCopy, propertiesCopy);

  return v13;
}

- (TSCH3DScenePart)initWithEnumerator:(id)enumerator properties:(id)properties
{
  enumeratorCopy = enumerator;
  propertiesCopy = properties;
  v12.receiver = self;
  v12.super_class = TSCH3DScenePart;
  v9 = [(TSCH3DScenePart *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_enumerator, enumerator);
    objc_storeStrong(&v10->_properties, properties);
  }

  return v10;
}

@end