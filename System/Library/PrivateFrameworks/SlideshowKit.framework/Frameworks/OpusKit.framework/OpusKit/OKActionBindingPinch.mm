@interface OKActionBindingPinch
+ (id)supportedSettings;
- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic;
- (OKActionBindingPinch)init;
- (OKActionBindingPinch)initWithSettings:(id)settings;
- (void)dealloc;
- (void)handlePinch:(id)pinch;
- (void)loadForResponder:(id)responder scope:(unint64_t)scope;
- (void)performActionWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count scale:(double)scale angle:(double)angle translation:(CGPoint)translation velocity:(double)velocity context:(id)self0;
- (void)unload;
@end

@implementation OKActionBindingPinch

- (OKActionBindingPinch)init
{
  v3.receiver = self;
  v3.super_class = OKActionBindingPinch;
  result = [(OKActionBinding *)&v3 init];
  if (result)
  {
    result->_actionContext = 0;
  }

  return result;
}

- (OKActionBindingPinch)initWithSettings:(id)settings
{
  v4.receiver = self;
  v4.super_class = OKActionBindingPinch;
  return [(OKActionBinding *)&v4 initWithSettings:settings];
}

- (void)dealloc
{
  pinchGestureRecognizer = self->_pinchGestureRecognizer;
  if (pinchGestureRecognizer)
  {
    [-[OFUITrackingPinchGestureRecognizer view](pinchGestureRecognizer "view")];

    self->_pinchGestureRecognizer = 0;
  }

  actionContext = self->_actionContext;
  if (actionContext)
  {

    self->_actionContext = 0;
  }

  v5.receiver = self;
  v5.super_class = OKActionBindingPinch;
  [(OKActionBinding *)&v5 dealloc];
}

+ (id)supportedSettings
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKActionBindingPinch;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  [v2 addEntriesFromDictionary:MEMORY[0x277CBEC10]];
  return v2;
}

- (void)loadForResponder:(id)responder scope:(unint64_t)scope
{
  v9.receiver = self;
  v9.super_class = OKActionBindingPinch;
  [(OKActionBindingProxy *)&v9 loadForResponder:responder scope:scope];
  if (([(OKActionBindingProxy *)self scope]& 1) != 0)
  {
    actionView = [responder actionView];
    if (actionView)
    {
      v7 = actionView;
      v8 = [objc_alloc(MEMORY[0x277D627F0]) initWithTarget:self action:sel_handlePinch_ mode:0];
      self->_pinchGestureRecognizer = v8;
      [(OFUITrackingPinchGestureRecognizer *)v8 setDelegate:self];
      [v7 addGestureRecognizer:self->_pinchGestureRecognizer];
    }
  }
}

- (void)unload
{
  pinchGestureRecognizer = self->_pinchGestureRecognizer;
  if (pinchGestureRecognizer)
  {
    [-[OFUITrackingPinchGestureRecognizer view](pinchGestureRecognizer "view")];

    self->_pinchGestureRecognizer = 0;
  }

  v4.receiver = self;
  v4.super_class = OKActionBindingPinch;
  [(OKActionBindingProxy *)&v4 unload];
}

- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic
{
  scope = [(OKActionBindingProxy *)self scope];
  result = 0;
  if (([action scope] & scope) != 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (agnostic || [action touchCount] >= 2))
    {
      return 1;
    }
  }

  return result;
}

- (void)performActionWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count scale:(double)scale angle:(double)angle translation:(CGPoint)translation velocity:(double)velocity context:(id)self0
{
  velocity = [OKActionPinch pinchActionWithState:state location:count touchCount:context scale:location.x angle:location.y translation:scale velocity:angle context:translation.x, translation.y, velocity];

  [(OKActionBindingProxy *)self performAction:velocity];
}

- (void)handlePinch:(id)pinch
{
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  if ([pinch state] == 1)
  {
    actionContext = self->_actionContext;
    if (actionContext)
    {

      self->_actionContext = 0;
    }

    self->_actionContext = objc_alloc_init(MEMORY[0x277CBEB38]);
    [pinch view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(pinch "view")];
    }

    [pinch locationInView:{objc_msgSend(objc_msgSend(pinch, "view"), "superview")}];
    self->_startLocation.x = v8;
    self->_startLocation.y = v9;
    self->_isRotating = 0.0;
    [pinch pinchAngle];
    self->_startAngle = v10;
    v11 = 0.0;
    v12 = 1;
    goto LABEL_23;
  }

  if ([pinch state] == 2)
  {
    [pinch pinchAngle];
    if (self->_isRotating == 0.0)
    {
      startAngle = self->_startAngle;
      if (v13 == startAngle)
      {
LABEL_12:
        [pinch locationInView:{objc_msgSend(objc_msgSend(pinch, "view"), "superview")}];
        v5 = v15 - self->_startLocation.x;
        v6 = v16 - self->_startLocation.y;
        v11 = self->_startAngle - startAngle;
        v12 = 2;
        goto LABEL_23;
      }

      self->_startAngle = v13;
      self->_isRotating = 1.0;
    }

    startAngle = v13;
    goto LABEL_12;
  }

  if ([pinch state] == 3)
  {
    [pinch locationInView:{objc_msgSend(objc_msgSend(pinch, "view"), "superview")}];
    v5 = v17 - self->_startLocation.x;
    v6 = v18 - self->_startLocation.y;
    v19 = self->_startAngle;
    [pinch pinchAngle];
    v11 = v19 - v20;
    [pinch view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(pinch "view")];
    }

    v12 = 3;
  }

  else if ([pinch state] == 5 || objc_msgSend(pinch, "state") == 4)
  {
    [pinch locationInView:{objc_msgSend(objc_msgSend(pinch, "view"), "superview")}];
    v5 = v21 - self->_startLocation.x;
    v6 = v22 - self->_startLocation.y;
    v23 = self->_startAngle;
    [pinch pinchAngle];
    v11 = v23 - v24;
    [pinch view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(pinch "view")];
    }

    v12 = 4;
  }

  else
  {
    v12 = 0;
    v11 = 0.0;
  }

LABEL_23:
  numberOfTouches = [pinch numberOfTouches];
  [pinch velocity];
  v27 = v26;
  [(OKActionBindingProxy *)self locationForActionFromGesture:pinch];
  v29 = v28;
  v31 = v30;
  [pinch pinchScale];
  [(OKActionBindingPinch *)self performActionWithState:v12 location:numberOfTouches touchCount:self->_actionContext scale:v29 angle:v31 translation:v32 velocity:v11 context:v5, v6, v27];
  if ([pinch state] == 3 || objc_msgSend(pinch, "state") == 5 || objc_msgSend(pinch, "state") == 4)
  {
    v33 = self->_actionContext;
    if (v33)
    {

      self->_actionContext = 0;
    }
  }
}

@end