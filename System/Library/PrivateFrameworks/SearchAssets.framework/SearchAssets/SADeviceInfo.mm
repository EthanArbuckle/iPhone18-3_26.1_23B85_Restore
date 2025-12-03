@interface SADeviceInfo
- (id)prefixStoreVersion;
- (id)trialExperiment;
- (int)buildType;
@end

@implementation SADeviceInfo

- (int)buildType
{
  selfCopy = self;
  v3 = sub_2157FBBC8();

  return v3;
}

- (id)prefixStoreVersion
{
  selfCopy = self;
  sub_2157FBC5C();
  v4 = v3;

  if (v4)
  {
    v5 = sub_21580B880();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)trialExperiment
{
  type metadata accessor for SATrialExperiment(self);
  v2 = sub_21580B9F0();

  return v2;
}

@end