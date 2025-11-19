@interface PUIDebugViewFactory
+ (id)debugViewForComponent:(int64_t)a3;
+ (id)uiImageForError:(id)a3 location:(int64_t)a4;
+ (id)uiImageWithMessage:(id)a3 level:(unsigned __int8)a4 frame:(CGRect)a5 location:(int64_t)a6;
+ (id)uiViewForError:(id)a3 location:(int64_t)a4;
+ (id)uiViewWithMessage:(id)a3 level:(unsigned __int8)a4 frame:(CGRect)a5 location:(int64_t)a6;
- (PUIDebugViewFactory)init;
@end

@implementation PUIDebugViewFactory

+ (id)uiImageForError:(id)a3 location:(int64_t)a4
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = sub_1A8D0AED0(v6, a4);

  return v7;
}

+ (id)uiImageWithMessage:(id)a3 level:(unsigned __int8)a4 frame:(CGRect)a5 location:(int64_t)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = sub_1A8D18A2C();
  v14 = sub_1A8D0CC10(v12, v13, v11, a6, x, y, width, height);

  return v14;
}

+ (id)uiViewForError:(id)a3 location:(int64_t)a4
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = sub_1A8D0B254(v6, a4);

  return v7;
}

+ (id)uiViewWithMessage:(id)a3 level:(unsigned __int8)a4 frame:(CGRect)a5 location:(int64_t)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = sub_1A8D18A2C();
  v14 = sub_1A8D0CF20(v12, v13, v11, a6, x, y, width, height);

  return v14;
}

+ (id)debugViewForComponent:(int64_t)a3
{
  sub_1A8D0B7A4(a3, v6);
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