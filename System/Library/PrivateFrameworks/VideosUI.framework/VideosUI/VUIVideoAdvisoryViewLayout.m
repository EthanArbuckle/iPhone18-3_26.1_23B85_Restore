@interface VUIVideoAdvisoryViewLayout
- (CGSize)dividerSize;
- (CGSize)legendSize;
- (CGSize)logoSize;
- (CGSize)portraitDividerSize;
- (CGSize)portraitLegendSize;
- (CGSize)portraitLogoSize;
- (UIEdgeInsets)descriptionMargin;
- (UIEdgeInsets)dividerMargin;
- (UIEdgeInsets)legendNamePadding;
- (UIEdgeInsets)legendsMargin;
- (UIEdgeInsets)logoMargin;
- (UIEdgeInsets)portraitDescriptionMargin;
- (UIEdgeInsets)portraitDividerMargin;
- (UIEdgeInsets)portraitLegendsMargin;
- (UIEdgeInsets)portraitLogoMargin;
- (UIEdgeInsets)portraitMargin;
- (VUIVideoAdvisoryViewLayout)init;
@end

@implementation VUIVideoAdvisoryViewLayout

- (VUIVideoAdvisoryViewLayout)init
{
  v28.receiver = self;
  v28.super_class = VUIVideoAdvisoryViewLayout;
  v2 = [(TVViewLayout *)&v28 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 408) = vdupq_n_s64(0x4049000000000000uLL);
    *(v2 + 504) = xmmword_1E4296C50;
    *(v2 + 520) = xmmword_1E4297190;
    *(v2 + 456) = vdupq_n_s64(0x4041800000000000uLL);
    __asm { FMOV            V1.2D, #5.0 }

    v27 = _Q1;
    *(v2 + 696) = xmmword_1E4296CE0;
    *(v2 + 712) = _Q1;
    __asm { FMOV            V0.2D, #15.0 }

    *(v2 + 424) = _Q0;
    __asm { FMOV            V0.2D, #10.0 }

    *(v2 + 472) = _Q0;
    *(v2 + 536) = xmmword_1E4297900;
    *(v2 + 552) = xmmword_1E4297910;
    *(v2 + 728) = xmmword_1E4297900;
    *(v2 + 744) = xmmword_1E4297920;
    v11 = [MEMORY[0x1E69DC888] whiteColor];
    v12 = *(v3 + 45);
    *(v3 + 45) = v11;

    *(v3 + 600) = xmmword_1E42971A0;
    *(v3 + 616) = xmmword_1E42971A0;
    *(v3 + 760) = xmmword_1E42971B0;
    *(v3 + 776) = xmmword_1E42971B0;
    *(v3 + 440) = xmmword_1E42971C0;
    *(v3 + 488) = xmmword_1E42971D0;
    *(v3 + 42) = 0x402E000000000000;
    *(v3 + 568) = xmmword_1E42971B0;
    *(v3 + 584) = xmmword_1E42971B0;
    *(v3 + 41) = 0x4072C00000000000;
    v13 = [MEMORY[0x1E69DC888] whiteColor];
    v14 = *(v3 + 43);
    *(v3 + 43) = v13;

    *(v3 + 44) = 0x4008000000000000;
    *(v3 + 48) = 0x4062C00000000000;
    *(v3 + 632) = xmmword_1E4297190;
    *(v3 + 648) = xmmword_1E4296C50;
    *(v3 + 792) = v27;
    *(v3 + 808) = xmmword_1E4296CE0;
    v15 = objc_opt_new();
    [v15 setTextStyle:13];
    [v15 setFontWeight:7];
    [v15 setNumberOfLines:1];
    [v15 setAlignment:1];
    v16 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.7];
    [v15 setColor:v16];

    [v15 setFontSize:15.0];
    [v15 setMargin:{2.0, 2.0, 2.0, 2.0}];
    [v15 setAllowsTextAlignmentOverride:1];
    objc_storeStrong(v3 + 46, v15);
    [v15 setFontSize:10.0];
    [v15 setMargin:{1.0, 1.0, 1.0, 1.0}];
    v17 = *(v3 + 49);
    *(v3 + 49) = v15;
    v18 = v15;

    v19 = objc_opt_new();
    [v19 setTextStyle:13];
    [v19 setNumberOfLines:3];
    [v19 setFontWeight:5];
    v20 = [MEMORY[0x1E69DC888] whiteColor];
    [v19 setColor:v20];

    [v19 setMargin:{0.0, 3.0, 0.0, 0.0}];
    [v19 setFontSize:10.0];
    [v19 setAllowsTextAlignmentOverride:1];
    v21 = *(v3 + 47);
    *(v3 + 47) = v19;
    v22 = v19;

    v23 = objc_opt_new();
    [v23 setTextStyle:13];
    [v23 setNumberOfLines:3];
    [v23 setFontWeight:5];
    v24 = [MEMORY[0x1E69DC888] whiteColor];
    [v23 setColor:v24];

    [v23 setMargin:{0.0, 1.5, 0.0, 0.0}];
    [v23 setFontSize:7.0];
    [v23 setAllowsTextAlignmentOverride:1];
    v25 = *(v3 + 50);
    *(v3 + 50) = v23;

    [v3 setMargin:{10.0, 20.0, 0.0, 0.0}];
    [v3 setPortraitMargin:{5.0, 10.0, 0.0, 0.0}];
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

- (CGSize)legendSize
{
  width = self->_legendSize.width;
  height = self->_legendSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)legendsMargin
{
  top = self->_legendsMargin.top;
  left = self->_legendsMargin.left;
  bottom = self->_legendsMargin.bottom;
  right = self->_legendsMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)legendNamePadding
{
  top = self->_legendNamePadding.top;
  left = self->_legendNamePadding.left;
  bottom = self->_legendNamePadding.bottom;
  right = self->_legendNamePadding.right;
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

- (CGSize)portraitLegendSize
{
  width = self->_portraitLegendSize.width;
  height = self->_portraitLegendSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)portraitLegendsMargin
{
  top = self->_portraitLegendsMargin.top;
  left = self->_portraitLegendsMargin.left;
  bottom = self->_portraitLegendsMargin.bottom;
  right = self->_portraitLegendsMargin.right;
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

@end