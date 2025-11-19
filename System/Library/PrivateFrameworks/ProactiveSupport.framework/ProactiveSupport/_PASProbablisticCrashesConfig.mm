@interface _PASProbablisticCrashesConfig
- (_PASProbablisticCrashesConfig)init;
@end

@implementation _PASProbablisticCrashesConfig

- (_PASProbablisticCrashesConfig)init
{
  v6.receiver = self;
  v6.super_class = _PASProbablisticCrashesConfig;
  v2 = [(_PASProbablisticCrashesConfig *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_oddsNumerator = 1;
    if (os_variant_has_internal_diagnostics())
    {
      v4 = 1000;
    }

    else
    {
      v4 = 10000;
    }

    v3->_oddsDenominator = v4;
    v3->_uniqueCallsiteWindowSize = 4;
  }

  return v3;
}

@end