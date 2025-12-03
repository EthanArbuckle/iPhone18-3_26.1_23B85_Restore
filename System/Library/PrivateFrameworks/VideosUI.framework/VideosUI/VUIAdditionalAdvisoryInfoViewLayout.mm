@interface VUIAdditionalAdvisoryInfoViewLayout
- (CGSize)dividerSize;
- (CGSize)logoSize;
- (CGSize)portraitDividerSize;
- (CGSize)portraitLogoSize;
- (UIEdgeInsets)descriptionMargin;
- (UIEdgeInsets)dividerMargin;
- (UIEdgeInsets)logoMargin;
- (UIEdgeInsets)portraitDescriptionMargin;
- (UIEdgeInsets)portraitDividerMargin;
- (UIEdgeInsets)portraitLogoMargin;
- (UIEdgeInsets)portraitMargin;
- (VUIAdditionalAdvisoryInfoViewLayout)init;
@end

@implementation VUIAdditionalAdvisoryInfoViewLayout

- (VUIAdditionalAdvisoryInfoViewLayout)init
{
  v16.receiver = self;
  v16.super_class = VUIAdditionalAdvisoryInfoViewLayout;
  v2 = [(TVViewLayout *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->_logoSize = vdupq_n_s64(0x4049000000000000uLL);
    *&v2->_logoMargin.top = xmmword_1E4296C50;
    *&v2->_logoMargin.bottom = xmmword_1E4297190;
    v2->_portraitLogoSize = vdupq_n_s64(0x4041800000000000uLL);
    __asm { FMOV            V1.2D, #5.0 }

    v15 = _Q1;
    *&v2->_portraitLogoMargin.top = xmmword_1E4296CE0;
    *&v2->_portraitLogoMargin.bottom = _Q1;
    v2->_descriptionWidth = 220.0;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    dividerColor = v3->_dividerColor;
    v3->_dividerColor = whiteColor;

    *&v3->_dividerMargin.top = xmmword_1E42971A0;
    *&v3->_dividerMargin.bottom = xmmword_1E42971A0;
    *&v3->_portraitDividerMargin.top = xmmword_1E42971B0;
    *&v3->_portraitDividerMargin.bottom = xmmword_1E42971B0;
    v3->_dividerSize = xmmword_1E42971C0;
    v3->_portraitDividerSize = xmmword_1E42971D0;
    v3->_descriptionCornerRadius = 3.0;
    *&v3->_descriptionMargin.top = xmmword_1E4297190;
    *&v3->_descriptionMargin.bottom = xmmword_1E4296C50;
    *&v3->_portraitDescriptionMargin.top = v15;
    *&v3->_portraitDescriptionMargin.bottom = xmmword_1E4296CE0;
    v11 = objc_opt_new();
    [(VUITextLayout *)v11 setTextStyle:13];
    [(VUITextLayout *)v11 setNumberOfLines:3];
    [(VUITextLayout *)v11 setFontWeight:5];
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(VUITextLayout *)v11 setColor:whiteColor2];

    [(VUITextLayout *)v11 setMargin:0.0, 3.0, 0.0, 0.0];
    [(VUITextLayout *)v11 setFontSize:10.0];
    [(VUITextLayout *)v11 setAllowsTextAlignmentOverride:1];
    descriptionLayout = v3->_descriptionLayout;
    v3->_descriptionLayout = v11;

    [(TVViewLayout *)v3 setMargin:10.0, 20.0, 0.0, 0.0];
    [(VUIAdditionalAdvisoryInfoViewLayout *)v3 setPortraitMargin:5.0, 10.0, 0.0, 0.0];
  }

  return v3;
}

- (CGSize)logoSize
{
  width = self->_logoSize.width;
  height = self->_logoSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)logoMargin
{
  top = self->_logoMargin.top;
  left = self->_logoMargin.left;
  bottom = self->_logoMargin.bottom;
  right = self->_logoMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)descriptionMargin
{
  top = self->_descriptionMargin.top;
  left = self->_descriptionMargin.left;
  bottom = self->_descriptionMargin.bottom;
  right = self->_descriptionMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)dividerMargin
{
  top = self->_dividerMargin.top;
  left = self->_dividerMargin.left;
  bottom = self->_dividerMargin.bottom;
  right = self->_dividerMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)dividerSize
{
  width = self->_dividerSize.width;
  height = self->_dividerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)portraitMargin
{
  top = self->_portraitMargin.top;
  left = self->_portraitMargin.left;
  bottom = self->_portraitMargin.bottom;
  right = self->_portraitMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)portraitLogoSize
{
  width = self->_portraitLogoSize.width;
  height = self->_portraitLogoSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)portraitLogoMargin
{
  top = self->_portraitLogoMargin.top;
  left = self->_portraitLogoMargin.left;
  bottom = self->_portraitLogoMargin.bottom;
  right = self->_portraitLogoMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)portraitDescriptionMargin
{
  top = self->_portraitDescriptionMargin.top;
  left = self->_portraitDescriptionMargin.left;
  bottom = self->_portraitDescriptionMargin.bottom;
  right = self->_portraitDescriptionMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)portraitDividerMargin
{
  top = self->_portraitDividerMargin.top;
  left = self->_portraitDividerMargin.left;
  bottom = self->_portraitDividerMargin.bottom;
  right = self->_portraitDividerMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)portraitDividerSize
{
  width = self->_portraitDividerSize.width;
  height = self->_portraitDividerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end