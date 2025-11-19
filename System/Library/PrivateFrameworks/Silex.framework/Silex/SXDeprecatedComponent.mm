@interface SXDeprecatedComponent
+ (id)deprecatedComponentWithType:(uint64_t)a3 withReplacementClassificationClass:;
- (SXDeprecatedComponent)initWithType:(id)a3 withReplacementClassification:(Class)a4;
@end

@implementation SXDeprecatedComponent

+ (id)deprecatedComponentWithType:(uint64_t)a3 withReplacementClassificationClass:
{
  v4 = a2;
  v5 = [objc_alloc(objc_opt_self()) initWithType:v4 withReplacementClassification:a3];

  return v5;
}

- (SXDeprecatedComponent)initWithType:(id)a3 withReplacementClassification:(Class)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = SXDeprecatedComponent;
  v8 = [(SXDeprecatedComponent *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_typeString, a3);
    v10 = objc_alloc_init(a4);
    replacementClassification = v9->_replacementClassification;
    v9->_replacementClassification = v10;
  }

  return v9;
}

@end