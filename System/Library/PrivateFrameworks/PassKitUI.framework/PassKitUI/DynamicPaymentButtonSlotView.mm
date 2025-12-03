@interface DynamicPaymentButtonSlotView
- (_TtC9PassKitUI28DynamicPaymentButtonSlotView)initWithCoder:(id)coder;
- (_TtC9PassKitUI28DynamicPaymentButtonSlotView)initWithFrame:(CGRect)frame;
- (_TtC9PassKitUI28DynamicPaymentButtonSlotView)initWithType:(int64_t)type style:(int64_t)style paymentRequest:(id)request buttonSize:(CGSize)size interfaceStyle:(int64_t)interfaceStyle action:(id)action;
- (void)layoutSubviews;
@end

@implementation DynamicPaymentButtonSlotView

- (_TtC9PassKitUI28DynamicPaymentButtonSlotView)initWithType:(int64_t)type style:(int64_t)style paymentRequest:(id)request buttonSize:(CGSize)size interfaceStyle:(int64_t)interfaceStyle action:(id)action
{
  height = size.height;
  width = size.width;
  v14 = _Block_copy(action);
  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v14 = sub_1BD166E88;
  }

  else
  {
    v15 = 0;
  }

  requestCopy = request;
  return DynamicPaymentButtonSlotView.init(type:style:paymentRequest:buttonSize:interfaceStyle:action:)(type, style, request, interfaceStyle, v14, v15, width, height);
}

- (_TtC9PassKitUI28DynamicPaymentButtonSlotView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_action);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_paymentRequest) = 0;
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DynamicPaymentButtonSlotView();
  v2 = v4.receiver;
  [(DynamicPaymentButtonSlotView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC9PassKitUI28DynamicPaymentButtonSlotView_slotView];
  [v2 bounds];
  [v3 setFrame_];
}

- (_TtC9PassKitUI28DynamicPaymentButtonSlotView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end