@interface PXCloudQuotaMockView
- (CGSize)contentViewSizeForWidth:(double)a3;
- (PXCloudQuotaMockView)init;
- (PXCloudQuotaMockView)initWithCloudQuotaFull:(BOOL)a3;
- (PXCloudQuotaMockView)initWithCoder:(id)a3;
- (PXCloudQuotaMockView)initWithContentView:(id)a3;
- (PXCloudQuotaMockView)initWithFrame:(CGRect)a3;
@end

@implementation PXCloudQuotaMockView

- (CGSize)contentViewSizeForWidth:(double)a3
{
  v3 = 100.0;
  result.height = v3;
  result.width = a3;
  return result;
}

- (PXCloudQuotaMockView)initWithCloudQuotaFull:(BOOL)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v4 _setCornerRadius:{10.0, self}];
  v5 = [MEMORY[0x1E69DC888] systemExtraLightGrayColor];
  [v4 setBackgroundColor:v5];

  v6 = [v4 layer];
  [v6 setBorderWidth:2.0];

  v7 = [MEMORY[0x1E69DC888] systemLightGrayColor];
  v8 = [v7 CGColor];
  v9 = [v4 layer];
  [v9 setBorderColor:v8];

  v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (v3)
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

- (PXCloudQuotaMockView)initWithContentView:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:162 description:{@"%s is not available as initializer", "-[PXCloudQuotaMockView initWithContentView:]"}];

  abort();
}

- (PXCloudQuotaMockView)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:158 description:{@"%s is not available as initializer", "-[PXCloudQuotaMockView initWithCoder:]"}];

  abort();
}

- (PXCloudQuotaMockView)initWithFrame:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:154 description:{@"%s is not available as initializer", "-[PXCloudQuotaMockView initWithFrame:]"}];

  abort();
}

- (PXCloudQuotaMockView)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCloudQuotaView.m" lineNumber:150 description:{@"%s is not available as initializer", "-[PXCloudQuotaMockView init]"}];

  abort();
}

@end