@interface SBFluidSwitcherItemContainerLayer
- (SBFluidSwitcherItemContainerLayer)init;
- (void)addAnimation:(id)a3 forKey:(id)a4;
- (void)setPosition:(CGPoint)a3;
- (void)setTransform:(CATransform3D *)a3;
@end

@implementation SBFluidSwitcherItemContainerLayer

- (SBFluidSwitcherItemContainerLayer)init
{
  v8.receiver = self;
  v8.super_class = SBFluidSwitcherItemContainerLayer;
  result = [(SBFluidSwitcherItemContainerLayer *)&v8 init];
  if (result)
  {
    result->_previousPosition = SBInvalidPoint;
    v3 = MEMORY[0x277CD9DE8];
    v4 = *(MEMORY[0x277CD9DE8] + 80);
    *&result->_previousTransform.m31 = *(MEMORY[0x277CD9DE8] + 64);
    *&result->_previousTransform.m33 = v4;
    v5 = v3[7];
    *&result->_previousTransform.m41 = v3[6];
    *&result->_previousTransform.m43 = v5;
    v6 = v3[1];
    *&result->_previousTransform.m11 = *v3;
    *&result->_previousTransform.m13 = v6;
    v7 = v3[3];
    *&result->_previousTransform.m21 = v3[2];
    *&result->_previousTransform.m23 = v7;
  }

  return result;
}

- (void)setPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  p_previousPosition = &self->_previousPosition;
  [(SBFluidSwitcherItemContainerLayer *)self position];
  p_previousPosition->x = v7;
  p_previousPosition->y = v8;
  v9.receiver = self;
  v9.super_class = SBFluidSwitcherItemContainerLayer;
  [(SBFluidSwitcherItemContainerLayer *)&v9 setPosition:x, y];
}

- (void)setTransform:(CATransform3D *)a3
{
  p_previousTransform = &self->_previousTransform;
  [(SBFluidSwitcherItemContainerLayer *)self transform];
  v6 = v34;
  *&p_previousTransform->m31 = v33;
  *&p_previousTransform->m33 = v6;
  v7 = v36;
  *&p_previousTransform->m41 = v35;
  *&p_previousTransform->m43 = v7;
  v8 = v30;
  *&p_previousTransform->m11 = v29;
  *&p_previousTransform->m13 = v8;
  v9 = v32;
  *&p_previousTransform->m21 = v31;
  *&p_previousTransform->m23 = v9;
  v10 = *&p_previousTransform->m33;
  v33 = *&p_previousTransform->m31;
  v34 = v10;
  v11 = *&p_previousTransform->m43;
  v35 = *&p_previousTransform->m41;
  v36 = v11;
  v12 = *&p_previousTransform->m13;
  v29 = *&p_previousTransform->m11;
  v30 = v12;
  v13 = *&p_previousTransform->m23;
  v31 = *&p_previousTransform->m21;
  v32 = v13;
  v14 = *&a3->m33;
  v28[5] = *&a3->m31;
  v28[6] = v14;
  v15 = *&a3->m43;
  v28[7] = *&a3->m41;
  v28[8] = v15;
  v16 = *&a3->m13;
  v28[1] = *&a3->m11;
  v28[2] = v16;
  v17 = *&a3->m23;
  v28[3] = *&a3->m21;
  v28[4] = v17;
  if (BSFloatEqualToFloat())
  {
    v18 = 1;
    while (v18 != 16)
    {
      ++v18;
      if ((BSFloatEqualToFloat() & 1) == 0)
      {
        if ((v18 - 2) > 0xE)
        {
          break;
        }

        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v28[0].receiver = self;
    v28[0].super_class = SBFluidSwitcherItemContainerLayer;
    v19 = *&a3->m33;
    v33 = *&a3->m31;
    v34 = v19;
    v20 = *&a3->m43;
    v35 = *&a3->m41;
    v36 = v20;
    v21 = *&a3->m13;
    v29 = *&a3->m11;
    v30 = v21;
    v22 = *&a3->m23;
    v31 = *&a3->m21;
    v32 = v22;
    [(objc_super *)v28 setTransform:&v29];
  }

  v23 = MEMORY[0x277CD9DE8];
  v24 = *(MEMORY[0x277CD9DE8] + 80);
  *&p_previousTransform->m31 = *(MEMORY[0x277CD9DE8] + 64);
  *&p_previousTransform->m33 = v24;
  v25 = v23[7];
  *&p_previousTransform->m41 = v23[6];
  *&p_previousTransform->m43 = v25;
  v26 = v23[1];
  *&p_previousTransform->m11 = *v23;
  *&p_previousTransform->m13 = v26;
  v27 = v23[3];
  *&p_previousTransform->m21 = v23[2];
  *&p_previousTransform->m23 = v27;
}

- (void)addAnimation:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_positionAnimationsBeginFromModelState && [v7 isEqualToString:@"position"] && (self->_previousPosition.x == 1.79769313e308 ? (v9 = self->_previousPosition.y == 1.79769313e308) : (v9 = 0), !v9))
  {
    v10 = objc_opt_class();
    v11 = SBSafeCast(v10, v6);
    v12 = v11;
    if (v11)
    {
      v13 = [v11 fromValue];
      if (v13)
      {
        v14 = v13;
        v15 = [v12 toValue];
        if (v15)
        {
        }

        else
        {
          v22 = [v12 byValue];

          if (!v22)
          {
            previousPosition = self->_previousPosition;
            v23 = [MEMORY[0x277CCAE60] valueWithBytes:&previousPosition objCType:"{CGPoint=dd}"];
            [v12 setFromValue:v23];

            v24 = [v12 copy];
            [v24 setKeyPath:@"anchorPoint"];
            v25 = MEMORY[0x277CCAE60];
            [(SBFluidSwitcherItemContainerLayer *)self anchorPoint];
            v41[0] = v26;
            v41[1] = v27;
            v28 = [v25 valueWithBytes:v41 objCType:"{CGPoint=dd}"];
            [v24 setFromValue:v28];

            v40.receiver = self;
            v40.super_class = SBFluidSwitcherItemContainerLayer;
            [(SBFluidSwitcherItemContainerLayer *)&v40 addAnimation:v24 forKey:@"anchorPoint"];
          }
        }
      }
    }
  }

  else if (self->_transformAnimationsAreLegacyCounterRotations)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v8 isEqualToString:@"transform"])
      {
        v16 = *&self->_previousTransform.m33;
        v30[4] = *&self->_previousTransform.m31;
        v30[5] = v16;
        v17 = *&self->_previousTransform.m43;
        v30[6] = *&self->_previousTransform.m41;
        v30[7] = v17;
        v18 = *&self->_previousTransform.m13;
        v30[0] = *&self->_previousTransform.m11;
        v30[1] = v18;
        v19 = *&self->_previousTransform.m23;
        v30[2] = *&self->_previousTransform.m21;
        v30[3] = v19;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        [(SBFluidSwitcherItemContainerLayer *)self transform];
        v31[4] = v36;
        v31[5] = v37;
        v31[6] = v38;
        v31[7] = v39;
        v31[0] = v32;
        v31[1] = v33;
        v31[2] = v34;
        v31[3] = v35;
        v20 = _UIInterfaceOrientationFromCATransform3D(v31);
        v21 = _UIInterfaceOrientationFromCATransform3D(v30);
        _UIMakeBasicTransformAnimationUnambiguous(v6, v21, v20, 1, 0);
      }
    }
  }

  v29.receiver = self;
  v29.super_class = SBFluidSwitcherItemContainerLayer;
  [(SBFluidSwitcherItemContainerLayer *)&v29 addAnimation:v6 forKey:v8];
}

@end