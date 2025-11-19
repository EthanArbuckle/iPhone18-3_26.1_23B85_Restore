@interface ShadowView
- (_TtC9SeymourUI10ShadowView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation ShadowView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ShadowView();
  v2 = v5.receiver;
  [(ShadowView *)&v5 layoutSubviews];
  v3 = objc_opt_self();
  [v3 begin];
  [v3 setDisableActions_];
  v4 = *&v2[OBJC_IVAR____TtC9SeymourUI10ShadowView_shadowGradient];
  [v2 bounds];
  [v4 setFrame_];
  [v3 commit];
}

- (_TtC9SeymourUI10ShadowView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC9SeymourUI10ShadowView_shadowGradient;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

@end