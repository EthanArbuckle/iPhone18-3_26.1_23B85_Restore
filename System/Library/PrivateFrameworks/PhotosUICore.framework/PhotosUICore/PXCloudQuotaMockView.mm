@interface PXCloudQuotaMockView
- (CGSize)contentViewSizeForWidth:(double)width;
- (PXCloudQuotaMockView)init;
- (PXCloudQuotaMockView)initWithCloudQuotaFull:(BOOL)full;
- (PXCloudQuotaMockView)initWithCoder:(id)coder;
- (PXCloudQuotaMockView)initWithContentView:(id)view;
- (PXCloudQuotaMockView)initWithFrame:(CGRect)frame;
@end

@implementation PXCloudQuotaMockView

- (CGSize)contentViewSizeForWidth:(double)width
{
  v3 = 100.0;
  result.height = v3;
  result.width = width;
  return result;
}

- (PXCloudQuotaMockView)initWithCloudQuotaFull:(BOOL)full
{
  fullCopy = full;
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v4 _setCornerRadius:{10.0, self}];
  systemExtraLightGrayColor = [MEMORY[0x1E69DC888] systemExtraLightGrayColor];
  [v4 setBackgroundColor:systemExtraLightGrayColor];

  layer = [v4 layer];
  [layer setBorderWidth:2.0];

  systemLightGrayColor = [MEMORY[0x1E69DC888] systemLightGrayColor];
  cGColor = [systemLightGrayColor CGColor];
  layer2 = [v4 layer];
  [layer2 setBorderColor:cGColor];

  v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (fullCopy)
  {
    v11 = @"Mock: iCloud storage is full.";
  }

  else
  {
    v11 = @"Mock: iCloud storage is almost full.";
  }

  [v10 setText:v11];
  PXFontWithTextStyleSymbolicTraits();
}

- (PXCloudQuotaMockView)initWithContentView:(id)view
{
  viewCopy = view;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:162 description:{@"%s is not available as initializer", "-[PXCloudQuotaMockView initWithContentView:]"}];

  abort();
}

- (PXCloudQuotaMockView)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:158 description:{@"%s is not available as initializer", "-[PXCloudQuotaMockView initWithCoder:]"}];

  abort();
}

- (PXCloudQuotaMockView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:154 description:{@"%s is not available as initializer", "-[PXCloudQuotaMockView initWithFrame:]"}];

  abort();
}

- (PXCloudQuotaMockView)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:150 description:{@"%s is not available as initializer", "-[PXCloudQuotaMockView init]"}];

  abort();
}

@end