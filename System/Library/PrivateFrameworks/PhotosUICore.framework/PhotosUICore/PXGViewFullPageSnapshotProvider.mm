@interface PXGViewFullPageSnapshotProvider
- (void)addVisualDiagnosticsToContext:(id)context completionHandler:(id)handler;
@end

@implementation PXGViewFullPageSnapshotProvider

- (void)addVisualDiagnosticsToContext:(id)context completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = context;
  v8[4] = sub_1A3D7A9AC;
  v8[5] = v7;
  contextCopy = context;
  swift_retain_n();
  v10 = contextCopy;

  sub_1A42D0DE4(sub_1A42D3D54, v8);
}

@end