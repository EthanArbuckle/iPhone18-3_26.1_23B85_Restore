@interface TVViewLayout
+ (Class)layoutClassForElement:(id)a3;
+ (id)layoutWithLayout:(id)a3 element:(id)a4;
- (CGAffineTransform)focusTransform;
- (TVViewLayout)init;
- (UIEdgeInsets)focusMargin;
- (UIEdgeInsets)margin;
- (UIEdgeInsets)padding;
- (double)focusSizeIncrease;
- (id)copyWithZone:(_NSZone *)a3;
- (id)tv_layoutPropertyGetterForStyle:(id)a3;
- (id)tv_layoutPropertySetterForStyle:(id)a3;
- (void)setFocusTransform:(CGAffineTransform *)a3;
@end

@implementation TVViewLayout

- (id)tv_layoutPropertySetterForStyle:(id)a3
{
  v4 = a3;
  if (tv_layoutPropertySetterForStyle__onceToken != -1)
  {
    [TVViewLayout(LayoutStyleAdditions) tv_layoutPropertySetterForStyle:];
  }

  v5 = [tv_layoutPropertySetterForStyle__map objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 16))(v5, self);
    v8 = MEMORY[0x26D6AFBB0]();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke()
{
  v3[22] = *MEMORY[0x277D85DE8];
  v2[0] = @"margin";
  v2[1] = @"tv-focus-margin";
  v3[0] = &__block_literal_global_10;
  v3[1] = &__block_literal_global_13;
  v2[2] = @"padding";
  v2[3] = @"tv-interitem-spacing";
  v3[2] = &__block_literal_global_15;
  v3[3] = &__block_literal_global_17;
  v2[4] = @"tv-line-spacing";
  v2[5] = @"tv-align";
  v3[4] = &__block_literal_global_19;
  v3[5] = &__block_literal_global_21;
  v2[6] = @"tv-content-align";
  v2[7] = @"tv-position";
  v3[6] = &__block_literal_global_23;
  v3[7] = &__block_literal_global_25;
  v2[8] = @"width";
  v2[9] = @"height";
  v3[8] = &__block_literal_global_27_0;
  v3[9] = &__block_literal_global_29;
  v2[10] = @"max-height";
  v2[11] = @"max-width";
  v3[10] = &__block_literal_global_31;
  v3[11] = &__block_literal_global_33;
  v2[12] = @"min-height";
  v2[13] = @"min-width";
  v3[12] = &__block_literal_global_35;
  v3[13] = &__block_literal_global_37_0;
  v2[14] = @"background-color";
  v2[15] = @"tv-highlight-color";
  v3[14] = &__block_literal_global_39_0;
  v3[15] = &__block_literal_global_41;
  v2[16] = @"tv-focus-align";
  v2[17] = @"tv-focus-size-increase";
  v3[16] = &__block_literal_global_43;
  v3[17] = &__block_literal_global_45;
  v2[18] = @"tv-progress-style";
  v2[19] = @"tv-group";
  v3[18] = &__block_literal_global_47;
  v3[19] = &__block_literal_global_49;
  v2[20] = @"tv-text-highlight-style";
  v2[21] = @"tv-highlight-style";
  v3[20] = &__block_literal_global_51;
  v3[21] = &__block_literal_global_53;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:22];
  v1 = tv_layoutPropertySetterForStyle__map;
  tv_layoutPropertySetterForStyle__map = v0;
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_3;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 UIEdgeInsetsValue];

  return [v2 setMargin:?];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_5;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 UIEdgeInsetsValue];

  return [v2 setFocusMargin:?];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_7;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 UIEdgeInsetsValue];

  return [v2 setPadding:?];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_9;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 floatValue];
  v4 = v3;

  return [v2 setInteritemSpacing:v4];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_11;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 floatValue];
  v4 = v3;

  return [v2 setLineSpacing:v4];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_13;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 setAlignment:v3];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_15;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_15(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 setContentAlignment:v3];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_17;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 setPosition:v3];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_18(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_19;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_19(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 floatValue];
  v4 = v3;

  return [v2 setWidth:v4];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_20(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_21;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_21(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 floatValue];
  v4 = v3;

  return [v2 setHeight:v4];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_22(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_23;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_23(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 floatValue];
  v4 = v3;

  return [v2 setMaxHeight:v4];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_24(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_25;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_25(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 floatValue];
  v4 = v3;

  return [v2 setMaxWidth:v4];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_26(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_27;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_27(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 floatValue];
  v4 = v3;

  return [v2 setMinHeight:v4];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_28(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_29;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_29(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 floatValue];
  v4 = v3;

  return [v2 setMinWidth:v4];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_30(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_31;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_32(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_33;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_34(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_35;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_36(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_37;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_37(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 floatValue];
  v4 = v3;

  return [v2 setFocusSizeIncrease:v4];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_38(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_39;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_40(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_41;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_42(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_43;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

void __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_43(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setTextHighlightStyle:v3];
  }
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_44(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertySetterForStyle___block_invoke_45;
  v6[3] = &unk_279D6E3A8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

- (id)tv_layoutPropertyGetterForStyle:(id)a3
{
  v4 = a3;
  if (tv_layoutPropertyGetterForStyle__onceToken != -1)
  {
    [TVViewLayout(LayoutStyleAdditions) tv_layoutPropertyGetterForStyle:];
  }

  v5 = [tv_layoutPropertyGetterForStyle__map objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 16))(v5, self);
    v8 = MEMORY[0x26D6AFBB0]();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke()
{
  v3[22] = *MEMORY[0x277D85DE8];
  v2[0] = @"margin";
  v2[1] = @"tv-focus-margin";
  v3[0] = &__block_literal_global_59;
  v3[1] = &__block_literal_global_63;
  v2[2] = @"padding";
  v2[3] = @"tv-interitem-spacing";
  v3[2] = &__block_literal_global_65;
  v3[3] = &__block_literal_global_68;
  v2[4] = @"tv-line-spacing";
  v2[5] = @"tv-align";
  v3[4] = &__block_literal_global_72;
  v3[5] = &__block_literal_global_74;
  v2[6] = @"tv-content-align";
  v2[7] = @"tv-position";
  v3[6] = &__block_literal_global_76;
  v3[7] = &__block_literal_global_78;
  v2[8] = @"width";
  v2[9] = @"height";
  v3[8] = &__block_literal_global_80;
  v3[9] = &__block_literal_global_82;
  v2[10] = @"max-height";
  v2[11] = @"max-width";
  v3[10] = &__block_literal_global_84;
  v3[11] = &__block_literal_global_86;
  v2[12] = @"min-height";
  v2[13] = @"min-width";
  v3[12] = &__block_literal_global_88;
  v3[13] = &__block_literal_global_90;
  v2[14] = @"background-color";
  v2[15] = @"tv-highlight-color";
  v3[14] = &__block_literal_global_93;
  v3[15] = &__block_literal_global_96;
  v2[16] = @"tv-focus-align";
  v2[17] = @"tv-focus-size-increase";
  v3[16] = &__block_literal_global_99;
  v3[17] = &__block_literal_global_102;
  v2[18] = @"tv-progress-style";
  v2[19] = @"tv-group";
  v3[18] = &__block_literal_global_104;
  v3[19] = &__block_literal_global_106;
  v2[20] = @"tv-text-highlight-style";
  v2[21] = @"tv-highlight-style";
  v3[20] = &__block_literal_global_108;
  v3[21] = &__block_literal_global_110;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:22];
  v1 = tv_layoutPropertyGetterForStyle__map;
  tv_layoutPropertyGetterForStyle__map = v0;
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_3;
  v6[3] = &unk_279D6E3F0;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x277CCAE60];
  [*(a1 + 32) margin];

  return [v1 valueWithUIEdgeInsets:?];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_5;
  v6[3] = &unk_279D6E3F0;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_5(uint64_t a1)
{
  v1 = MEMORY[0x277CCAE60];
  [*(a1 + 32) focusMargin];

  return [v1 valueWithUIEdgeInsets:?];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_7;
  v6[3] = &unk_279D6E3F0;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_7(uint64_t a1)
{
  v1 = MEMORY[0x277CCAE60];
  [*(a1 + 32) padding];

  return [v1 valueWithUIEdgeInsets:?];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_9;
  v6[3] = &unk_279D6E438;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_9(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) interitemSpacing];

  return [v1 numberWithDouble:?];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_11;
  v6[3] = &unk_279D6E438;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_11(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) lineSpacing];

  return [v1 numberWithDouble:?];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_13;
  v6[3] = &unk_279D6E438;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_13(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) alignment];

  return [v1 numberWithInteger:v2];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_15;
  v6[3] = &unk_279D6E438;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_15(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) contentAlignment];

  return [v1 numberWithInteger:v2];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_17;
  v6[3] = &unk_279D6E438;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_17(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) position];

  return [v1 numberWithInteger:v2];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_18(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_19;
  v6[3] = &unk_279D6E438;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_19(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) width];

  return [v1 numberWithDouble:?];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_20(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_21;
  v6[3] = &unk_279D6E438;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_21(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) height];

  return [v1 numberWithDouble:?];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_22(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_23;
  v6[3] = &unk_279D6E438;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_23(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) maxHeight];

  return [v1 numberWithDouble:?];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_24(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_25;
  v6[3] = &unk_279D6E438;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_25(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) maxWidth];

  return [v1 numberWithDouble:?];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_26(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_27;
  v6[3] = &unk_279D6E438;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_27(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) minHeight];

  return [v1 numberWithDouble:?];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_28(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_29;
  v6[3] = &unk_279D6E438;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_29(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) minWidth];

  return [v1 numberWithDouble:?];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_30(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_31;
  v6[3] = &unk_279D6E480;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_32(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_33;
  v6[3] = &unk_279D6E480;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_34(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_35;
  v6[3] = &unk_279D6E4C8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_36(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_37;
  v6[3] = &unk_279D6E438;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

uint64_t __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_37(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  [*(a1 + 32) focusSizeIncrease];

  return [v1 numberWithDouble:?];
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_38(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_39;
  v6[3] = &unk_279D6E4C8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_40(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_41;
  v6[3] = &unk_279D6E4C8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_42(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_43;
  v6[3] = &unk_279D6E4C8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_43(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [*(a1 + 32) textHighlightStyle];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_44(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__TVViewLayout_LayoutStyleAdditions__tv_layoutPropertyGetterForStyle___block_invoke_45;
  v6[3] = &unk_279D6E4C8;
  v7 = v2;
  v3 = v2;
  v4 = MEMORY[0x26D6AFBB0](v6);

  return v4;
}

+ (Class)layoutClassForElement:(id)a3
{
  [a3 tv_elementType];
  v3 = objc_opt_class();

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setMargin:{self->_margin.top, self->_margin.left, self->_margin.bottom, self->_margin.right}];
  [v4 setPadding:{self->_padding.top, self->_padding.left, self->_padding.bottom, self->_padding.right}];
  [v4 setTintColor:self->_tintColor];
  [v4 setDarkTintColor:self->_darkTintColor];
  [v4 setBackgroundColor:self->_backgroundColor];
  [v4 setDarkBackgroundColor:self->_darkBackgroundColor];
  [v4 setHeight:self->_height];
  [v4 setFocusMargin:{self->_focusMargin.top, self->_focusMargin.left, self->_focusMargin.bottom, self->_focusMargin.right}];
  [v4 setMaxHeight:self->_maxHeight];
  [v4 setMaxWidth:self->_maxWidth];
  [v4 setMinHeight:self->_minHeight];
  [v4 setMinWidth:self->_minWidth];
  [v4 setWidth:self->_width];
  [v4 setFocusSizeIncrease:self->_focusSizeIncrease];
  [v4 setFocusAlign:self->_focusAlign];
  [v4 setLineSpacing:self->_lineSpacing];
  [v4 setAlignment:self->_alignment];
  [v4 setContentAlignment:self->_contentAlignment];
  [v4 setHighlightColor:self->_highlightColor];
  [v4 setPosition:self->_position];
  [v4 setAcceptsFocus:self->_acceptsFocus];
  [v4 setCenterGrowth:self->_centerGrowth];
  [v4 setHighlightStyle:self->_highlightStyle];
  v5 = *&self->_focusTransform.c;
  v7[0] = *&self->_focusTransform.a;
  v7[1] = v5;
  v7[2] = *&self->_focusTransform.tx;
  [v4 setFocusTransform:v7];
  return v4;
}

+ (id)layoutWithLayout:(id)a3 element:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v5 = objc_opt_new();
  }

  v7 = [v6 style];
  v8 = [v7 tv_valueForStyle:@"tv-tint-color"];

  if (v8)
  {
    v9 = [v7 tv_tintColor];
    v10 = [v9 color];

    [v5 setTintColor:v10];
    [v5 setDarkTintColor:v10];
  }

  v11 = [v7 tv_valueForStyle:@"tv-dark-tint-color"];

  if (v11)
  {
    v12 = [v7 tv_darkTintColor];
    v13 = [v12 color];

    [v5 setDarkTintColor:v13];
  }

  v14 = [v7 tv_valueForStyle:@"background-color"];

  if (v14)
  {
    v15 = [v7 tv_backgroundColor];
    v16 = [v15 color];

    [v5 setBackgroundColor:v16];
    [v5 setDarkBackgroundColor:v16];
  }

  v17 = [v7 tv_valueForStyle:@"margin"];

  if (v17)
  {
    [v7 tv_margin];
    [v5 setMargin:?];
  }

  v18 = [v7 tv_valueForStyle:@"tv-focus-margin"];

  if (v18)
  {
    [v7 tv_focusMargin];
    [v5 setFocusMargin:?];
  }

  v19 = [v7 tv_valueForStyle:@"padding"];

  if (v19)
  {
    [v7 tv_padding];
    [v5 setPadding:?];
  }

  v20 = [v7 tv_valueForStyle:@"tv-interitem-spacing"];

  if (v20)
  {
    [v7 tv_interitemSpacing];
    [v5 setInteritemSpacing:?];
  }

  v21 = [v7 tv_valueForStyle:@"tv-line-spacing"];

  if (v21)
  {
    [v7 tv_lineSpacing];
    [v5 setLineSpacing:?];
  }

  v22 = [v7 tv_valueForStyle:@"tv-align"];

  if (v22)
  {
    [v5 setAlignment:{objc_msgSend(v7, "tv_alignment")}];
  }

  v23 = [v7 tv_valueForStyle:@"tv-content-align"];

  if (v23)
  {
    [v5 setContentAlignment:{objc_msgSend(v7, "tv_contentAlignment")}];
  }

  v24 = [v7 tv_valueForStyle:@"tv-position"];

  if (v24)
  {
    [v5 setPosition:{objc_msgSend(v7, "tv_position")}];
  }

  v25 = [v7 tv_valueForStyle:@"width"];

  if (v25)
  {
    [v7 tv_width];
    [v5 setWidth:?];
  }

  v26 = [v7 tv_valueForStyle:@"height"];

  if (v26)
  {
    [v7 tv_height];
    [v5 setHeight:?];
  }

  v27 = [v7 tv_valueForStyle:@"max-width"];

  if (v27)
  {
    [v7 tv_maxWidth];
    [v5 setMaxWidth:?];
  }

  v28 = [v7 tv_valueForStyle:@"max-height"];

  if (v28)
  {
    [v7 tv_maxHeight];
    [v5 setMaxHeight:?];
  }

  v29 = [v7 tv_valueForStyle:@"min-width"];

  if (v29)
  {
    [v7 tv_minWidth];
    [v5 setMinWidth:?];
  }

  v30 = [v7 tv_valueForStyle:@"min-height"];

  if (v30)
  {
    [v7 tv_minHeight];
    [v5 setMinHeight:?];
  }

  v31 = [v7 tv_valueForStyle:@"tv-highlight-color"];

  if (v31)
  {
    v32 = [v7 tv_highlightColor];
    v33 = [v32 color];
    [v5 setHighlightColor:v33];
  }

  v34 = [v7 tv_valueForStyle:@"tv-focus-align"];

  if (v34)
  {
    v35 = [v7 tv_focusAlign];
    [v5 setFocusAlign:v35];
  }

  v36 = [v7 tv_valueForStyle:@"tv-focus-size-increase"];

  if (v36)
  {
    [v7 tv_focusSizeIncrease];
    [v5 setFocusSizeIncrease:?];
  }

  v37 = [v7 tv_valueForStyle:@"tv-progress-style"];

  if (v37)
  {
    v38 = [v7 tv_progressStyle];
    [v5 setProgressStyle:v38];
  }

  v39 = [v7 tv_valueForStyle:@"tv-accepts-focus"];

  if (v39)
  {
    [v5 setAcceptsFocus:{objc_msgSend(v7, "tv_acceptsFocus")}];
  }

  v40 = [v7 tv_valueForStyle:@"tv-highlight-style"];

  if (v40)
  {
    v41 = [v7 tv_highlightStyle];
    [v5 setHighlightStyle:v41];
  }

  v42 = [v7 tv_valueForStyle:@"tv-focus-transform"];

  if (v42)
  {
    if (v7)
    {
      [v7 tv_focusTransform];
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
    }

    [v5 setFocusTransform:&v46];
  }

  v43 = [v7 tv_valueForStyle:{@"tv-group", v46, v47, v48}];

  if (v43)
  {
    v44 = [v7 tv_group];
    [v5 setGroup:v44];
  }

  return v5;
}

- (TVViewLayout)init
{
  v5.receiver = self;
  v5.super_class = TVViewLayout;
  result = [(TVViewLayout *)&v5 init];
  if (result)
  {
    v3 = MEMORY[0x277CBF2C0];
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    *&result->_focusTransform.a = *MEMORY[0x277CBF2C0];
    *&result->_focusTransform.c = v4;
    *&result->_focusTransform.tx = *(v3 + 32);
  }

  return result;
}

- (double)focusSizeIncrease
{
  v3 = [(TVViewLayout *)self acceptsFocus];
  result = 0.0;
  if (v3)
  {
    result = self->_focusSizeIncrease;
    if (result == 0.0)
    {

      [(TVViewLayout *)self defaultFocusSizeIncrease];
    }
  }

  return result;
}

- (UIEdgeInsets)margin
{
  top = self->_margin.top;
  left = self->_margin.left;
  bottom = self->_margin.bottom;
  right = self->_margin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)focusMargin
{
  top = self->_focusMargin.top;
  left = self->_focusMargin.left;
  bottom = self->_focusMargin.bottom;
  right = self->_focusMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGAffineTransform)focusTransform
{
  v3 = *&self[6].b;
  *&retstr->a = *&self[5].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[6].d;
  return self;
}

- (void)setFocusTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_focusTransform.c = *&a3->c;
  *&self->_focusTransform.tx = v4;
  *&self->_focusTransform.a = v3;
}

@end