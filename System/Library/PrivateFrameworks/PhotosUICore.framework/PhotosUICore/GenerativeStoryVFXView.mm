@interface GenerativeStoryVFXView
- (_TtC12PhotosUICore22GenerativeStoryVFXView)initWithFrame:(CGRect)a3;
- (_TtC12PhotosUICore22GenerativeStoryVFXView)initWithFrame:(CGRect)a3 options:(id)a4;
@end

@implementation GenerativeStoryVFXView

- (_TtC12PhotosUICore22GenerativeStoryVFXView)initWithFrame:(CGRect)a3 options:(id)a4
{
  if (a4)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v8 = sub_1A524C3E4();
    a3.origin.x = x;
    a3.origin.y = y;
    a3.size.width = width;
    a3.size.height = height;
  }

  else
  {
    v8 = 0;
  }

  return sub_1A3DCECE4(v8, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
}

- (_TtC12PhotosUICore22GenerativeStoryVFXView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end