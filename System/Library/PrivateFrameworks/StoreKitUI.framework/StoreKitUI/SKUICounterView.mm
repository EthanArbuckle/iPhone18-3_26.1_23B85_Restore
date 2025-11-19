@interface SKUICounterView
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5;
- (id)viewForElementIdentifier:(id)a3;
- (unint64_t)_visibleTimeFieldsForDateFormat:(int64_t)a3;
- (void)_addNumberViewWithViewElement:(id)a3 context:(id)a4;
- (void)_addTimeViewWithViewElement:(id)a3 context:(id)a4;
- (void)_reloadNumberValue;
- (void)_reloadUpdateTimer;
- (void)_startUpdateTimer;
- (void)_stopUpdateTimer;
- (void)_updateTimerAction;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setAlpha:(double)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation SKUICounterView

- (void)dealloc
{
  updateTimer = self->_updateTimer;
  if (updateTimer)
  {
    dispatch_source_cancel(updateTimer);
  }

  v4.receiver = self;
  v4.super_class = SKUICounterView;
  [(SKUIViewReuseView *)&v4 dealloc];
}

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUICounterView *)v9 prefetchResourcesForViewElement:v10 reason:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = [v7 backgroundImageElement];
  if (v17)
  {
    v18 = [v8 prefetchResourcesForViewElement:v17 reason:a4];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUICounterView *)v7 preferredSizeForViewElement:v8 context:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [v5 backgroundImageElement];
  if (v15)
  {
    [v6 sizeForImageElement:v15];
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v17 = *MEMORY[0x277CBF3A8];
    v19 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v5)
    {
      [(SKUICounterView *)v5 requestLayoutForViewElement:v6 width:v7 context:v8, v9, v10, v11, v12];
    }
  }
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUICounterView *)v9 sizeThatFitsWidth:v10 viewElement:v11 context:v12, v13, v14, v15, v16];
      }
    }
  }

  [a1 preferredSizeForViewElement:v7 context:v8];
  v18 = v17;
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v10)
      {
        [(SKUICounterView *)v10 reloadWithViewElement:v11 width:v12 context:v13, v14, v15, v16, v17];
      }
    }
  }

  if (self->_counterElement != v8)
  {
    [(SKUICounterView *)self _stopUpdateTimer];
    objc_storeStrong(&self->_counterElement, a3);
    numberFormatter = self->_numberFormatter;
    self->_numberFormatter = 0;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __55__SKUICounterView_reloadWithViewElement_width_context___block_invoke;
  v23[3] = &unk_2781F8450;
  v19 = v8;
  v24 = v19;
  v25 = self;
  v20 = v9;
  v26 = v20;
  [(SKUIViewReuseView *)self modifyUsingBlock:v23];
  v21 = [(SKUICounterViewElement *)v19 counterType];
  if (!v21)
  {
    [(SKUICounterView *)self _addTimeViewWithViewElement:v19 context:v20];
    v22 = &OBJC_IVAR___SKUICounterView__numberView;
    goto LABEL_11;
  }

  if (v21 == 1)
  {
    [(SKUICounterView *)self _addNumberViewWithViewElement:v19 context:v20];
    v22 = &OBJC_IVAR___SKUICounterView__timeView;
LABEL_11:
    [*(&self->super.super.super.super.isa + *v22) setHidden:1];
  }

  [(SKUICounterView *)self _reloadUpdateTimer];
}

void __55__SKUICounterView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) backgroundImageElement];
  if (v3)
  {
    v4 = [v5 addImageViewWithElement:v3 context:*(a1 + 48)];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(a1 + 40) + 464), v4);
  if (v3)
  {
  }
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  left = a3.left;
  bottom = a3.bottom;
  top = a3.top;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUICounterView *)v4 setContentInset:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12.f64[0] = top;
  v12.f64[1] = left;
  v13.f64[0] = bottom;
  v13.f64[1] = right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v12), vceqq_f64(*&self->_contentInset.bottom, v13)))) & 1) == 0)
  {
    self->_contentInset.top = top;
    self->_contentInset.left = left;
    self->_contentInset.bottom = bottom;
    self->_contentInset.right = right;
    [(SKUICounterView *)self setNeedsLayout];
  }
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v11)
      {
        [(SKUICounterView *)v11 setImage:v12 forArtworkRequest:v13 context:v14, v15, v16, v17, v18];
      }
    }
  }

  v19 = [(SKUICounterViewElement *)self->_counterElement backgroundImageElement];
  if (v19 && (v20 = [v9 requestIdentifier], objc_msgSend(v10, "requestIdentifierForViewElement:", v19), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "unsignedIntegerValue"), v21, v20 == v22))
  {
    [(SKUIImageView *)self->_imageView setImage:v8];
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (BOOL)updateWithItemState:(id)a3 context:(id)a4 animated:(BOOL)a5
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICounterView *)v5 updateWithItemState:v6 context:v7 animated:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

- (id)viewForElementIdentifier:(id)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUICounterView *)v3 viewForElementIdentifier:v4, v5, v6, v7, v8, v9, v10];
      }
    }
  }

  return 0;
}

- (void)didMoveToWindow
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUICounterView *)v3 didMoveToWindow:v4];
      }
    }
  }

  v11.receiver = self;
  v11.super_class = SKUICounterView;
  [(SKUICounterView *)&v11 didMoveToWindow];
  [(SKUICounterView *)self _reloadUpdateTimer];
}

- (void)didMoveToSuperview
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUICounterView *)v3 didMoveToSuperview:v4];
      }
    }
  }

  v11.receiver = self;
  v11.super_class = SKUICounterView;
  [(SKUICounterView *)&v11 didMoveToSuperview];
  [(SKUICounterView *)self _reloadUpdateTimer];
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
        [(SKUICounterView *)v3 layoutSubviews:v4];
      }
    }
  }

  [(SKUICounterView *)self bounds];
  v14 = v13;
  v16 = v15;
  v17 = v11;
  v18 = v12;
  imageView = self->_imageView;
  if (imageView)
  {
    v20 = v11 - self->_contentInset.left - self->_contentInset.right;
    v21 = v12 - self->_contentInset.bottom - self->_contentInset.top;
    [(SKUIImageView *)imageView frame];
    [(SKUIImageView *)self->_imageView sizeThatFits:v17, v18];
    SKUIImageRectForBounds();
    v17 = v22;
    v18 = v23;
    v24 = self->_contentInset.left + (v20 - v22) * 0.5;
    v14 = floorf(v24);
    v25 = self->_contentInset.top + (v21 - v23) * 0.5;
    v16 = floorf(v25);
    [(SKUIImageView *)self->_imageView setFrame:v14, v16, v22, v23];
  }

  v26 = self->_timeView;
  v27 = v26;
  if (v26 && ![(SKUICounterTimeView *)v26 isHidden]|| (v28 = self->_numberView, v27, (v27 = v28) != 0))
  {
    if (([v27 isHidden] & 1) == 0)
    {
      v29 = [(SKUICounterViewElement *)self->_counterElement style];
      v48 = 0;
      v30 = SKUIViewElementPaddingForStyle(v29, &v48);
      v46 = v31;
      v47 = v30;
      v32 = v48;
      [v27 frame];
      v34 = v33;
      [v27 sizeThatFits:{v17, v18}];
      v36 = v35;
      v38 = v37;
      *&v35 = v14 + (v17 - v35) * 0.5;
      v39 = floorf(*&v35);
      v40 = [v29 elementPosition];
      if (v40 <= 9)
      {
        if (((1 << v40) & 0x309) != 0)
        {
          if (v32)
          {
            v45 = v46;
          }

          else
          {
            v45 = 4.0;
          }

          v49.origin.x = v14;
          v49.origin.y = v16;
          v49.size.width = v17;
          v49.size.height = v18;
          v34 = CGRectGetMaxY(v49) - v38 - v45;
        }

        else
        {
          v41 = v16 + (v18 - v38) * 0.5;
          v42 = floorf(v41);
          v43 = 4.0;
          if (v32)
          {
            v43 = v47;
          }

          v44 = v16 + v43;
          if (((1 << v40) & 0x32) != 0)
          {
            v34 = v42;
          }

          else
          {
            v34 = v44;
          }
        }
      }

      [v27 setFrame:{v39, v34, v36, v38}];
    }
  }

  [(SKUICounterView *)self _reloadUpdateTimer];
}

- (void)setAlpha:(double)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICounterView *)v5 setAlpha:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13.receiver = self;
  v13.super_class = SKUICounterView;
  [(SKUICounterView *)&v13 setAlpha:a3];
  [(SKUICounterView *)self _reloadUpdateTimer];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUICounterView *)v5 setHidden:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13.receiver = self;
  v13.super_class = SKUICounterView;
  [(SKUICounterView *)&v13 setHidden:v3];
  [(SKUICounterView *)self _reloadUpdateTimer];
}

- (void)_addNumberViewWithViewElement:(id)a3 context:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (!self->_numberView)
  {
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    numberView = self->_numberView;
    self->_numberView = v7;

    v9 = self->_numberView;
    v10 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v9 setBackgroundColor:v10];

    [(UILabel *)self->_numberView setTextAlignment:1];
  }

  v11 = [v16 style];
  v12 = self->_numberView;
  v13 = SKUIViewElementFontWithStyle(v11);
  [(UILabel *)v12 setFont:v13];

  v14 = [v6 tintColor];
  v15 = SKUIViewElementPlainColorWithStyle(v11, v14);

  [(UILabel *)self->_numberView setTextColor:v15];
  [(UILabel *)self->_numberView setHidden:0];
  [(SKUICounterView *)self addSubview:self->_numberView];
  [(SKUICounterView *)self _reloadNumberValue];
}

- (void)_addTimeViewWithViewElement:(id)a3 context:(id)a4
{
  v20 = a3;
  v6 = a4;
  if (!self->_timeView)
  {
    v7 = [SKUICounterTimeView alloc];
    v8 = [v6 clientContext];
    v9 = [(SKUICounterTimeView *)v7 initWithClientContext:v8];
    timeView = self->_timeView;
    self->_timeView = v9;

    v11 = self->_timeView;
    v12 = [MEMORY[0x277D75348] clearColor];
    [(SKUICounterTimeView *)v11 setBackgroundColor:v12];
  }

  v13 = [v20 style];
  v14 = self->_timeView;
  v15 = [v20 endDate];
  [(SKUICounterTimeView *)v14 setEndDate:v15];

  v16 = [v6 tintColor];
  v17 = SKUIViewElementPlainColorWithStyle(v13, v16);

  [(SKUICounterTimeView *)self->_timeView setTextColor:v17];
  v18 = self->_timeView;
  v19 = SKUIViewElementFontWithStyle(v13);
  [(SKUICounterTimeView *)v18 setValueFont:v19];

  -[SKUICounterTimeView setVisibleFields:](self->_timeView, "setVisibleFields:", -[SKUICounterView _visibleTimeFieldsForDateFormat:](self, "_visibleTimeFieldsForDateFormat:", [v20 dateFormatType]));
  [(SKUICounterTimeView *)self->_timeView setHidden:0];
  [(SKUICounterView *)self addSubview:self->_timeView];
}

- (void)_reloadNumberValue
{
  numberFormatter = self->_numberFormatter;
  if (!numberFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v5 = self->_numberFormatter;
    self->_numberFormatter = v4;

    [(NSNumberFormatter *)self->_numberFormatter setNumberStyle:1];
    v6 = self->_numberFormatter;
    v7 = [(SKUICounterViewElement *)self->_counterElement numberFormat];
    [(NSNumberFormatter *)v6 setPositiveFormat:v7];

    numberFormatter = self->_numberFormatter;
  }

  numberView = self->_numberView;
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[SKUICounterViewElement currentNumberValue](self->_counterElement, "currentNumberValue")}];
  v9 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v10];
  [(UILabel *)numberView setText:v9];
}

- (void)_reloadUpdateTimer
{
  if (([(SKUICounterView *)self isHidden]& 1) != 0 || ([(SKUICounterView *)self alpha], v3 < 0.00000011920929) || ([(SKUICounterView *)self window], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {

    [(SKUICounterView *)self _stopUpdateTimer];
  }

  else
  {

    [(SKUICounterView *)self _startUpdateTimer];
  }
}

- (void)_startUpdateTimer
{
  if (!self->_updateTimer)
  {
    v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    updateTimer = self->_updateTimer;
    self->_updateTimer = v3;

    if ([(SKUICounterViewElement *)self->_counterElement counterType]== 1)
    {
      [(SKUICounterViewElement *)self->_counterElement changeRatePerSecond];
      v6 = (fmax(1.0 / v5, 0.333333333) * 1000000000.0);
    }

    else
    {
      v6 = 1000000000;
    }

    v7 = self->_updateTimer;
    v8 = dispatch_time(0, v6);
    dispatch_source_set_timer(v7, v8, v6, 0);
    objc_initWeak(&location, self);
    v9 = self->_updateTimer;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__SKUICounterView__startUpdateTimer__block_invoke;
    v10[3] = &unk_2781F8320;
    objc_copyWeak(&v11, &location);
    dispatch_source_set_event_handler(v9, v10);
    dispatch_resume(self->_updateTimer);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __36__SKUICounterView__startUpdateTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTimerAction];
}

- (void)_stopUpdateTimer
{
  updateTimer = self->_updateTimer;
  if (updateTimer)
  {
    dispatch_source_cancel(updateTimer);
    v4 = self->_updateTimer;
    self->_updateTimer = 0;
  }
}

- (void)_updateTimerAction
{
  timeView = self->_timeView;
  if (timeView && ([(SKUICounterTimeView *)timeView isHidden]& 1) == 0)
  {
    [(SKUICounterTimeView *)self->_timeView reloadTimeValue];
  }

  numberView = self->_numberView;
  if (numberView && ([(UILabel *)numberView isHidden]& 1) == 0)
  {

    [(SKUICounterView *)self _reloadNumberValue];
  }
}

- (unint64_t)_visibleTimeFieldsForDateFormat:(int64_t)a3
{
  if (a3 > 3)
  {
    return 7;
  }

  else
  {
    return qword_215F40060[a3];
  }
}

@end