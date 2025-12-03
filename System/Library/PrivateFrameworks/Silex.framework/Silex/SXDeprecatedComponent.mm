@interface SXDeprecatedComponent
+ (id)deprecatedComponentWithType:(uint64_t)type withReplacementClassificationClass:;
- (SXDeprecatedComponent)initWithType:(id)type withReplacementClassification:(Class)classification;
@end

@implementation SXDeprecatedComponent

+ (id)deprecatedComponentWithType:(uint64_t)type withReplacementClassificationClass:
{
  v4 = a2;
  v5 = [objc_alloc(objc_opt_self()) initWithType:v4 withReplacementClassification:type];

  return v5;
}

- (SXDeprecatedComponent)initWithType:(id)type withReplacementClassification:(Class)classification
{
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = SXDeprecatedComponent;
  v8 = [(SXDeprecatedComponent *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_typeString, type);
    v10 = objc_alloc_init(classification);
    replacementClassification = v9->_replacementClassification;
    v9->_replacementClassification = v10;
  }

  return v9;
}

@end