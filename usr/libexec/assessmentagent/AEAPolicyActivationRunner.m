@interface AEAPolicyActivationRunner
- (id)deactivationForScratchpad:(id)a3;
- (void)activateWithScratchpad:(id)a3 invalidationHandler:(id)a4 completion:(id)a5;
@end

@implementation AEAPolicyActivationRunner

- (id)deactivationForScratchpad:(id)a3
{
  swift_unknownObjectRetain();

  v3 = sub_10004D954();
  swift_unknownObjectRelease();

  return v3;
}

- (void)activateWithScratchpad:(id)a3 invalidationHandler:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a4);
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  swift_unknownObjectRetain();

  sub_10004DAC8(a3, sub_10004F6E8, v9, sub_10004F740, v10);
  swift_unknownObjectRelease();
}

@end