@interface SKUIDefaultSettingDescriptionView
+ (BOOL)prefetchResourcesForSettingDescription:(id)description reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForSettingDescription:(id)description context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width settingDescription:(id)description context:(id)context;
+ (UIEdgeInsets)_paddingForStyle:(id)style;
+ (void)requestLayoutForSettingDescription:(id)description width:(double)width context:(id)context;
- (BOOL)hasDisclosureChevron;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (void)layoutSubviews;
- (void)reloadWithSettingDescription:(id)description width:(double)width context:(id)context;
- (void)setBackgroundColor:(id)color;
@end

@implementation SKUIDefaultSettingDescriptionView

+ (BOOL)prefetchResourcesForSettingDescription:(id)description reason:(int64_t)reason context:(id)context
{
  descriptionCopy = description;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIDefaultSettingDescriptionView *)v9 prefetchResourcesForSettingDescription:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  viewElement = [descriptionCopy viewElement];
  lockupViewType = [viewElement lockupViewType];
  v19 = off_2781F6800;
  if (lockupViewType != 8)
  {
    v19 = off_2781F6378;
  }

  v20 = [(__objc2_class *)*v19 prefetchResourcesForViewElement:viewElement reason:reason context:contextCopy];

  return v20;
}

+ (CGSize)preferredSizeForSettingDescription:(id)description context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIDefaultSettingDescriptionView *)v4 preferredSizeForSettingDescription:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForSettingDescription:(id)description width:(double)width context:(id)context
{
  descriptionCopy = description;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIDefaultSettingDescriptionView *)v9 requestLayoutForSettingDescription:v10 width:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  viewElement = [descriptionCopy viewElement];
  lockupViewType = [viewElement lockupViewType];
  v19 = off_2781F6800;
  if (lockupViewType != 8)
  {
    v19 = off_2781F6378;
  }

  [(__objc2_class *)*v19 requestLayoutForViewElement:viewElement width:contextCopy context:width];
}

+ (CGSize)sizeThatFitsWidth:(double)width settingDescription:(id)description context:(id)context
{
  descriptionCopy = description;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIDefaultSettingDescriptionView *)v10 sizeThatFitsWidth:v11 settingDescription:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  viewElement = [descriptionCopy viewElement];
  lockupViewType = [viewElement lockupViewType];
  v20 = off_2781F6800;
  if (lockupViewType != 8)
  {
    v20 = off_2781F6378;
  }

  [(__objc2_class *)*v20 sizeThatFitsWidth:viewElement viewElement:contextCopy context:width];
  v22 = v21;
  v24 = v23;
  style = [viewElement style];
  [self _paddingForStyle:style];
  v28 = v24 + v26 + v27;

  v29 = v22;
  v30 = v28;
  result.height = v30;
  result.width = v29;
  return result;
}

- (BOOL)hasDisclosureChevron
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIDefaultSettingDescriptionView *)v3 hasDisclosureChevron:v4];
      }
    }
  }

  return self->_hasDisclosureChevron;
}

- (void)reloadWithSettingDescription:(id)description width:(double)width context:(id)context
{
  descriptionCopy = description;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUIDefaultSettingDescriptionView *)v10 reloadWithSettingDescription:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  viewElement = [descriptionCopy viewElement];
  viewReuseView = self->_viewReuseView;
  if (!viewReuseView)
  {
    v20 = objc_alloc_init(SKUIViewReuseView);
    v21 = self->_viewReuseView;
    self->_viewReuseView = v20;

    [(SKUIDefaultSettingDescriptionView *)self addSubview:self->_viewReuseView];
    viewReuseView = self->_viewReuseView;
  }

  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __80__SKUIDefaultSettingDescriptionView_reloadWithSettingDescription_width_context___block_invoke;
  v34 = &unk_2781F95C8;
  v35 = viewElement;
  selfCopy = self;
  widthCopy = width;
  v37 = contextCopy;
  v22 = contextCopy;
  v23 = viewElement;
  [(SKUIViewReuseView *)viewReuseView modifyUsingBlock:&v31];
  style = [v23 style];
  [objc_opt_class() _paddingForStyle:style];
  self->_padding.top = v25;
  self->_padding.left = v26;
  self->_padding.bottom = v27;
  self->_padding.right = v28;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(SKUIDefaultSettingDescriptionView *)self setBackgroundColor:clearColor];

  v30 = [v23 firstChildForElementType:29];
  self->_hasDisclosureChevron = v30 != 0;
}

void __80__SKUIDefaultSettingDescriptionView_reloadWithSettingDescription_width_context___block_invoke(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = a2;
  v5 = [v3 lockupViewType];
  v6 = *(a1 + 4);
  v7 = a1[7];
  v8 = *(a1 + 6);
  if (v5 == 8)
  {
    [v4 addTabularLockupWithElement:v6 width:v8 context:v7];
  }

  else
  {
    [v4 addHorizontalLockupWithElement:v6 width:v8 context:v7];
  }
  v9 = ;

  v10 = *(a1 + 5);
  v11 = *(v10 + 480);
  *(v10 + 480) = v9;
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  imageCopy = image;
  requestCopy = request;
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v11)
      {
        [(SKUIDefaultSettingDescriptionView *)v11 setImage:v12 forArtworkRequest:v13 context:v14, v15, v16, v17, v18];
      }
    }
  }

  if ([(UIView *)self->_viewElementView conformsToProtocol:&unk_2828E62D0])
  {
    v19 = [(UIView *)self->_viewElementView setImage:imageCopy forArtworkRequest:requestCopy context:contextCopy];
  }

  else
  {
    v19 = 0;
  }

  return v19;
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
        [(SKUIDefaultSettingDescriptionView *)v3 layoutSubviews:v4];
      }
    }
  }

  v27.receiver = self;
  v27.super_class = SKUIDefaultSettingDescriptionView;
  [(SKUIDefaultSettingDescriptionView *)&v27 layoutSubviews];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

  [(SKUIDefaultSettingDescriptionView *)self bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(SKUISettingDescriptionView *)self layoutMargins];
  if (userInterfaceLayoutDirection)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  if (userInterfaceLayoutDirection)
  {
    v24 = v21;
  }

  else
  {
    v24 = v22;
  }

  v28.origin.x = v14;
  v28.origin.y = v16;
  v28.size.width = v18;
  v28.size.height = v20;
  v25 = CGRectGetWidth(v28) - v23 - v24;
  v29.origin.x = v14;
  v29.origin.y = v16;
  v29.size.width = v18;
  v29.size.height = v20;
  [(SKUIViewReuseView *)self->_viewReuseView setFrame:v23, 0.0, v25, CGRectGetHeight(v29)];
  viewElementView = self->_viewElementView;
  [(SKUIViewReuseView *)self->_viewReuseView bounds];
  [(UIView *)viewElementView setFrame:?];
}

- (void)setBackgroundColor:(id)color
{
  v5.receiver = self;
  v5.super_class = SKUIDefaultSettingDescriptionView;
  colorCopy = color;
  [(SKUIDefaultSettingDescriptionView *)&v5 setBackgroundColor:colorCopy];
  [(UIView *)self->_viewElementView setBackgroundColor:colorCopy, v5.receiver, v5.super_class];
}

+ (UIEdgeInsets)_paddingForStyle:(id)style
{
  v7 = 0;
  v3 = SKUIViewElementPaddingForStyle(style, &v7);
  if ((v7 & 1) == 0)
  {
    v3 = *MEMORY[0x277D768C8];
    v4 = *(MEMORY[0x277D768C8] + 8);
    v5 = *(MEMORY[0x277D768C8] + 16);
    v6 = *(MEMORY[0x277D768C8] + 24);
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end