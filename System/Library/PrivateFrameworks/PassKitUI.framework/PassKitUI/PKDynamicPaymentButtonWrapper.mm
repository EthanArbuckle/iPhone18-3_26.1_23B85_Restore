@interface PKDynamicPaymentButtonWrapper
- (CGSize)size;
- (PKDynamicPaymentButtonWrapper)initWithCoder:(id)a3;
- (PKDynamicPaymentButtonWrapper)initWithFrame:(CGRect)a3;
- (PKDynamicPaymentButtonWrapper)initWithSize:(CGSize)a3 style:(int64_t)a4 type:(int64_t)a5 interfaceStyle:(int64_t)a6 request:(id)a7 action:(id)a8;
- (id)action;
- (void)setupView;
@end

@implementation PKDynamicPaymentButtonWrapper

- (PKDynamicPaymentButtonWrapper)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v9.receiver = self;
  v9.super_class = PKDynamicPaymentButtonWrapper;
  v5 = [(PKDynamicPaymentButtonWrapper *)&v9 initWithFrame:a3.origin.x, a3.origin.y];
  v6 = v5;
  if (v5)
  {
    v5->_type = 0;
    v5->_style = 0;
    action = v5->_action;
    v5->_action = 0;

    v6->_interfaceStyle = 1;
    v6->_size.width = width;
    v6->_size.height = height;
  }

  return v6;
}

- (PKDynamicPaymentButtonWrapper)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = PKDynamicPaymentButtonWrapper;
  v3 = [(PKDynamicPaymentButtonWrapper *)&v9 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v3->_type = 0;
    v3->_style = 0;
    action = v3->_action;
    v3->_action = 0;

    v4->_interfaceStyle = 1;
    [(PKDynamicPaymentButtonWrapper *)v4 frame];
    v4->_size.width = v6;
    v4->_size.height = v7;
  }

  return v4;
}

- (PKDynamicPaymentButtonWrapper)initWithSize:(CGSize)a3 style:(int64_t)a4 type:(int64_t)a5 interfaceStyle:(int64_t)a6 request:(id)a7 action:(id)a8
{
  height = a3.height;
  width = a3.width;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = PKDynamicPaymentButtonWrapper;
  v18 = [(PKDynamicPaymentButtonWrapper *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_style = a4;
    v18->_type = a5;
    v20 = _Block_copy(v17);
    action = v19->_action;
    v19->_action = v20;

    objc_storeStrong(&v19->_request, a7);
    v19->_size.width = width;
    v19->_size.height = height;
    v19->_interfaceStyle = a6;
    [(PKDynamicPaymentButtonWrapper *)v19 setupView];
  }

  return v19;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)action
{
  v2 = _Block_copy(self->_action);

  return v2;
}

- (void)setupView
{
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_signpost_id_make_with_pointer(v3, self);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "paymentbuttons:renderSmartButton", "", buf, 2u);
    }
  }

  v6 = [[_TtC9PassKitUI28DynamicPaymentButtonSlotView alloc] initWithType:self->_type style:self->_style paymentRequest:self->_request buttonSize:self->_interfaceStyle interfaceStyle:self->_action action:self->_size.width, self->_size.height];
  v7 = v3;
  v8 = os_signpost_id_make_with_pointer(v7, self);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v7, OS_SIGNPOST_INTERVAL_END, v9, "paymentbuttons:renderSmartButton", "", v10, 2u);
    }
  }

  [(PKDynamicPaymentButtonWrapper *)self addSubview:v6];
  [(PKDynamicPaymentButtonWrapper *)self bounds];
  [(DynamicPaymentButtonSlotView *)v6 setFrame:?];
  [(DynamicPaymentButtonSlotView *)v6 setAutoresizingMask:18];
}

@end