@interface _UITextLayoutControllerBase
+ (_UITextKit2LayoutController)layoutControllerWithTextView:(void *)a3 textContainer:;
- (NSTextContainer)firstTextContainer;
- (UITextInputController)textInputController;
- (UITextRange)unobscuredRange;
- (_UITextLayoutBaselineCalculator)baselineCalculatorForView:(uint64_t)a1 typingAttributes:(void *)a2 usesLineFragmentOrigin:(void *)a3 fallbackTextContainerOrigin:(uint64_t)a4;
- (id)positionFromPosition:(uint64_t)a3 offset:;
- (void)adoptTextInputController:(id)a3;
- (void)detachFromTextInputController;
@end

@implementation _UITextLayoutControllerBase

- (NSTextContainer)firstTextContainer
{
  v2 = [(_UITextLayoutControllerBase *)self textContainers];
  v3 = [v2 firstObject];

  return v3;
}

- (UITextInputController)textInputController
{
  if (a1)
  {
    v2 = a1;
    inputDelegate = a1->_inputDelegate;
    if (inputDelegate)
    {
      a1 = [(UITextInputDelegate *)inputDelegate textInputController];
    }

    else
    {
      a1 = [[UITextInputController alloc] initWithTextLayoutController:v2];
    }

    v1 = vars8;
  }

  return a1;
}

- (UITextRange)unobscuredRange
{
  unobscuredRange = self->_unobscuredRange;
  if (unobscuredRange)
  {
    v3 = unobscuredRange;
  }

  else
  {
    v4 = self;
    v5 = [(_UITextLayoutControllerBase *)v4 beginningOfDocument];
    v3 = [(_UITextLayoutControllerBase *)v4 emptyTextRangeAtPosition:v5];
  }

  return v3;
}

+ (_UITextKit2LayoutController)layoutControllerWithTextView:(void *)a3 textContainer:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [v4 textLayoutManager];
  if (v6)
  {
    v7 = [[_UITextKit2LayoutController alloc] initWithTextView:v5 textContainer:v4];
  }

  else
  {
    v7 = [[_UITextKit1LayoutController alloc] initWithTextView:v5 textContainer:v4];
  }

  v8 = v7;

  return v8;
}

- (id)positionFromPosition:(uint64_t)a3 offset:
{
  if (a1)
  {
    a1 = [a1 positionFromPosition:a2 offset:a3 affinity:0];
    v3 = vars8;
  }

  return a1;
}

- (_UITextLayoutBaselineCalculator)baselineCalculatorForView:(uint64_t)a1 typingAttributes:(void *)a2 usesLineFragmentOrigin:(void *)a3 fallbackTextContainerOrigin:(uint64_t)a4
{
  if (a1)
  {
    v7 = a3;
    v8 = a2;
    v9 = [_UITextLayoutBaselineCalculator alloc];
    [v8 _currentScreenScale];
    v10 = [_UITextLayoutBaselineCalculator initWithTextLayoutController:v9 typingAttributes:"initWithTextLayoutController:typingAttributes:usesLineFragmentOrigin:coordinateSpace:scale:fallbackTextContainerOrigin:" usesLineFragmentOrigin:a1 coordinateSpace:v7 scale:a4 fallbackTextContainerOrigin:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)detachFromTextInputController
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  textInputControllerConnection = self->_textInputControllerConnection;
  if (has_internal_diagnostics)
  {
    if (!textInputControllerConnection)
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *v14 = 0;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Cannot detach if we were never attached", v14, 2u);
      }
    }
  }

  else if (!textInputControllerConnection)
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &_MergedGlobals_1309) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Cannot detach if we were never attached", buf, 2u);
    }
  }

  v5 = os_variant_has_internal_diagnostics();
  v6 = [(_UITextInputControllerLayoutManagerConnection *)self->_textInputControllerConnection textInputController];

  if (v5)
  {
    if (!v6)
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *v12 = 0;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Already detached", v12, 2u);
      }
    }
  }

  else if (!v6)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4A1098) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Already detached", v11, 2u);
    }
  }

  [(_UITextInputControllerLayoutManagerConnection *)self->_textInputControllerConnection setTextInputController:0];
}

- (void)adoptTextInputController:(id)a3
{
  textInputControllerConnection = self->_textInputControllerConnection;
  if (textInputControllerConnection)
  {
    v8 = a3;
    [(_UITextInputControllerLayoutManagerConnection *)textInputControllerConnection setTextInputController:v8];
    v4 = v8;
  }

  else
  {
    v6 = a3;
    v7 = [[_UITextInputControllerLayoutManagerConnection alloc] initWithTextInputController:v6];

    v4 = self->_textInputControllerConnection;
    self->_textInputControllerConnection = v7;
  }
}

@end