@interface SBUIEmergencyCallServiceViewController
- (SBUIEmergencyCallServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)backgroundStyle:(id)style;
- (void)noteTintColorForBackgroundStyleChanged:(id)changed;
@end

@implementation SBUIEmergencyCallServiceViewController

- (SBUIEmergencyCallServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v11.receiver = self;
  v11.super_class = SBUIEmergencyCallServiceViewController;
  v4 = [(SBUIEmergencyCallServiceViewController *)&v11 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v4->_backgroundStyle = 2;
    v6 = [MEMORY[0x1E69DD378] settingsForPrivateStyle:2010];
    colorTint = [v6 colorTint];
    [v6 colorTintAlpha];
    v8 = [colorTint colorWithAlphaComponent:?];
    tintColor = v5->_tintColor;
    v5->_tintColor = v8;
  }

  return v5;
}

- (void)backgroundStyle:(id)style
{
  if (style)
  {
    (*(style + 2))(style, self->_backgroundStyle);
  }
}

- (void)noteTintColorForBackgroundStyleChanged:(id)changed
{
  changedCopy = changed;
  if (([(UIColor *)self->_tintColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_tintColor, changed);
  }
}

@end