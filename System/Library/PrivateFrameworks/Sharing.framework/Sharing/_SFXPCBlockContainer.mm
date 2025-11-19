@interface _SFXPCBlockContainer
- (_SFXPCBlockContainer)init;
- (void)invoke:(id)a3 parametersData:(id)a4 parametersAsyncSequenceContainer:(id)a5 parametersBlocksContainer:(id)a6 sync:(BOOL)a7 completion:(id)a8;
@end

@implementation _SFXPCBlockContainer

- (void)invoke:(id)a3 parametersData:(id)a4 parametersAsyncSequenceContainer:(id)a5 parametersBlocksContainer:(id)a6 sync:(BOOL)a7 completion:(id)a8
{
  v25 = a7;
  v13 = sub_1A99762C0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(a8);
  sub_1A9976290();
  v19 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v20 = self;
  v21 = sub_1A9976070();
  v23 = v22;

  _Block_copy(v18);
  sub_1A97C0468(v17, v21, v23, a5, a6, v25, v20, v18);
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