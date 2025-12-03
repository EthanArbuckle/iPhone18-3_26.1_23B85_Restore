@interface PEModelDeliveryManager
- (BOOL)isModelAvailable;
- (id)packageURLs;
- (void)preparePackageWithProgress:(id)progress updateHandler:(id)handler;
- (void)stopNetworkMonitoring;
@end

@implementation PEModelDeliveryManager

- (void)stopNetworkMonitoring
{
  selfCopy = self;
  sub_25E71687C();
}

- (BOOL)isModelAvailable
{
  selfCopy = self;
  v3 = sub_25E716978();

  return v3 & 1;
}

- (void)preparePackageWithProgress:(id)progress updateHandler:(id)handler
{
  v6 = _Block_copy(progress);
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  sub_25E7169FC(sub_25E71CDE8, v8, sub_25E71CDFC, v9);
}

- (id)packageURLs
{
  selfCopy = self;
  v3 = sub_25E717840();

  if (v3)
  {
    sub_25E755918();
    v4 = sub_25E756C78();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end