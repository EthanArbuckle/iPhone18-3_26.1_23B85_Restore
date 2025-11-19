@interface MetricsRecorderObjC
- (NSDictionary)pageData;
- (void)recordClick:(id)a3 locationData:(id)a4;
- (void)recordImpressions;
- (void)recordPage:(id)a3;
- (void)setPageData:(id)a3;
@end

@implementation MetricsRecorderObjC

- (NSDictionary)pageData
{
  if (sub_1E3FF0924())
  {
    sub_1E4205C44();
    OUTLINED_FUNCTION_50();
  }

  else
  {
    self = 0;
  }

  return self;
}

- (void)setPageData:(id)a3
{
  if (a3)
  {
    v4 = OUTLINED_FUNCTION_14_168();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1E3FF09E4(v4);
}

- (void)recordPage:(id)a3
{
  OUTLINED_FUNCTION_14_168();
  v4 = self;
  sub_1E3FF0BCC();
}

- (void)recordClick:(id)a3 locationData:(id)a4
{
  OUTLINED_FUNCTION_14_168();
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    a4 = sub_1E42062B4();
  }

  v6 = self;
  v7 = OUTLINED_FUNCTION_50();
  sub_1E3FF0D14(v7, a4);
}

- (void)recordImpressions
{
  v2 = self;
  sub_1E3FF0F68();
}

@end