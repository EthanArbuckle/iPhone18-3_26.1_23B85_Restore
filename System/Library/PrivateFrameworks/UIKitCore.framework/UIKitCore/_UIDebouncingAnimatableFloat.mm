@interface _UIDebouncingAnimatableFloat
- (_TtC5UIKit28_UIDebouncingAnimatableFloat)init;
- (_TtC5UIKit28_UIDebouncingAnimatableFloat)initWithView:(id)view;
- (double)value;
- (void)setValue:(double)value;
@end

@implementation _UIDebouncingAnimatableFloat

- (double)value
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _UIDebouncingAnimatableFloat();
  [(UIViewFloatAnimatableProperty *)&v3 value];
  return result;
}

- (void)setValue:(double)value
{
  selfCopy = self;
  [(_UIDebouncingAnimatableFloat *)selfCopy value];
  if (v4 == value && [objc_opt_self() areAnimationsEnabled])
  {
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = type metadata accessor for _UIDebouncingAnimatableFloat();
    [(UIViewFloatAnimatableProperty *)&v6 setValue:value];
  }
}

- (_TtC5UIKit28_UIDebouncingAnimatableFloat)initWithView:(id)view
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