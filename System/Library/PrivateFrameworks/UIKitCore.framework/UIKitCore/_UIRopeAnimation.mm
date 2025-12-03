@interface _UIRopeAnimation
- (void)addAnimation:(id)animation;
- (void)beginUsingSpringBehavior:(id)behavior completion:(id)completion;
- (void)invalidate;
@end

@implementation _UIRopeAnimation

- (void)addAnimation:(id)animation
{
  v4 = _Block_copy(animation);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_188A4AA04;
  *(v6 + 24) = v5;
  v7 = OBJC_IVAR____UIRopeAnimation__animations;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  selfCopy = self;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&self->super.isa + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_188A32A24(0, *(v8 + 2) + 1, 1, v8);
    *(&self->super.isa + v7) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_188A32A24((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = (v8 + 16 * v12);
  v13[4] = sub_188A4B574;
  v13[5] = v6;
  *(&self->super.isa + v7) = v8;
  swift_endAccess();
}

- (void)beginUsingSpringBehavior:(id)behavior completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_188AB8418;
  }

  else
  {
    v7 = 0;
  }

  behaviorCopy = behavior;
  selfCopy = self;
  sub_188E44940(behaviorCopy, v6, v7);
  sub_188A55B8C(v6);
}

- (void)invalidate
{
  v3 = OBJC_IVAR____UIRopeAnimation__animations;
  swift_beginAccess();
  *(&self->super.isa + v3) = MEMORY[0x1E69E7CC0];
}

@end