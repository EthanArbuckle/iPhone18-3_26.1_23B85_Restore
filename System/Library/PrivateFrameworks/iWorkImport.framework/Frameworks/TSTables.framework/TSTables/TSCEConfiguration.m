@interface TSCEConfiguration
+ (id)sharedCalculationEngineConfiguration;
- (TSCEConfiguration)init;
@end

@implementation TSCEConfiguration

+ (id)sharedCalculationEngineConfiguration
{
  v2 = qword_27CFB6C48;
  if (!qword_27CFB6C48)
  {
    v3 = objc_alloc_init(TSCEConfiguration);
    v4 = qword_27CFB6C48;
    qword_27CFB6C48 = v3;

    v2 = qword_27CFB6C48;
  }

  return v2;
}

- (TSCEConfiguration)init
{
  v3.receiver = self;
  v3.super_class = TSCEConfiguration;
  result = [(TSCEConfiguration *)&v3 init];
  if (result)
  {
    result->mWarnWhenFormulasReferToEmptyCells = 0;
  }

  return result;
}

@end