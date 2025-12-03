@interface MetricsRecorderObjC
- (NSDictionary)pageData;
- (void)recordClick:(id)click locationData:(id)data;
- (void)recordImpressions;
- (void)recordPage:(id)page;
- (void)setPageData:(id)data;
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

- (void)setPageData:(id)data
{
  if (data)
  {
    v4 = OUTLINED_FUNCTION_14_168();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_1E3FF09E4(v4);
}

- (void)recordPage:(id)page
{
  OUTLINED_FUNCTION_14_168();
  selfCopy = self;
  sub_1E3FF0BCC();
}

- (void)recordClick:(id)click locationData:(id)data
{
  OUTLINED_FUNCTION_14_168();
  if (data)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    data = sub_1E42062B4();
  }

  selfCopy = self;
  v7 = OUTLINED_FUNCTION_50();
  sub_1E3FF0D14(v7, data);
}

- (void)recordImpressions
{
  selfCopy = self;
  sub_1E3FF0F68();
}

@end