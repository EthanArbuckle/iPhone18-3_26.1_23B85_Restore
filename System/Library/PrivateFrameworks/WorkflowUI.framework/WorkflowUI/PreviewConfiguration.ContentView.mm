@interface PreviewConfiguration.ContentView
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldReturn:(id)a3;
- (void)backgroundTapped;
- (void)textDidChange;
@end

@implementation PreviewConfiguration.ContentView

- (void)textDidChange
{
  v2 = self;
  sub_27488538C();
}

- (BOOL)becomeFirstResponder
{
  v2 = self;
  v3 = sub_274882C6C();

  return v3 & 1;
}

- (BOOL)resignFirstResponder
{
  v2 = self;
  v3 = sub_274885508();

  return v3 & 1;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_274885568(v4);

  return 0;
}

- (void)backgroundTapped
{
  v2 = self;
  sub_2748855D0();
}

@end