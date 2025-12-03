@interface AEAPolicyActivationRunner
- (id)deactivationForScratchpad:(id)scratchpad;
- (void)activateWithScratchpad:(id)scratchpad invalidationHandler:(id)handler completion:(id)completion;
@end

@implementation AEAPolicyActivationRunner

- (id)deactivationForScratchpad:(id)scratchpad
{
  swift_unknownObjectRetain();

  v3 = sub_10004D954();
  swift_unknownObjectRelease();

  return v3;
}

- (void)activateWithScratchpad:(id)scratchpad invalidationHandler:(id)handler completion:(id)completion
{
  v7 = _Block_copy(handler);
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  swift_unknownObjectRetain();

  sub_10004DAC8(scratchpad, sub_10004F6E8, v9, sub_10004F740, v10);
  swift_unknownObjectRelease();
}

@end