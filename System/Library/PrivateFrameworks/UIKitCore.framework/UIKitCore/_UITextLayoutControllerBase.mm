@interface _UITextLayoutControllerBase
+ (_UITextKit2LayoutController)layoutControllerWithTextView:(void *)view textContainer:;
- (NSTextContainer)firstTextContainer;
- (UITextInputController)textInputController;
- (UITextRange)unobscuredRange;
- (_UITextLayoutBaselineCalculator)baselineCalculatorForView:(uint64_t)view typingAttributes:(void *)attributes usesLineFragmentOrigin:(void *)origin fallbackTextContainerOrigin:(uint64_t)containerOrigin;
- (id)positionFromPosition:(uint64_t)position offset:;
- (void)adoptTextInputController:(id)controller;
- (void)detachFromTextInputController;
@end

@implementation _UITextLayoutControllerBase

- (NSTextContainer)firstTextContainer
{
  textContainers = [(_UITextLayoutControllerBase *)self textContainers];
  firstObject = [textContainers firstObject];

  return firstObject;
}

- (UITextInputController)textInputController
{
  if (self)
  {
    selfCopy = self;
    inputDelegate = self->_inputDelegate;
    if (inputDelegate)
    {
      self = [(UITextInputDelegate *)inputDelegate textInputController];
    }

    else
    {
      self = [[UITextInputController alloc] initWithTextLayoutController:selfCopy];
    }

    v1 = vars8;
  }

  return self;
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
    selfCopy = self;
    beginningOfDocument = [(_UITextLayoutControllerBase *)selfCopy beginningOfDocument];
    v3 = [(_UITextLayoutControllerBase *)selfCopy emptyTextRangeAtPosition:beginningOfDocument];
  }

  return v3;
}

+ (_UITextKit2LayoutController)layoutControllerWithTextView:(void *)view textContainer:
{
  viewCopy = view;
  v5 = a2;
  objc_opt_self();
  textLayoutManager = [viewCopy textLayoutManager];
  if (textLayoutManager)
  {
    v7 = [[_UITextKit2LayoutController alloc] initWithTextView:v5 textContainer:viewCopy];
  }

  else
  {
    v7 = [[_UITextKit1LayoutController alloc] initWithTextView:v5 textContainer:viewCopy];
  }

  v8 = v7;

  return v8;
}

- (id)positionFromPosition:(uint64_t)position offset:
{
  if (self)
  {
    self = [self positionFromPosition:a2 offset:position affinity:0];
    v3 = vars8;
  }

  return self;
}

- (_UITextLayoutBaselineCalculator)baselineCalculatorForView:(uint64_t)view typingAttributes:(void *)attributes usesLineFragmentOrigin:(void *)origin fallbackTextContainerOrigin:(uint64_t)containerOrigin
{
  if (view)
  {
    originCopy = origin;
    attributesCopy = attributes;
    v9 = [_UITextLayoutBaselineCalculator alloc];
    [attributesCopy _currentScreenScale];
    v10 = [_UITextLayoutBaselineCalculator initWithTextLayoutController:v9 typingAttributes:"initWithTextLayoutController:typingAttributes:usesLineFragmentOrigin:coordinateSpace:scale:fallbackTextContainerOrigin:" usesLineFragmentOrigin:view coordinateSpace:originCopy scale:containerOrigin fallbackTextContainerOrigin:attributesCopy];
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
  textInputController = [(_UITextInputControllerLayoutManagerConnection *)self->_textInputControllerConnection textInputController];

  if (v5)
  {
    if (!textInputController)
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *v12 = 0;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Already detached", v12, 2u);
      }
    }
  }

  else if (!textInputController)
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

- (void)adoptTextInputController:(id)controller
{
  textInputControllerConnection = self->_textInputControllerConnection;
  if (textInputControllerConnection)
  {
    controllerCopy = controller;
    [(_UITextInputControllerLayoutManagerConnection *)textInputControllerConnection setTextInputController:controllerCopy];
    v4 = controllerCopy;
  }

  else
  {
    controllerCopy2 = controller;
    v7 = [[_UITextInputControllerLayoutManagerConnection alloc] initWithTextInputController:controllerCopy2];

    v4 = self->_textInputControllerConnection;
    self->_textInputControllerConnection = v7;
  }
}

@end