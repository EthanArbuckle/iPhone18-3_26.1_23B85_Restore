@interface SBCaptureHardwareButtonFullPressRecognizer
- (BOOL)_shouldReceiveDynamicButton:(id)a3;
- (SBCaptureHardwareButtonFullPressRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_beginIfNeeded;
- (void)_cancelIfNeeded;
- (void)_dynamicButtonsBegan:(id)a3 withEvent:(id)a4;
- (void)_dynamicButtonsCancelled:(id)a3 withEvent:(id)a4;
- (void)_dynamicButtonsChanged:(id)a3 withEvent:(id)a4;
- (void)_dynamicButtonsEnded:(id)a3 withEvent:(id)a4;
- (void)_endIfNeeded;
- (void)reset;
@end

@implementation SBCaptureHardwareButtonFullPressRecognizer

- (SBCaptureHardwareButtonFullPressRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = SBCaptureHardwareButtonFullPressRecognizer;
  v4 = [(_UIAbstractDynamicButtonGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(_UIAbstractDynamicButtonGestureRecognizer *)v4 _setAllowedPhysicalButtons:32];
    [(SBCaptureHardwareButtonFullPressRecognizer *)v5 _setRequiresSystemGesturesToFail:0];
  }

  return v5;
}

- (BOOL)_shouldReceiveDynamicButton:(id)a3
{
  v4 = a3;
  [v4 _physicalButton];
  v5 = _UIPhysicalButtonSetForPhysicalButton();
  v6 = (v5 & ~-[_UIAbstractDynamicButtonGestureRecognizer _allowedPhysicalButtons](self, "_allowedPhysicalButtons")) == 0 && [v4 _stage] == 4;

  return v6;
}

- (void)_dynamicButtonsBegan:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 count] >= 2)
  {
    [SBCaptureHardwareButtonFullPressRecognizer _dynamicButtonsBegan:a2 withEvent:self];
  }

  v9 = [v7 anyObject];
  if ([v9 _stage] == 4)
  {
    [v9 _timestamp];
    self->_lastDownTimestamp = _UIMachTimeForMediaTime();
    self->_isCaptureButtonFullyPressed = 1;
    v10 = (objc_opt_respondsToSelector() & 1) != 0 && [v9 _physicalButtonSource] == 1;
    self->_isCaptureButtonSourceAccessibility = v10;
    [(SBCaptureHardwareButtonFullPressRecognizer *)self _beginIfNeeded];
  }

  v11.receiver = self;
  v11.super_class = SBCaptureHardwareButtonFullPressRecognizer;
  [(_UIAbstractDynamicButtonGestureRecognizer *)&v11 _dynamicButtonsBegan:v7 withEvent:v8];
}

- (void)_dynamicButtonsChanged:(id)a3 withEvent:(id)a4
{
  v4.receiver = self;
  v4.super_class = SBCaptureHardwareButtonFullPressRecognizer;
  [(_UIAbstractDynamicButtonGestureRecognizer *)&v4 _dynamicButtonsChanged:a3 withEvent:a4];
}

- (void)_dynamicButtonsEnded:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 count] >= 2)
  {
    [SBCaptureHardwareButtonFullPressRecognizer _dynamicButtonsEnded:a2 withEvent:self];
  }

  v9 = [v7 anyObject];
  if ([v9 _stage] == 4)
  {
    self->_isCaptureButtonFullyPressed = 0;
    [v9 _timestamp];
    self->_lastUpTimestamp = _UIMachTimeForMediaTime();
    v10 = objc_opt_respondsToSelector();
    v11 = 0;
    if (v10)
    {
      v11 = [v9 _physicalButtonSource] == 1;
    }

    self->_isCaptureButtonSourceAccessibility = v11;
    [(SBCaptureHardwareButtonFullPressRecognizer *)self _endIfNeeded];
  }

  v12.receiver = self;
  v12.super_class = SBCaptureHardwareButtonFullPressRecognizer;
  [(_UIAbstractDynamicButtonGestureRecognizer *)&v12 _dynamicButtonsEnded:v7 withEvent:v8];
}

- (void)_dynamicButtonsCancelled:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SBCaptureHardwareButtonFullPressRecognizer *)self _cancelIfNeeded];
  v8.receiver = self;
  v8.super_class = SBCaptureHardwareButtonFullPressRecognizer;
  [(_UIAbstractDynamicButtonGestureRecognizer *)&v8 _dynamicButtonsCancelled:v7 withEvent:v6];
}

- (void)_beginIfNeeded
{
  if (![(SBCaptureHardwareButtonFullPressRecognizer *)self state])
  {

    [(SBCaptureHardwareButtonFullPressRecognizer *)self setState:1];
  }
}

- (void)_endIfNeeded
{
  if (([(SBCaptureHardwareButtonFullPressRecognizer *)self state]- 1) <= 1)
  {

    [(SBCaptureHardwareButtonFullPressRecognizer *)self setState:3];
  }
}

- (void)_cancelIfNeeded
{
  if ([(SBCaptureHardwareButtonFullPressRecognizer *)self state]<= 2)
  {

    [(SBCaptureHardwareButtonFullPressRecognizer *)self setState:4];
  }
}

- (void)reset
{
  self->_isCaptureButtonFullyPressed = 0;
  self->_isCaptureButtonSourceAccessibility = 0;
  self->_lastDownTimestamp = 0;
  self->_lastUpTimestamp = 0;
}

- (void)_dynamicButtonsBegan:(uint64_t)a1 withEvent:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCaptureHardwareButtonFullPressRecognizer.m" lineNumber:64 description:@"Only expect one Camera Capture Button"];
}

- (void)_dynamicButtonsEnded:(uint64_t)a1 withEvent:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCaptureHardwareButtonFullPressRecognizer.m" lineNumber:81 description:@"Only expect one Camera Capture Button"];
}

@end