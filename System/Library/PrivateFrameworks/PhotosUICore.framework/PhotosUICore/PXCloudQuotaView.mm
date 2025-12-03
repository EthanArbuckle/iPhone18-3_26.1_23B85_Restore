@interface PXCloudQuotaView
- (CGSize)_performLayoutInWidth:(double)width updateSubviewFrames:(BOOL)frames;
- (CGSize)contentViewSizeForWidth:(double)width;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXCloudQuotaView)initWithContentView:(id)view;
- (id)contentViewFont;
- (void)layoutSubviews;
@end

@implementation PXCloudQuotaView

- (CGSize)contentViewSizeForWidth:(double)width
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:93 description:{@"Method %s is a responsibility of subclass %@", "-[PXCloudQuotaView contentViewSizeForWidth:]", v7}];

  abort();
}

- (id)contentViewFont
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:89 description:{@"Method %s is a responsibility of subclass %@", "-[PXCloudQuotaView contentViewFont]", v6}];

  abort();
}

- (CGSize)_performLayoutInWidth:(double)width updateSubviewFrames:(BOOL)frames
{
  contentViewFont = [(PXCloudQuotaView *)self contentViewFont];
  [(PXCloudQuotaView *)self contentViewSizeForWidth:width];
  UICeilToViewScale();
  v9 = v8;
  [contentViewFont ascender];
  UICeilToViewScale();
  v11 = v10;
  if (frames)
  {
    [(UIView *)self->_contentView setFrame:0.0, v10, width, v9];
  }

  v17.origin.x = 0.0;
  v17.origin.y = v11;
  v17.size.width = width;
  v17.size.height = v9;
  CGRectGetMaxY(v17);
  [contentViewFont descender];
  UICeilToViewScale();
  v13 = v12;

  widthCopy = width;
  v15 = v13;
  result.height = v15;
  result.width = widthCopy;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PXCloudQuotaView *)self _performLayoutInWidth:0 updateSubviewFrames:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PXCloudQuotaView)initWithContentView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"contentView"}];
  }

  v11.receiver = self;
  v11.super_class = PXCloudQuotaView;
  v7 = [(PXCloudQuotaView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_contentView, view);
    [(PXCloudQuotaView *)v8 addSubview:viewCopy];
  }

  return v8;
}

@end