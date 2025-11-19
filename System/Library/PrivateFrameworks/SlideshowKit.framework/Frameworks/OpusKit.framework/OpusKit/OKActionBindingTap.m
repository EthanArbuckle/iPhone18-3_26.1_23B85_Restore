@interface OKActionBindingTap
+ (id)supportedSettings;
- (BOOL)respondsToAction:(id)a3 isTouchCountAgnostic:(BOOL)a4;
- (OKActionBindingTap)init;
- (OKActionBindingTap)initWithSettings:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)handleTap:(id)a3;
- (void)loadForResponder:(id)a3 scope:(unint64_t)a4;
- (void)unload;
@end

@implementation OKActionBindingTap

- (OKActionBindingTap)init
{
  v3.receiver = self;
  v3.super_class = OKActionBindingTap;
  result = [(OKActionBinding *)&v3 init];
  if (result)
  {
    result->_numberOfTapsRequired = 1;
    result->_numberOfTouchesRequired = 1;
  }

  return result;
}

- (OKActionBindingTap)initWithSettings:(id)a3
{
  v8.receiver = self;
  v8.super_class = OKActionBindingTap;
  v4 = [(OKActionBinding *)&v8 initWithSettings:?];
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
  }

  return v4;
}

- (void)dealloc
{
  tapGestureRecognizer = self->_tapGestureRecognizer;
  if (tapGestureRecognizer)
  {
    [-[UITapGestureRecognizer view](tapGestureRecognizer "view")];

    self->_tapGestureRecognizer = 0;
  }

  v4.receiver = self;
  v4.super_class = OKActionBindingTap;
  [(OKActionBinding *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = OKActionBindingTap;
  v4 = [(OKActionBindingProxy *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setNumberOfTapsRequired:self->_numberOfTapsRequired];
    [v5 setNumberOfTapsRequired:self->_numberOfTouchesRequired];
  }

  return v5;
}

+ (id)supportedSettings
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___OKActionBindingTap;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v9[0] = @"numberOfTapsRequired";
  v7[0] = @"type";
  v7[1] = @"default";
  v8[0] = &unk_287AF1AC0;
  v8[1] = &unk_287AF1AD8;
  v10[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v9[1] = @"numberOfTouchesRequired";
  v5[0] = @"type";
  v5[1] = @"default";
  v6[0] = &unk_287AF1AC0;
  v6[1] = &unk_287AF1AD8;
  v10[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v10, v9, 2)}];
  return v2;
}

- (void)loadForResponder:(id)a3 scope:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = OKActionBindingTap;
  [(OKActionBindingProxy *)&v9 loadForResponder:a3 scope:a4];
  if (([(OKActionBindingProxy *)self scope]& 1) != 0)
  {
    v6 = [a3 actionView];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
      self->_tapGestureRecognizer = v8;
      [(UITapGestureRecognizer *)v8 setDelegate:self];
      [(UITapGestureRecognizer *)self->_tapGestureRecognizer setNumberOfTouchesRequired:[(OKActionBindingTap *)self numberOfTouchesRequired]];
      [(UITapGestureRecognizer *)self->_tapGestureRecognizer setNumberOfTapsRequired:[(OKActionBindingTap *)self numberOfTapsRequired]];
      [v7 addGestureRecognizer:self->_tapGestureRecognizer];
    }
  }
}

- (void)unload
{
  tapGestureRecognizer = self->_tapGestureRecognizer;
  if (tapGestureRecognizer)
  {
    [-[UITapGestureRecognizer view](tapGestureRecognizer "view")];

    self->_tapGestureRecognizer = 0;
  }

  v4.receiver = self;
  v4.super_class = OKActionBindingTap;
  [(OKActionBindingProxy *)&v4 unload];
}

- (BOOL)respondsToAction:(id)a3 isTouchCountAgnostic:(BOOL)a4
{
  v7 = [(OKActionBindingProxy *)self scope];
  result = ([a3 scope] & v7) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (a4 || objc_msgSend(a3, "touchCount") == self->_numberOfTouchesRequired) && objc_msgSend(a3, "tapCount") == self->_numberOfTapsRequired;
  return result;
}

- (void)handleTap:(id)a3
{
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([a3 state] == 3)
  {
    [(OKActionBindingProxy *)self locationForActionFromGesture:a3];
    -[OKActionBindingProxy performAction:](self, "performAction:", +[OKActionTap tapActionWithLocation:tapCount:touchCount:context:](OKActionTap, "tapActionWithLocation:tapCount:touchCount:context:", [a3 numberOfTapsRequired], objc_msgSend(a3, "numberOfTouches"), v7, v5, v6));
  }
}

@end