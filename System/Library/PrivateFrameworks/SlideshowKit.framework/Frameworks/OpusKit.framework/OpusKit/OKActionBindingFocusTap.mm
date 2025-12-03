@interface OKActionBindingFocusTap
+ (id)supportedSettings;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)ownsGestureRecognizer:(id)recognizer;
- (BOOL)performAction:(id)action;
- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic;
- (OKActionBindingFocusTap)init;
- (OKActionBindingFocusTap)initWithSettings:(id)settings;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)handleTap:(id)tap;
- (void)loadForResponder:(id)responder scope:(unint64_t)scope;
- (void)unload;
@end

@implementation OKActionBindingFocusTap

- (OKActionBindingFocusTap)init
{
  v3.receiver = self;
  v3.super_class = OKActionBindingFocusTap;
  result = [(OKActionBindingTap *)&v3 init];
  if (result)
  {
    result->_mode = 1;
    result->_focusInEnabled = 1;
    result->_focusOutEnabled = 1;
  }

  return result;
}

- (OKActionBindingFocusTap)initWithSettings:(id)settings
{
  v9.receiver = self;
  v9.super_class = OKActionBindingFocusTap;
  v4 = [(OKActionBindingTap *)&v9 initWithSettings:?];
  if (v4)
  {
    v5 = [settings objectForKey:@"mode"];
    if (v5)
    {
      v4->_mode = [v5 unsignedIntegerValue];
    }

    v6 = [settings objectForKey:@"focusInEnabled"];
    if (v6)
    {
      v4->_focusInEnabled = [v6 BOOLValue];
    }

    v7 = [settings objectForKey:@"focusOutEnabled"];
    if (v7)
    {
      v4->_focusOutEnabled = [v7 BOOLValue];
    }
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKActionBindingFocusTap;
  [(OKActionBindingTap *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = OKActionBindingFocusTap;
  v4 = [(OKActionBindingTap *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setMode:self->_mode];
    [v5 setFocusInEnabled:self->_focusInEnabled];
    [v5 setFocusOutEnabled:self->_focusOutEnabled];
  }

  return v5;
}

+ (id)supportedSettings
{
  v13[3] = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___OKActionBindingFocusTap;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v5, sel_supportedSettings)}];
  v12[0] = @"mode";
  v10[0] = @"type";
  v10[1] = @"mapping";
  v11[0] = &unk_287AF1640;
  v11[1] = &unk_287AF2130;
  v10[2] = @"default";
  v11[2] = @"object";
  v13[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v12[1] = @"focusInEnabled";
  v8[0] = @"type";
  v8[1] = @"default";
  v3 = MEMORY[0x277CBEC38];
  v9[0] = &unk_287AF16A0;
  v9[1] = MEMORY[0x277CBEC38];
  v13[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v12[2] = @"focusOutEnabled";
  v6[0] = @"type";
  v6[1] = @"default";
  v7[0] = &unk_287AF16A0;
  v7[1] = v3;
  v13[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v13, v12, 3)}];
  return v2;
}

- (void)loadForResponder:(id)responder scope:(unint64_t)scope
{
  v4.receiver = self;
  v4.super_class = OKActionBindingFocusTap;
  [(OKActionBindingTap *)&v4 loadForResponder:responder scope:scope];
}

- (void)unload
{
  v2.receiver = self;
  v2.super_class = OKActionBindingFocusTap;
  [(OKActionBindingTap *)&v2 unload];
}

- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic
{
  v5.receiver = self;
  v5.super_class = OKActionBindingFocusTap;
  return [(OKActionBindingTap *)&v5 respondsToAction:action isTouchCountAgnostic:agnostic];
}

- (BOOL)ownsGestureRecognizer:(id)recognizer
{
  v4.receiver = self;
  v4.super_class = OKActionBindingFocusTap;
  return [(OKActionBindingTap *)&v4 ownsGestureRecognizer:recognizer];
}

- (BOOL)performAction:(id)action
{
  v4 = [(OKActionResponder *)[(OKActionBindingProxy *)self actionResponder] canPerformAction:action];
  if (v4)
  {
    actionView = [(OKActionResponder *)[(OKActionBindingProxy *)self actionResponder] actionView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([actionView presentationMode] == 1 && self->_focusInEnabled)
      {
        [actionView focus:self->_mode duration:0 completion:0.25];
      }

      else if ([actionView presentationMode] == 2 && self->_focusOutEnabled)
      {
        [actionView unfocus:0 completion:0.25];
      }

      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  [recognizer view];
  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && ([(OKActionResponder *)[(OKActionBindingProxy *)self actionResponder] interactivityEnabled]& 1) != 0;
}

- (void)handleTap:(id)tap
{
  if ([tap state] == 3)
  {
    if ((v5 = [tap view], objc_msgSend(v5, "presentationMode") == 1) && self->_focusInEnabled || objc_msgSend(v5, "presentationMode") == 2 && self->_focusOutEnabled)
    {
      [(OKActionBindingProxy *)self locationForActionFromGesture:tap];
      v7 = v6;
      v9 = v8;
      numberOfTapsRequired = [tap numberOfTapsRequired];
      numberOfTouches = [tap numberOfTouches];
      v12 = +[OKActionTap tapActionWithLocation:tapCount:touchCount:context:](OKActionTap, "tapActionWithLocation:tapCount:touchCount:context:", numberOfTapsRequired, numberOfTouches, [MEMORY[0x277CBEB38] dictionary], v7, v9);

      [(OKActionBindingFocusTap *)self performAction:v12];
    }
  }
}

@end