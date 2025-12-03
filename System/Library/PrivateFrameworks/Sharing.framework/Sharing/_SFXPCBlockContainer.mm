@interface _SFXPCBlockContainer
- (_SFXPCBlockContainer)init;
- (void)invoke:(id)invoke parametersData:(id)data parametersAsyncSequenceContainer:(id)container parametersBlocksContainer:(id)blocksContainer sync:(BOOL)sync completion:(id)completion;
@end

@implementation _SFXPCBlockContainer

- (void)invoke:(id)invoke parametersData:(id)data parametersAsyncSequenceContainer:(id)container parametersBlocksContainer:(id)blocksContainer sync:(BOOL)sync completion:(id)completion
{
  syncCopy = sync;
  v13 = sub_1A99762C0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(completion);
  sub_1A9976290();
  dataCopy = data;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  v21 = sub_1A9976070();
  v23 = v22;

  _Block_copy(v18);
  sub_1A97C0468(v17, v21, v23, container, blocksContainer, syncCopy, selfCopy, v18);
  _Block_release(v18);
  _Block_release(v18);
  sub_1A97B43C4(v21, v23);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v14 + 8))(v17, v13);
}

- (_SFXPCBlockContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end