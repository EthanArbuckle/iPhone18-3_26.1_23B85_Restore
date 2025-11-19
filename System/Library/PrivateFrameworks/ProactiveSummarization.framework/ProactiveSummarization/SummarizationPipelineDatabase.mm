@interface SummarizationPipelineDatabase
- (id)databaseHandle;
- (id)migrations;
- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)a3;
@end

@implementation SummarizationPipelineDatabase

- (id)migrations
{
  v2 = self;
  sub_231D499D8();

  sub_231CC1784(0, &qword_2814CBD70, 0x277CCABB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
  sub_231D5235C();
  v3 = sub_231E11520();

  return v3;
}

- (id)queriesToSkipFromEmptyToVersion:(unsigned int *)a3
{
  sub_231D49C20(a3);
  v3 = sub_231E11850();

  return v3;
}

- (id)databaseHandle
{
  v2 = sub_231D49C8C();

  return v2;
}

@end