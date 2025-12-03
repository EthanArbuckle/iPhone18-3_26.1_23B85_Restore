@interface PUIDebugViewFactory
+ (id)debugViewForComponent:(int64_t)component;
+ (id)uiImageForError:(id)error location:(int64_t)location;
+ (id)uiImageWithMessage:(id)message level:(unsigned __int8)level frame:(CGRect)frame location:(int64_t)location;
+ (id)uiViewForError:(id)error location:(int64_t)location;
+ (id)uiViewWithMessage:(id)message level:(unsigned __int8)level frame:(CGRect)frame location:(int64_t)location;
- (PUIDebugViewFactory)init;
@end

@implementation PUIDebugViewFactory

+ (id)uiImageForError:(id)error location:(int64_t)location
{
  swift_getObjCClassMetadata();
  errorCopy = error;
  v7 = sub_1A8D0AED0(errorCopy, location);

  return v7;
}

+ (id)uiImageWithMessage:(id)message level:(unsigned __int8)level frame:(CGRect)frame location:(int64_t)location
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  levelCopy = level;
  v12 = sub_1A8D18A2C();
  v14 = sub_1A8D0CC10(v12, v13, levelCopy, location, x, y, width, height);

  return v14;
}

+ (id)uiViewForError:(id)error location:(int64_t)location
{
  swift_getObjCClassMetadata();
  errorCopy = error;
  v7 = sub_1A8D0B254(errorCopy, location);

  return v7;
}

+ (id)uiViewWithMessage:(id)message level:(unsigned __int8)level frame:(CGRect)frame location:(int64_t)location
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  levelCopy = level;
  v12 = sub_1A8D18A2C();
  v14 = sub_1A8D0CF20(v12, v13, levelCopy, location, x, y, width, height);

  return v14;
}

+ (id)debugViewForComponent:(int64_t)component
{
  sub_1A8D0B7A4(component, v6);
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = sub_1A8D0B5BC(v3);
  __swift_destroy_boxed_opaque_existential_1(v6);

  return v4;
}

- (PUIDebugViewFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end