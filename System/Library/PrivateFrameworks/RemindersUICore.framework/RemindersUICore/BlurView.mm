@interface BlurView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC15RemindersUICoreP33_34792CABF8531B98D43671B0DD1043EB8BlurView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation BlurView

- (_TtC15RemindersUICoreP33_34792CABF8531B98D43671B0DD1043EB8BlurView)initWithCoder:(id)a3
{
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(BlurView *)&v3 layoutSubviews];
  [v2 bounds];
  v5 = CGRectInset(v4, 8.0, 8.0);
  [*&v2[OBJC_IVAR____TtC15RemindersUICoreP33_34792CABF8531B98D43671B0DD1043EB8BlurView_label] setFrame_];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICoreP33_34792CABF8531B98D43671B0DD1043EB8BlurView_label);
  v6 = self;
  [v5 sizeThatFits_];
  v14.size.width = v7;
  v14.size.height = v8;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v15 = CGRectInset(v14, -8.0, -8.0);
  v9 = v15.size.width;
  v10 = v15.size.height;

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end