@interface NUNIScene
- (BOOL)isAnimating:(id)a3 forKeys:(unint64_t)a4;
- (CLLocationCoordinate2D)offsetCoordinate;
- (NUNIScene)initWithSphereoids:(unint64_t)a3 projectionType:(unint64_t)a4 currentDateBlock:(id)a5;
- (double)animatedFloatForKey:(uint64_t)a3;
- (float)restingCameraRoll;
- (id)spheroidOfType:(unint64_t)a3;
- (void)addAnimation:(id)a3;
- (void)removeAllAnimationsFor:(id)a3 withKeys:(unint64_t)a4;
- (void)removeAnimation:(id)a3;
- (void)setAnimatedFloat:(unint64_t)a3 forKey:;
- (void)setCamera:(float)a3 target:up:roll:;
- (void)setOffsetCoordinate:(CLLocationCoordinate2D)a3;
- (void)setSnap:(unint64_t)a3;
- (void)update:(float)a3;
- (void)updateCamera;
- (void)updateFromDateIfNeeded;
- (void)updateSunLocationAnimated:(BOOL)a3;
- (void)updateSunLocationForDate:(id)a3 animated:(BOOL)a4;
@end

@implementation NUNIScene

- (NUNIScene)initWithSphereoids:(unint64_t)a3 projectionType:(unint64_t)a4 currentDateBlock:(id)a5
{
  v6 = a3;
  v8 = a5;
  v29.receiver = self;
  v29.super_class = NUNIScene;
  v9 = [(NUNIScene *)&v29 init];
  if (v9)
  {
    v27 = a4;
    aBlock = v8;
    v10 = objc_opt_new();
    spheroids = v9->_spheroids;
    v9->_spheroids = v10;

    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (((1 << v12) & v6) == 0)
    {
LABEL_13:
      if (++v12 == 24)
      {
        v20 = objc_opt_new();
        animations = v9->_animations;
        v9->_animations = v20;

        *&v9->_structure.var0 = xmmword_1BCE3B490;
        *&v9->_structure.var3 = xmmword_1BCE3AE30;
        *&v9->_structure.var5 = xmmword_1BCE3AE60;
        *&v9->_structure.var11 = 2;
        v9->_structure.var8.var0.var0 = 5.7588;
        v9->_anon_78[16] = 1;
        *&v9->_anon_78[8] = v27;
        *&v9->_anon_78[52] = 1097859072;
        [(NUNIScene *)v9 setSnap:24];
        v8 = aBlock;
        v22 = _Block_copy(aBlock);
        currentDateBlock = v9->_currentDateBlock;
        v9->_currentDateBlock = v22;

        v24 = [(NUNIScene *)v9 date];
        [v24 timeIntervalSince1970];
        *&v25 = v25 / 31536000.0;
        *&v9->_anon_78[20] = LODWORD(v25);

        goto LABEL_17;
      }
    }

    v15 = 0;
    if (v12 <= 9)
    {
      v16 = v14;
      if (((1 << v12) & 0x3EE) != 0)
      {
LABEL_6:
        v15 = v16;
        goto LABEL_7;
      }

      if (v12 == 4)
      {
        v16 = v13;
        goto LABEL_6;
      }
    }

LABEL_7:
    v17 = [[NUNISpheroid alloc] initWithScene:v9 parent:v15 type:v12];
    [(NSMutableArray *)v9->_spheroids addObject:v17];
    if (v12)
    {
      if (v12 != 3)
      {
LABEL_12:

        goto LABEL_13;
      }

      v18 = v13;
      v13 = v17;
    }

    else
    {
      v18 = v14;
      v14 = v17;
    }

    v19 = v17;

    goto LABEL_12;
  }

LABEL_17:

  return v9;
}

- (void)updateCamera
{
  DWORD2(v10) = 0;
  *&v10 = 0;
  DWORD2(v9) = 0;
  *&v9 = 0;
  if (*&self->_structure.var9 == 24)
  {
    *&v2 = self->_structure.var8.var0.var1;
    *&v4 = 0x3F0000003F000000;
    HIDWORD(v4) = 1056964608;
    *(&v4 + 2) = self->_structure.var8.var0.var0 * 0.5;
    v9 = xmmword_1BCE3AE30;
    v10 = v4;
    v5 = 0.0078125;
    v6 = 0.0000305175853;
  }

  else
  {
    focus = self->_focus;
    v8 = (*(self->_currentDateBlock + 2))();
    [(NUNISpheroid *)focus date:v8 toCameraPosition:&v10 toCameraTarget:&v9];

    [(NUNIScene *)self restingCameraRoll];
    *&v2 = *&v4 + self->_structure.var8.var0.var1;
    v6 = *&v9;
    *&v4 = v10;
    v5 = 0.0;
  }

  [(NUNIScene *)self setCamera:*&v4 target:v6 up:v5 roll:v2, v9, v10];
}

- (float)restingCameraRoll
{
  if (*&self->_structure.var9 == 4 && (-[NUNIScene spheroidOfType:](self, "spheroidOfType:", 3), v2 = objc_claimAutoreleasedReturnValue(), [v2 homeCoordinate], v4 = v3, v2, v4 < 0.0))
  {
    return 3.1416;
  }

  else
  {
    return 0.0;
  }
}

- (double)animatedFloatForKey:(uint64_t)a3
{
  *&v3 = 0;
  if (a3 > 4)
  {
    if (a3 > 7)
    {
      switch(a3)
      {
        case 8:
          v4 = (a1 + 160);
          break;
        case 9:
          v4 = (a1 + 164);
          break;
        case 10:
          v4 = (a1 + 168);
          break;
        default:
          return *&v3;
      }
    }

    else
    {
      if (a3 != 5)
      {
        if (a3 == 6)
        {
          *&v3 = *(a1 + 144);
        }

        else
        {
          *&v3 = *(a1 + 152);
        }

        return *&v3;
      }

      v4 = (a1 + 96);
    }

LABEL_24:
    *&v3 = vld1q_dup_f32(v4).u64[0];
    return *&v3;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v3 = *(a1 + 80);
      return *&v3;
    }

    if (a3 == 3)
    {
      v4 = (a1 + 100);
    }

    else
    {
      v4 = (a1 + 140);
    }

    goto LABEL_24;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v3 = *(a1 + 64);
    }
  }

  else
  {
    v3 = *(a1 + 48);
  }

  return *&v3;
}

- (void)setAnimatedFloat:(unint64_t)a3 forKey:
{
  if (a3 <= 4)
  {
    if (a3 <= 1)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          *&self->_structure.var3 = _Q0;
        }
      }

      else
      {
        *&self->_structure.var0 = _Q0;
      }
    }

    else if (a3 == 2)
    {
      _Q1 = vmulq_f32(_Q0, _Q0);
      _S2 = _Q0.i32[2];
      __asm { FMLA            S1, S2, V0.S[2] }

      _Q1.f32[0] = sqrtf(_Q1.f32[0]);
      *&self->_structure.var5 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
    }

    else if (a3 == 3)
    {
      LODWORD(self->_structure.var8.var0.var1) = _Q0.i32[0];
    }

    else
    {
      *&self->_anon_78[20] = _Q0.i32[0];
    }
  }

  else if (a3 > 7)
  {
    switch(a3)
    {
      case 8uLL:
        *&self->_anon_78[40] = _Q0.i32[0];
        break;
      case 9uLL:
        *&self->_anon_78[44] = _Q0.i32[0];
        break;
      case 0xAuLL:
        *&self->_anon_78[48] = _Q0.i32[0];
        break;
    }
  }

  else if (a3 == 5)
  {
    LODWORD(self->_structure.var8.var0.var0) = _Q0.i32[0];
    [(NUNIScene *)self updateCamera];
  }

  else if (a3 == 6)
  {
    *&self->_anon_78[24] = _Q0.i64[0];
  }

  else
  {
    *&self->_anon_78[32] = _Q0.i64[0];
  }
}

- (void)update:(float)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_animations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        *&v8 = a3;
        if (([v12 update:{v8, v14}] & 1) == 0)
        {
          [v5 addIndex:{-[NSMutableArray indexOfObject:](self->_animations, "indexOfObject:", v12)}];
          v13 = [v12 observer];
          [v13 universeAnimationFinished:v12];
        }
      }

      v9 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if ([v5 count])
  {
    [(NSMutableArray *)self->_animations removeObjectsAtIndexes:v5];
  }
}

- (BOOL)isAnimating:(id)a3 forKeys:(unint64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_animations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 key];
        v14 = [v12 animatable];
        if (v14 == v6)
        {
          v15 = 1;

          if (((1 << v13) & ~a4) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (void)addAnimation:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 key];
  v6 = [v4 animatable];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_animations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 key] == v5)
        {
          v13 = [v12 animatable];

          if (v13 == v6)
          {
            v14 = v12;

            if (v14)
            {
              [(NUNIScene *)self removeAnimation:v14];
            }

            goto LABEL_13;
          }
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_13:
  [(NSMutableArray *)self->_animations addObject:v4, v15];
}

- (void)removeAllAnimationsFor:(id)a3 withKeys:(unint64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = self;
  v7 = self->_animations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 key];
        v15 = [v13 animatable];
        if (v15 == v6)
        {

          if (((1 << v14) & ~a4) == 0)
          {
            if (!v10)
            {
              v10 = objc_opt_new();
            }

            [v10 addIndex:{-[NSMutableArray indexOfObject:](v16->_animations, "indexOfObject:", v13)}];
          }
        }

        else
        {
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if ([v10 count])
  {
    [(NSMutableArray *)v16->_animations removeObjectsAtIndexes:v10];
  }
}

- (void)removeAnimation:(id)a3
{
  v5 = a3;
  v4 = [v5 observer];
  [v4 universeAnimationRemoved:v5];

  [(NSMutableArray *)self->_animations removeObject:v5];
}

- (void)updateSunLocationAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(NUNIScene *)self date];
  [(NUNIScene *)self updateSunLocationForDate:v5 animated:v3];
}

- (void)updateSunLocationForDate:(id)a3 animated:(BOOL)a4
{
  v74 = *MEMORY[0x1E69E9840];
  v6 = a3;
  self->_isUpdateNeeded = 0;
  [v6 timeIntervalSince1970];
  v8.i32[1] = 1098781496;
  *v8.i32 = v7 / 31536000.0;
  if (a4)
  {
    if (*&self->_anon_78[20] != *v8.i32)
    {
      v63 = v8;
      v9 = [NUNIAnimation alloc];
      v10 = &self->_anon_78[20];
      *&v11 = vld1q_dup_f32(v10).u64[0];
      v12 = [(NUNIAnimation *)v9 initWithAnimatable:self from:4 to:v11 key:*vdupq_lane_s32(v63, 0).i64];
      [(NUNIScene *)self addAnimation:v12];
    }
  }

  else
  {
    v64 = v7 / 31536000.0;
    [(NUNIScene *)self removeAllAnimationsFor:self withKeys:16];
    *&self->_anon_78[20] = v64;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v13 = self->_spheroids;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v70;
    v17 = vdup_n_s32(0x40C90FDBu);
    v18 = vdup_n_s32(0xC0C90FDB);
    v19 = vdup_n_s32(0x40490FDBu);
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v70 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v69 + 1) + 8 * i);
        if (a4)
        {
          [*(*(&v69 + 1) + 8 * i) angle];
          *v23.i32 = v22 + (floorf(v22 / 6.2832) * -6.2832);
          v59 = v23;
          [v21 equatorRotation];
          *v25.i32 = v24 + (floorf(v24 / 6.2832) * -6.2832);
          v65 = v25;
          [v21 light];
          v62 = vmla_f32(v26, v18, vrndm_f32(vdiv_f32(v26, v17)));
          [v21 distance];
          v60 = v27;
          [v21 radius];
          v61 = v28;
          v67 = 0;
          v68 = 0;
          v66 = 0;
          [v21 date:v6 toEquatorRotation:&v68 toAngle:&v68 + 4 toLight:&v66 toDistance:&v67 + 4 toRadius:&v67];
          v29 = *(&v68 + 1) + (floorf(*(&v68 + 1) / 6.2832) * -6.2832);
          v30 = vabds_f32(v29, *v59.i32);
          if (v29 <= *v59.i32)
          {
            v31 = 6.2832;
          }

          else
          {
            v31 = -6.2832;
          }

          v32 = v29 + v31;
          if (v30 <= 3.1416)
          {
            v33 = v29;
          }

          else
          {
            v33 = v32;
          }

          v34 = *&v68 + (floorf(*&v68 / 6.2832) * -6.2832);
          v35 = vabds_f32(v34, *v65.i32);
          if (v34 <= *v65.i32)
          {
            v36 = 6.2832;
          }

          else
          {
            v36 = -6.2832;
          }

          v37 = v34 + v36;
          if (v35 > 3.1416)
          {
            v34 = v37;
          }

          v68 = __PAIR64__(LODWORD(v33), LODWORD(v34));
          v38 = vmla_f32(v66, v18, vrndm_f32(vdiv_f32(v66, v17)));
          v66 = vbsl_s8(vcgt_f32(vabd_f32(v38, v62), v19), vadd_f32(v38, vbsl_s8(vcgt_f32(v38, v62), v18, v17)), v38);
          if (*v59.i32 != v33)
          {
            v39 = [NUNIAnimation alloc];
            v40 = &v68 + 1;
            *&v41 = vld1q_dup_f32(v40).u64[0];
            v42 = [(NUNIAnimation *)v39 initWithAnimatable:v21 from:7 to:*vdupq_lane_s32(v59 key:0).i64, v41];
            [(NUNIScene *)self addAnimation:v42];

            LODWORD(v34) = v68;
          }

          if (*v65.i32 != v34)
          {
            v43 = [NUNIAnimation alloc];
            v44 = &v68;
            *&v45 = vld1q_dup_f32(v44).u64[0];
            v46 = [(NUNIAnimation *)v43 initWithAnimatable:v21 from:1 to:*vdupq_lane_s32(v65 key:0).i64, v45];
            [(NUNIScene *)self addAnimation:v46];
          }

          v47 = COERCE_DOUBLE(vmvn_s8(vceq_f32(v62, v66)));
          if (LOBYTE(v47) & 1) != 0 || (BYTE4(v47))
          {
            v48 = [NUNIAnimation alloc];
            v49 = [(NUNIAnimation *)v48 initWithAnimatable:v21 from:3 to:*&v62 key:*&v66];
            [(NUNIScene *)self addAnimation:v49];
          }

          if (*v60.i32 != *(&v67 + 1))
          {
            v50 = [NUNIAnimation alloc];
            v51 = &v67 + 1;
            *&v52 = vld1q_dup_f32(v51).u64[0];
            v53 = [(NUNIAnimation *)v50 initWithAnimatable:v21 from:4 to:*vdupq_lane_s32(v60 key:0).i64, v52];
            [(NUNIScene *)self addAnimation:v53];
          }

          LODWORD(v47) = v67;
          v54 = *&v61;
          if (*v61.i32 != *&v67)
          {
            v55 = [NUNIAnimation alloc];
            v56 = &v67;
            *&v57 = vld1q_dup_f32(v56).u64[0];
            v58 = [(NUNIAnimation *)v55 initWithAnimatable:v21 from:5 to:*vdupq_lane_s32(v61 key:0).i64, v57];
            [(NUNIScene *)self addAnimation:v58];
          }
        }

        else
        {
          [(NUNIScene *)self removeAllAnimationsFor:*(*(&v69 + 1) + 8 * i) withKeys:154];
          [v21 updateSunLocationForDate:v6];
        }
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v69 objects:v73 count:16, v47, v54];
    }

    while (v15);
  }
}

- (id)spheroidOfType:(unint64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_spheroids;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 type] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)updateFromDateIfNeeded
{
  if (self->_isUpdateNeeded && self->_anon_78[16] == 1)
  {
    [(NUNIScene *)self updateSunLocationAnimated:0];
    self->_isUpdateNeeded = 0;
  }
}

- (void)setCamera:(float)a3 target:up:roll:
{
  *&self->_structure.var0 = *&a3;
  *&self->_structure.var3 = v3;
  *&self->_structure.var5 = v4;
  self->_structure.var8.var0.var1 = v5;
}

- (CLLocationCoordinate2D)offsetCoordinate
{
  v2 = *&self->_anon_78[36];
  v3 = *&self->_anon_78[32];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (void)setOffsetCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  *&self->_anon_78[32] = longitude;
  *&self->_anon_78[36] = latitude;
}

- (void)setSnap:(unint64_t)a3
{
  if (*&self->_structure.var9 != a3)
  {
    *&self->_structure.var9 = a3;
    if (a3 == 24)
    {
      v5 = 0;
    }

    else
    {
      v5 = [(NUNIScene *)self spheroidOfType:?];
    }

    focus = self->_focus;
    self->_focus = v5;

    [(NUNIScene *)self updateCamera];
  }
}

@end