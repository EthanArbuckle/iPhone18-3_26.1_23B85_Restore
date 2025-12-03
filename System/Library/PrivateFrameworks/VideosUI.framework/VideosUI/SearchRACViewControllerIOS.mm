@interface SearchRACViewControllerIOS
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (_TtC8VideosUI26SearchRACViewControllerIOS)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)cancelButtonTapped;
- (void)keyboardStateWillChange:(id)change;
- (void)submitButtonTapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidEndEditing:(id)editing;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SearchRACViewControllerIOS

- (void)viewDidLoad
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E390AA80();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1E390AD40(appear);
}

- (void)keyboardStateWillChange:(id)change
{
  sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  sub_1E41FDEE4();
  selfCopy = self;
  sub_1E390AE60();

  v6 = OUTLINED_FUNCTION_74();
  v7(v6);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E390BA04();
}

- (void)submitButtonTapped
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E390BB74();
}

- (void)cancelButtonTapped
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E390C32C();
}

- (_TtC8VideosUI26SearchRACViewControllerIOS)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1E4205F14();
  }

  bundleCopy = bundle;
  sub_1E390C55C();
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  sub_1E4205F14();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(length) = sub_1E390C600(viewCopy, location, length);

  return length & 1;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1E390C76C(selfCopy, section);
  v10 = v9;

  if (v10)
  {
    sub_1E4205ED4();
    OUTLINED_FUNCTION_50();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_16_39();
  v7 = v4;
  v8 = v5;
  v9 = OUTLINED_FUNCTION_50();
  sub_1E390C86C(v9);
  v11 = v10;

  v12 = OUTLINED_FUNCTION_20_3();
  v13(v12);
  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_16_39();
  v7 = v4;
  v8 = v5;
  OUTLINED_FUNCTION_50();
  sub_1E390C9C0();
  v10 = v9;

  v11 = OUTLINED_FUNCTION_20_3();
  v12(v11);

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_16_39();
  v7 = v4;
  v8 = v5;
  OUTLINED_FUNCTION_50();
  sub_1E390D4BC();

  v9 = OUTLINED_FUNCTION_20_3();
  v10(v9);
}

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1E390DA48();
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1E390DAC4(editingCopy);
}

@end