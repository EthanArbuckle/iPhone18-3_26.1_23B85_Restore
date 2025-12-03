@interface Window
+ (BOOL)_isSecure;
- (_TtC10prototyped6Window)initWithCoder:(id)coder;
- (_TtC10prototyped6Window)initWithFrame:(CGRect)frame;
- (_TtC10prototyped6Window)initWithWindowScene:(id)scene;
@end

@implementation Window

+ (BOOL)_isSecure
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

- (_TtC10prototyped6Window)initWithWindowScene:(id)scene
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for Window();
  v5 = [(Window *)&v7 initWithWindowScene:scene];

  return v5;
}

- (_TtC10prototyped6Window)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for Window();
  height = [(Window *)&v10 initWithFrame:x, y, width, height];

  return height;
}

- (_TtC10prototyped6Window)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for Window();
  coderCopy = coder;
  v6 = [(Window *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end