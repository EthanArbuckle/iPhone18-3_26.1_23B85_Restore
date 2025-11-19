@interface WBSAutoFillControlHandle
+ (void)asynchronouslyEnumerateFramesOnQueue:(id)a3 withControlHandles:(id)a4 block:(id)a5 completionHandler:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSString)controlID;
- (NSString)description;
- (WBSAutoFillControlHandle)init;
- (WBSAutoFillControlHandle)initWithFrameHandle:(id)a3 formID:(int64_t)a4 controlID:(id)a5;
- (WBSAutoFillControlHandle)initWithFrameHandle:(id)a3 formMetadata:(id)a4 controlMetadata:(id)a5;
- (id)copyWithZone:(void *)a3;
@end

@implementation WBSAutoFillControlHandle

- (NSString)controlID
{

  v2 = sub_1C6A74780();

  return v2;
}

- (WBSAutoFillControlHandle)initWithFrameHandle:(id)a3 formID:(int64_t)a4 controlID:(id)a5
{
  v8 = sub_1C6A747B0();
  *(self + OBJC_IVAR___WBSAutoFillControlHandle_frameHandle) = a3;
  *(self + OBJC_IVAR___WBSAutoFillControlHandle_formID) = a4;
  v9 = (self + OBJC_IVAR___WBSAutoFillControlHandle_controlID);
  *v9 = v8;
  v9[1] = v10;
  v13.receiver = self;
  v13.super_class = WBSAutoFillControlHandle;
  v11 = a3;
  return [(WBSAutoFillControlHandle *)&v13 init];
}

- (WBSAutoFillControlHandle)initWithFrameHandle:(id)a3 formMetadata:(id)a4 controlMetadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 uniqueID];
  result = [v10 uniqueID];
  if (result)
  {
    v13 = result;
    v14 = [(WBSAutoFillControlHandle *)self initWithFrameHandle:v8 formID:v11 controlID:result];

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSString)description
{
  v2 = self;
  WBSAutoFillControlHandle.description.getter();

  v3 = sub_1C6A74780();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C6A749F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = WBSAutoFillControlHandle.isEqual(_:)(v8);

  sub_1C6A56174(v8);
  return v6 & 1;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  v4 = [(WBSAutoFillControlHandle *)v3 frameHandle];
  v5 = [(WBSAutoFillControlHandle *)v3 formID];
  v6 = [(WBSAutoFillControlHandle *)v3 controlID];
  if (!v6)
  {
    sub_1C6A747B0();
    v6 = sub_1C6A74780();
  }

  v7 = [objc_allocWithZone(WBSAutoFillControlHandle) initWithFrameHandle:v4 formID:v5 controlID:v6];

  return v7;
}

+ (void)asynchronouslyEnumerateFramesOnQueue:(id)a3 withControlHandles:(id)a4 block:(id)a5 completionHandler:(id)a6
{
  v8 = _Block_copy(a5);
  v9 = _Block_copy(a6);
  type metadata accessor for WBSAutoFillControlHandle(v9);
  v10 = sub_1C6A74830();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = swift_allocObject();
  v12[2] = v9;
  v13 = a3;
  _sSo24WBSAutoFillControlHandleC14SafariSharedUIE29asynchronouslyEnumerateFrames2on4with5block17completionHandlerySo17OS_dispatch_queueC_SayABGySo08_WKFrameD0C_SaySSGyyctcyyctFZ_0(v13, v10, sub_1C6A56F58, v11, sub_1C6A56F60, v12);
}

- (WBSAutoFillControlHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end