@interface PVOrientationEffect
+ (void)registerEffectWithID:(id)a3 displayName:(id)a4;
- (HGRef<HGNode>)hgNodeForTime:(id *)a3 inputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6;
- (HGRef<HGXForm>)rotationNodeForPercent:(float)a3 atCenter:(CGPoint)a4;
- (PVEffectTimeNotificationDelegate)timeNotificationDelegate;
- (PVOrientationEffect)initWithEffectID:(id)a3;
- (id)inputsForTime:(id *)a3;
- (void)dealloc;
- (void)orientationChangeRequest:(id)a3;
- (void)setInputID:(unsigned int)a3;
- (void)setShowAlt:(BOOL)a3;
@end

@implementation PVOrientationEffect

- (PVOrientationEffect)initWithEffectID:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PVOrientationEffect;
  v5 = [(PVEffect *)&v8 initWithEffectID:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v5 selector:sel_orientationChangeRequest_ name:@"PVOrientationEffectChange" object:0];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PVOrientationEffect;
  [(PVEffect *)&v4 dealloc];
}

- (void)orientationChangeRequest:(id)a3
{
  v12 = [a3 userInfo];
  v4 = [v12 objectForKeyedSubscript:@"seconds"];
  v5 = [v12 objectForKeyedSubscript:@"alt"];
  v6 = [v12 objectForKeyedSubscript:@"inputID"];
  v7 = v6;
  if (v5)
  {
    v8 = [(PVOrientationEffect *)self showAlt];
    -[PVOrientationEffect setShowAlt:](self, "setShowAlt:", [v5 BOOLValue]);
    [(PVOrientationEffect *)self setOldShowAlt:v8];
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else if (!v6)
  {
    goto LABEL_7;
  }

  v9 = [(PVOrientationEffect *)self inputID];
  -[PVOrientationEffect setInputID:](self, "setInputID:", [v7 intValue]);
  [(PVOrientationEffect *)self setOldInputID:v9 != 0];
LABEL_6:
  [v4 doubleValue];
  [(PVOrientationEffect *)self setSwitchTime:?];
LABEL_7:
  v10 = [v12 objectForKeyedSubscript:@"timeDelegate"];
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

- (void)setShowAlt:(BOOL)a3
{
  v3 = a3;
  [(PVOrientationEffect *)self animationTime];
  if (v5 > 0.0)
  {
    if (self->_showAlt != v3)
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

  self->_oldShowAlt = v3;
  self->_showAlt = v3;
}

- (void)setInputID:(unsigned int)a3
{
  [(PVOrientationEffect *)self animationTime];
  if (v5 > 0.0 && self->_inputID != a3)
  {
    [(PVOrientationEffect *)self setSwitchTime:-1.0];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [(PVOrientationEffect *)self setSwitchSetTime:?];
  }

  self->_oldInputID = a3;
  self->_inputID = a3;
}

- (id)inputsForTime:(id *)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = *a3;
  Seconds = CMTimeGetSeconds(&v11);
  v5 = MEMORY[0x277CCABB0];
  [(PVOrientationEffect *)self switchTime];
  if (v6 <= Seconds)
  {
    v7 = [(PVOrientationEffect *)self inputID];
  }

  else
  {
    v7 = [(PVOrientationEffect *)self oldInputID];
  }

  v8 = [v5 numberWithUnsignedInt:v7];
  v12[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  return v9;
}

+ (void)registerEffectWithID:(id)a3 displayName:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v6, @"FFEffectProperty_DisplayName", @"Helium", @"FFEffectProperty_Category", @"effect.video.compositor", @"FFEffectProperty_EffectType", 0}];
  [PVEffect registerEffectClass:a1 forEffectID:v10 withProperties:v7];
  v8 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v6, @"displayName", @"BuiltIn", @"contentGroup", 0}];
  v9 = +[PVContentRegistry sharedInstance];
  [v9 registerContentClass:objc_opt_class() forID:v10 type:@"effect.video.compositor" withProperties:v8];
}

- (HGRef<HGNode>)hgNodeForTime:(id *)a3 inputs:(const void *)a4 renderer:(const void *)a5 igContext:(HGRef<PVInstructionGraphContext>)a6
{
  v11 = v6;
  v60[2] = *MEMORY[0x277D85DE8];
  time = *a3;
  v12 = [(PVOrientationEffect *)self inputsForTime:&time, a4, a5];
  v13 = [v12 firstObject];
  v14 = [v13 intValue];

  v15 = [(PVOrientationEffect *)self timeNotificationDelegate];
  LOBYTE(v12) = v15 == 0;

  if ((v12 & 1) == 0)
  {
    v16 = [(PVOrientationEffect *)self timeNotificationDelegate];
    time = *a3;
    [v16 effectRenderedTime:&time];

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    v59[0] = @"seconds";
    v59[1] = @"timeDelegate";
    v60[0] = &unk_28732D1D8;
    v18 = [MEMORY[0x277CBEB68] null];
    v60[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
    [v17 postNotificationName:@"PVOrientationEffectChange" object:0 userInfo:v19];
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
        time = *a3;
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

      time = *a3;
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

  v39 = (*(**a6.m_Obj + 40))();
  v41 = v40;
  v42 = (*(**a6.m_Obj + 48))();
  v43 = v39 * v42 * 0.5;
  v44 = v41 * v42 * 0.5;
  if (v20 == 1.0)
  {
    if ([(PVOrientationEffect *)self showAlt])
    {
      LODWORD(v45) = 1.0;
      [(PVOrientationEffect *)self rotationNodeForPercent:v45 atCenter:v43, v44];
      value = time.value;
      PVInputHGNodeMap<unsigned int>::GetNode(a4, v14, &v57);
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
      return PVInputHGNodeMap<unsigned int>::GetNode(a4, v14, v11);
    }

    return v47;
  }

  v48 = HGObject::operator new(0x280uLL);
  HGHWMultiBlend::HGHWMultiBlend(v48);
  PVInputHGNodeMap<unsigned int>::MapKeys(a4, &time);
  v49 = time.value;
  if (time.value != *&time.timescale)
  {
    while (1)
    {
      v50 = *v49;
      PVInputHGNodeMap<unsigned int>::GetNode(a4, *v49, &v57);
      v51 = [(PVOrientationEffect *)self showAlt];
      if (v51 != [(PVOrientationEffect *)self oldShowAlt])
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
      v54 = [(PVOrientationEffect *)self inputID];
      v55.n128_f32[0] = v20;
      if (v54 != v50)
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

- (HGRef<HGXForm>)rotationNodeForPercent:(float)a3 atCenter:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v9 = v4;
  HGTransform::HGTransform(v14);
  HGTransform::Translate(v14, -x, -y, 0.0);
  v10 = [(PVOrientationEffect *)self showAlt];
  v11 = 1.0 - a3;
  if (v10)
  {
    v11 = a3;
  }

  HGTransform::Rotate(v14, (v11 * -90.0), 0.0, 0.0, 1.0);
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