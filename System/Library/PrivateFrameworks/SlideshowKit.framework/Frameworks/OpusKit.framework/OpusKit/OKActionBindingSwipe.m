@interface OKActionBindingSwipe
+ (id)supportedSettings;
- (BOOL)respondsToAction:(id)a3 isTouchCountAgnostic:(BOOL)a4;
- (OKActionBindingSwipe)init;
- (OKActionBindingSwipe)initWithSettings:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)handleSwipe:(id)a3;
- (void)loadForResponder:(id)a3 scope:(unint64_t)a4;
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

- (OKActionBindingSwipe)initWithSettings:(id)a3
{
  v8.receiver = self;
  v8.super_class = OKActionBindingSwipe;
  v4 = [(OKActionBinding *)&v8 initWithSettings:?];
  if (v4)
  {
    v5 = [a3 objectForKey:@"direction"];
    if (v5)
    {
      v4->_direction = [v5 unsignedIntegerValue];
    }

    v6 = [a3 objectForKey:@"numberOfTouchesRequired"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = OKActionBindingSwipe;
  v4 = [(OKActionBindingProxy *)&v7 copyWithZone:a3];
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
  v5.receiver = a1;
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

- (void)loadForResponder:(id)a3 scope:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = OKActionBindingSwipe;
  [(OKActionBindingProxy *)&v10 loadForResponder:a3 scope:a4];
  if (([(OKActionBindingProxy *)self scope]& 1) != 0)
  {
    v6 = [a3 actionView];
    if (v6)
    {
      v7 = v6;
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

- (BOOL)respondsToAction:(id)a3 isTouchCountAgnostic:(BOOL)a4
{
  v7 = [(OKActionBindingProxy *)self scope];
  result = ([a3 scope] & v7) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (a4 || objc_msgSend(a3, "touchCount") == self->_numberOfTouchesRequired) && objc_msgSend(a3, "direction") == self->_direction;
  return result;
}

- (void)handleSwipe:(id)a3
{
  if ([a3 state] == 3)
  {
    [(OKActionBindingProxy *)self locationForActionFromGesture:a3];
    v6 = v5;
    v8 = v7;
    v9 = [(OKActionBindingSwipe *)self direction];
    v10 = [a3 numberOfTouches];
    v11 = +[OKActionSwipe swipeActionWithLocation:direction:touchCount:context:](OKActionSwipe, "swipeActionWithLocation:direction:touchCount:context:", v9, v10, [MEMORY[0x277CBEB38] dictionary], v6, v8);

    [(OKActionBindingProxy *)self performAction:v11];
  }
}

@end