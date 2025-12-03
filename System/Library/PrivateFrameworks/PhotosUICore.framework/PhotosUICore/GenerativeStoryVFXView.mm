@interface GenerativeStoryVFXView
- (_TtC12PhotosUICore22GenerativeStoryVFXView)initWithFrame:(CGRect)frame;
- (_TtC12PhotosUICore22GenerativeStoryVFXView)initWithFrame:(CGRect)frame options:(id)options;
@end

@implementation GenerativeStoryVFXView

- (_TtC12PhotosUICore22GenerativeStoryVFXView)initWithFrame:(CGRect)frame options:(id)options
{
  if (options)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    v8 = sub_1A524C3E4();
    frame.origin.x = x;
    frame.origin.y = y;
    frame.size.width = width;
    frame.size.height = height;
  }

  else
  {
    v8 = 0;
  }

  return sub_1A3DCECE4(v8, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
}

- (_TtC12PhotosUICore22GenerativeStoryVFXView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end