@interface _UITextFieldVisualStyle
+ (id)inferredVisualStyleWithStyleSubject:(id)subject;
- (BOOL)textShouldUseVibrancy;
- (_UITextFieldVisualStyle)initWithStyleSubject:(id)subject;
- (_UITextFieldVisualStyleSubject)styleSubject;
- (id)defaultFocusedTextColor;
- (id)defaultTextColor;
- (id)defaultTextColorForKeyboardAppearance;
- (id)parentViewForTextContentView;
- (id)placeholderColor;
- (void)handleTextVibrancy;
@end

@implementation _UITextFieldVisualStyle

- (_UITextFieldVisualStyleSubject)styleSubject
{
  WeakRetained = objc_loadWeakRetained(&self->_styleSubject);

  return WeakRetained;
}

- (_UITextFieldVisualStyle)initWithStyleSubject:(id)subject
{
  subjectCopy = subject;
  v8.receiver = self;
  v8.super_class = _UITextFieldVisualStyle;
  v5 = [(_UITextFieldVisualStyle *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_styleSubject, subjectCopy);
  }

  return v6;
}

+ (id)inferredVisualStyleWithStyleSubject:(id)subject
{
  subjectCopy = subject;
  v4 = [[_UITextFieldVisualStyle_iOS alloc] initWithStyleSubject:subjectCopy];

  return v4;
}

- (id)defaultTextColor
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextFieldVisualStyle.m" lineNumber:42 description:{@"%@ should provide an implementation for %@", v6, v7}];

  return 0;
}

- (id)defaultTextColorForKeyboardAppearance
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextFieldVisualStyle.m" lineNumber:48 description:{@"%@ should provide an implementation for %@", v6, v7}];

  return 0;
}

- (id)defaultFocusedTextColor
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextFieldVisualStyle.m" lineNumber:54 description:{@"%@ should provide an implementation for %@", v6, v7}];

  return 0;
}

- (id)placeholderColor
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextFieldVisualStyle.m" lineNumber:60 description:{@"%@ should provide an implementation for %@", v6, v7}];

  return 0;
}

- (id)parentViewForTextContentView
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextFieldVisualStyle.m" lineNumber:66 description:{@"%@ should provide an implementation for %@", v6, v7}];

  return 0;
}

- (BOOL)textShouldUseVibrancy
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextFieldVisualStyle.m" lineNumber:72 description:{@"%@ should provide an implementation for %@", v6, v7}];

  return 0;
}

- (void)handleTextVibrancy
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UITextFieldVisualStyle.m" lineNumber:78 description:{@"%@ should provide an implementation for %@", v5, v6}];
}

@end