@interface SKUISubmitFieldSettingDescriptionView
+ (BOOL)prefetchResourcesForSettingDescription:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForSettingDescription:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 settingDescription:(id)a4 context:(id)a5;
+ (void)requestLayoutForSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (id)_currentControllerValue;
- (void)_addInputWithElement:(id)a3;
- (void)_addSubmitInputWithElement:(id)a3;
- (void)layoutSubviews;
- (void)reloadWithSettingDescription:(id)a3 width:(double)a4 context:(id)a5;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setEnabled:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation SKUISubmitFieldSettingDescriptionView

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISubmitFieldSettingDescriptionView *)v5 setEnabled:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SKUISubmitFieldSettingDescriptionView;
  [(SKUIFieldSettingDescriptionView *)&v15 setEnabled:v3];
  label = self->_label;
  if (label)
  {
    if (v3)
    {
      [(SKUISubmitFieldSettingDescriptionView *)self tintColor];
    }

    else
    {
      [MEMORY[0x277D75348] grayColor];
    }
    v14 = ;
    [(UILabel *)label setTextColor:v14];
  }
}

+ (BOOL)prefetchResourcesForSettingDescription:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISubmitFieldSettingDescriptionView *)v5 prefetchResourcesForSettingDescription:v6 reason:v7 context:v8, v9, v10, v11, v12];
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
        [(SKUISubmitFieldSettingDescriptionView *)v4 preferredSizeForSettingDescription:v5 context:v6, v7, v8, v9, v10, v11];
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
  v6 = a3;
  v7 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUISubmitFieldSettingDescriptionView *)v8 requestLayoutForSettingDescription:v9 width:v10 context:v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = [v6 viewElement];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__3;
  v18[4] = __Block_byref_object_dispose__3;
  v19 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __90__SKUISubmitFieldSettingDescriptionView_requestLayoutForSettingDescription_width_context___block_invoke;
  v17[3] = &unk_2781F8568;
  v17[4] = v18;
  [v16 enumerateChildrenUsingBlock:v17];
  _Block_object_dispose(v18, 8);
}

void __90__SKUISubmitFieldSettingDescriptionView_requestLayoutForSettingDescription_width_context___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = [v5 elementType];
  if ((v4 - 139) < 2 || v4 == 58)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
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
        [(SKUISubmitFieldSettingDescriptionView *)v5 sizeThatFitsWidth:v6 settingDescription:v7 context:v8, v9, v10, v11, v12];
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
        [(SKUISubmitFieldSettingDescriptionView *)v7 reloadWithSettingDescription:v8 width:v9 context:v10, v11, v12, v13, v14];
      }
    }
  }

  settingDescription = self->_settingDescription;
  self->_settingDescription = v6;
  v16 = v6;

  v17 = [(SKUISettingDescription *)v16 viewElement];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__SKUISubmitFieldSettingDescriptionView_reloadWithSettingDescription_width_context___block_invoke;
  v18[3] = &unk_2781F9640;
  v18[4] = self;
  [v17 enumerateChildrenUsingBlock:v18];
  [(SKUISubmitFieldSettingDescriptionView *)self setNeedsLayout];
}

void __84__SKUISubmitFieldSettingDescriptionView_reloadWithSettingDescription_width_context___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 elementType];
  if ((v3 - 139) < 2 || v3 == 58)
  {
    [*(a1 + 32) _addInputWithElement:v4];
  }
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v3)
    {
      [(SKUISubmitFieldSettingDescriptionView *)v3 setContentInset:v4, v5, v6, v7, v8, v9, v10];
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
        [(SKUISubmitFieldSettingDescriptionView *)v5 setImage:v6 forArtworkRequest:v7 context:v8, v9, v10, v11, v12];
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
        [(SKUISubmitFieldSettingDescriptionView *)v3 tintColorDidChange:v4];
      }
    }
  }

  v11.receiver = self;
  v11.super_class = SKUISubmitFieldSettingDescriptionView;
  [(SKUISubmitFieldSettingDescriptionView *)&v11 tintColorDidChange];
  [(SKUISubmitFieldSettingDescriptionView *)self setNeedsLayout];
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
        [(SKUISubmitFieldSettingDescriptionView *)v3 layoutSubviews:v4];
      }
    }
  }

  v26.receiver = self;
  v26.super_class = SKUISubmitFieldSettingDescriptionView;
  [(SKUISubmitFieldSettingDescriptionView *)&v26 layoutSubviews];
  [(SKUISettingDescriptionView *)self layoutMargins];
  v12 = v11;
  v14 = v13;
  [(SKUISubmitFieldSettingDescriptionView *)self bounds];
  v15 = CGRectGetWidth(v27) - v12 - v14;
  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_label setFont:v16];
  [v16 _scaledValueForValue:30.0];
  v18 = v17;
  [(UILabel *)self->_label _firstBaselineOffsetFromTop];
  v20 = v18 - v19;
  [(UILabel *)self->_label sizeThatFits:v15, 1.0];
  [(UILabel *)self->_label setFrame:v12, v20, v15, v21];
  v22 = [(SKUISubmitFieldSettingDescriptionView *)self _currentControllerValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = [v22 BOOLValue];
    label = self->_label;
    if (v23)
    {
      [(SKUISubmitFieldSettingDescriptionView *)self tintColor];
    }

    else
    {
      [MEMORY[0x277D75348] grayColor];
    }
    v25 = ;
    [(UILabel *)label setTextColor:v25];
  }
}

- (void)_addInputWithElement:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_inputViewElement, a3);
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    [(SKUISubmitFieldSettingDescriptionView *)self _addSubmitInputWithElement:v5];
  }
}

- (void)_addSubmitInputWithElement:(id)a3
{
  v4 = MEMORY[0x277D756B8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  label = self->_label;
  self->_label = v6;

  v8 = self->_label;
  v9 = [v5 label];

  [(UILabel *)v8 setText:v9];
  v10 = self->_label;
  v11 = [MEMORY[0x277D75348] grayColor];
  [(UILabel *)v10 setTextColor:v11];

  v12 = self->_label;

  [(SKUISubmitFieldSettingDescriptionView *)self addSubview:v12];
}

- (id)_currentControllerValue
{
  v3 = [(SKUIFieldSettingDescription *)self->_settingDescription controller];
  if ([v3 isMemberOfClass:objc_opt_class()])
  {
    v4 = [v3 valueForSettingDescription:self->_settingDescription];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end