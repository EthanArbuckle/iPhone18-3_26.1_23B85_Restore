@interface OKActionBindingDynamicPan
+ (id)supportedSettings;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (OKActionBindingDynamicPan)init;
- (OKActionBindingDynamicPan)initWithSettings:(id)settings;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)handlePan:(id)pan;
- (void)loadForResponder:(id)responder scope:(unint64_t)scope;
- (void)performActionWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count translation:(CGPoint)translation velocity:(CGPoint)velocity direction:(unint64_t)direction context:(id)context;
- (void)unload;
@end

@implementation OKActionBindingDynamicPan

- (OKActionBindingDynamicPan)init
{
  v3.receiver = self;
  v3.super_class = OKActionBindingDynamicPan;
  result = [(OKActionBindingPan *)&v3 init];
  if (result)
  {
    result->_length = 0.0;
    result->_damping = 0.1;
    result->_frequency = 1.0;
  }

  return result;
}

- (OKActionBindingDynamicPan)initWithSettings:(id)settings
{
  v12.receiver = self;
  v12.super_class = OKActionBindingDynamicPan;
  v4 = [(OKActionBindingPan *)&v12 initWithSettings:?];
  if (v4)
  {
    v5 = [settings objectForKey:@"length"];
    if (v5)
    {
      [v5 doubleValue];
      v4->_length = v6;
    }

    v7 = [settings objectForKey:@"damping"];
    if (v7)
    {
      [v7 doubleValue];
      v4->_damping = v8;
    }

    v9 = [settings objectForKey:@"frequency"];
    if (v9)
    {
      [v9 doubleValue];
      v4->_frequency = v10;
    }
  }

  return v4;
}

- (void)dealloc
{
  draggingBehavior = self->_draggingBehavior;
  if (draggingBehavior)
  {

    self->_draggingBehavior = 0;
  }

  v4.receiver = self;
  v4.super_class = OKActionBindingDynamicPan;
  [(OKActionBindingPan *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = OKActionBindingDynamicPan;
  v4 = [(OKActionBindingPan *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setLength:self->_length];
    [v5 setDamping:self->_damping];
    [v5 setFrequency:self->_frequency];
  }

  return v5;
}

+ (id)supportedSettings
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKActionBindingDynamicPan;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v11[0] = @"length";
  v9[0] = @"type";
  v9[1] = @"default";
  v10[0] = &unk_287AF0890;
  v10[1] = &unk_287AF08A8;
  v12[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v11[1] = @"damping";
  v7[0] = @"type";
  v7[1] = @"default";
  v8[0] = &unk_287AF0890;
  v8[1] = &unk_287AF22D8;
  v12[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v11[2] = @"frequency";
  v5[0] = @"type";
  v5[1] = @"default";
  v6[0] = &unk_287AF0890;
  v6[1] = &unk_287AF22E8;
  v12[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v12, v11, 3)}];
  return v2;
}

- (void)loadForResponder:(id)responder scope:(unint64_t)scope
{
  v6.receiver = self;
  v6.super_class = OKActionBindingDynamicPan;
  [(OKActionBindingPan *)&v6 loadForResponder:responder scope:scope];
  if (([(OKActionBindingProxy *)self scope]& 1) != 0)
  {
    [responder actionView];
  }
}

- (void)unload
{
  v2.receiver = self;
  v2.super_class = OKActionBindingDynamicPan;
  [(OKActionBindingPan *)&v2 unload];
}

- (void)performActionWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count translation:(CGPoint)translation velocity:(CGPoint)velocity direction:(unint64_t)direction context:(id)context
{
  v10 = [(OKActionPan *)OKActionDynamicPan panActionWithState:state location:count touchCount:direction translation:context velocity:location.x direction:location.y context:translation.x, translation.y, velocity.x, velocity.y];

  [(OKActionBindingProxy *)self performAction:v10];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  [recognizer view];
  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && ([(OKActionResponder *)[(OKActionBindingProxy *)self actionResponder] interactivityEnabled]& 1) != 0;
}

- (void)handlePan:(id)pan
{
  view = [pan view];
  [pan locationInView:{objc_msgSend(view, "superview")}];
  v7 = v6;
  v9 = v8;
  if ([pan state] == 1)
  {
    [view dynamicsRemoveSnapping];
    [pan locationInView:view];
    v11 = v10;
    v13 = v12;
    draggingBehavior = self->_draggingBehavior;
    if (draggingBehavior)
    {
      [-[UIAttachmentBehavior dynamicAnimator](draggingBehavior "dynamicAnimator")];

      self->_draggingBehavior = 0;
    }

    [objc_msgSend(pan "view")];
    v16 = v11 - v15 * 0.5;
    [objc_msgSend(pan "view")];
    self->_draggingBehavior = [objc_alloc(MEMORY[0x277D751A8]) initWithItem:objc_msgSend(view offsetFromCenter:"dynamicProxy") attachedToAnchor:{v16, v13 - v17 * 0.5, v7, v9}];
    [(OKActionBindingDynamicPan *)self length];
    [(UIAttachmentBehavior *)self->_draggingBehavior setLength:?];
    [(OKActionBindingDynamicPan *)self frequency];
    [(UIAttachmentBehavior *)self->_draggingBehavior setFrequency:?];
    [(OKActionBindingDynamicPan *)self damping];
    [(UIAttachmentBehavior *)self->_draggingBehavior setDamping:?];
    [objc_msgSend(objc_msgSend(view "pageViewController")];
  }

  else
  {
    state = [pan state];
    v19 = self->_draggingBehavior;
    if (state == 2)
    {
      [(UIAttachmentBehavior *)v19 setAnchorPoint:v7, v9];
    }

    else if (v19)
    {
      [-[UIAttachmentBehavior dynamicAnimator](v19 "dynamicAnimator")];

      self->_draggingBehavior = 0;
    }
  }

  v20.receiver = self;
  v20.super_class = OKActionBindingDynamicPan;
  [(OKActionBindingPan *)&v20 handlePan:pan];
}

@end