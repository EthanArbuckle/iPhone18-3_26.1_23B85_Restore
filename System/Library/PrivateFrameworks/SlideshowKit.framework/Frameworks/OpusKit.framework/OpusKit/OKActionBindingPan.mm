@interface OKActionBindingPan
+ (id)supportedSettings;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic;
- (OKActionBindingPan)init;
- (OKActionBindingPan)initWithSettings:(id)settings;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)handlePan:(id)pan;
- (void)loadForResponder:(id)responder scope:(unint64_t)scope;
- (void)performActionWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count translation:(CGPoint)translation velocity:(CGPoint)velocity direction:(unint64_t)direction context:(id)context;
- (void)unload;
@end

@implementation OKActionBindingPan

- (OKActionBindingPan)init
{
  v3.receiver = self;
  v3.super_class = OKActionBindingPan;
  result = [(OKActionBinding *)&v3 init];
  if (result)
  {
    result->_minimumNumberOfTouches = 1;
    result->_maximumNumberOfTouches = 1;
    result->_canPanHorizontally = 1;
    result->_canPanVertically = 1;
    result->_directionThreshold = 5.0;
    result->_actionContext = 0;
  }

  return result;
}

- (OKActionBindingPan)initWithSettings:(id)settings
{
  v12.receiver = self;
  v12.super_class = OKActionBindingPan;
  v4 = [(OKActionBinding *)&v12 initWithSettings:?];
  if (v4)
  {
    v5 = [settings objectForKey:@"minimumNumberOfTouches"];
    if (v5)
    {
      v4->_minimumNumberOfTouches = [v5 unsignedIntegerValue];
    }

    v6 = [settings objectForKey:@"maximumNumberOfTouches"];
    if (v6)
    {
      v4->_maximumNumberOfTouches = [v6 unsignedIntegerValue];
    }

    v7 = [settings objectForKey:@"canPanHorizontally"];
    if (v7)
    {
      v4->_canPanHorizontally = [v7 BOOLValue];
    }

    v8 = [settings objectForKey:@"canPanVertically"];
    if (v8)
    {
      v4->_canPanVertically = [v8 BOOLValue];
    }

    v9 = [settings objectForKey:@"directionThreshold"];
    if (v9)
    {
      [v9 doubleValue];
      v4->_directionThreshold = v10;
    }
  }

  return v4;
}

- (void)dealloc
{
  panGestureRecognizer = self->_panGestureRecognizer;
  if (panGestureRecognizer)
  {
    [-[UIPanGestureRecognizer view](panGestureRecognizer "view")];

    self->_panGestureRecognizer = 0;
  }

  actionContext = self->_actionContext;
  if (actionContext)
  {

    self->_actionContext = 0;
  }

  v5.receiver = self;
  v5.super_class = OKActionBindingPan;
  [(OKActionBinding *)&v5 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = OKActionBindingPan;
  v4 = [(OKActionBindingProxy *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setMinimumNumberOfTouches:self->_minimumNumberOfTouches];
    [v5 setMaximumNumberOfTouches:self->_maximumNumberOfTouches];
    [v5 setCanPanHorizontally:self->_canPanHorizontally];
    [v5 setCanPanVertically:self->_canPanVertically];
    [v5 setDirectionThreshold:self->_directionThreshold];
  }

  return v5;
}

+ (id)supportedSettings
{
  v17[5] = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___OKActionBindingPan;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v5, sel_supportedSettings)}];
  v16[0] = @"minimumNumberOfTouches";
  v14[0] = @"type";
  v14[1] = @"default";
  v15[0] = &unk_287AF1BF8;
  v15[1] = &unk_287AF1C10;
  v17[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v16[1] = @"maximumNumberOfTouches";
  v12[0] = @"type";
  v12[1] = @"default";
  v13[0] = &unk_287AF1BF8;
  v13[1] = &unk_287AF1C10;
  v17[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v16[2] = @"canPanHorizontally";
  v10[0] = @"type";
  v10[1] = @"default";
  v3 = MEMORY[0x277CBEC38];
  v11[0] = &unk_287AF1C28;
  v11[1] = MEMORY[0x277CBEC38];
  v17[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v16[3] = @"canPanVertically";
  v8[0] = @"type";
  v8[1] = @"default";
  v9[0] = &unk_287AF1C28;
  v9[1] = v3;
  v17[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v16[4] = @"directionThreshold";
  v6[0] = @"type";
  v6[1] = @"default";
  v7[0] = &unk_287AF1BF8;
  v7[1] = &unk_287AF1C40;
  v17[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v17, v16, 5)}];
  return v2;
}

- (void)loadForResponder:(id)responder scope:(unint64_t)scope
{
  v9.receiver = self;
  v9.super_class = OKActionBindingPan;
  [(OKActionBindingProxy *)&v9 loadForResponder:responder scope:scope];
  if (([(OKActionBindingProxy *)self scope]& 1) != 0)
  {
    actionView = [responder actionView];
    if (actionView)
    {
      v7 = actionView;
      v8 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_handlePan_];
      self->_panGestureRecognizer = v8;
      [(UIPanGestureRecognizer *)v8 setDelegate:self];
      [v7 addGestureRecognizer:self->_panGestureRecognizer];
      [(UIPanGestureRecognizer *)self->_panGestureRecognizer setMinimumNumberOfTouches:[(OKActionBindingPan *)self minimumNumberOfTouches]];
      [(UIPanGestureRecognizer *)self->_panGestureRecognizer setMaximumNumberOfTouches:[(OKActionBindingPan *)self maximumNumberOfTouches]];
    }
  }
}

- (void)unload
{
  panGestureRecognizer = self->_panGestureRecognizer;
  if (panGestureRecognizer)
  {
    [-[UIPanGestureRecognizer view](panGestureRecognizer "view")];

    self->_panGestureRecognizer = 0;
  }

  v4.receiver = self;
  v4.super_class = OKActionBindingPan;
  [(OKActionBindingProxy *)&v4 unload];
}

- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic
{
  scope = [(OKActionBindingProxy *)self scope];
  result = 0;
  if (([action scope] & scope) != 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (agnostic || [action touchCount] >= self->_minimumNumberOfTouches && objc_msgSend(action, "touchCount") <= self->_maximumNumberOfTouches))
    {
      return 1;
    }
  }

  return result;
}

- (void)performActionWithState:(unint64_t)state location:(CGPoint)location touchCount:(unint64_t)count translation:(CGPoint)translation velocity:(CGPoint)velocity direction:(unint64_t)direction context:(id)context
{
  v10 = [OKActionPan panActionWithState:state location:count touchCount:direction translation:context velocity:location.x direction:location.y context:translation.x, translation.y, velocity.x, velocity.y];

  [(OKActionBindingProxy *)self performAction:v10];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  panGestureRecognizer = self->_panGestureRecognizer;
  if (panGestureRecognizer != begin)
  {
    return 0;
  }

  -[UIPanGestureRecognizer translationInView:](panGestureRecognizer, "translationInView:", [objc_msgSend(begin "view")]);
  if (fabs(v6) <= fabs(v7))
  {

    return [(OKActionBindingPan *)self canPanHorizontally];
  }

  else
  {

    return [(OKActionBindingPan *)self canPanVertically];
  }
}

- (void)handlePan:(id)pan
{
  [pan locationInView:{objc_msgSend(objc_msgSend(pan, "view"), "superview")}];
  v47 = v5;
  v48 = v6;
  [pan translationInView:{objc_msgSend(objc_msgSend(pan, "view"), "superview")}];
  v8 = v7;
  v10 = v9;
  [pan velocityInView:{objc_msgSend(objc_msgSend(pan, "view"), "superview")}];
  v12 = v11;
  v14 = v13;
  if ([pan state] != 1)
  {
    if ([pan state] != 2)
    {
      if ([pan state] == 3)
      {
        v25 = 3;
      }

      else if ([pan state] == 5 || objc_msgSend(pan, "state") == 4)
      {
        v25 = 4;
      }

      else
      {
        v25 = 0;
      }

      goto LABEL_36;
    }

    p_directionLastLocation = &self->_directionLastLocation;
    x = self->_directionLastLocation.x;
    y = self->_directionLastLocation.y;
    [(OKActionBindingPan *)self directionThreshold];
    v29 = 1.0;
    v30 = v47;
    if (v47 - x <= v31)
    {
      v32 = v47 - p_directionLastLocation->x;
      [(OKActionBindingPan *)self directionThreshold];
      v29 = -1.0;
      _NF = v32 < -v33;
      v30 = v47;
      if (!_NF)
      {
        if (v47 > p_directionLastLocation->x && self->_direction.x == 1.0)
        {
          x = v47;
        }

        v29 = self->_direction.x;
        _NF = v29 == -1.0 && v47 < p_directionLastLocation->x;
        if (_NF)
        {
          v30 = v47;
        }

        else
        {
          v30 = x;
        }
      }
    }

    v35 = v48 - self->_directionLastLocation.y;
    [(OKActionBindingPan *)self directionThreshold];
    if (v35 <= v36)
    {
      v38 = v48 - self->_directionLastLocation.y;
      [(OKActionBindingPan *)self directionThreshold];
      v40 = -v39;
      v37 = -1.0;
      if (v38 >= v40)
      {
        v42 = self->_directionLastLocation.y;
        if (v48 > v42 && self->_direction.y == 1.0)
        {
          y = v48;
        }

        v37 = self->_direction.y;
        if (v37 == -1.0 && v48 < v42)
        {
          v41 = v48;
        }

        else
        {
          v41 = y;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v37 = 1.0;
    }

    v41 = v48;
LABEL_35:
    self->_direction.x = v29;
    self->_direction.y = v37;
    p_directionLastLocation->x = v30;
    self->_directionLastLocation.y = v41;
    v25 = 2;
    goto LABEL_36;
  }

  actionContext = self->_actionContext;
  if (actionContext)
  {

    self->_actionContext = 0;
  }

  v16 = objc_alloc(MEMORY[0x277CBEB38]);
  self->_actionContext = [v16 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCACA8], "generateUUID"), @"contextID", 0}];
  self->_previousLocation.x = v47;
  self->_previousLocation.y = v48;
  self->_previousTranslation.x = v8;
  self->_previousTranslation.y = v10;
  self->_previousVelocity.x = v12;
  self->_previousVelocity.y = v14;
  v17.f64[0] = v47;
  v17.f64[1] = v48;
  v18 = vcgtzq_f64(v17);
  __asm { FMOV            V2.2D, #-1.0 }

  v23 = vandq_s8(_Q2, vcltzq_f64(v17));
  __asm { FMOV            V2.2D, #1.0 }

  self->_direction = vbslq_s8(v18, _Q2, v23);
  self->_directionLastLocation.x = v47;
  self->_directionLastLocation.y = v48;
  v25 = 1;
LABEL_36:
  [(OKActionBindingProxy *)self locationForActionFromGesture:pan];
  -[OKActionBindingPan performActionWithState:location:touchCount:translation:velocity:direction:context:](self, "performActionWithState:location:touchCount:translation:velocity:direction:context:", v25, [pan numberOfTouches], +[OKAction directionFromPoint:](OKAction, "directionFromPoint:", self->_direction.x, self->_direction.y), self->_actionContext, v44, v45, v8, v10, v12, v14);
  self->_previousLocation.x = v47;
  self->_previousLocation.y = v48;
  self->_previousTranslation.x = v8;
  self->_previousTranslation.y = v10;
  self->_previousVelocity.x = v12;
  self->_previousVelocity.y = v14;
  if ([pan state] == 3 || objc_msgSend(pan, "state") == 5 || objc_msgSend(pan, "state") == 4)
  {
    v46 = self->_actionContext;
    if (v46)
    {

      self->_actionContext = 0;
    }
  }
}

@end