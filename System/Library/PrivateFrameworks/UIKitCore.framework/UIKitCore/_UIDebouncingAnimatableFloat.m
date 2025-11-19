@interface _UIDebouncingAnimatableFloat
- (_TtC5UIKit28_UIDebouncingAnimatableFloat)init;
- (_TtC5UIKit28_UIDebouncingAnimatableFloat)initWithView:(id)a3;
- (double)value;
- (void)setValue:(double)a3;
@end

@implementation _UIDebouncingAnimatableFloat

- (double)value
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _UIDebouncingAnimatableFloat();
  [(UIViewFloatAnimatableProperty *)&v3 value];
  return result;
}

- (void)setValue:(double)a3
{
  v5 = self;
  [(_UIDebouncingAnimatableFloat *)v5 value];
  if (v4 == a3 && [objc_opt_self() areAnimationsEnabled])
  {
  }

  else
  {
    v6.receiver = v5;
    v6.super_class = type metadata accessor for _UIDebouncingAnimatableFloat();
    [(UIViewFloatAnimatableProperty *)&v6 setValue:a3];
  }
}

- (_TtC5UIKit28_UIDebouncingAnimatableFloat)initWithView:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5UIKit28_UIDebouncingAnimatableFloat)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end