@interface SKUICheckboxFieldSettingDescriptionView
+ (BOOL)prefetchResourcesForSettingDescription:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForSettingDescription:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 settingDescription:(id)a4 context:(id)a5;
+ (void)requestLayoutForSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (void)_addInputWithElement:(id)a3;
- (void)_addLabelWithElement:(id)a3;
- (void)_addSwitchWithElement:(id)a3;
- (void)_switchValueChanged:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)tintColorDidChange;
@end

@implementation SKUICheckboxFieldSettingDescriptionView

+ (BOOL)prefetchResourcesForSettingDescription:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICheckboxFieldSettingDescriptionView *)v5 prefetchResourcesForSettingDescription:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForSettingDescription:(id)a3 context:(id)a4
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUICheckboxFieldSettingDescriptionView *)v4 preferredSizeForSettingDescription:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForSettingDescription:(id)a3 width:(double)a4 context:(id)a5
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v5)
    {
      [(SKUICheckboxFieldSettingDescriptionView *)v5 requestLayoutForSettingDescription:v6 width:v7 context:v8, v9, v10, v11, v12];
    }
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 settingDescription:(id)a4 context:(id)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICheckboxFieldSettingDescriptionView *)v5 sizeThatFitsWidth:v6 settingDescription:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = *MEMORY[0x277CBF3A8];
  v14 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5
{
  v6 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUICheckboxFieldSettingDescriptionView *)v7 reloadWithSettingDescription:v8 width:v9 context:v10, v11, v12, v13, v14];
      }
    }
  }

  settingDescription = self->_settingDescription;
  self->_settingDescription = v6;
  v16 = v6;

  v17 = [(SKUISettingDescription *)v16 viewElement];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __86__SKUICheckboxFieldSettingDescriptionView_reloadWithSettingDescription_width_context___block_invoke;
  v18[3] = &unk_2781F9640;
  v18[4] = self;
  [v17 enumerateChildrenUsingBlock:v18];
  [(SKUICheckboxFieldSettingDescriptionView *)self setNeedsLayout];
}

uint64_t __86__SKUICheckboxFieldSettingDescriptionView_reloadWithSettingDescription_width_context___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 elementType];
  if (v3 == 18)
  {
    v3 = [*(a1 + 32) _addInputWithElement:v6];
  }

  else
  {
    v4 = v6;
    if (v3 != 138)
    {
      goto LABEL_6;
    }

    v3 = [*(a1 + 32) _addLabelWithElement:v6];
  }

  v4 = v6;
LABEL_6:

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v3)
    {
      [(SKUICheckboxFieldSettingDescriptionView *)v3 setContentInset:v4, v5, v6, v7, v8, v9, v10];
    }
  }
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICheckboxFieldSettingDescriptionView *)v5 setImage:v6 forArtworkRequest:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

- (void)tintColorDidChange
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUICheckboxFieldSettingDescriptionView *)v3 tintColorDidChange:v4];
      }
    }
  }

  v11.receiver = self;
  v11.super_class = SKUICheckboxFieldSettingDescriptionView;
  [(SKUICheckboxFieldSettingDescriptionView *)&v11 tintColorDidChange];
  [(SKUICheckboxFieldSettingDescriptionView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUICheckboxFieldSettingDescriptionView *)v3 layoutSubviews:v4];
      }
    }
  }

  v36.receiver = self;
  v36.super_class = SKUICheckboxFieldSettingDescriptionView;
  [(SKUICheckboxFieldSettingDescriptionView *)&v36 layoutSubviews];
  [(SKUISettingDescriptionView *)self layoutMargins];
  v12 = v11;
  v14 = v13;
  [(SKUICheckboxFieldSettingDescriptionView *)self bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(UISwitch *)self->_switch sizeThatFits:1.0, 1.0];
  v24 = v23;
  v26 = v25;
  v37.origin.x = v16;
  v37.origin.y = v18;
  v37.size.width = v20;
  v37.size.height = v22;
  v27 = CGRectGetWidth(v37) - v14 - v24;
  v38.origin.x = v16;
  v38.origin.y = v18;
  v38.size.width = v20;
  v38.size.height = v22;
  v28 = floor((CGRectGetHeight(v38) - v26) * 0.5);
  [(UISwitch *)self->_switch setFrame:v27, v28, v24, v26];
  v29 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v39.origin.x = v27;
  v39.origin.y = v28;
  v39.size.width = v24;
  v39.size.height = v26;
  v30 = CGRectGetMinX(v39) - v12 + -16.0;
  [v29 _scaledValueForValue:30.0];
  v32 = v31;
  [(UILabel *)self->_label _firstBaselineOffsetFromTop];
  v34 = v32 - v33;
  [(UILabel *)self->_label sizeThatFits:v30, 1.0];
  [(UILabel *)self->_label setFrame:v12, v34, v30, v35];
}

- (void)_switchValueChanged:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:{-[UISwitch isOn](self->_switch, "isOn")}];
  [(SKUIFieldSettingDescription *)self->_settingDescription setFieldValue:v4 forKey:@"selected"];
}

- (void)_addInputWithElement:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_inputViewElement, a3);
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    [(SKUICheckboxFieldSettingDescriptionView *)self _addSwitchWithElement:v5];
  }
}

- (void)_addLabelWithElement:(id)a3
{
  v4 = MEMORY[0x277D756B8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  label = self->_label;
  self->_label = v6;

  v8 = self->_label;
  v9 = [v5 text];

  v10 = [v9 string];
  [(UILabel *)v8 setText:v10];

  v11 = self->_label;
  v12 = [MEMORY[0x277D75348] blackColor];
  [(UILabel *)v11 setTextColor:v12];

  v13 = self->_label;

  [(SKUICheckboxFieldSettingDescriptionView *)self addSubview:v13];
}

- (void)_addSwitchWithElement:(id)a3
{
  v4 = MEMORY[0x277D75AE8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = self->_switch;
  self->_switch = v6;

  v8 = [v5 isSelected];
  v9 = [(SKUIFieldSettingDescription *)self->_settingDescription fieldValueForKey:@"selected"];
  v10 = v9;
  if (v9)
  {
    v8 = [v9 BOOLValue];
  }

  [(UISwitch *)self->_switch setOn:v8];
  [(UISwitch *)self->_switch addTarget:self action:sel__switchValueChanged_ forControlEvents:4096];
  [(SKUICheckboxFieldSettingDescriptionView *)self addSubview:self->_switch];
}

@end