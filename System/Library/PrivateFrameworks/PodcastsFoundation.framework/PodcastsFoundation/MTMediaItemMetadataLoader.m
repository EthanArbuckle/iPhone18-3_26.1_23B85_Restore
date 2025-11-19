@interface MTMediaItemMetadataLoader
- (void)keyIdentifiersFrom:(id)a3 completion:(id)a4;
@end

@implementation MTMediaItemMetadataLoader

- (void)keyIdentifiersFrom:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  v10 = sub_1D91785DC();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v8;
  v11[4] = sub_1D8F14DDC;
  v11[5] = v7;
  v15[4] = sub_1D8F1544C;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D8CF5F60;
  v15[3] = &block_descriptor_13_0;
  v12 = _Block_copy(v15);
  v13 = v8;
  v14 = v9;

  [v13 loadValuesAsynchronouslyForKeys:v10 completionHandler:v12];
  _Block_release(v12);
}

@end