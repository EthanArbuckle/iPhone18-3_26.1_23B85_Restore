@interface PEModelDeliveryManager
- (BOOL)isModelAvailable;
- (id)packageURLs;
- (void)preparePackageWithProgress:(id)a3 updateHandler:(id)a4;
- (void)stopNetworkMonitoring;
@end

@implementation PEModelDeliveryManager

- (void)stopNetworkMonitoring
{
  v2 = self;
  sub_25E71687C();
}

- (BOOL)isModelAvailable
{
  v2 = self;
  v3 = sub_25E716978();

  return v3 & 1;
}

- (void)preparePackageWithProgress:(id)a3 updateHandler:(id)a4
{
  v6 = _Block_copy(a3);
  v7 = _Block_copy(a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  sub_25E7169FC(sub_25E71CDE8, v8, sub_25E71CDFC, v9);
}

- (id)packageURLs
{
  v2 = self;
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