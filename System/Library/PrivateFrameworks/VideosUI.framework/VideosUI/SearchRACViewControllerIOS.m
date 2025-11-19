@interface SearchRACViewControllerIOS
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (_TtC8VideosUI26SearchRACViewControllerIOS)initWithNibName:(id)a3 bundle:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)cancelButtonTapped;
- (void)keyboardStateWillChange:(id)a3;
- (void)submitButtonTapped;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SearchRACViewControllerIOS

- (void)viewDidLoad
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E390AA80();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1E390AD40(a3);
}

- (void)keyboardStateWillChange:(id)a3
{
  sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  sub_1E41FDEE4();
  v5 = self;
  sub_1E390AE60();

  v6 = OUTLINED_FUNCTION_74();
  v7(v6);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E390BA04();
}

- (void)submitButtonTapped
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E390BB74();
}

- (void)cancelButtonTapped
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E390C32C();
}

- (_TtC8VideosUI26SearchRACViewControllerIOS)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1E4205F14();
  }

  v5 = a4;
  sub_1E390C55C();
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  sub_1E4205F14();
  v9 = a3;
  v10 = self;
  LOBYTE(length) = sub_1E390C600(v9, location, length);

  return length & 1;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1E390C76C(v7, a4);
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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
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

- (void)textViewDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E390DA48();
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E390DAC4(v4);
}

@end