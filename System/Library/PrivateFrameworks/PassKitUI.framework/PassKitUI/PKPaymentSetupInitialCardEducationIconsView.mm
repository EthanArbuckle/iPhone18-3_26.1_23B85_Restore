@interface PKPaymentSetupInitialCardEducationIconsView
- (CGSize)sizeThatFits:(CGSize)result;
- (PKPaymentSetupInitialCardEducationIconsView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PKPaymentSetupInitialCardEducationIconsView

- (PKPaymentSetupInitialCardEducationIconsView)initWithFrame:(CGRect)frame
{
  v26.receiver = self;
  v26.super_class = PKPaymentSetupInitialCardEducationIconsView;
  v3 = [(PKPaymentSetupInitialCardEducationIconsView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = vdup_n_s32(PKUIGetMinScreenType() > 3);
    v5.i64[0] = v4.u32[0];
    v5.i64[1] = v4.u32[1];
    v6 = vcltzq_s64(vshlq_n_s64(v5, 0x3FuLL));
    v3->_applePayIconSize = vbslq_s8(v6, xmmword_1BE115710, xmmword_1BE115700);
    v3->_contactlessIconSize = vbslq_s8(v6, xmmword_1BE115730, xmmword_1BE115720);
    v7 = PKPassKitUIBundle();
    v8 = PKUIScreenScale();
    v9 = [v7 URLForResource:@"ApplePayLogoBlackBorder" withExtension:@"pdf"];
    v10 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v11 = PKUIImageFromPDF(v9, v3->_applePayIconSize.width, v3->_applePayIconSize.height, v8);
    v12 = [v11 imageWithRenderingMode:2];
    v13 = [v10 initWithImage:v12];
    applePayIcon = v3->_applePayIcon;
    v3->_applePayIcon = v13;

    [(UIImageView *)v3->_applePayIcon setContentMode:1];
    v15 = v3->_applePayIcon;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v15 setTintColor:labelColor];

    [(PKPaymentSetupInitialCardEducationIconsView *)v3 addSubview:v3->_applePayIcon];
    v17 = [v7 URLForResource:@"ContactlessSymbol" withExtension:@"pdf"];

    v18 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v19 = PKUIImageFromPDF(v17, v3->_contactlessIconSize.width, v3->_contactlessIconSize.height, v8);
    v20 = [v19 imageWithRenderingMode:2];
    v21 = [v18 initWithImage:v20];
    contactlessIcon = v3->_contactlessIcon;
    v3->_contactlessIcon = v21;

    [(UIImageView *)v3->_contactlessIcon setContentMode:1];
    v23 = v3->_contactlessIcon;
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v23 setTintColor:labelColor2];

    [(PKPaymentSetupInitialCardEducationIconsView *)v3 addSubview:v3->_contactlessIcon];
  }

  return v3;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = PKPaymentSetupInitialCardEducationIconsView;
  [(PKPaymentSetupInitialCardEducationIconsView *)&v19 layoutSubviews];
  [(PKPaymentSetupInitialCardEducationIconsView *)self bounds];
  [(PKPaymentSetupInitialCardEducationIconsView *)self _shouldReverseLayoutDirection];
  PKSizeAspectFit();
  PKSizeAspectFit();
  PKSizeAlignedInRect();
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(UIImageView *)self->_applePayIcon setFrame:v4, v6, v8, v10];
  [(UIImageView *)self->_contactlessIcon setFrame:v12, v14, v16, v18];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  height = self->_applePayIconSize.height;
  if (height <= self->_contactlessIconSize.height)
  {
    height = self->_contactlessIconSize.height;
  }

  v4 = height + 20.0;
  result.height = v4;
  return result;
}

@end