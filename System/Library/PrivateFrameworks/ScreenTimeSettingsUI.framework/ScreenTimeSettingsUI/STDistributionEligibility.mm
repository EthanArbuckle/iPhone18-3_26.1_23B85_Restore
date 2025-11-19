@interface STDistributionEligibility
+ (BOOL)evaluateEligibilityForAppDistribution;
@end

@implementation STDistributionEligibility

+ (BOOL)evaluateEligibilityForAppDistribution
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    domain_answer = os_eligibility_get_domain_answer();
    if (domain_answer | os_eligibility_get_domain_answer())
    {
      v4 = +[STUILog contentPrivacy];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        +[(STDistributionEligibility *)v4];
      }

      LOBYTE(v2) = 0;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2;
}

@end