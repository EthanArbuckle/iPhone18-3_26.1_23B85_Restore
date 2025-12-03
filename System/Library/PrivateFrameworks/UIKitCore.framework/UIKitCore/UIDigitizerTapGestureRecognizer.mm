@interface UIDigitizerTapGestureRecognizer
- (CGPoint)digitizerLocation;
- (UIDigitizerTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)setAllowedPressTypes:(id)types;
- (void)setAllowedTouchTypes:(id)types;
@end

@implementation UIDigitizerTapGestureRecognizer

- (UIDigitizerTapGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v17.receiver = self;
  v17.super_class = UIDigitizerTapGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v17 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    v16.receiver = v4;
    v16.super_class = UIDigitizerTapGestureRecognizer;
    [(UIGestureRecognizer *)&v16 setAllowedPressTypes:&unk_1EFE2BFB0];
    v15.receiver = v5;
    v15.super_class = UIDigitizerTapGestureRecognizer;
    [(UIGestureRecognizer *)&v15 setAllowedTouchTypes:&unk_1EFE2BFC8];
    v6 = objc_alloc_init(_UIDigitizerGestureRecognizerImp);
    imp = v5->_imp;
    v5->_imp = v6;

    [(_UIDigitizerGestureRecognizerImp *)v5->_imp setDelegate:v5];
    [(_UIDigitizerGestureRecognizerImp *)v5->_imp setMinimumPressDuration:0.0];
    v8 = _UIInternalPreferenceUsesDefault_1(algn_1ED48B148, @"DigitizerTapGestureRecognizerDefaultDuration");
    v9 = *&qword_1ED48B150;
    if (v8)
    {
      v9 = 0.5;
    }

    [(_UIDigitizerGestureRecognizerImp *)v5->_imp setMaximumPressDuration:v9];
    v10 = _UIInternalPreferenceUsesDefault_1(&_MergedGlobals_938, @"DigitizerGestureSloppinessDuration");
    v11 = *&qword_1ED48B140;
    if (v10)
    {
      v11 = 0.05;
    }

    [(_UIDigitizerGestureRecognizerImp *)v5->_imp setPressEndToTouchBeginDuration:v11];
    v12 = _UIInternalPreferenceUsesDefault_1(&_MergedGlobals_938, @"DigitizerGestureSloppinessDuration");
    v13 = *&qword_1ED48B140;
    if (v12)
    {
      v13 = 0.05;
    }

    [(_UIDigitizerGestureRecognizerImp *)v5->_imp setTouchEndToPressEndDuration:v13];
  }

  return v5;
}

- (void)setAllowedPressTypes:(id)types
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_CannotBeConfig.isa, v4);
}

- (void)setAllowedTouchTypes:(id)types
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_CannotBeConfig_0.isa, v4);
}

- (CGPoint)digitizerLocation
{
  state = [(UIGestureRecognizer *)self state];
  imp = self->_imp;
  if (state == UIGestureRecognizerStateEnded)
  {

    [(_UIDigitizerGestureRecognizerImp *)imp digitizerLocation];
  }

  else
  {

    [(_UIDigitizerGestureRecognizerImp *)imp defaultDigitizerLocation];
  }

  result.y = v6;
  result.x = v5;
  return result;
}

@end