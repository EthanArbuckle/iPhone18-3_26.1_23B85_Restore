@interface OKActionBindingFocusPinch
+ (id)supportedSettings;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (OKActionBindingFocusPinch)init;
- (OKActionBindingFocusPinch)initWithSettings:(id)settings;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setFocusSize:(CGSize)size angle:(float)angle toWidgetView:(id)view;
- (void)dealloc;
- (void)handlePinch:(id)pinch;
- (void)loadForResponder:(id)responder scope:(unint64_t)scope;
- (void)unload;
@end

@implementation OKActionBindingFocusPinch

- (OKActionBindingFocusPinch)init
{
  v3.receiver = self;
  v3.super_class = OKActionBindingFocusPinch;
  result = [(OKActionBinding *)&v3 init];
  if (result)
  {
    result->_mode = 1;
  }

  return result;
}

- (OKActionBindingFocusPinch)initWithSettings:(id)settings
{
  v7.receiver = self;
  v7.super_class = OKActionBindingFocusPinch;
  v4 = [(OKActionBinding *)&v7 initWithSettings:?];
  if (v4)
  {
    v5 = [settings objectForKey:@"mode"];
    if (v5)
    {
      v4->_mode = [v5 unsignedIntegerValue];
      v4->_presentationMode = 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  pinchGestureRecognizer = self->_pinchGestureRecognizer;
  if (pinchGestureRecognizer)
  {
    [-[OFUITrackingPinchGestureRecognizer view](pinchGestureRecognizer "view")];

    self->_pinchGestureRecognizer = 0;
  }

  v4.receiver = self;
  v4.super_class = OKActionBindingFocusPinch;
  [(OKActionBinding *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = OKActionBindingFocusPinch;
  v4 = [(OKActionBindingProxy *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setMode:self->_mode];
  }

  return v5;
}

+ (id)supportedSettings
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKActionBindingFocusPinch;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v7 = @"mode";
  v5[0] = @"type";
  v5[1] = @"mapping";
  v6[0] = &unk_287AF1D48;
  v6[1] = &unk_287AF21D0;
  v5[2] = @"default";
  v6[2] = @"object";
  v8[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  return v2;
}

- (void)loadForResponder:(id)responder scope:(unint64_t)scope
{
  v9.receiver = self;
  v9.super_class = OKActionBindingFocusPinch;
  [(OKActionBindingProxy *)&v9 loadForResponder:responder scope:scope];
  if (([(OKActionBindingProxy *)self scope]& 1) != 0)
  {
    actionView = [responder actionView];
    if (actionView)
    {
      v7 = actionView;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [objc_alloc(MEMORY[0x277D627F0]) initWithTarget:self action:sel_handlePinch_ mode:0];
        self->_pinchGestureRecognizer = v8;
        [(OFUITrackingPinchGestureRecognizer *)v8 setDelegate:self];
        [v7 addGestureRecognizer:self->_pinchGestureRecognizer];
      }
    }
  }
}

- (void)unload
{
  pinchGestureRecognizer = self->_pinchGestureRecognizer;
  if (pinchGestureRecognizer)
  {
    [-[OFUITrackingPinchGestureRecognizer view](pinchGestureRecognizer "view")];

    self->_pinchGestureRecognizer = 0;
  }

  v4.receiver = self;
  v4.super_class = OKActionBindingFocusPinch;
  [(OKActionBindingProxy *)&v4 unload];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  [recognizer view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    interactivityEnabled = [(OKActionResponder *)[(OKActionBindingProxy *)self actionResponder] interactivityEnabled];
    if (interactivityEnabled)
    {
      if (self->_pinchGestureRecognizer == recognizer)
      {
        -[OFUITrackingPinchGestureRecognizer setZoomMode:](self->_pinchGestureRecognizer, "setZoomMode:", [-[OKActionResponder actionView](-[OKActionBindingProxy actionResponder](self "actionResponder")] == 2);
      }

      LOBYTE(interactivityEnabled) = 1;
    }
  }

  else
  {
    LOBYTE(interactivityEnabled) = 0;
  }

  return interactivityEnabled;
}

- (void)_setFocusSize:(CGSize)size angle:(float)angle toWidgetView:(id)view
{
  height = size.height;
  width = size.width;
  [view frame];
  angleCopy = angle;
  [view _focusGestureHelper];
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  *&v20.a = *MEMORY[0x277CBF2C0];
  *&v20.c = v10;
  *&v20.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformMakeRotation(&v20, angle);
  layer = [view layer];
  v18 = v20;
  CATransform3DMakeAffineTransform(&v19, &v18);
  [layer setTransform:&v19];
  if (width >= *([view _focusGestureHelper] + 40) && height >= *(objc_msgSend(view, "_focusGestureHelper") + 48))
  {
    v15 = height;
    v13 = width;
  }

  else
  {
    v12 = *([view _focusGestureHelper] + 40);
    v13 = v12 - (*([view _focusGestureHelper] + 40) - width) * 0.400000006;
    v14 = *([view _focusGestureHelper] + 48);
    v15 = v14 - (*([view _focusGestureHelper] + 48) - height) * 0.400000006;
  }

  if (width > *([view _focusGestureHelper] + 152) || height > *(objc_msgSend(view, "_focusGestureHelper") + 160))
  {
    v16 = *([view _focusGestureHelper] + 152);
    v13 = v16 + (width - *([view _focusGestureHelper] + 152)) * 0.400000006;
    v17 = *([view _focusGestureHelper] + 160);
    v15 = v17 + (height - *([view _focusGestureHelper] + 160)) * 0.400000006;
  }

  [view setBounds:{0.0, 0.0, v13, v15}];
  *([view _focusGestureHelper] + 192) = angleCopy;
}

- (void)handlePinch:(id)pinch
{
  view = [pinch view];
  if ([pinch state] == 1)
  {
    self->_presentationMode = [view presentationMode];
    if ([view presentationMode] == 1)
    {
      [view _prepareToFocus];
    }

    else if ([view presentationMode] == 2)
    {
      [view _prepareToUnfocus];
    }

    [view frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [pinch locationInView:{objc_msgSend(view, "superview")}];
    v15 = v14;
    v17 = v16;
    _focusGestureHelper = [view _focusGestureHelper];
    [view center];
    *(_focusGestureHelper + 112) = v19;
    *(_focusGestureHelper + 120) = v20;
    _focusGestureHelper2 = [view _focusGestureHelper];
    [view frame];
    *(_focusGestureHelper2 + 128) = v22;
    *(_focusGestureHelper2 + 136) = v23;
    *([view _focusGestureHelper] + 168) = (v15 - v7) / v11;
    *([view _focusGestureHelper] + 176) = (v17 - v9) / v13;
    [pinch pinchAngle];
    *([view _focusGestureHelper] + 144) = v24;
    return;
  }

  if ([pinch state] == 2)
  {
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __41__OKActionBindingFocusPinch_handlePinch___block_invoke;
    v55[3] = &unk_279C8E600;
    v55[4] = pinch;
    v55[5] = self;
    v55[6] = view;
    [(OKActionBindingFocusPinch *)self performBlockWithoutAnimations:v55];
    return;
  }

  if ([pinch state] == 3)
  {
    self->_presentationMode = 0;
    [view bounds];
    MidX = CGRectGetMidX(v57);
    [view bounds];
    [view convertPoint:objc_msgSend(view toView:{"superview"), MidX, CGRectGetMidY(v58)}];
    v27 = v26;
    v29 = v28;
    _focusGestureHelper3 = [view _focusGestureHelper];
    __asm { FMOV            V0.2D, #0.5 }

    *(_focusGestureHelper3 + 168) = _Q0;
    layer = [view layer];
    _focusGestureHelper4 = [view _focusGestureHelper];
    [layer setAnchorPoint:{*(_focusGestureHelper4 + 168), *(_focusGestureHelper4 + 176)}];
    [view setCenter:{v27, v29}];
    [objc_msgSend(view "superview")];
    v39 = v38;
    [objc_msgSend(view "superview")];
    v41 = v40;
    [view frame];
    if (v42 <= v39 * 0.5 && ([view frame], v43 <= v41 * 0.5) || (v44 = *(objc_msgSend(view, "_focusGestureHelper") + 128) * 1.1, objc_msgSend(view, "frame"), v44 >= v45))
    {
LABEL_22:

      [view _animateToUnfocus:0 completion:0.25];
      return;
    }
  }

  else
  {
    if ([pinch state] != 5 && objc_msgSend(pinch, "state") != 4)
    {
      return;
    }

    [view bounds];
    v46 = CGRectGetMidX(v59);
    [view bounds];
    [view convertPoint:objc_msgSend(view toView:{"superview"), v46, CGRectGetMidY(v60)}];
    v48 = v47;
    v50 = v49;
    _focusGestureHelper5 = [view _focusGestureHelper];
    __asm { FMOV            V0.2D, #0.5 }

    *(_focusGestureHelper5 + 168) = _Q0;
    layer2 = [view layer];
    _focusGestureHelper6 = [view _focusGestureHelper];
    [layer2 setAnchorPoint:{*(_focusGestureHelper6 + 168), *(_focusGestureHelper6 + 176)}];
    [view setCenter:{v48, v50}];
    if ([view presentationMode] != 1)
    {
      if ([view presentationMode] != 2)
      {
        return;
      }

      goto LABEL_22;
    }
  }

  [view _animateToFocus:0 completion:0.25];
}

uint64_t __41__OKActionBindingFocusPinch_handlePinch___block_invoke(uint64_t a1)
{
  [*(a1 + 32) pinchScale];
  if (v2 + -1.0 > 1.5 || ([*(a1 + 32) pinchScale], v4 = 0.0, v3 + -1.0 >= 0.0))
  {
    [*(a1 + 32) pinchScale];
    v4 = 1.5;
    if (v5 + -1.0 <= 1.5)
    {
      [*(a1 + 32) pinchScale];
      v4 = v6 + -1.0;
    }
  }

  v7 = *(*(a1 + 40) + 112);
  if (v7 != 2)
  {
    if (v7 != 1)
    {
      goto LABEL_14;
    }

    v8 = (a1 + 48);
    [objc_msgSend(*(a1 + 48) "_dimmerView")];
    if (*(*(a1 + 40) + 96) == 1)
    {
      goto LABEL_14;
    }

LABEL_13:
    [objc_msgSend(*v8 "_dimmerView")];
    goto LABEL_14;
  }

  [*(a1 + 32) pinchScale];
  v10 = 0.75;
  if ((v9 + -0.25) / 1.5 < 0.75)
  {
    [*(a1 + 32) pinchScale];
    v10 = (v11 + -0.25) / 1.5;
  }

  v8 = (a1 + 48);
  [objc_msgSend(*(a1 + 48) "_dimmerView")];
  if (*(*(a1 + 40) + 96) != 1)
  {
    [*(a1 + 32) pinchScale];
    v4 = v12;
    goto LABEL_13;
  }

LABEL_14:
  [*(a1 + 32) pinchAngle];
  v14 = v13;
  [*(a1 + 32) locationInView:{objc_msgSend(*(a1 + 48), "superview")}];
  v16 = v15;
  v18 = v17;
  if ((*([*(a1 + 48) _focusGestureHelper] + 184) & 1) == 0)
  {
    v19 = *([*(a1 + 48) _focusGestureHelper] + 144);
    v20 = [*(a1 + 48) _focusGestureHelper];
    if (v14 == v19)
    {
      v14 = *(v20 + 144);
    }

    else
    {
      *(v20 + 144) = v14;
      [*(a1 + 48) frame];
      v22 = v21;
      v24 = v23;
      *([*(a1 + 48) _focusGestureHelper] + 168) = (v16 - v25) / v26;
      *([*(a1 + 48) _focusGestureHelper] + 176) = (v18 - v22) / v24;
      *([*(a1 + 48) _focusGestureHelper] + 184) = 1;
    }
  }

  v27 = [*(a1 + 48) layer];
  v28 = [*(a1 + 48) _focusGestureHelper];
  [v27 setAnchorPoint:{*(v28 + 168), *(v28 + 176)}];
  [*(a1 + 48) setCenter:{v16, v18}];
  v29 = *([*(a1 + 48) _focusGestureHelper] + 128);
  [*(a1 + 32) pinchScale];
  *&v30 = v29 * v30;
  v31 = rintf(*&v30);
  v32 = *([*(a1 + 48) _focusGestureHelper] + 136);
  [*(a1 + 32) pinchScale];
  *&v33 = v32 * v33;
  v34 = rintf(*&v33);
  v35 = *(a1 + 40);
  *&v36 = *([*(a1 + 48) _focusGestureHelper] + 144) - v14;
  v37 = *(a1 + 48);

  return [v35 _setFocusSize:v37 angle:v31 toWidgetView:{v34, v36}];
}

@end