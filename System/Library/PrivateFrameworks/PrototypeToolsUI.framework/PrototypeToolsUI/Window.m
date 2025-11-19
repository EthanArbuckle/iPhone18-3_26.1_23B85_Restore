@interface Window
+ (BOOL)_isSecure;
- (_TtC10prototyped6Window)initWithCoder:(id)a3;
- (_TtC10prototyped6Window)initWithFrame:(CGRect)a3;
- (_TtC10prototyped6Window)initWithWindowScene:(id)a3;
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

- (_TtC10prototyped6Window)initWithWindowScene:(id)a3
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
  v5 = [(Window *)&v7 initWithWindowScene:a3];

  return v5;
}

- (_TtC10prototyped6Window)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for Window();
  v8 = [(Window *)&v10 initWithFrame:x, y, width, height];

  return v8;
}

- (_TtC10prototyped6Window)initWithCoder:(id)a3
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
  v5 = a3;
  v6 = [(Window *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end