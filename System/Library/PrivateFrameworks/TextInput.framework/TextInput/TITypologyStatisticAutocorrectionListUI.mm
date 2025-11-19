@interface TITypologyStatisticAutocorrectionListUI
- (id)structuredReport;
- (void)addInputCount;
- (void)setListUIDisplayed:(BOOL)a3;
- (void)visitRecordAutocorrections:(id)a3;
- (void)visitRecordSync:(id)a3;
@end

@implementation TITypologyStatisticAutocorrectionListUI

- (void)visitRecordAutocorrections:(id)a3
{
  v4 = [a3 listUIDisplayed];

  [(TITypologyStatisticAutocorrectionListUI *)self setListUIDisplayed:v4];
}

- (void)visitRecordSync:(id)a3
{
  v6 = a3;
  v4 = [v6 keyboardState];

  if (v4)
  {
    v5 = [v6 keyboardState];
    -[TITypologyStatisticAutocorrectionListUI setListUIDisplayed:](self, "setListUIDisplayed:", [v5 autocorrectionListUIDisplayed]);
  }
}

- (void)setListUIDisplayed:(BOOL)a3
{
  if (self->_didSetListUIDisplayed)
  {
    if (a3 && !self->_listUIDisplayed)
    {
      v3 = &OBJC_IVAR___TITypologyStatisticAutocorrectionListUI__hiddenToDisplayed;
LABEL_8:
      ++*(&self->super.super.isa + *v3);
      goto LABEL_9;
    }

    if (self->_listUIDisplayed && !a3)
    {
      v3 = &OBJC_IVAR___TITypologyStatisticAutocorrectionListUI__displayedToHidden;
      goto LABEL_8;
    }
  }

LABEL_9:
  self->_didSetListUIDisplayed = 1;
  self->_listUIDisplayed = a3;
}

- (void)addInputCount
{
  if (self->_listUIDisplayed)
  {
    v2 = &OBJC_IVAR___TITypologyStatisticAutocorrectionListUI__inputsWhileDisplayed;
  }

  else
  {
    v2 = &OBJC_IVAR___TITypologyStatisticAutocorrectionListUI__inputsWhileHidden;
  }

  ++*(&self->super.super.isa + *v2);
}

- (id)structuredReport
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = @"ListUI Inputs While Hidden";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TITypologyStatisticAutocorrectionListUI inputsWhileHidden](self, "inputsWhileHidden")}];
  v10[0] = v3;
  v9[1] = @"ListUI Inputs While Displayed";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TITypologyStatisticAutocorrectionListUI inputsWhileDisplayed](self, "inputsWhileDisplayed")}];
  v10[1] = v4;
  v9[2] = @"ListUI Hidden To Displayed";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TITypologyStatisticAutocorrectionListUI hiddenToDisplayed](self, "hiddenToDisplayed")}];
  v10[2] = v5;
  v9[3] = @"ListUI Displayed To Hidden";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TITypologyStatisticAutocorrectionListUI displayedToHidden](self, "displayedToHidden")}];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

@end