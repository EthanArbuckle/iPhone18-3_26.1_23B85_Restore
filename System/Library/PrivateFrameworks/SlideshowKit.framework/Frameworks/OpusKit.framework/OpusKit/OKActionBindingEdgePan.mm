@interface OKActionBindingEdgePan
+ (id)supportedSettings;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic;
- (OKActionBindingEdgePan)init;
- (OKActionBindingEdgePan)initWithSettings:(id)settings;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)loadForResponder:(id)responder scope:(unint64_t)scope;
- (void)performActionWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count translation:(CGPoint)translation velocity:(CGPoint)velocity direction:(unint64_t)direction context:(id)context;
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

- (OKActionBindingEdgePan)initWithSettings:(id)settings
{
  v7.receiver = self;
  v7.super_class = OKActionBindingEdgePan;
  v4 = [(OKActionBindingPan *)&v7 initWithSettings:?];
  if (v4)
  {
    v5 = [settings objectForKey:@"edges"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = OKActionBindingEdgePan;
  v4 = [(OKActionBindingPan *)&v7 copyWithZone:zone];
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
  v4.receiver = self;
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

- (void)loadForResponder:(id)responder scope:(unint64_t)scope
{
  v9.receiver = self;
  v9.super_class = OKActionBindingEdgePan;
  [(OKActionBindingPan *)&v9 loadForResponder:responder scope:scope];
  if (([(OKActionBindingProxy *)self scope]& 1) != 0)
  {
    actionView = [responder actionView];
    if (actionView)
    {
      v7 = actionView;
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

- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic
{
  scope = [(OKActionBindingProxy *)self scope];
  result = 0;
  if (([action scope] & scope) != 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (agnostic)
      {
        return 1;
      }

      touchCount = [action touchCount];
      if (touchCount >= [(OKActionBindingPan *)self minimumNumberOfTouches])
      {
        touchCount2 = [action touchCount];
        if (touchCount2 <= [(OKActionBindingPan *)self maximumNumberOfTouches])
        {
          return 1;
        }
      }
    }
  }

  return result;
}

- (void)performActionWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count translation:(CGPoint)translation velocity:(CGPoint)velocity direction:(unint64_t)direction context:(id)context
{
  v10 = [(OKActionPan *)OKActionEdgePan panActionWithState:state location:count touchCount:direction translation:context velocity:location.x direction:location.y context:translation.x, translation.y, velocity.x, velocity.y];

  [(OKActionBindingProxy *)self performAction:v10];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  edgePanGestureRecognizer = self->_edgePanGestureRecognizer;
  if (edgePanGestureRecognizer != begin)
  {
    return 0;
  }

  -[UIScreenEdgePanGestureRecognizer translationInView:](edgePanGestureRecognizer, "translationInView:", [objc_msgSend(begin "view")]);
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