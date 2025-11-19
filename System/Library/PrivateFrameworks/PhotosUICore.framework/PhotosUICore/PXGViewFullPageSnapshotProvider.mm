@interface PXGViewFullPageSnapshotProvider
- (void)addVisualDiagnosticsToContext:(id)a3 completionHandler:(id)a4;
@end

@implementation PXGViewFullPageSnapshotProvider

- (void)addVisualDiagnosticsToContext:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = a3;
  v8[4] = sub_1A3D7A9AC;
  v8[5] = v7;
  v9 = a3;
  swift_retain_n();
  v10 = v9;

  sub_1A42D0DE4(sub_1A42D3D54, v8);
}

@end