@interface PreviewConfiguration.ContentView
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldReturn:(id)return;
- (void)backgroundTapped;
- (void)textDidChange;
@end

@implementation PreviewConfiguration.ContentView

- (void)textDidChange
{
  selfCopy = self;
  sub_27488538C();
}

- (BOOL)becomeFirstResponder
{
  selfCopy = self;
  v3 = sub_274882C6C();

  return v3 & 1;
}

- (BOOL)resignFirstResponder
{
  selfCopy = self;
  v3 = sub_274885508();

  return v3 & 1;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  selfCopy = self;
  sub_274885568(returnCopy);

  return 0;
}

- (void)backgroundTapped
{
  selfCopy = self;
  sub_2748855D0();
}

@end