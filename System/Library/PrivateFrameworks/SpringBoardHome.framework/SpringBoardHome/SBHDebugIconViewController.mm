@interface SBHDebugIconViewController
- (CGRect)visibleBounds;
- (SBHDebugIconViewController)initWithIcon:(id)a3;
- (void)setIconImageInfo:(SBIconImageInfo *)a3;
- (void)viewDidLoad;
@end

@implementation SBHDebugIconViewController

- (SBHDebugIconViewController)initWithIcon:(id)a3
{
  v5 = a3;
  v6 = [(SBHDebugIconViewController *)self initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_icon, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = SBHDebugIconViewController;
  [(SBHDebugIconViewController *)&v10 viewDidLoad];
  v3 = [(SBHDebugIconViewController *)self view];
  v4 = [(SBHDebugIconViewController *)self icon];
  v5 = [v4 uniqueIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = ([v5 hash] % 0xFFuLL) / 255.0;
  }

  else
  {
    v8 = arc4random();
    v7 = v8 / 4294967300.0 + (1.0 - v8 / 4294967300.0) * 0.0;
  }

  v9 = [MEMORY[0x1E69DC888] colorWithHue:v7 saturation:0.8 brightness:0.8 alpha:1.0];
  [v3 setBackgroundColor:v9];
}

- (void)setIconImageInfo:(SBIconImageInfo *)a3
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v10 = v3;
  p_iconImageInfo = &self->_iconImageInfo;
  if (!SBIconImageInfoEqualToIconImageInfo(v3, v4, v5, v6, self->_iconImageInfo.size.width, self->_iconImageInfo.size.height, self->_iconImageInfo.scale, self->_iconImageInfo.continuousCornerRadius))
  {
    p_iconImageInfo->size.width = v10;
    p_iconImageInfo->size.height = v9;
    p_iconImageInfo->scale = v8;
    p_iconImageInfo->continuousCornerRadius = v7;
    if ([(SBHDebugIconViewController *)self isViewLoaded])
    {
      v13 = [(SBHDebugIconViewController *)self view];
      [v13 _setContinuousCornerRadius:v7];
    }
  }
}

- (CGRect)visibleBounds
{
  v2 = [(SBHDebugIconViewController *)self view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end