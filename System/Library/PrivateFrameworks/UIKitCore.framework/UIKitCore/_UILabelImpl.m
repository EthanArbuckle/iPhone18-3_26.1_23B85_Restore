@interface _UILabelImpl
- (_UILabelImpl)init;
@end

@implementation _UILabelImpl

- (_UILabelImpl)init
{
  *(&self->super.isa + OBJC_IVAR____UILabelImpl_minimumScaleFactor) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for _UILabelImpl();
  return [(_UILabelImpl *)&v3 init];
}

@end