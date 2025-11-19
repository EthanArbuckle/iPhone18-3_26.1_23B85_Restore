@interface OKActionBindingFocusTap
+ (id)supportedSettings;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)ownsGestureRecognizer:(id)a3;
- (BOOL)performAction:(id)a3;
- (BOOL)respondsToAction:(id)a3 isTouchCountAgnostic:(BOOL)a4;
- (OKActionBindingFocusTap)init;
- (OKActionBindingFocusTap)initWithSettings:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)handleTap:(id)a3;
- (void)loadForResponder:(id)a3 scope:(unint64_t)a4;
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

- (OKActionBindingFocusTap)initWithSettings:(id)a3
{
  v9.receiver = self;
  v9.super_class = OKActionBindingFocusTap;
  v4 = [(OKActionBindingTap *)&v9 initWithSettings:?];
  if (v4)
  {
    v5 = [a3 objectForKey:@"mode"];
    if (v5)
    {
      v4->_mode = [v5 unsignedIntegerValue];
    }

    v6 = [a3 objectForKey:@"focusInEnabled"];
    if (v6)
    {
      v4->_focusInEnabled = [v6 BOOLValue];
    }

    v7 = [a3 objectForKey:@"focusOutEnabled"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = OKActionBindingFocusTap;
  v4 = [(OKActionBindingTap *)&v7 copyWithZone:a3];
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
  v5.receiver = a1;
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

- (void)loadForResponder:(id)a3 scope:(unint64_t)a4
{
  v4.receiver = self;
  v4.super_class = OKActionBindingFocusTap;
  [(OKActionBindingTap *)&v4 loadForResponder:a3 scope:a4];
}

- (void)unload
{
  v2.receiver = self;
  v2.super_class = OKActionBindingFocusTap;
  [(OKActionBindingTap *)&v2 unload];
}

- (BOOL)respondsToAction:(id)a3 isTouchCountAgnostic:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = OKActionBindingFocusTap;
  return [(OKActionBindingTap *)&v5 respondsToAction:a3 isTouchCountAgnostic:a4];
}

- (BOOL)ownsGestureRecognizer:(id)a3
{
  v4.receiver = self;
  v4.super_class = OKActionBindingFocusTap;
  return [(OKActionBindingTap *)&v4 ownsGestureRecognizer:a3];
}

- (BOOL)performAction:(id)a3
{
  v4 = [(OKActionResponder *)[(OKActionBindingProxy *)self actionResponder] canPerformAction:a3];
  if (v4)
  {
    v5 = [(OKActionResponder *)[(OKActionBindingProxy *)self actionResponder] actionView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v5 presentationMode] == 1 && self->_focusInEnabled)
      {
        [v5 focus:self->_mode duration:0 completion:0.25];
      }

      else if ([v5 presentationMode] == 2 && self->_focusOutEnabled)
      {
        [v5 unfocus:0 completion:0.25];
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  [a3 view];
  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && ([(OKActionResponder *)[(OKActionBindingProxy *)self actionResponder] interactivityEnabled]& 1) != 0;
}

- (void)handleTap:(id)a3
{
  if ([a3 state] == 3)
  {
    if ((v5 = [a3 view], objc_msgSend(v5, "presentationMode") == 1) && self->_focusInEnabled || objc_msgSend(v5, "presentationMode") == 2 && self->_focusOutEnabled)
    {
      [(OKActionBindingProxy *)self locationForActionFromGesture:a3];
      v7 = v6;
      v9 = v8;
      v10 = [a3 numberOfTapsRequired];
      v11 = [a3 numberOfTouches];
      v12 = +[OKActionTap tapActionWithLocation:tapCount:touchCount:context:](OKActionTap, "tapActionWithLocation:tapCount:touchCount:context:", v10, v11, [MEMORY[0x277CBEB38] dictionary], v7, v9);

      [(OKActionBindingFocusTap *)self performAction:v12];
    }
  }
}

@end