@interface WBSAutoFillControlHandle
+ (void)asynchronouslyEnumerateFramesOnQueue:(id)queue withControlHandles:(id)handles block:(id)block completionHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (NSString)controlID;
- (NSString)description;
- (WBSAutoFillControlHandle)init;
- (WBSAutoFillControlHandle)initWithFrameHandle:(id)handle formID:(int64_t)d controlID:(id)iD;
- (WBSAutoFillControlHandle)initWithFrameHandle:(id)handle formMetadata:(id)metadata controlMetadata:(id)controlMetadata;
- (id)copyWithZone:(void *)zone;
@end

@implementation WBSAutoFillControlHandle

- (NSString)controlID
{

  v2 = sub_1C6A74780();

  return v2;
}

- (WBSAutoFillControlHandle)initWithFrameHandle:(id)handle formID:(int64_t)d controlID:(id)iD
{
  v8 = sub_1C6A747B0();
  *(self + OBJC_IVAR___WBSAutoFillControlHandle_frameHandle) = handle;
  *(self + OBJC_IVAR___WBSAutoFillControlHandle_formID) = d;
  v9 = (self + OBJC_IVAR___WBSAutoFillControlHandle_controlID);
  *v9 = v8;
  v9[1] = v10;
  v13.receiver = self;
  v13.super_class = WBSAutoFillControlHandle;
  handleCopy = handle;
  return [(WBSAutoFillControlHandle *)&v13 init];
}

- (WBSAutoFillControlHandle)initWithFrameHandle:(id)handle formMetadata:(id)metadata controlMetadata:(id)controlMetadata
{
  handleCopy = handle;
  metadataCopy = metadata;
  controlMetadataCopy = controlMetadata;
  uniqueID = [metadataCopy uniqueID];
  result = [controlMetadataCopy uniqueID];
  if (result)
  {
    v13 = result;
    v14 = [(WBSAutoFillControlHandle *)self initWithFrameHandle:handleCopy formID:uniqueID controlID:result];

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
  selfCopy = self;
  WBSAutoFillControlHandle.description.getter();

  v3 = sub_1C6A74780();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C6A749F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = WBSAutoFillControlHandle.isEqual(_:)(v8);

  sub_1C6A56174(v8);
  return v6 & 1;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  frameHandle = [(WBSAutoFillControlHandle *)selfCopy frameHandle];
  formID = [(WBSAutoFillControlHandle *)selfCopy formID];
  controlID = [(WBSAutoFillControlHandle *)selfCopy controlID];
  if (!controlID)
  {
    sub_1C6A747B0();
    controlID = sub_1C6A74780();
  }

  v7 = [objc_allocWithZone(WBSAutoFillControlHandle) initWithFrameHandle:frameHandle formID:formID controlID:controlID];

  return v7;
}

+ (void)asynchronouslyEnumerateFramesOnQueue:(id)queue withControlHandles:(id)handles block:(id)block completionHandler:(id)handler
{
  v8 = _Block_copy(block);
  v9 = _Block_copy(handler);
  type metadata accessor for WBSAutoFillControlHandle(v9);
  v10 = sub_1C6A74830();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v12 = swift_allocObject();
  v12[2] = v9;
  queueCopy = queue;
  _sSo24WBSAutoFillControlHandleC14SafariSharedUIE29asynchronouslyEnumerateFrames2on4with5block17completionHandlerySo17OS_dispatch_queueC_SayABGySo08_WKFrameD0C_SaySSGyyctcyyctFZ_0(queueCopy, v10, sub_1C6A56F58, v11, sub_1C6A56F60, v12);
}

- (WBSAutoFillControlHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end