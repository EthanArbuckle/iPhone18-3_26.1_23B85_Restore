@interface WFLinkActionPlaceDescriptorParameterDefinition
- (Class)parameterClass;
- (id)linkValueFromParameterState:(id)a3 action:(id)a4;
- (id)parameterStateFromLinkValue:(id)a3;
- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(WFParameterState *)a4 permissionRequestor:(WFContentPermissionRequestor *)a5 runningFromToolKit:(BOOL)a6 action:(WFAction *)a7 parameterKey:(NSString *)a8 completionHandler:(id)aBlock;
@end

@implementation WFLinkActionPlaceDescriptorParameterDefinition

- (Class)parameterClass
{
  sub_1CA6706B0();

  return swift_getObjCClassFromMetadata();
}

- (id)parameterStateFromLinkValue:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = sub_1CA6706DC(a3);

  return v7;
}

- (id)linkValueFromParameterState:(id)a3 action:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  v9 = sub_1CA670850(a3);
  swift_unknownObjectRelease();

  return v9;
}

- (void)getLinkValueFromProcessedParameterValue:(id)a3 parameterState:(WFParameterState *)a4 permissionRequestor:(WFContentPermissionRequestor *)a5 runningFromToolKit:(BOOL)a6 action:(WFAction *)a7 parameterKey:(NSString *)a8 completionHandler:(id)aBlock
{
  v16 = _Block_copy(aBlock);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a6;
  *(v17 + 48) = a7;
  *(v17 + 56) = a8;
  *(v17 + 64) = v16;
  *(v17 + 72) = self;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = a7;
  v19 = a8;
  v20 = self;

  sub_1CA67052C(&unk_1CA9919B8, v17);
}

@end