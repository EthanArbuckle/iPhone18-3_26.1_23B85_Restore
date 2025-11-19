@interface ButtonWrapper
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)hitTestInsets;
- (_TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper)initWithCoder:(id)a3;
- (_TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper)initWithFrame:(CGRect)a3;
- (void)setHitTestInsets:(UIEdgeInsets)a3;
- (void)tintColorDidChange;
@end

@implementation ButtonWrapper

- (void)tintColorDidChange
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v2 = v9.receiver;
  [(UIView *)&v9 tintColorDidChange];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1890B4C9C;
  *(v5 + 24) = v4;
  v8[4] = sub_188E3FE50;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_188A4A968;
  v8[3] = &block_descriptor_28_0;
  v6 = _Block_copy(v8);
  v7 = v2;

  [v3 performWithoutAnimation_];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (_TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper)initWithCoder:(id)a3
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_button) systemLayoutSizeFittingSize_];
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)hitTestInsets
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(UIView *)&v6 hitTestInsets];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setHitTestInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  ObjectType = swift_getObjectType();
  v12.receiver = self;
  v12.super_class = ObjectType;
  v9 = self;
  [(UIView *)&v12 setHitTestInsets:top, left, bottom, right];
  v10 = *(&v9->super.super.super.isa + OBJC_IVAR____TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper_button);
  v11.receiver = v9;
  v11.super_class = ObjectType;
  [(UIView *)&v11 hitTestInsets];
  [v10 setHitTestInsets_];
}

- (_TtC5UIKitP33_DDE14AA6B49FCAFC5A54255A118E1D8713ButtonWrapper)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end