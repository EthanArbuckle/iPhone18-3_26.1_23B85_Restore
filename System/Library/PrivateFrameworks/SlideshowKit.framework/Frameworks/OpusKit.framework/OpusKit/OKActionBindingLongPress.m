@interface OKActionBindingLongPress
+ (id)supportedSettings;
- (BOOL)respondsToAction:(id)a3 isTouchCountAgnostic:(BOOL)a4;
- (OKActionBindingLongPress)init;
- (OKActionBindingLongPress)initWithSettings:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)handleLongPress:(id)a3;
- (void)loadForResponder:(id)a3 scope:(unint64_t)a4;
- (void)unload;
@end

@implementation OKActionBindingLongPress

- (OKActionBindingLongPress)init
{
  v3.receiver = self;
  v3.super_class = OKActionBindingLongPress;
  result = [(OKActionBinding *)&v3 init];
  if (result)
  {
    result->_numberOfTapsRequired = 0;
    result->_numberOfTouchesRequired = 1;
    result->_minimumPressDuration = 0.5;
    result->_allowableMovement = 10.0;
  }

  return result;
}

- (OKActionBindingLongPress)initWithSettings:(id)a3
{
  v12.receiver = self;
  v12.super_class = OKActionBindingLongPress;
  v4 = [(OKActionBinding *)&v12 initWithSettings:?];
  if (v4)
  {
    v5 = [a3 objectForKey:@"numberOfTapsRequired"];
    if (v5)
    {
      v4->_numberOfTapsRequired = [v5 unsignedIntegerValue];
    }

    v6 = [a3 objectForKey:@"numberOfTouchesRequired"];
    if (v6)
    {
      v4->_numberOfTouchesRequired = [v6 unsignedIntegerValue];
    }

    v7 = [a3 objectForKey:@"minimumPressDuration"];
    if (v7)
    {
      [v7 doubleValue];
      v4->_minimumPressDuration = v8;
    }

    v9 = [a3 objectForKey:@"allowableMovement"];
    if (v9)
    {
      [v9 doubleValue];
      v4->_allowableMovement = v10;
    }
  }

  return v4;
}

- (void)dealloc
{
  longPressGestureRecognizer = self->_longPressGestureRecognizer;
  if (longPressGestureRecognizer)
  {
    [-[UILongPressGestureRecognizer view](longPressGestureRecognizer "view")];

    self->_longPressGestureRecognizer = 0;
  }

  v4.receiver = self;
  v4.super_class = OKActionBindingLongPress;
  [(OKActionBinding *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = OKActionBindingLongPress;
  v4 = [(OKActionBindingProxy *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setNumberOfTapsRequired:self->_numberOfTapsRequired];
    [v5 setNumberOfTouchesRequired:self->_numberOfTouchesRequired];
    [v5 setMinimumPressDuration:self->_minimumPressDuration];
    [v5 setAllowableMovement:self->_allowableMovement];
  }

  return v5;
}

+ (id)supportedSettings
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___OKActionBindingLongPress;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v13[0] = @"numberOfTapsRequired";
  v11[0] = @"type";
  v11[1] = @"default";
  v12[0] = &unk_287AF1AF0;
  v12[1] = &unk_287AF1B08;
  v14[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v13[1] = @"numberOfTouchesRequired";
  v9[0] = @"type";
  v9[1] = @"default";
  v10[0] = &unk_287AF1AF0;
  v10[1] = &unk_287AF1B08;
  v14[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v13[2] = @"minimumPressDuration";
  v7[0] = @"type";
  v7[1] = @"default";
  v8[0] = &unk_287AF1B20;
  v8[1] = &unk_287AF2408;
  v14[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v13[3] = @"allowableMovement";
  v5[0] = @"type";
  v5[1] = @"default";
  v6[0] = &unk_287AF1B20;
  v6[1] = &unk_287AF1B38;
  v14[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v14, v13, 4)}];
  return v2;
}

- (void)loadForResponder:(id)a3 scope:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = OKActionBindingLongPress;
  [(OKActionBindingProxy *)&v9 loadForResponder:a3 scope:a4];
  if (([(OKActionBindingProxy *)self scope]& 1) != 0)
  {
    v6 = [a3 actionView];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel_handleLongPress_];
      self->_longPressGestureRecognizer = v8;
      [(UILongPressGestureRecognizer *)v8 setDelegate:self];
      [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setNumberOfTouchesRequired:[(OKActionBindingLongPress *)self numberOfTouchesRequired]];
      [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setNumberOfTapsRequired:[(OKActionBindingLongPress *)self numberOfTapsRequired]];
      [(OKActionBindingLongPress *)self minimumPressDuration];
      [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setMinimumPressDuration:?];
      [(OKActionBindingLongPress *)self allowableMovement];
      [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer setAllowableMovement:?];
      [v7 addGestureRecognizer:self->_longPressGestureRecognizer];
    }
  }
}

- (void)unload
{
  longPressGestureRecognizer = self->_longPressGestureRecognizer;
  if (longPressGestureRecognizer)
  {
    [-[UILongPressGestureRecognizer view](longPressGestureRecognizer "view")];

    self->_longPressGestureRecognizer = 0;
  }

  v4.receiver = self;
  v4.super_class = OKActionBindingLongPress;
  [(OKActionBindingProxy *)&v4 unload];
}

- (BOOL)respondsToAction:(id)a3 isTouchCountAgnostic:(BOOL)a4
{
  v7 = [(OKActionBindingProxy *)self scope];
  if (([a3 scope] & v7) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !a4 && [a3 touchCount] != self->_numberOfTouchesRequired)
  {
    return 0;
  }

  if ([a3 tapCount] != self->_numberOfTapsRequired)
  {
    return 0;
  }

  [a3 pressDuration];
  return v8 >= self->_minimumPressDuration;
}

- (void)handleLongPress:(id)a3
{
  if ([a3 state] == 1)
  {
    [(OKActionBindingProxy *)self locationForActionFromGesture:a3];
    v6 = v5;
    v8 = v7;
    v9 = [a3 numberOfTapsRequired];
    v10 = [a3 numberOfTouches];
    [a3 minimumPressDuration];
    v12 = +[OKActionLongPress longPressActionWithLocation:tapCount:touchCount:pressDuration:context:](OKActionLongPress, "longPressActionWithLocation:tapCount:touchCount:pressDuration:context:", v9, v10, [MEMORY[0x277CBEB38] dictionary], v6, v8, v11);

    [(OKActionBindingProxy *)self performAction:v12];
  }
}

@end