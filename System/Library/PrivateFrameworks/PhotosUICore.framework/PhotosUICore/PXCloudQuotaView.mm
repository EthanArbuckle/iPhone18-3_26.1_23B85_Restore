@interface PXCloudQuotaView
- (CGSize)_performLayoutInWidth:(double)a3 updateSubviewFrames:(BOOL)a4;
- (CGSize)contentViewSizeForWidth:(double)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXCloudQuotaView)initWithContentView:(id)a3;
- (id)contentViewFont;
- (void)layoutSubviews;
@end

@implementation PXCloudQuotaView

- (CGSize)contentViewSizeForWidth:(double)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:93 description:{@"Method %s is a responsibility of subclass %@", "-[PXCloudQuotaView contentViewSizeForWidth:]", v7}];

  abort();
}

- (id)contentViewFont
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:89 description:{@"Method %s is a responsibility of subclass %@", "-[PXCloudQuotaView contentViewFont]", v6}];

  abort();
}

- (CGSize)_performLayoutInWidth:(double)a3 updateSubviewFrames:(BOOL)a4
{
  v7 = [(PXCloudQuotaView *)self contentViewFont];
  [(PXCloudQuotaView *)self contentViewSizeForWidth:a3];
  UICeilToViewScale();
  v9 = v8;
  [v7 ascender];
  UICeilToViewScale();
  v11 = v10;
  if (a4)
  {
    [(UIView *)self->_contentView setFrame:0.0, v10, a3, v9];
  }

  v17.origin.x = 0.0;
  v17.origin.y = v11;
  v17.size.width = a3;
  v17.size.height = v9;
  CGRectGetMaxY(v17);
  [v7 descender];
  UICeilToViewScale();
  v13 = v12;

  v14 = a3;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PXCloudQuotaView;
  [(PXCloudQuotaView *)&v4 layoutSubviews];
  [(PXCloudQuotaView *)self bounds];
  [(PXCloudQuotaView *)self _performLayoutInWidth:1 updateSubviewFrames:v3];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PXCloudQuotaView *)self _performLayoutInWidth:0 updateSubviewFrames:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PXCloudQuotaView)initWithContentView:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"contentView"}];
  }

  v11.receiver = self;
  v11.super_class = PXCloudQuotaView;
  v7 = [(PXCloudQuotaView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_contentView, a3);
    [(PXCloudQuotaView *)v8 addSubview:v6];
  }

  return v8;
}

@end