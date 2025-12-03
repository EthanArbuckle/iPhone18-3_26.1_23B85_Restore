@interface PVOrientationEffect
+ (void)registerEffectWithID:(id)d displayName:(id)name;
- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context;
- (HGRef<HGXForm>)rotationNodeForPercent:(float)percent atCenter:(CGPoint)center;
- (PVEffectTimeNotificationDelegate)timeNotificationDelegate;
- (PVOrientationEffect)initWithEffectID:(id)d;
- (id)inputsForTime:(id *)time;
- (void)dealloc;
- (void)orientationChangeRequest:(id)request;
- (void)setInputID:(unsigned int)d;
- (void)setShowAlt:(BOOL)alt;
@end

@implementation PVOrientationEffect

- (PVOrientationEffect)initWithEffectID:(id)d
{
  dCopy = d;
  v8.receiver = self;
  v8.super_class = PVOrientationEffect;
  v5 = [(PVEffect *)&v8 initWithEffectID:dCopy];
  if (v5)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_orientationChangeRequest_ name:@"PVOrientationEffectChange" object:0];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PVOrientationEffect;
  [(PVEffect *)&v4 dealloc];
}

- (void)orientationChangeRequest:(id)request
{
  userInfo = [request userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"seconds"];
  v5 = [userInfo objectForKeyedSubscript:@"alt"];
  v6 = [userInfo objectForKeyedSubscript:@"inputID"];
  v7 = v6;
  if (v5)
  {
    showAlt = [(PVOrientationEffect *)self showAlt];
    -[PVOrientationEffect setShowAlt:](self, "setShowAlt:", [v5 BOOLValue]);
    [(PVOrientationEffect *)self setOldShowAlt:showAlt];
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else if (!v6)
  {
    goto LABEL_7;
  }

  inputID = [(PVOrientationEffect *)self inputID];
  -[PVOrientationEffect setInputID:](self, "setInputID:", [v7 intValue]);
  [(PVOrientationEffect *)self setOldInputID:inputID != 0];
LABEL_6:
  [v4 doubleValue];
  [(PVOrientationEffect *)self setSwitchTime:?];
LABEL_7:
  v10 = [userInfo objectForKeyedSubscript:@"timeDelegate"];
  if (v10)
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    [(PVOrientationEffect *)self setTimeNotificationDelegate:v11];
  }
}

- (void)setShowAlt:(BOOL)alt
{
  altCopy = alt;
  [(PVOrientationEffect *)self animationTime];
  if (v5 > 0.0)
  {
    if (self->_showAlt != altCopy)
    {
      [(PVOrientationEffect *)self setSwitchTime:-1.0];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      goto LABEL_6;
    }

    [(PVOrientationEffect *)self switchTime];
    if (v6 == -1.0)
    {
      v7 = 0.0;
LABEL_6:
      [(PVOrientationEffect *)self setSwitchSetTime:v7];
    }
  }

  self->_oldShowAlt = altCopy;
  self->_showAlt = altCopy;
}

- (void)setInputID:(unsigned int)d
{
  [(PVOrientationEffect *)self animationTime];
  if (v5 > 0.0 && self->_inputID != d)
  {
    [(PVOrientationEffect *)self setSwitchTime:-1.0];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [(PVOrientationEffect *)self setSwitchSetTime:?];
  }

  self->_oldInputID = d;
  self->_inputID = d;
}

- (id)inputsForTime:(id *)time
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = *time;
  Seconds = CMTimeGetSeconds(&v11);
  v5 = MEMORY[0x277CCABB0];
  [(PVOrientationEffect *)self switchTime];
  if (v6 <= Seconds)
  {
    inputID = [(PVOrientationEffect *)self inputID];
  }

  else
  {
    inputID = [(PVOrientationEffect *)self oldInputID];
  }

  v8 = [v5 numberWithUnsignedInt:inputID];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  return v9;
}

+ (void)registerEffectWithID:(id)d displayName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{nameCopy, @"FFEffectProperty_DisplayName", @"Helium", @"FFEffectProperty_Category", @"effect.video.compositor", @"FFEffectProperty_EffectType", 0}];
  [PVEffect registerEffectClass:self forEffectID:dCopy withProperties:v7];
  v8 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{nameCopy, @"displayName", @"BuiltIn", @"contentGroup", 0}];
  v9 = +[PVContentRegistry sharedInstance];
  [v9 registerContentClass:objc_opt_class() forID:dCopy type:@"effect.video.compositor" withProperties:v8];
}

- (HGRef<HGNode>)hgNodeForTime:(id *)time inputs:(const void *)inputs renderer:(const void *)renderer igContext:(HGRef<PVInstructionGraphContext>)context
{
  v11 = v6;
  v60[2] = *MEMORY[0x277D85DE8];
  time = *time;
  renderer = [(PVOrientationEffect *)self inputsForTime:&time, inputs, renderer];
  firstObject = [renderer firstObject];
  intValue = [firstObject intValue];

  timeNotificationDelegate = [(PVOrientationEffect *)self timeNotificationDelegate];
  LOBYTE(renderer) = timeNotificationDelegate == 0;

  if ((renderer & 1) == 0)
  {
    timeNotificationDelegate2 = [(PVOrientationEffect *)self timeNotificationDelegate];
    time = *time;
    [timeNotificationDelegate2 effectRenderedTime:&time];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v59[0] = @"seconds";
    v59[1] = @"timeDelegate";
    v60[0] = &unk_28732D1D8;
    null = [MEMORY[0x277CBEB68] null];
    v60[1] = null;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    [defaultCenter postNotificationName:@"PVOrientationEffectChange" object:0 userInfo:v19];
  }

  [(PVOrientationEffect *)self animationTime];
  v20 = 1.0;
  if (v21 > 0.0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v23 = v22;
    [(PVOrientationEffect *)self switchSetTime];
    v25 = v24;
    [(PVOrientationEffect *)self animationTime];
    v26 = v23 - v25;
    if (v26 < v27)
    {
      [(PVOrientationEffect *)self switchTime];
      if (v28 == -1.0)
      {
        time = *time;
        Seconds = CMTimeGetSeconds(&time);
        if (Seconds == 0.0)
        {
          [(PVOrientationEffect *)self animationTime];
          v30 = -v31;
        }

        else
        {
          v30 = Seconds - v26;
        }

        [(PVOrientationEffect *)self setSwitchTime:v30];
      }

      time = *time;
      v32 = CMTimeGetSeconds(&time);
      [(PVOrientationEffect *)self switchTime];
      v34 = v33;
      [(PVOrientationEffect *)self animationTime];
      v36 = (v32 - v34) / v35;
      if (v36 >= 0.0 && v36 <= 1.0)
      {
        v38 = (1.0 - v36) * 3.14159265;
        v20 = cosf(v38) * 0.5 + 0.5;
      }
    }
  }

  v39 = (*(**context.m_Obj + 40))();
  v41 = v40;
  v42 = (*(**context.m_Obj + 48))();
  v43 = v39 * v42 * 0.5;
  v44 = v41 * v42 * 0.5;
  if (v20 == 1.0)
  {
    if ([(PVOrientationEffect *)self showAlt])
    {
      LODWORD(v45) = 1.0;
      [(PVOrientationEffect *)self rotationNodeForPercent:v45 atCenter:v43, v44];
      value = time.value;
      PVInputHGNodeMap<unsigned int>::GetNode(inputs, intValue, &v57);
      (*(*value + 120))(value, 0, v57);
      v47 = v57;
      if (v57)
      {
        v47 = (*(*v57 + 24))(v57);
      }

      *v11 = time.value;
    }

    else
    {
      return PVInputHGNodeMap<unsigned int>::GetNode(inputs, intValue, v11);
    }

    return v47;
  }

  v48 = HGObject::operator new(0x280uLL);
  HGHWMultiBlend::HGHWMultiBlend(v48);
  PVInputHGNodeMap<unsigned int>::MapKeys(inputs, &time);
  v49 = time.value;
  if (time.value != *&time.timescale)
  {
    while (1)
    {
      v50 = *v49;
      PVInputHGNodeMap<unsigned int>::GetNode(inputs, *v49, &v57);
      showAlt = [(PVOrientationEffect *)self showAlt];
      if (showAlt != [(PVOrientationEffect *)self oldShowAlt])
      {
        *&v52 = v20;
        [(PVOrientationEffect *)self rotationNodeForPercent:v52 atCenter:v43, v44];
        (*(*v56 + 120))(v56, 0, v57);
        v53 = v56;
        if (v57 != v56)
        {
          if (v57)
          {
            (*(*v57 + 24))(v57);
            v53 = v56;
          }

          v57 = v53;
          if (!v53)
          {
            goto LABEL_30;
          }

          (*(*v53 + 16))(v53);
          v53 = v56;
        }

        if (v53)
        {
          (*(*v53 + 24))(v53);
        }
      }

LABEL_30:
      inputID = [(PVOrientationEffect *)self inputID];
      v55.n128_f32[0] = v20;
      if (inputID != v50)
      {
        if ([(PVOrientationEffect *)self oldInputID]== v50)
        {
          v55.n128_f32[0] = 1.0 - v20;
        }

        else
        {
          v55.n128_f32[0] = 0.0;
        }
      }

      (*(*v48 + 624))(v48, v50, v57, 9, v55);
      v47 = v57;
      if (v57)
      {
        v47 = (*(*v57 + 24))(v57);
      }

      if (++v49 == *&time.timescale)
      {
        v49 = time.value;
        break;
      }
    }
  }

  *v11 = v48;
  if (v49)
  {
    *&time.timescale = v49;
    operator delete(v49);
  }

  return v47;
}

- (HGRef<HGXForm>)rotationNodeForPercent:(float)percent atCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  v9 = v4;
  HGTransform::HGTransform(v14);
  HGTransform::Translate(v14, -x, -y, 0.0);
  showAlt = [(PVOrientationEffect *)self showAlt];
  percentCopy = 1.0 - percent;
  if (showAlt)
  {
    percentCopy = percent;
  }

  HGTransform::Rotate(v14, (percentCopy * -90.0), 0.0, 0.0, 1.0);
  HGTransform::Translate(v14, x, y, 0.0);
  v12 = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(v12);
  *v9 = v12;
  (*(*v12 + 576))(v12, v14);
  HGTransform::~HGTransform(v14);
  return v13;
}

- (PVEffectTimeNotificationDelegate)timeNotificationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_timeNotificationDelegate);

  return WeakRetained;
}

@end