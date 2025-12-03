@interface CRTextFeatureOrderingUtilities
+ (id)textFeatureOrderWithRevision:(unint64_t)revision angleThresholdForRotatedCrops:(double)crops optimizeGroupsForStability:(BOOL)stability;
@end

@implementation CRTextFeatureOrderingUtilities

+ (id)textFeatureOrderWithRevision:(unint64_t)revision angleThresholdForRotatedCrops:(double)crops optimizeGroupsForStability:(BOOL)stability
{
  stabilityCopy = stability;
  if (revision <= 2)
  {
    v7 = CROSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B40D2000, v7, OS_LOG_TYPE_DEFAULT, "textFeatureOrderWithRevision is only supported on V3 onwards", v11, 2u);
    }
  }

  v8 = [[CRTextFeatureOrderV2 alloc] initWithAngleThresholdForRotatedCrops:crops];
  v9 = v8;
  if (stabilityCopy)
  {
    [(CRTextFeatureOrderV2 *)v8 setTextFeatureOrderMode:1];
  }

  return v9;
}

@end