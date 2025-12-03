@interface TSKPulseAnimationController
- (TSKPulseAnimationController)initWithDelegate:(id)delegate;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)reset;
- (void)startAnimating;
- (void)stop;
@end

@implementation TSKPulseAnimationController

- (TSKPulseAnimationController)initWithDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = TSKPulseAnimationController;
  result = [(TSKPulseAnimationController *)&v5 init];
  if (result)
  {
    result->_delegate = delegate;
    result->_duration = 0.1;
    result->_pulseOffset = 6.0;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSKPulseAnimationController;
  [(TSKHighlightController *)&v2 dealloc];
}

- (void)reset
{
  self->_delegate = 0;
  v2.receiver = self;
  v2.super_class = TSKPulseAnimationController;
  [(TSKHighlightController *)&v2 reset];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (self->_pulsating && (!self->_autohide || [objc_msgSend(stop "keyPath")]))
  {
    self->_pulsating = 0;
    if (self->_autohide)
    {
      [(TSKHighlightController *)self hide:stop];
      [(CALayer *)[(TSKHighlightController *)self layer] removeAllAnimations];
      [(TSKHighlightController *)self setImage:0];
    }

    delegate = self->_delegate;

    [(TSKPulseAnimationControllerProtocol *)delegate pulseAnimationDidStopForPulse:self];
  }
}

- (void)stop
{
  pulsating = self->_pulsating;
  self->_pulsating = 0;
  [(TSKHighlightController *)self hide];
  [(CALayer *)[(TSKHighlightController *)self layer] removeAllAnimations];
  [(TSKHighlightController *)self setImage:0];
  if (pulsating)
  {
    delegate = self->_delegate;

    [(TSKPulseAnimationControllerProtocol *)delegate pulseAnimationDidStopForPulse:self];
  }
}

- (void)startAnimating
{
  v32[3] = *MEMORY[0x277D85DE8];
  [(CALayer *)[(TSKHighlightController *)self layer] removeAllAnimations];
  if ([(TSKHighlightController *)self path])
  {
    CGRectGetWidth(self->super._overallRect);
    CGRectGetHeight(self->super._overallRect);
    TSUClamp();
    *&v3 = v3;
    self->_pulsating = 1;
    v4 = *(MEMORY[0x277CD9DE8] + 80);
    *&v30.m31 = *(MEMORY[0x277CD9DE8] + 64);
    *&v30.m33 = v4;
    v26 = v4;
    v27 = *&v30.m31;
    v5 = v4;
    v6 = *(MEMORY[0x277CD9DE8] + 112);
    *&v30.m41 = *(MEMORY[0x277CD9DE8] + 96);
    *&v30.m43 = v6;
    v24 = v6;
    v25 = *&v30.m41;
    v7 = v6;
    v8 = *(MEMORY[0x277CD9DE8] + 16);
    *&v30.m11 = *MEMORY[0x277CD9DE8];
    *&v30.m13 = v8;
    v22 = v8;
    v23 = *&v30.m11;
    v9 = v8;
    v10 = *(MEMORY[0x277CD9DE8] + 48);
    *&v30.m21 = *(MEMORY[0x277CD9DE8] + 32);
    *&v30.m23 = v10;
    v20 = v10;
    v21 = *&v30.m21;
    v11 = *&v3;
    v12 = -(self->super._overallRect.origin.x * *&v3 - self->super._overallRect.origin.x);
    v13 = -(self->super._overallRect.origin.y * v11 - self->super._overallRect.origin.y);
    *&v29.m31 = *&v30.m31;
    *&v29.m33 = v5;
    *&v29.m41 = *&v30.m41;
    *&v29.m43 = v7;
    *&v29.m11 = *&v30.m11;
    *&v29.m13 = v9;
    *&v29.m21 = *&v30.m21;
    *&v29.m23 = v10;
    CATransform3DTranslate(&v30, &v29, v12, v13, 0.0);
    v14 = -(self->super._overallRect.size.width - self->super._overallRect.size.width * v11) * -0.5;
    v15 = -(self->super._overallRect.size.height - self->super._overallRect.size.height * v11) * -0.5;
    v28 = v30;
    CATransform3DTranslate(&v29, &v28, v14, v15, 0.0);
    v30 = v29;
    v28 = v29;
    CATransform3DScale(&v29, &v28, v11, v11, 1.0);
    v30 = v29;
    v16 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform"];
    [v16 setKeyTimes:&unk_287DDCAC8];
    *&v29.m31 = v27;
    *&v29.m33 = v26;
    *&v29.m41 = v25;
    *&v29.m43 = v24;
    *&v29.m11 = v23;
    *&v29.m13 = v22;
    *&v29.m21 = v21;
    *&v29.m23 = v20;
    v32[0] = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v29];
    v29 = v30;
    v32[1] = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v29];
    *&v29.m31 = v27;
    *&v29.m33 = v26;
    *&v29.m41 = v25;
    *&v29.m43 = v24;
    *&v29.m11 = v23;
    *&v29.m13 = v22;
    *&v29.m21 = v21;
    *&v29.m23 = v20;
    v32[2] = [MEMORY[0x277CCAE60] valueWithCATransform3D:&v29];
    [v16 setValues:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v32, 3)}];
    v31[0] = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
    v31[1] = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
    [v16 setTimingFunctions:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v31, 2)}];
    [v16 setDuration:self->_duration];
    [v16 setDelegate:self];
    v17 = *MEMORY[0x277CDA238];
    [v16 setFillMode:*MEMORY[0x277CDA238]];
    [v16 setRemovedOnCompletion:0];
    [(CALayer *)[(TSKHighlightController *)self layer] addAnimation:v16 forKey:@"PulseAnimation"];
    if (self->_autohide)
    {
      v18 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
      LODWORD(v19) = 1.0;
      [v18 setFromValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v19)}];
      [v18 setToValue:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", 0.0)}];
      [v18 setDelegate:self];
      [v18 setBeginTime:CACurrentMediaTime() + self->_duration * 2.0];
      [v18 setDuration:self->_duration + self->_duration];
      [v18 setRemovedOnCompletion:0];
      [v18 setFillMode:v17];
      [(CALayer *)[(TSKHighlightController *)self layer] addAnimation:v18 forKey:@"PulseAnimationFade"];
    }
  }
}

@end