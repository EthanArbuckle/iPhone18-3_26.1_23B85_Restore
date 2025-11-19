@interface TSCH3DScenePart
+ (id)scenePartWithEnumerator:(id)a3 properties:(id)a4;
- (TSCH3DScenePart)initWithEnumerator:(id)a3 properties:(id)a4;
@end

@implementation TSCH3DScenePart

+ (id)scenePartWithEnumerator:(id)a3 properties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 alloc];
  v13 = objc_msgSend_initWithEnumerator_properties_(v8, v9, v10, v11, v12, v6, v7);

  return v13;
}

- (TSCH3DScenePart)initWithEnumerator:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TSCH3DScenePart;
  v9 = [(TSCH3DScenePart *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_enumerator, a3);
    objc_storeStrong(&v10->_properties, a4);
  }

  return v10;
}

@end