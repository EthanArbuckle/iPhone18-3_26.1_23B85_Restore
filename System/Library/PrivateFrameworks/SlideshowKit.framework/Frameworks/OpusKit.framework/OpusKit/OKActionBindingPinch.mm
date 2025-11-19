@interface OKActionBindingPinch
+ (id)supportedSettings;
- (BOOL)respondsToAction:(id)a3 isTouchCountAgnostic:(BOOL)a4;
- (OKActionBindingPinch)init;
- (OKActionBindingPinch)initWithSettings:(id)a3;
- (void)dealloc;
- (void)handlePinch:(id)a3;
- (void)loadForResponder:(id)a3 scope:(unint64_t)a4;
- (void)performActionWithState:(unint64_t)a3 location:(CGPoint)a4 touchCount:(unint64_t)a5 scale:(double)a6 angle:(double)a7 translation:(CGPoint)a8 velocity:(double)a9 context:(id)a10;
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

- (OKActionBindingPinch)initWithSettings:(id)a3
{
  v4.receiver = self;
  v4.super_class = OKActionBindingPinch;
  return [(OKActionBinding *)&v4 initWithSettings:a3];
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
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___OKActionBindingPinch;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  [v2 addEntriesFromDictionary:MEMORY[0x277CBEC10]];
  return v2;
}

- (void)loadForResponder:(id)a3 scope:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = OKActionBindingPinch;
  [(OKActionBindingProxy *)&v9 loadForResponder:a3 scope:a4];
  if (([(OKActionBindingProxy *)self scope]& 1) != 0)
  {
    v6 = [a3 actionView];
    if (v6)
    {
      v7 = v6;
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

- (BOOL)respondsToAction:(id)a3 isTouchCountAgnostic:(BOOL)a4
{
  v6 = [(OKActionBindingProxy *)self scope];
  result = 0;
  if (([a3 scope] & v6) != 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (a4 || [a3 touchCount] >= 2))
    {
      return 1;
    }
  }

  return result;
}

- (void)performActionWithState:(unint64_t)a3 location:(CGPoint)a4 touchCount:(unint64_t)a5 scale:(double)a6 angle:(double)a7 translation:(CGPoint)a8 velocity:(double)a9 context:(id)a10
{
  v11 = [OKActionPinch pinchActionWithState:a3 location:a5 touchCount:a10 scale:a4.x angle:a4.y translation:a6 velocity:a7 context:a8.x, a8.y, a9];

  [(OKActionBindingProxy *)self performAction:v11];
}

- (void)handlePinch:(id)a3
{
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  if ([a3 state] == 1)
  {
    actionContext = self->_actionContext;
    if (actionContext)
    {

      self->_actionContext = 0;
    }

    self->_actionContext = objc_alloc_init(MEMORY[0x277CBEB38]);
    [a3 view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(a3 "view")];
    }

    [a3 locationInView:{objc_msgSend(objc_msgSend(a3, "view"), "superview")}];
    self->_startLocation.x = v8;
    self->_startLocation.y = v9;
    self->_isRotating = 0.0;
    [a3 pinchAngle];
    self->_startAngle = v10;
    v11 = 0.0;
    v12 = 1;
    goto LABEL_23;
  }

  if ([a3 state] == 2)
  {
    [a3 pinchAngle];
    if (self->_isRotating == 0.0)
    {
      startAngle = self->_startAngle;
      if (v13 == startAngle)
      {
LABEL_12:
        [a3 locationInView:{objc_msgSend(objc_msgSend(a3, "view"), "superview")}];
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

  if ([a3 state] == 3)
  {
    [a3 locationInView:{objc_msgSend(objc_msgSend(a3, "view"), "superview")}];
    v5 = v17 - self->_startLocation.x;
    v6 = v18 - self->_startLocation.y;
    v19 = self->_startAngle;
    [a3 pinchAngle];
    v11 = v19 - v20;
    [a3 view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(a3 "view")];
    }

    v12 = 3;
  }

  else if ([a3 state] == 5 || objc_msgSend(a3, "state") == 4)
  {
    [a3 locationInView:{objc_msgSend(objc_msgSend(a3, "view"), "superview")}];
    v5 = v21 - self->_startLocation.x;
    v6 = v22 - self->_startLocation.y;
    v23 = self->_startAngle;
    [a3 pinchAngle];
    v11 = v23 - v24;
    [a3 view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(a3 "view")];
    }

    v12 = 4;
  }

  else
  {
    v12 = 0;
    v11 = 0.0;
  }

LABEL_23:
  v25 = [a3 numberOfTouches];
  [a3 velocity];
  v27 = v26;
  [(OKActionBindingProxy *)self locationForActionFromGesture:a3];
  v29 = v28;
  v31 = v30;
  [a3 pinchScale];
  [(OKActionBindingPinch *)self performActionWithState:v12 location:v25 touchCount:self->_actionContext scale:v29 angle:v31 translation:v32 velocity:v11 context:v5, v6, v27];
  if ([a3 state] == 3 || objc_msgSend(a3, "state") == 5 || objc_msgSend(a3, "state") == 4)
  {
    v33 = self->_actionContext;
    if (v33)
    {

      self->_actionContext = 0;
    }
  }
}

@end