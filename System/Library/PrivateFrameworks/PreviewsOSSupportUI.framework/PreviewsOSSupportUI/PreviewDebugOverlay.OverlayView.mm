@interface PreviewDebugOverlay.OverlayView
- (CGSize)intrinsicContentSize;
- (_TtCC19PreviewsOSSupportUI19PreviewDebugOverlayP33_2167D653BE9BA0FB6EEBD3EBB5DDB07011OverlayView)init;
- (_TtCC19PreviewsOSSupportUI19PreviewDebugOverlayP33_2167D653BE9BA0FB6EEBD3EBB5DDB07011OverlayView)initWithCoder:(id)coder;
- (_TtCC19PreviewsOSSupportUI19PreviewDebugOverlayP33_2167D653BE9BA0FB6EEBD3EBB5DDB07011OverlayView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PreviewDebugOverlay.OverlayView

- (_TtCC19PreviewsOSSupportUI19PreviewDebugOverlayP33_2167D653BE9BA0FB6EEBD3EBB5DDB07011OverlayView)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC19PreviewsOSSupportUI19PreviewDebugOverlayP33_2167D653BE9BA0FB6EEBD3EBB5DDB07011OverlayView_labelPadding) = 0x4010000000000000;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC19PreviewsOSSupportUI19PreviewDebugOverlayP33_2167D653BE9BA0FB6EEBD3EBB5DDB07011OverlayView_label) = v3;
  [(objc_class *)v3 setAdjustsFontSizeToFitWidth:1];
  v6.receiver = self;
  v6.super_class = type metadata accessor for PreviewDebugOverlay.OverlayView();
  v4 = [(PreviewDebugOverlay.OverlayView *)&v6 initWithFrame:0.0, 0.0, 0.0, 0.0];
  [(PreviewDebugOverlay.OverlayView *)v4 addSubview:*(&v4->super.super.super.isa + OBJC_IVAR____TtCC19PreviewsOSSupportUI19PreviewDebugOverlayP33_2167D653BE9BA0FB6EEBD3EBB5DDB07011OverlayView_label)];
  return v4;
}

- (_TtCC19PreviewsOSSupportUI19PreviewDebugOverlayP33_2167D653BE9BA0FB6EEBD3EBB5DDB07011OverlayView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC19PreviewsOSSupportUI19PreviewDebugOverlayP33_2167D653BE9BA0FB6EEBD3EBB5DDB07011OverlayView_labelPadding) = 0x4010000000000000;
  result = sub_25F52A620();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PreviewDebugOverlay.OverlayView();
  v2 = v4.receiver;
  [(PreviewDebugOverlay.OverlayView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtCC19PreviewsOSSupportUI19PreviewDebugOverlayP33_2167D653BE9BA0FB6EEBD3EBB5DDB07011OverlayView_label];
  [v2 bounds];
  v6 = CGRectInset(v5, 4.0, 0.0);
  [v3 setFrame_];
}

- (CGSize)intrinsicContentSize
{
  v3 = OBJC_IVAR____TtCC19PreviewsOSSupportUI19PreviewDebugOverlayP33_2167D653BE9BA0FB6EEBD3EBB5DDB07011OverlayView_label;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC19PreviewsOSSupportUI19PreviewDebugOverlayP33_2167D653BE9BA0FB6EEBD3EBB5DDB07011OverlayView_label);
  selfCopy = self;
  [v4 intrinsicContentSize];
  v7 = v6 + 4.0;
  [*(&self->super.super.super.isa + v3) intrinsicContentSize];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (_TtCC19PreviewsOSSupportUI19PreviewDebugOverlayP33_2167D653BE9BA0FB6EEBD3EBB5DDB07011OverlayView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end