@interface OKActionBindingSwipe
+ (id)supportedSettings;
- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic;
- (OKActionBindingSwipe)init;
- (OKActionBindingSwipe)initWithSettings:(id)settings;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)handleSwipe:(id)swipe;
- (void)loadForResponder:(id)responder scope:(unint64_t)scope;
- (void)unload;
@end

@implementation OKActionBindingSwipe

- (OKActionBindingSwipe)init
{
  v3.receiver = self;
  v3.super_class = OKActionBindingSwipe;
  result = [(OKActionBinding *)&v3 init];
  if (result)
  {
    result->_numberOfTouchesRequired = 1;
    result->_direction = 4;
  }

  return result;
}

- (OKActionBindingSwipe)initWithSettings:(id)settings
{
  v8.receiver = self;
  v8.super_class = OKActionBindingSwipe;
  v4 = [(OKActionBinding *)&v8 initWithSettings:?];
  if (v4)
  {
    v5 = [settings objectForKey:@"direction"];
    if (v5)
    {
      v4->_direction = [v5 unsignedIntegerValue];
    }

    v6 = [settings objectForKey:@"numberOfTouchesRequired"];
    if (v6)
    {
      v4->_numberOfTouchesRequired = [v6 unsignedIntegerValue];
    }
  }

  return v4;
}

- (void)dealloc
{
  swipeGestureRecognizer = self->_swipeGestureRecognizer;
  if (swipeGestureRecognizer)
  {
    [-[UISwipeGestureRecognizer view](swipeGestureRecognizer "view")];

    self->_swipeGestureRecognizer = 0;
  }

  v4.receiver = self;
  v4.super_class = OKActionBindingSwipe;
  [(OKActionBinding *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = OKActionBindingSwipe;
  v4 = [(OKActionBindingProxy *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setDirection:self->_direction];
    [v5 setNumberOfTouchesRequired:self->_numberOfTouchesRequired];
  }

  return v5;
}

+ (id)supportedSettings
{
  v11[2] = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___OKActionBindingSwipe;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v5, sel_supportedSettings)}];
  v10[0] = @"numberOfTouchesRequired";
  v8[0] = @"type";
  v8[1] = @"default";
  v9[0] = &unk_287AF1B50;
  v9[1] = &unk_287AF1B68;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v10[1] = @"direction";
  v11[0] = v3;
  v6[0] = @"type";
  v6[1] = @"mapping";
  v7[0] = &unk_287AF1B80;
  v7[1] = &unk_287AF2180;
  v6[2] = @"default";
  v7[2] = &unk_287AF1BB0;
  v11[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, v10, 2)}];
  return v2;
}

- (void)loadForResponder:(id)responder scope:(unint64_t)scope
{
  v10.receiver = self;
  v10.super_class = OKActionBindingSwipe;
  [(OKActionBindingProxy *)&v10 loadForResponder:responder scope:scope];
  if (([(OKActionBindingProxy *)self scope]& 1) != 0)
  {
    actionView = [responder actionView];
    if (actionView)
    {
      v7 = actionView;
      v8 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:self action:sel_handleSwipe_];
      self->_swipeGestureRecognizer = v8;
      [(UISwipeGestureRecognizer *)v8 setDelegate:self];
      [(UISwipeGestureRecognizer *)self->_swipeGestureRecognizer setNumberOfTouchesRequired:[(OKActionBindingSwipe *)self numberOfTouchesRequired]];
      v9 = __ROR8__([(OKActionBindingSwipe *)self direction]- 2, 1);
      if (v9 <= 7 && ((0x8Bu >> v9) & 1) != 0)
      {
        [(UISwipeGestureRecognizer *)self->_swipeGestureRecognizer setDirection:qword_269F6B1E0[v9]];
      }

      [v7 addGestureRecognizer:self->_swipeGestureRecognizer];
    }
  }
}

- (void)unload
{
  swipeGestureRecognizer = self->_swipeGestureRecognizer;
  if (swipeGestureRecognizer)
  {
    [-[UISwipeGestureRecognizer view](swipeGestureRecognizer "view")];

    self->_swipeGestureRecognizer = 0;
  }

  v4.receiver = self;
  v4.super_class = OKActionBindingSwipe;
  [(OKActionBindingProxy *)&v4 unload];
}

- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic
{
  scope = [(OKActionBindingProxy *)self scope];
  result = ([action scope] & scope) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (agnostic || objc_msgSend(action, "touchCount") == self->_numberOfTouchesRequired) && objc_msgSend(action, "direction") == self->_direction;
  return result;
}

- (void)handleSwipe:(id)swipe
{
  if ([swipe state] == 3)
  {
    [(OKActionBindingProxy *)self locationForActionFromGesture:swipe];
    v6 = v5;
    v8 = v7;
    direction = [(OKActionBindingSwipe *)self direction];
    numberOfTouches = [swipe numberOfTouches];
    v11 = +[OKActionSwipe swipeActionWithLocation:direction:touchCount:context:](OKActionSwipe, "swipeActionWithLocation:direction:touchCount:context:", direction, numberOfTouches, [MEMORY[0x277CBEB38] dictionary], v6, v8);

    [(OKActionBindingProxy *)self performAction:v11];
  }
}

@end