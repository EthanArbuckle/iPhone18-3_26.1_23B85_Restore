@interface OKActionBindingDynamicPan
+ (id)supportedSettings;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (OKActionBindingDynamicPan)init;
- (OKActionBindingDynamicPan)initWithSettings:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)handlePan:(id)a3;
- (void)loadForResponder:(id)a3 scope:(unint64_t)a4;
- (void)performActionWithState:(unint64_t)a3 location:(CGPoint)a4 touchCount:(unint64_t)a5 translation:(CGPoint)a6 velocity:(CGPoint)a7 direction:(unint64_t)a8 context:(id)a9;
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

- (OKActionBindingDynamicPan)initWithSettings:(id)a3
{
  v12.receiver = self;
  v12.super_class = OKActionBindingDynamicPan;
  v4 = [(OKActionBindingPan *)&v12 initWithSettings:?];
  if (v4)
  {
    v5 = [a3 objectForKey:@"length"];
    if (v5)
    {
      [v5 doubleValue];
      v4->_length = v6;
    }

    v7 = [a3 objectForKey:@"damping"];
    if (v7)
    {
      [v7 doubleValue];
      v4->_damping = v8;
    }

    v9 = [a3 objectForKey:@"frequency"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = OKActionBindingDynamicPan;
  v4 = [(OKActionBindingPan *)&v7 copyWithZone:a3];
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
  v4.receiver = a1;
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

- (void)loadForResponder:(id)a3 scope:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = OKActionBindingDynamicPan;
  [(OKActionBindingPan *)&v6 loadForResponder:a3 scope:a4];
  if (([(OKActionBindingProxy *)self scope]& 1) != 0)
  {
    [a3 actionView];
  }
}

- (void)unload
{
  v2.receiver = self;
  v2.super_class = OKActionBindingDynamicPan;
  [(OKActionBindingPan *)&v2 unload];
}

- (void)performActionWithState:(unint64_t)a3 location:(CGPoint)a4 touchCount:(unint64_t)a5 translation:(CGPoint)a6 velocity:(CGPoint)a7 direction:(unint64_t)a8 context:(id)a9
{
  v10 = [(OKActionPan *)OKActionDynamicPan panActionWithState:a3 location:a5 touchCount:a8 translation:a9 velocity:a4.x direction:a4.y context:a6.x, a6.y, a7.x, a7.y];

  [(OKActionBindingProxy *)self performAction:v10];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  [a3 view];
  objc_opt_class();
  return (objc_opt_isKindOfClass() & 1) != 0 && ([(OKActionResponder *)[(OKActionBindingProxy *)self actionResponder] interactivityEnabled]& 1) != 0;
}

- (void)handlePan:(id)a3
{
  v5 = [a3 view];
  [a3 locationInView:{objc_msgSend(v5, "superview")}];
  v7 = v6;
  v9 = v8;
  if ([a3 state] == 1)
  {
    [v5 dynamicsRemoveSnapping];
    [a3 locationInView:v5];
    v11 = v10;
    v13 = v12;
    draggingBehavior = self->_draggingBehavior;
    if (draggingBehavior)
    {
      [-[UIAttachmentBehavior dynamicAnimator](draggingBehavior "dynamicAnimator")];

      self->_draggingBehavior = 0;
    }

    [objc_msgSend(a3 "view")];
    v16 = v11 - v15 * 0.5;
    [objc_msgSend(a3 "view")];
    self->_draggingBehavior = [objc_alloc(MEMORY[0x277D751A8]) initWithItem:objc_msgSend(v5 offsetFromCenter:"dynamicProxy") attachedToAnchor:{v16, v13 - v17 * 0.5, v7, v9}];
    [(OKActionBindingDynamicPan *)self length];
    [(UIAttachmentBehavior *)self->_draggingBehavior setLength:?];
    [(OKActionBindingDynamicPan *)self frequency];
    [(UIAttachmentBehavior *)self->_draggingBehavior setFrequency:?];
    [(OKActionBindingDynamicPan *)self damping];
    [(UIAttachmentBehavior *)self->_draggingBehavior setDamping:?];
    [objc_msgSend(objc_msgSend(v5 "pageViewController")];
  }

  else
  {
    v18 = [a3 state];
    v19 = self->_draggingBehavior;
    if (v18 == 2)
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
  [(OKActionBindingPan *)&v20 handlePan:a3];
}

@end