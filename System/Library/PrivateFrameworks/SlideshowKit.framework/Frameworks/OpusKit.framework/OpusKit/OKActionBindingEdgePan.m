@interface OKActionBindingEdgePan
+ (id)supportedSettings;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)respondsToAction:(id)a3 isTouchCountAgnostic:(BOOL)a4;
- (OKActionBindingEdgePan)init;
- (OKActionBindingEdgePan)initWithSettings:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)loadForResponder:(id)a3 scope:(unint64_t)a4;
- (void)performActionWithState:(unint64_t)a3 location:(CGPoint)a4 touchCount:(unint64_t)a5 translation:(CGPoint)a6 velocity:(CGPoint)a7 direction:(unint64_t)a8 context:(id)a9;
- (void)unload;
@end

@implementation OKActionBindingEdgePan

- (OKActionBindingEdgePan)init
{
  v3.receiver = self;
  v3.super_class = OKActionBindingEdgePan;
  result = [(OKActionBindingPan *)&v3 init];
  if (result)
  {
    result->_edges = 15;
  }

  return result;
}

- (OKActionBindingEdgePan)initWithSettings:(id)a3
{
  v7.receiver = self;
  v7.super_class = OKActionBindingEdgePan;
  v4 = [(OKActionBindingPan *)&v7 initWithSettings:?];
  if (v4)
  {
    v5 = [a3 objectForKey:@"edges"];
    if (v5)
    {
      v4->_edges = [v5 unsignedIntegerValue];
    }
  }

  return v4;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKActionBindingEdgePan;
  [(OKActionBindingPan *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = OKActionBindingEdgePan;
  v4 = [(OKActionBindingPan *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    [v4 setEdges:self->_edges];
  }

  return v5;
}

+ (id)supportedSettings
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___OKActionBindingEdgePan;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v7 = @"edges";
  v5[0] = @"type";
  v5[1] = @"mapping";
  v6[0] = &unk_287AF1C58;
  v6[1] = &unk_287AF21A8;
  v5[2] = @"default";
  v6[2] = @"all";
  v8[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  return v2;
}

- (void)loadForResponder:(id)a3 scope:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = OKActionBindingEdgePan;
  [(OKActionBindingPan *)&v9 loadForResponder:a3 scope:a4];
  if (([(OKActionBindingProxy *)self scope]& 1) != 0)
  {
    v6 = [a3 actionView];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_alloc(MEMORY[0x277D759A8]) initWithTarget:self action:sel_handlePan_];
      self->_edgePanGestureRecognizer = v8;
      [(UIScreenEdgePanGestureRecognizer *)v8 setDelegate:self];
      [(UIScreenEdgePanGestureRecognizer *)self->_edgePanGestureRecognizer setEdges:[(OKActionBindingEdgePan *)self edges]];
      [(UIScreenEdgePanGestureRecognizer *)self->_edgePanGestureRecognizer setMinimumNumberOfTouches:[(OKActionBindingPan *)self minimumNumberOfTouches]];
      [(UIScreenEdgePanGestureRecognizer *)self->_edgePanGestureRecognizer setMaximumNumberOfTouches:[(OKActionBindingPan *)self maximumNumberOfTouches]];
      [v7 addGestureRecognizer:self->_edgePanGestureRecognizer];
    }
  }
}

- (void)unload
{
  edgePanGestureRecognizer = self->_edgePanGestureRecognizer;
  if (edgePanGestureRecognizer)
  {
    [-[UIScreenEdgePanGestureRecognizer view](edgePanGestureRecognizer "view")];

    self->_edgePanGestureRecognizer = 0;
  }

  v4.receiver = self;
  v4.super_class = OKActionBindingEdgePan;
  [(OKActionBindingPan *)&v4 unload];
}

- (BOOL)respondsToAction:(id)a3 isTouchCountAgnostic:(BOOL)a4
{
  v7 = [(OKActionBindingProxy *)self scope];
  result = 0;
  if (([a3 scope] & v7) != 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a4)
      {
        return 1;
      }

      v9 = [a3 touchCount];
      if (v9 >= [(OKActionBindingPan *)self minimumNumberOfTouches])
      {
        v10 = [a3 touchCount];
        if (v10 <= [(OKActionBindingPan *)self maximumNumberOfTouches])
        {
          return 1;
        }
      }
    }
  }

  return result;
}

- (void)performActionWithState:(unint64_t)a3 location:(CGPoint)a4 touchCount:(unint64_t)a5 translation:(CGPoint)a6 velocity:(CGPoint)a7 direction:(unint64_t)a8 context:(id)a9
{
  v10 = [(OKActionPan *)OKActionEdgePan panActionWithState:a3 location:a5 touchCount:a8 translation:a9 velocity:a4.x direction:a4.y context:a6.x, a6.y, a7.x, a7.y];

  [(OKActionBindingProxy *)self performAction:v10];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  edgePanGestureRecognizer = self->_edgePanGestureRecognizer;
  if (edgePanGestureRecognizer != a3)
  {
    return 0;
  }

  -[UIScreenEdgePanGestureRecognizer translationInView:](edgePanGestureRecognizer, "translationInView:", [objc_msgSend(a3 "view")]);
  if (fabs(v6) <= fabs(v7))
  {

    return [(OKActionBindingPan *)self canPanHorizontally];
  }

  else
  {

    return [(OKActionBindingPan *)self canPanVertically];
  }
}

@end