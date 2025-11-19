@interface ACMSignInDialogSimple_iPad_Modern
- (id)createCancelItem;
- (id)createIForgotItem;
- (id)widget;
- (void)buildWidgetContentGroupHorizontalConstraints;
@end

@implementation ACMSignInDialogSimple_iPad_Modern

- (id)createIForgotItem
{
  v2 = [objc_alloc(MEMORY[0x29EDC7940]) initWithTitle:+[ACMBaseLocale localizedString:](ACMBaseLocale style:"localizedString:" target:@"Forgot your ID or Password?" action:{0, self, sel_onIForgot_}];

  return v2;
}

- (id)createCancelItem
{
  v2 = [objc_alloc(MEMORY[0x29EDC7940]) initWithTitle:+[ACMBaseLocale localizedString:](ACMBaseLocale style:"localizedString:" target:@"Cancel" action:{0, 0, 0}];

  return v2;
}

- (void)buildWidgetContentGroupHorizontalConstraints
{
  v3 = MEMORY[0x29EDBA008];
  v4 = [-[ACMSignInDialogSimple_iPad_Modern widget](self "widget")];
  [objc_msgSend(-[ACMSignInDialogSimple_iPad_Modern widget](self "widget")];
  [-[ACMSignInDialogSimple_iPad_Modern view](self "view")];
  v6 = [MEMORY[0x29EDBA008] constraintWithItem:objc_msgSend(-[ACMSignInDialogSimple_iPad_Modern widget](self attribute:"widget") relatedBy:"view") toItem:9 attribute:0 multiplier:-[ACMSignInDialogSimple_iPad_Modern view](self constant:{"view"), 9, 1.0, 0.0}];
  v7 = [(ACMSignInDialogSimple_iPad_Modern *)self view];

  [v7 addConstraint:v6];
}

- (id)widget
{
  widget = self->super.super._widget;
  if (!widget)
  {
    v4.receiver = self;
    v4.super_class = ACMSignInDialogSimple_iPad_Modern;
    widget = [(ACMSignInDialogSimple_Modern *)&v4 widget];
    [widget setHideMargin:1];
  }

  return widget;
}

@end