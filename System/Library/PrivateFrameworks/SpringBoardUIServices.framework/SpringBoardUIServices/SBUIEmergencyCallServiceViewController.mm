@interface SBUIEmergencyCallServiceViewController
- (SBUIEmergencyCallServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)backgroundStyle:(id)a3;
- (void)noteTintColorForBackgroundStyleChanged:(id)a3;
@end

@implementation SBUIEmergencyCallServiceViewController

- (SBUIEmergencyCallServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v11.receiver = self;
  v11.super_class = SBUIEmergencyCallServiceViewController;
  v4 = [(SBUIEmergencyCallServiceViewController *)&v11 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v4->_backgroundStyle = 2;
    v6 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:2010];
    v7 = [v6 colorTint];
    [v6 colorTintAlpha];
    v8 = [v7 colorWithAlphaComponent:?];
    tintColor = v5->_tintColor;
    v5->_tintColor = v8;
  }

  return v5;
}

- (void)backgroundStyle:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, self->_backgroundStyle);
  }
}

- (void)noteTintColorForBackgroundStyleChanged:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_tintColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_tintColor, a3);
  }
}

@end