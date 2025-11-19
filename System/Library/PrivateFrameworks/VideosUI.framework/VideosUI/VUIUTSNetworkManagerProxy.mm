@interface VUIUTSNetworkManagerProxy
+ (id)createURLRequestFromRequestProperties:(id)a3 urlRequest:(id)a4 completion:(id *)a5;
+ (void)fetchConfiguration:(BOOL)a3 completion:(id)a4;
@end

@implementation VUIUTSNetworkManagerProxy

+ (void)fetchConfiguration:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = v6;
  *(v7 + 32) = a1;

  sub_1E38364EC(&unk_1E42DC498, v7);
}

+ (id)createURLRequestFromRequestProperties:(id)a3 urlRequest:(id)a4 completion:(id *)a5
{
  v6 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  sub_1E41FDDA4();
  v16 = a3;
  static VUIUTSNetworkManagerProxy.createURLRequest(from:urlRequest:)(v16, v12, v15);
  v17 = *(v8 + 8);
  v17(v12, v6);

  v18 = sub_1E41FDD94();
  v17(v15, v6);

  return v18;
}

@end