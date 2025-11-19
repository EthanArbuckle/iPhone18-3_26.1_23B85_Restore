@interface CRTextFeatureOrderingUtilities
+ (id)textFeatureOrderWithRevision:(unint64_t)a3 angleThresholdForRotatedCrops:(double)a4 optimizeGroupsForStability:(BOOL)a5;
@end

@implementation CRTextFeatureOrderingUtilities

+ (id)textFeatureOrderWithRevision:(unint64_t)a3 angleThresholdForRotatedCrops:(double)a4 optimizeGroupsForStability:(BOOL)a5
{
  v5 = a5;
  if (a3 <= 2)
  {
    v7 = CROSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_DEFAULT, "textFeatureOrderWithRevision is only supported on V3 onwards", v11, 2u);
    }
  }

  v8 = [[CRTextFeatureOrderV2 alloc] initWithAngleThresholdForRotatedCrops:a4];
  v9 = v8;
  if (v5)
  {
    [(CRTextFeatureOrderV2 *)v8 setTextFeatureOrderMode:1];
  }

  return v9;
}

@end