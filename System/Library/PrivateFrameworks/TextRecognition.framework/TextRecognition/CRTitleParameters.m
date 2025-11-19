@interface CRTitleParameters
+ (id)defaultTitleParameters;
@end

@implementation CRTitleParameters

+ (id)defaultTitleParameters
{
  v2 = [CRTitleParameters alloc];
  if (v2)
  {
    v4.receiver = v2;
    v4.super_class = CRTitleParameters;
    v2 = objc_msgSendSuper2(&v4, sel_init);
    if (v2)
    {
      v2->_minTitleProbability = 0.0;
      v2->_minTitleLength = 0;
    }
  }

  return v2;
}

@end