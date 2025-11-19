@interface SBRecordingIndicatorLayer
- (SBRecordingIndicatorLayer)init;
- (SBRecordingIndicatorLayer)initWithCoder:(id)a3;
- (SBRecordingIndicatorLayer)initWithLayer:(id)a3;
- (void)_applyCornerRadius;
- (void)_resetSecureIndicatorLayerIndicatorType;
- (void)layoutSublayers;
- (void)setBlurRadius:(double)a3;
- (void)setBounds:(CGRect)a3;
- (void)setIndicatorType:(unint64_t)a3;
@end

@implementation SBRecordingIndicatorLayer

- (void)_resetSecureIndicatorLayerIndicatorType
{
  v5 = CAPrivacyIndicatorTypeForIndicatorType(self->_indicatorType);
  v3 = [(CASecureIndicatorLayer *)self privacyIndicatorType];

  v4 = v5;
  if (v5 != v3)
  {
    [(CASecureIndicatorLayer *)self setPrivacyIndicatorType:v5];
    v4 = v5;
  }
}

- (SBRecordingIndicatorLayer)init
{
  v5.receiver = self;
  v5.super_class = SBRecordingIndicatorLayer;
  v2 = [(SBRecordingIndicatorLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SBRecordingIndicatorLayer *)v2 _commonInit];
  }

  return v3;
}

- (SBRecordingIndicatorLayer)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBRecordingIndicatorLayer;
  v3 = [(SBRecordingIndicatorLayer *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(SBRecordingIndicatorLayer *)v3 _commonInit];
  }

  return v4;
}

- (SBRecordingIndicatorLayer)initWithLayer:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBRecordingIndicatorLayer;
  v3 = [(SBRecordingIndicatorLayer *)&v6 initWithLayer:a3];
  v4 = v3;
  if (v3)
  {
    [(SBRecordingIndicatorLayer *)v3 _commonInit];
  }

  return v4;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SBRecordingIndicatorLayer *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16.receiver = self;
  v16.super_class = SBRecordingIndicatorLayer;
  [(SBRecordingIndicatorLayer *)&v16 setBounds:x, y, width, height];
  v17.origin.x = v9;
  v17.origin.y = v11;
  v17.size.width = v13;
  v17.size.height = v15;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  if (!CGRectEqualToRect(v17, v18))
  {
    [(SBRecordingIndicatorLayer *)self _applyCornerRadius];
  }
}

- (void)layoutSublayers
{
  v3.receiver = self;
  v3.super_class = SBRecordingIndicatorLayer;
  [(SBRecordingIndicatorLayer *)&v3 layoutSublayers];
  [(SBRecordingIndicatorLayer *)self _applyCornerRadius];
}

- (void)setBlurRadius:(double)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (self->_blurRadius != a3)
  {
    self->_blurRadius = a3;
    v4 = [(SBRecordingIndicatorLayer *)self filters];
    v5 = [v4 bs_containsObjectPassingTest:&__block_literal_global_308];

    if (v5)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_blurRadius];
      [SBRecordingIndicatorLayer setValue:"setValue:forKeyPath:" forKeyPath:?];
    }

    else if (self->_blurRadius > 0.0)
    {
      v6 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
      v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_blurRadius];
      [v6 setValue:v7 forKey:*MEMORY[0x277CDA4F0]];

      [v6 setValue:@"high" forKey:*MEMORY[0x277CDA4E8]];
      v10[0] = v6;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
      [(SBRecordingIndicatorLayer *)self setFilters:v8];
    }
  }
}

uint64_t __43__SBRecordingIndicatorLayer_setBlurRadius___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *MEMORY[0x277CDA328];
    v4 = [v2 type];
    v5 = [v3 isEqualToString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setIndicatorType:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  indicatorType = self->_indicatorType;
  if (indicatorType != a3)
  {
    self->_indicatorType = a3;
    v6 = SBLogStatusBarish();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CAPrivacyIndicatorTypeForIndicatorType(self->_indicatorType);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Recording Indicator] updating secure indicator type for view-dot to %@", &v9, 0xCu);
    }

    [(SBRecordingIndicatorLayer *)self _resetSecureIndicatorLayerIndicatorType];
    IsCircular = SBRecordingIndicatorTypeIsCircular(indicatorType);
    if (IsCircular != SBRecordingIndicatorTypeIsCircular(a3))
    {
      [(SBRecordingIndicatorLayer *)self setNeedsLayout];
      [(SBRecordingIndicatorLayer *)self layoutIfNeeded];
    }
  }
}

- (void)_applyCornerRadius
{
  IsCircular = SBRecordingIndicatorTypeIsCircular([(SBRecordingIndicatorLayer *)self indicatorType]);
  v4 = 0.0;
  if (IsCircular)
  {
    [(SBRecordingIndicatorLayer *)self bounds];
    v4 = CGRectGetHeight(v6) * 0.5;
  }

  [(SBRecordingIndicatorLayer *)self setCornerRadius:v4];
}

@end