@interface DynamicPaymentButtonSlotDelegate
- (_TtC9PassKitUI32DynamicPaymentButtonSlotDelegate)init;
- (id)slotMachineForFinalContentInSlotView:(id)view;
- (id)slotView:(id)view replacementForFinalContent:(id)content style:(id)style tag:(id)tag;
@end

@implementation DynamicPaymentButtonSlotDelegate

- (id)slotMachineForFinalContentInSlotView:(id)view
{
  selfCopy = self;
  v4 = sub_1BD9EECE8();
  aBlock[4] = sub_1BD9EF074;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD9EF248;
  aBlock[3] = &block_descriptor_45_1;
  v5 = _Block_copy(aBlock);
  synchronousRemoteObjectProxyWithErrorHandler_ = [v4 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v5);

  sub_1BE053624();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5B900);
  swift_dynamicCast();

  return v8;
}

- (id)slotView:(id)view replacementForFinalContent:(id)content style:(id)style tag:(id)tag
{
  viewCopy = view;
  swift_unknownObjectRetain();
  styleCopy = style;
  tagCopy = tag;
  selfCopy = self;
  v14 = sub_1BD9EF554(content);

  swift_unknownObjectRelease();

  return v14;
}

- (_TtC9PassKitUI32DynamicPaymentButtonSlotDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end