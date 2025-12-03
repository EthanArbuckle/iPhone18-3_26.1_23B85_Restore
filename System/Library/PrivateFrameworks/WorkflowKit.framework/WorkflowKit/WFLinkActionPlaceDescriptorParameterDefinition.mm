@interface WFLinkActionPlaceDescriptorParameterDefinition
- (Class)parameterClass;
- (id)linkValueFromParameterState:(id)state action:(id)action;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(WFParameterState *)state permissionRequestor:(WFContentPermissionRequestor *)requestor runningFromToolKit:(BOOL)kit action:(WFAction *)action parameterKey:(NSString *)key completionHandler:(id)aBlock;
@end

@implementation WFLinkActionPlaceDescriptorParameterDefinition

- (Class)parameterClass
{
  sub_1CA6706B0();

  return swift_getObjCClassFromMetadata();
}

- (id)parameterStateFromLinkValue:(id)value
{
  valueCopy = value;
  selfCopy = self;
  v7 = sub_1CA6706DC(value);

  return v7;
}

- (id)linkValueFromParameterState:(id)state action:(id)action
{
  swift_unknownObjectRetain();
  actionCopy = action;
  selfCopy = self;
  v9 = sub_1CA670850(state);
  swift_unknownObjectRelease();

  return v9;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(WFParameterState *)state permissionRequestor:(WFContentPermissionRequestor *)requestor runningFromToolKit:(BOOL)kit action:(WFAction *)action parameterKey:(NSString *)key completionHandler:(id)aBlock
{
  v16 = _Block_copy(aBlock);
  v17 = swift_allocObject();
  *(v17 + 16) = value;
  *(v17 + 24) = state;
  *(v17 + 32) = requestor;
  *(v17 + 40) = kit;
  *(v17 + 48) = action;
  *(v17 + 56) = key;
  *(v17 + 64) = v16;
  *(v17 + 72) = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  actionCopy = action;
  keyCopy = key;
  selfCopy = self;

  sub_1CA67052C(&unk_1CA9919B8, v17);
}

@end