@interface MCPlugParallel
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (BOOL)hasAbsoluteAspectRatio;
- (BOOL)hasValidWidth;
- (CGPoint)position;
- (CGSize)size;
- (CGSize)sizeForParentAspectRatio:(double)ratio;
- (MCPlugParallel)init;
- (MCPlugParallel)initWithImprint:(id)imprint andMontage:(id)montage;
- (double)aspectRatio;
- (double)aspectRatioForParentAspectRatio:(double)result;
- (double)height;
- (double)positionZ;
- (double)rotation;
- (double)rotationX;
- (double)rotationY;
- (double)scale;
- (double)width;
- (id)description;
- (id)imprint;
- (unsigned)countOfLayouts;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)demolish;
- (void)setClipsContainer:(BOOL)container;
- (void)setHeight:(double)height andAbsoluteAspectRatio:(double)ratio;
- (void)setIsTriggered:(BOOL)triggered;
- (void)setPosition:(CGPoint)position;
- (void)setPositionZ:(double)z;
- (void)setResetsTimeOnTrigger:(BOOL)trigger;
- (void)setRotation:(double)rotation;
- (void)setRotationX:(double)x;
- (void)setRotationY:(double)y;
- (void)setScale:(double)scale;
- (void)setSize:(CGSize)size;
- (void)setWidth:(double)width andAbsoluteAspectRatio:(double)ratio;
@end

@implementation MCPlugParallel

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  if ([key isEqualToString:@"positionRotationAndSize"])
  {
    return [NSSet setWithObjects:@"position", @"zPosition", @"scale", @"size", @"rotationAngle", @"xRotationAngle", @"yRotationAngle", @"currentLayout", 0];
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___MCPlugParallel;
  return objc_msgSendSuper2(&v6, "keyPathsForValuesAffectingValueForKey:", key);
}

- (MCPlugParallel)init
{
  v3.receiver = self;
  v3.super_class = MCPlugParallel;
  result = [(MCPlug *)&v3 init];
  if (result)
  {
    result->mOpacity = 1.0;
  }

  return result;
}

- (MCPlugParallel)initWithImprint:(id)imprint andMontage:(id)montage
{
  v46.receiver = self;
  v46.super_class = MCPlugParallel;
  v5 = [(MCPlug *)&v46 initWithImprint:imprint andMontage:montage];
  if (v5)
  {
    v5->mIDInSupercontainer = [imprint objectForKey:@"idInSupercontainer"];
    v6 = [imprint objectForKey:@"timeIn"];
    if (v6)
    {
      [v6 doubleValue];
    }

    else
    {
      v7 = 0.0;
    }

    v5->mTimeIn = v7;
    v8 = [imprint objectForKey:@"zIndex"];
    if (v8)
    {
      LOWORD(v8) = [v8 unsignedIntegerValue];
    }

    v5->mZIndex = v8;
    v9 = [imprint objectForKey:@"audioPriority"];
    if (v9)
    {
      LOWORD(v9) = [v9 unsignedIntegerValue];
    }

    v5->mAudioPriority = v9;
    v10 = [imprint objectForKey:@"opacity"];
    if (v10)
    {
      [v10 floatValue];
      v12 = v11;
    }

    else
    {
      v12 = 1.0;
    }

    v5->mOpacity = v12;
    v13 = [imprint objectForKey:@"geometries"];
    if (v13)
    {
      v14 = v13;
      mFlags = v5->super.mFlags;
      mGeometry = v5->mGeometry;
      v17 = mFlags >> 28;
      if ((mFlags & 0x40) == 0)
      {
        if (!mGeometry)
        {
          LODWORD(v19) = 0;
          goto LABEL_21;
        }

        v18 = BYTE3(mFlags) & 0xF;
        if (v17 > v18)
        {
          LODWORD(v19) = v18 + 1;
LABEL_21:
          v22 = malloc_type_calloc((v17 + 1), 0x30uLL, 0x1000040EED21634uLL);
          v5->mGeometry = v22;
          v5->super.mFlags = v5->super.mFlags & 0xF0FFFFFF | (v5->super.mFlags >> 28 << 24);
          v19 = v19;
          if (mGeometry)
          {
            memcpy(v22, mGeometry, 48 * v19);
            free(mGeometry);
            v22 = v5->mGeometry;
          }

          if (v19)
          {
            v23 = &v22[48 * v19];
            v24 = *(v23 - 1);
            v26 = *(v23 - 3);
            _Q0 = *(v23 - 2);
            v27 = *&v22[48 * (v19 - 1) + 32];
          }

          else
          {
            __asm { FMOV            V0.2D, #2.0 }

            v26 = 0uLL;
            v27 = 0;
            v24 = 1.0;
          }

          v40 = &v22[48 * v19 + 32];
          if (!v22)
          {
            goto LABEL_33;
          }

LABEL_32:
          for (i = (HIBYTE(v5->super.mFlags) & 0xF) + 1; v19 < i; i = 0)
          {
            *(v40 - 2) = v26;
            *(v40 - 1) = _Q0;
            ++v19;
            *v40 = v27;
            *(v40 + 1) = v24;
            v40 += 48;
            if (v22)
            {
              goto LABEL_32;
            }

LABEL_33:
            ;
          }
        }

LABEL_44:
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_12EBC8;
        v45[3] = &unk_1ABA38;
        v45[4] = imprint;
        v45[5] = v5;
        [v14 enumerateObjectsUsingBlock:v45];
        return v5;
      }

      if (mGeometry)
      {
        v20 = BYTE3(mFlags) & 0xF;
        if (v17 <= v20)
        {
          goto LABEL_44;
        }

        LODWORD(v21) = v20 + 1;
      }

      else
      {
        LODWORD(v21) = 0;
      }

      v28 = malloc_type_calloc(v17 + 1, 0x48uLL, 0x1000040FF89C88EuLL);
      v5->mGeometry = v28;
      v5->super.mFlags = v5->super.mFlags & 0xF0FFFFFF | (v5->super.mFlags >> 28 << 24) | 0x40;
      v21 = v21;
      if (mGeometry)
      {
        memcpy(v28, mGeometry, 48 * v21);
        free(mGeometry);
        v28 = v5->mGeometry;
      }

      if (v21)
      {
        v29 = &v28[72 * v21];
        _Q0 = *(v29 - 56);
        v31 = *(v29 - 72);
        v32 = *(v29 - 40);
        v33 = *(v29 - 3);
        v34 = *(v29 - 1);
        v35 = *&v28[72 * (v21 - 1) + 56];
      }

      else
      {
        v32 = xmmword_163C80;
        __asm { FMOV            V0.2D, #2.0 }

        v31 = 0uLL;
        v34 = 0;
        v33 = 0;
        v35 = 0;
      }

      v42 = &v28[72 * v21 + 64];
      if (!v28)
      {
        goto LABEL_40;
      }

LABEL_39:
      for (j = (HIBYTE(v5->super.mFlags) & 0xF) + 1; v21 < j; j = 0)
      {
        *(v42 - 4) = v31;
        *(v42 - 3) = _Q0;
        *(v42 - 2) = v32;
        *(v42 - 1) = v35;
        *v42 = v34;
        ++v21;
        *(v42 - 2) = v33;
        v42 += 72;
        if (v28)
        {
          goto LABEL_39;
        }

LABEL_40:
        ;
      }

      goto LABEL_44;
    }
  }

  return v5;
}

- (void)demolish
{
  mGeometry = self->mGeometry;
  if (mGeometry)
  {
    free(mGeometry);
    self->mGeometry = 0;
  }

  self->mIDInSupercontainer = 0;
  self->mSupercontainer = 0;
  v4.receiver = self;
  v4.super_class = MCPlugParallel;
  [(MCPlug *)&v4 demolish];
}

- (id)imprint
{
  v40.receiver = self;
  v40.super_class = MCPlugParallel;
  imprint = [(MCPlug *)&v40 imprint];
  v4 = imprint;
  mIDInSupercontainer = self->mIDInSupercontainer;
  if (mIDInSupercontainer)
  {
    [imprint setObject:mIDInSupercontainer forKey:@"idInSupercontainer"];
  }

  mTimeIn = self->mTimeIn;
  if (mTimeIn != 0.0)
  {
    [v4 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"timeIn"}];
  }

  if (self->mZIndex)
  {
    [v4 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:"), @"zIndex"}];
  }

  if (self->mAudioPriority)
  {
    *&mTimeIn = self->mAudioPriority;
    [v4 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", mTimeIn), @"audioPriority"}];
  }

  mOpacity = self->mOpacity;
  if (mOpacity != 1.0)
  {
    *&mOpacity = mOpacity;
    [v4 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", mOpacity), @"opacity"}];
  }

  if (self->mGeometry)
  {
    v8 = [NSMutableArray alloc];
    v37 = v4;
    if (self->mGeometry)
    {
      v9 = (HIBYTE(self->super.mFlags) & 0xF) + 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = &OBJC_IVAR___MCPlug_mFlags;
    v39 = [v8 initWithCapacity:{v9, v37}];
    v11 = 0;
    v12 = 0;
    v13 = 0;
    for (i = 64; ; i += 72)
    {
      mGeometry = self->mGeometry;
      if (mGeometry)
      {
        mGeometry = ((*(&self->super.super.super.super.isa + *v10 + 3) & 0xF) + 1);
      }

      if (v12 >= mGeometry)
      {
        v4 = v38;
        if (v13)
        {
          [v38 setObject:v39 forKey:@"geometries"];
        }

        return v4;
      }

      v16 = objc_alloc_init(NSMutableDictionary);
      v17 = v10;
      v18 = *v10;
      v19 = *(&self->super.super.super.super.isa + v18);
      v20 = self->mGeometry;
      if ((v19 & 0x40) != 0)
      {
        v21 = *&v20[i - 64];
      }

      else
      {
        v21 = *&v20[v11];
      }

      if (v21 != 0.0)
      {
        *&v21 = v21;
        [v16 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v21), @"positionX"}];
        v19 = *(&self->super.super.super.super.isa + v18);
      }

      v22 = self->mGeometry;
      if ((v19 & 0x40) != 0)
      {
        v23 = *&v22[i - 56];
      }

      else
      {
        v23 = *&v22[v11 + 8];
      }

      if (v23 != 0.0)
      {
        *&v23 = v23;
        [v16 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v23), @"positionY"}];
        v19 = *(&self->super.super.super.super.isa + v18);
      }

      v24 = self->mGeometry;
      if ((v19 & 0x40) != 0)
      {
        v25 = *&v24[i - 48];
      }

      else
      {
        v25 = *&v24[v11 + 16];
      }

      if (v25 != 2.0)
      {
        *&v25 = v25;
        [v16 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v25), @"width"}];
        v19 = *(&self->super.super.super.super.isa + v18);
      }

      v26 = self->mGeometry;
      if ((v19 & 0x40) != 0)
      {
        v27 = *&v26[i - 40];
      }

      else
      {
        v27 = *&v26[v11 + 24];
      }

      if (v27 != 2.0)
      {
        *&v27 = v27;
        [v16 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v27), @"height"}];
        v19 = *(&self->super.super.super.super.isa + v18);
      }

      v28 = self->mGeometry;
      if ((v19 & 0x40) != 0)
      {
        v29 = *&v28[i - 24];
      }

      else
      {
        v29 = *&v28[v11 + 40];
      }

      if (v29 != 1.0)
      {
        *&v29 = v29;
        [v16 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v29), @"scale"}];
        v19 = *(&self->super.super.super.super.isa + v18);
      }

      v30 = self->mGeometry;
      if ((v19 & 0x40) == 0)
      {
        break;
      }

      v31 = *&v30[i - 32];
      if (v31 != 0.0)
      {
        goto LABEL_48;
      }

LABEL_49:
      v32 = self->mGeometry;
      v33 = *&v32[i - 16];
      if (v33 != 0.0)
      {
        *&v33 = v33;
        [v16 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v33), @"positionZ"}];
        v32 = self->mGeometry;
      }

      v34 = *&v32[i - 8];
      if (v34 != 0.0)
      {
        *&v34 = v34;
        [v16 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v34), @"rotationX"}];
        v32 = self->mGeometry;
      }

      v35 = *&v32[i];
      if (v35 != 0.0)
      {
        *&v35 = v35;
        [v16 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v35), @"rotationY"}];
      }

LABEL_55:
      [v39 addObject:v16];
      v13 |= [v16 count] != 0;

      ++v12;
      v11 += 48;
      v10 = v17;
    }

    v31 = *&v30[v11 + 32];
    if (v31 == 0.0)
    {
      goto LABEL_55;
    }

LABEL_48:
    *&v31 = v31;
    [v16 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v31), @"rotationZ"}];
    if ((*(&self->super.super.super.super.isa + v18) & 0x40) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_49;
  }

  return v4;
}

- (CGPoint)position
{
  mGeometry = self->mGeometry;
  if (mGeometry)
  {
    mFlags = self->super.mFlags;
    v4 = mFlags >> 28;
    v5 = BYTE3(mFlags) & 0xF;
    if ((mFlags & 0x40) != 0)
    {
      if (self->super.mFlags >> 28 <= v5)
      {
        mGeometry += 9 * v4;
      }
    }

    else if (self->super.mFlags >> 28 <= v5)
    {
      mGeometry += 6 * v4;
    }
  }

  else
  {
    mGeometry = &CGPointZero;
  }

  v6 = *mGeometry;
  v7 = mGeometry[1];
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)setPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  mGeometry = self->mGeometry;
  if (!mGeometry && position.x == 0.0 && position.y == 0.0)
  {
    return;
  }

  mFlags = self->super.mFlags;
  v8 = mFlags >> 28;
  if ((mFlags & 0x40) != 0)
  {
    if (mGeometry)
    {
      v11 = BYTE3(mFlags) & 0xF;
      if (v8 <= v11)
      {
        goto LABEL_36;
      }

      LODWORD(v12) = v11 + 1;
    }

    else
    {
      LODWORD(v12) = 0;
    }

    v13 = malloc_type_calloc(v8 + 1, 0x48uLL, 0x1000040FF89C88EuLL);
    self->mGeometry = v13;
    self->super.mFlags = self->super.mFlags & 0xF0FFFFFF | (self->super.mFlags >> 28 << 24) | 0x40;
    v12 = v12;
    if (mGeometry)
    {
      memcpy(v13, mGeometry, 48 * v12);
      free(mGeometry);
      v13 = self->mGeometry;
    }

    if (v12)
    {
      v19 = &v13[72 * v12];
      _Q0 = *(v19 - 56);
      v21 = *(v19 - 72);
      v22 = *(v19 - 40);
      v23 = *(v19 - 3);
      v24 = *(v19 - 1);
      v25 = *&v13[72 * (v12 - 1) + 56];
    }

    else
    {
      v22 = xmmword_163C80;
      __asm { FMOV            V0.2D, #2.0 }

      v21 = 0uLL;
      v24 = 0;
      v23 = 0;
      v25 = 0;
    }

    v32 = &v13[72 * v12 + 64];
    if (!v13)
    {
      goto LABEL_31;
    }

LABEL_30:
    for (i = (HIBYTE(self->super.mFlags) & 0xF) + 1; v12 < i; i = 0)
    {
      *(v32 - 4) = v21;
      *(v32 - 3) = _Q0;
      *(v32 - 2) = v22;
      *(v32 - 1) = v25;
      *v32 = v24;
      ++v12;
      *(v32 - 2) = v23;
      v32 += 72;
      if (v13)
      {
        goto LABEL_30;
      }

LABEL_31:
      ;
    }

    goto LABEL_35;
  }

  if (!mGeometry)
  {
    LODWORD(v10) = 0;
    goto LABEL_12;
  }

  v9 = BYTE3(mFlags) & 0xF;
  if (v8 > v9)
  {
    LODWORD(v10) = v9 + 1;
LABEL_12:
    v13 = malloc_type_calloc((v8 + 1), 0x30uLL, 0x1000040EED21634uLL);
    self->mGeometry = v13;
    self->super.mFlags = self->super.mFlags & 0xF0FFFFFF | (self->super.mFlags >> 28 << 24);
    v10 = v10;
    if (mGeometry)
    {
      memcpy(v13, mGeometry, 48 * v10);
      free(mGeometry);
      v13 = self->mGeometry;
    }

    if (v10)
    {
      v14 = &v13[48 * v10];
      v15 = *(v14 - 1);
      v17 = *(v14 - 3);
      _Q0 = *(v14 - 2);
      v18 = *&v13[48 * (v10 - 1) + 32];
    }

    else
    {
      __asm { FMOV            V0.2D, #2.0 }

      v17 = 0uLL;
      v18 = 0;
      v15 = 1.0;
    }

    v30 = &v13[48 * v10 + 32];
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    for (j = (HIBYTE(self->super.mFlags) & 0xF) + 1; v10 < j; j = 0)
    {
      *(v30 - 2) = v17;
      *(v30 - 1) = _Q0;
      ++v10;
      *v30 = v18;
      *(v30 + 1) = v15;
      v30 += 48;
      if (v13)
      {
        goto LABEL_23;
      }

LABEL_24:
      ;
    }

LABEL_35:
    mGeometry = v13;
  }

LABEL_36:
  if ((self->super.mFlags & 0x40) != 0)
  {
    v34 = &mGeometry[72 * (self->super.mFlags >> 28)];
  }

  else
  {
    v34 = &mGeometry[48 * (self->super.mFlags >> 28)];
  }

  *v34 = x;
  v34[1] = y;
}

- (CGSize)size
{
  mGeometry = self->mGeometry;
  if (mGeometry)
  {
    mFlags = self->super.mFlags;
    v4 = mFlags >> 28;
    v5 = BYTE3(mFlags) & 0xF;
    v6 = (mGeometry + 16);
    v7 = (mGeometry + 24);
    v8 = &mGeometry[48 * (self->super.mFlags >> 28)];
    v9 = (v8 + 16);
    v10 = (v8 + 24);
    if (self->super.mFlags >> 28 > v5)
    {
      v10 = (mGeometry + 24);
      v9 = (mGeometry + 16);
    }

    v11 = v4 > v5;
    v12 = &mGeometry[72 * v4];
    v13 = (v12 + 16);
    v14 = (v12 + 24);
    if (v11)
    {
      v14 = v7;
      v13 = v6;
    }

    if ((mFlags & 0x40) != 0)
    {
      v15 = v13;
    }

    else
    {
      v14 = v10;
      v15 = v9;
    }

    width = *v15;
    if (*v15 < 0.0 || (height = *v14, *v14 < 0.0))
    {
      width = CGSizeZero.width;
      height = CGSizeZero.height;
      NSLog(@"Calling size on plug with absolute aspect ratio", a2);
    }
  }

  else
  {
    height = 2.0;
    width = 2.0;
  }

  v18 = width;
  v19 = height;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)setSize:(CGSize)size
{
  width = size.width;
  mGeometry = self->mGeometry;
  if (mGeometry)
  {
    _ZF = 0;
  }

  else
  {
    _ZF = size.width == 2.0;
  }

  if (_ZF && size.height == 2.0)
  {
    return;
  }

  height = size.height;
  mFlags = self->super.mFlags;
  v10 = mFlags >> 28;
  if ((mFlags & 0x40) != 0)
  {
    if (mGeometry)
    {
      v13 = BYTE3(mFlags) & 0xF;
      if (v10 <= v13)
      {
        goto LABEL_40;
      }

      LODWORD(v14) = v13 + 1;
    }

    else
    {
      LODWORD(v14) = 0;
    }

    v15 = malloc_type_calloc(v10 + 1, 0x48uLL, 0x1000040FF89C88EuLL);
    self->mGeometry = v15;
    self->super.mFlags = self->super.mFlags & 0xF0FFFFFF | (self->super.mFlags >> 28 << 24) | 0x40;
    v14 = v14;
    if (mGeometry)
    {
      memcpy(v15, mGeometry, 48 * v14);
      free(mGeometry);
      v15 = self->mGeometry;
    }

    if (v14)
    {
      v21 = &v15[72 * v14];
      _Q0 = *(v21 - 56);
      v23 = *(v21 - 72);
      v24 = *(v21 - 40);
      v25 = *(v21 - 3);
      v26 = *(v21 - 1);
      v27 = *&v15[72 * (v14 - 1) + 56];
    }

    else
    {
      v24 = xmmword_163C80;
      __asm { FMOV            V0.2D, #2.0 }

      v23 = 0uLL;
      v26 = 0;
      v25 = 0;
      v27 = 0;
    }

    v33 = &v15[72 * v14 + 64];
    if (!v15)
    {
      goto LABEL_35;
    }

LABEL_34:
    for (i = (HIBYTE(self->super.mFlags) & 0xF) + 1; v14 < i; i = 0)
    {
      *(v33 - 4) = v23;
      *(v33 - 3) = _Q0;
      *(v33 - 2) = v24;
      *(v33 - 1) = v27;
      *v33 = v26;
      ++v14;
      *(v33 - 2) = v25;
      v33 += 72;
      if (v15)
      {
        goto LABEL_34;
      }

LABEL_35:
      ;
    }

    goto LABEL_39;
  }

  if (!mGeometry)
  {
    LODWORD(v12) = 0;
    goto LABEL_16;
  }

  v11 = BYTE3(mFlags) & 0xF;
  if (v10 > v11)
  {
    LODWORD(v12) = v11 + 1;
LABEL_16:
    v15 = malloc_type_calloc((v10 + 1), 0x30uLL, 0x1000040EED21634uLL);
    self->mGeometry = v15;
    self->super.mFlags = self->super.mFlags & 0xF0FFFFFF | (self->super.mFlags >> 28 << 24);
    v12 = v12;
    if (mGeometry)
    {
      memcpy(v15, mGeometry, 48 * v12);
      free(mGeometry);
      v15 = self->mGeometry;
    }

    if (v12)
    {
      v16 = &v15[48 * v12];
      v17 = *(v16 - 1);
      v19 = *(v16 - 3);
      _Q0 = *(v16 - 2);
      v20 = *&v15[48 * (v12 - 1) + 32];
    }

    else
    {
      __asm { FMOV            V0.2D, #2.0 }

      v19 = 0uLL;
      v20 = 0;
      v17 = 1.0;
    }

    v31 = &v15[48 * v12 + 32];
    if (!v15)
    {
      goto LABEL_28;
    }

LABEL_27:
    for (j = (HIBYTE(self->super.mFlags) & 0xF) + 1; v12 < j; j = 0)
    {
      *(v31 - 2) = v19;
      *(v31 - 1) = _Q0;
      ++v12;
      *v31 = v20;
      *(v31 + 1) = v17;
      v31 += 48;
      if (v15)
      {
        goto LABEL_27;
      }

LABEL_28:
      ;
    }

LABEL_39:
    mGeometry = v15;
  }

LABEL_40:
  if ((self->super.mFlags & 0x40) != 0)
  {
    v35 = &mGeometry[72 * (self->super.mFlags >> 28) + 16];
  }

  else
  {
    v35 = &mGeometry[48 * (self->super.mFlags >> 28) + 16];
  }

  *v35 = width;
  v35[1] = height;
}

- (BOOL)hasAbsoluteAspectRatio
{
  mGeometry = self->mGeometry;
  if (!mGeometry)
  {
    return 0;
  }

  mFlags = self->super.mFlags;
  v4 = mFlags >> 28;
  v5 = BYTE3(mFlags) & 0xF;
  v6 = (mGeometry + 16);
  v7 = (mGeometry + 24);
  v8 = &mGeometry[48 * (self->super.mFlags >> 28)];
  v9 = (v8 + 16);
  v10 = (v8 + 24);
  if (self->super.mFlags >> 28 > v5)
  {
    v9 = (mGeometry + 16);
    v10 = (mGeometry + 24);
  }

  v11 = v4 > v5;
  v12 = &mGeometry[72 * v4];
  v13 = (v12 + 16);
  v14 = (v12 + 24);
  if (v11)
  {
    v13 = v6;
    v14 = v7;
  }

  if ((mFlags & 0x40) != 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v9;
  }

  if ((self->super.mFlags & 0x40) == 0)
  {
    v14 = v10;
  }

  return fmin(*v15, *v14) < 0.0;
}

- (BOOL)hasValidWidth
{
  mGeometry = self->mGeometry;
  if (!mGeometry)
  {
    return 1;
  }

  mFlags = self->super.mFlags;
  v4 = mFlags >> 28;
  v5 = BYTE3(mFlags) & 0xF;
  v6 = (mGeometry + 16);
  v7 = &mGeometry[48 * (self->super.mFlags >> 28) + 16];
  if (self->super.mFlags >> 28 > v5)
  {
    v7 = (mGeometry + 16);
  }

  v8 = &mGeometry[72 * v4 + 16];
  if (v4 > v5)
  {
    v8 = v6;
  }

  if ((mFlags & 0x40) == 0)
  {
    v8 = v7;
  }

  return *v8 >= 0.0;
}

- (double)width
{
  mGeometry = self->mGeometry;
  if (!mGeometry)
  {
    return 2.0;
  }

  mFlags = self->super.mFlags;
  v4 = mFlags >> 28;
  v5 = BYTE3(mFlags) & 0xF;
  v6 = (mGeometry + 16);
  v7 = &mGeometry[48 * (self->super.mFlags >> 28) + 16];
  if (self->super.mFlags >> 28 > v5)
  {
    v7 = (mGeometry + 16);
  }

  v8 = &mGeometry[72 * v4 + 16];
  if (v4 > v5)
  {
    v8 = v6;
  }

  if ((mFlags & 0x40) == 0)
  {
    v8 = v7;
  }

  result = *v8;
  if (*v8 < 0.0)
  {
    NSLog(@"Calling width on plug with absolute aspect ratio and height set", a2, result);
    return 0.0;
  }

  return result;
}

- (double)height
{
  mGeometry = self->mGeometry;
  if (!mGeometry)
  {
    return 2.0;
  }

  mFlags = self->super.mFlags;
  v4 = mFlags >> 28;
  v5 = BYTE3(mFlags) & 0xF;
  v6 = (mGeometry + 24);
  v7 = &mGeometry[48 * (self->super.mFlags >> 28) + 24];
  if (self->super.mFlags >> 28 > v5)
  {
    v7 = (mGeometry + 24);
  }

  v8 = &mGeometry[72 * v4 + 24];
  if (v4 > v5)
  {
    v8 = v6;
  }

  if ((mFlags & 0x40) == 0)
  {
    v8 = v7;
  }

  result = *v8;
  if (*v8 < 0.0)
  {
    NSLog(@"Calling height on plug with absolute aspect ratio and width set", a2, result);
    return 0.0;
  }

  return result;
}

- (double)aspectRatio
{
  mGeometry = self->mGeometry;
  result = 1.0;
  if (mGeometry)
  {
    mFlags = self->super.mFlags;
    v5 = mFlags >> 28;
    v6 = BYTE3(mFlags) & 0xF;
    v7 = (mGeometry + 16);
    v8 = (mGeometry + 24);
    v9 = &mGeometry[48 * (self->super.mFlags >> 28)];
    v10 = (v9 + 16);
    v11 = (v9 + 24);
    if (self->super.mFlags >> 28 > v6)
    {
      v10 = (mGeometry + 16);
      v11 = (mGeometry + 24);
    }

    v12 = v5 > v6;
    v13 = &mGeometry[72 * v5];
    v14 = (v13 + 16);
    v15 = (v13 + 24);
    if (v12)
    {
      v14 = v7;
      v15 = v8;
    }

    if ((mFlags & 0x40) != 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = v10;
    }

    if ((self->super.mFlags & 0x40) == 0)
    {
      v15 = v11;
    }

    v17 = *v16;
    if (*v16 >= 0.0)
    {
      v18 = *v15;
      if (*v15 >= 0.0)
      {
        if (*v15 > 0.0)
        {
          return v17 / v18;
        }
      }

      else
      {
        return -v18;
      }
    }

    else
    {
      return -v17;
    }
  }

  return result;
}

- (double)aspectRatioForParentAspectRatio:(double)result
{
  mGeometry = self->mGeometry;
  if (mGeometry)
  {
    mFlags = self->super.mFlags;
    v5 = mFlags >> 28;
    v6 = BYTE3(mFlags) & 0xF;
    v7 = (mGeometry + 16);
    v8 = (mGeometry + 24);
    v9 = &mGeometry[48 * (self->super.mFlags >> 28)];
    v10 = (v9 + 16);
    v11 = (v9 + 24);
    if (self->super.mFlags >> 28 > v6)
    {
      v10 = (mGeometry + 16);
      v11 = (mGeometry + 24);
    }

    v12 = v5 > v6;
    v13 = &mGeometry[72 * v5];
    v14 = (v13 + 16);
    v15 = (v13 + 24);
    if (v12)
    {
      v14 = v7;
      v15 = v8;
    }

    if ((mFlags & 0x40) != 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = v10;
    }

    if ((self->super.mFlags & 0x40) == 0)
    {
      v15 = v11;
    }

    v17 = *v16;
    if (*v16 >= 0.0)
    {
      v18 = *v15;
      if (*v15 >= 0.0)
      {
        return v17 * result / v18;
      }

      else
      {
        return -v18;
      }
    }

    else
    {
      return -v17;
    }
  }

  return result;
}

- (CGSize)sizeForParentAspectRatio:(double)ratio
{
  mGeometry = self->mGeometry;
  if (mGeometry)
  {
    mFlags = self->super.mFlags;
    v5 = mFlags >> 28;
    v6 = BYTE3(mFlags) & 0xF;
    v7 = (mGeometry + 16);
    v8 = (mGeometry + 24);
    v9 = &mGeometry[48 * (self->super.mFlags >> 28)];
    v10 = (v9 + 16);
    v11 = (v9 + 24);
    if (self->super.mFlags >> 28 > v6)
    {
      v11 = (mGeometry + 24);
      v10 = (mGeometry + 16);
    }

    v12 = v5 > v6;
    v13 = &mGeometry[72 * v5];
    v14 = (v13 + 16);
    v15 = (v13 + 24);
    if (v12)
    {
      v15 = v8;
      v14 = v7;
    }

    if ((mFlags & 0x40) != 0)
    {
      v16 = v14;
    }

    else
    {
      v15 = v11;
      v16 = v10;
    }

    v17 = *v16;
    v18 = *v15;
    if (*v16 >= 0.0)
    {
      if (v18 < 0.0)
      {
        v18 = -v17 / v18 * ratio;
      }
    }

    else
    {
      v17 = -(v18 * v17) / ratio;
    }
  }

  else
  {
    v18 = 2.0;
    v17 = 2.0;
  }

  v19 = v17;
  result.height = v18;
  result.width = v19;
  return result;
}

- (void)setWidth:(double)width andAbsoluteAspectRatio:(double)ratio
{
  mFlags = self->super.mFlags;
  mGeometry = self->mGeometry;
  v9 = mFlags >> 28;
  if ((mFlags & 0x40) != 0)
  {
    if (mGeometry)
    {
      v12 = BYTE3(mFlags) & 0xF;
      if (v9 <= v12)
      {
        goto LABEL_33;
      }

      LODWORD(v13) = v12 + 1;
    }

    else
    {
      LODWORD(v13) = 0;
    }

    v14 = malloc_type_calloc(v9 + 1, 0x48uLL, 0x1000040FF89C88EuLL);
    self->mGeometry = v14;
    self->super.mFlags = self->super.mFlags & 0xF0FFFFFF | (self->super.mFlags >> 28 << 24) | 0x40;
    v13 = v13;
    if (mGeometry)
    {
      memcpy(v14, mGeometry, 48 * v13);
      free(mGeometry);
      v14 = self->mGeometry;
    }

    if (v13)
    {
      v20 = &v14[72 * v13];
      _Q0 = *(v20 - 56);
      v22 = *(v20 - 72);
      v23 = *(v20 - 40);
      v24 = *(v20 - 3);
      v25 = *(v20 - 1);
      v26 = *&v14[72 * (v13 - 1) + 56];
    }

    else
    {
      v23 = xmmword_163C80;
      __asm { FMOV            V0.2D, #2.0 }

      v22 = 0uLL;
      v25 = 0;
      v24 = 0;
      v26 = 0;
    }

    v33 = &v14[72 * v13 + 64];
    if (!v14)
    {
      goto LABEL_28;
    }

LABEL_27:
    for (i = (HIBYTE(self->super.mFlags) & 0xF) + 1; v13 < i; i = 0)
    {
      *(v33 - 4) = v22;
      *(v33 - 3) = _Q0;
      *(v33 - 2) = v23;
      *(v33 - 1) = v26;
      *v33 = v25;
      ++v13;
      *(v33 - 2) = v24;
      v33 += 72;
      if (v14)
      {
        goto LABEL_27;
      }

LABEL_28:
      ;
    }
  }

  else
  {
    if (mGeometry)
    {
      v10 = BYTE3(mFlags) & 0xF;
      if (v9 <= v10)
      {
        goto LABEL_33;
      }

      LODWORD(v11) = v10 + 1;
    }

    else
    {
      LODWORD(v11) = 0;
    }

    v14 = malloc_type_calloc((v9 + 1), 0x30uLL, 0x1000040EED21634uLL);
    self->mGeometry = v14;
    self->super.mFlags = self->super.mFlags & 0xF0FFFFFF | (self->super.mFlags >> 28 << 24);
    v11 = v11;
    if (mGeometry)
    {
      memcpy(v14, mGeometry, 48 * v11);
      free(mGeometry);
      v14 = self->mGeometry;
    }

    if (v11)
    {
      v15 = &v14[48 * v11];
      v16 = *(v15 - 1);
      v18 = *(v15 - 3);
      _Q0 = *(v15 - 2);
      v19 = *&v14[48 * (v11 - 1) + 32];
    }

    else
    {
      __asm { FMOV            V0.2D, #2.0 }

      v18 = 0uLL;
      v19 = 0;
      v16 = 1.0;
    }

    v31 = &v14[48 * v11 + 32];
    if (!v14)
    {
      goto LABEL_21;
    }

LABEL_20:
    for (j = (HIBYTE(self->super.mFlags) & 0xF) + 1; v11 < j; j = 0)
    {
      *(v31 - 2) = v18;
      *(v31 - 1) = _Q0;
      ++v11;
      *v31 = v19;
      *(v31 + 1) = v16;
      v31 += 48;
      if (v14)
      {
        goto LABEL_20;
      }

LABEL_21:
      ;
    }
  }

  mGeometry = v14;
LABEL_33:
  if ((self->super.mFlags & 0x40) != 0)
  {
    v35 = &mGeometry[72 * (self->super.mFlags >> 28) + 16];
  }

  else
  {
    v35 = &mGeometry[48 * (self->super.mFlags >> 28) + 16];
  }

  *v35 = width;
  v35[1] = -ratio;
}

- (void)setHeight:(double)height andAbsoluteAspectRatio:(double)ratio
{
  mFlags = self->super.mFlags;
  mGeometry = self->mGeometry;
  v9 = mFlags >> 28;
  if ((mFlags & 0x40) != 0)
  {
    if (mGeometry)
    {
      v12 = BYTE3(mFlags) & 0xF;
      if (v9 <= v12)
      {
        goto LABEL_33;
      }

      LODWORD(v13) = v12 + 1;
    }

    else
    {
      LODWORD(v13) = 0;
    }

    v14 = malloc_type_calloc(v9 + 1, 0x48uLL, 0x1000040FF89C88EuLL);
    self->mGeometry = v14;
    self->super.mFlags = self->super.mFlags & 0xF0FFFFFF | (self->super.mFlags >> 28 << 24) | 0x40;
    v13 = v13;
    if (mGeometry)
    {
      memcpy(v14, mGeometry, 48 * v13);
      free(mGeometry);
      v14 = self->mGeometry;
    }

    if (v13)
    {
      v20 = &v14[72 * v13];
      _Q0 = *(v20 - 56);
      v22 = *(v20 - 72);
      v23 = *(v20 - 40);
      v24 = *(v20 - 3);
      v25 = *(v20 - 1);
      v26 = *&v14[72 * (v13 - 1) + 56];
    }

    else
    {
      v23 = xmmword_163C80;
      __asm { FMOV            V0.2D, #2.0 }

      v22 = 0uLL;
      v25 = 0;
      v24 = 0;
      v26 = 0;
    }

    v33 = &v14[72 * v13 + 64];
    if (!v14)
    {
      goto LABEL_28;
    }

LABEL_27:
    for (i = (HIBYTE(self->super.mFlags) & 0xF) + 1; v13 < i; i = 0)
    {
      *(v33 - 4) = v22;
      *(v33 - 3) = _Q0;
      *(v33 - 2) = v23;
      *(v33 - 1) = v26;
      *v33 = v25;
      ++v13;
      *(v33 - 2) = v24;
      v33 += 72;
      if (v14)
      {
        goto LABEL_27;
      }

LABEL_28:
      ;
    }
  }

  else
  {
    if (mGeometry)
    {
      v10 = BYTE3(mFlags) & 0xF;
      if (v9 <= v10)
      {
        goto LABEL_33;
      }

      LODWORD(v11) = v10 + 1;
    }

    else
    {
      LODWORD(v11) = 0;
    }

    v14 = malloc_type_calloc((v9 + 1), 0x30uLL, 0x1000040EED21634uLL);
    self->mGeometry = v14;
    self->super.mFlags = self->super.mFlags & 0xF0FFFFFF | (self->super.mFlags >> 28 << 24);
    v11 = v11;
    if (mGeometry)
    {
      memcpy(v14, mGeometry, 48 * v11);
      free(mGeometry);
      v14 = self->mGeometry;
    }

    if (v11)
    {
      v15 = &v14[48 * v11];
      v16 = *(v15 - 1);
      v18 = *(v15 - 3);
      _Q0 = *(v15 - 2);
      v19 = *&v14[48 * (v11 - 1) + 32];
    }

    else
    {
      __asm { FMOV            V0.2D, #2.0 }

      v18 = 0uLL;
      v19 = 0;
      v16 = 1.0;
    }

    v31 = &v14[48 * v11 + 32];
    if (!v14)
    {
      goto LABEL_21;
    }

LABEL_20:
    for (j = (HIBYTE(self->super.mFlags) & 0xF) + 1; v11 < j; j = 0)
    {
      *(v31 - 2) = v18;
      *(v31 - 1) = _Q0;
      ++v11;
      *v31 = v19;
      *(v31 + 1) = v16;
      v31 += 48;
      if (v14)
      {
        goto LABEL_20;
      }

LABEL_21:
      ;
    }
  }

  mGeometry = v14;
LABEL_33:
  if ((self->super.mFlags & 0x40) != 0)
  {
    v35 = &mGeometry[72 * (self->super.mFlags >> 28) + 16];
  }

  else
  {
    v35 = &mGeometry[48 * (self->super.mFlags >> 28) + 16];
  }

  *v35 = -ratio;
  v35[1] = height;
}

- (double)scale
{
  mGeometry = self->mGeometry;
  if (!mGeometry)
  {
    return 1.0;
  }

  mFlags = self->super.mFlags;
  v4 = mFlags >> 28;
  v5 = BYTE3(mFlags) & 0xF;
  v6 = (mGeometry + 40);
  v7 = &mGeometry[48 * (self->super.mFlags >> 28) + 40];
  if (self->super.mFlags >> 28 > v5)
  {
    v7 = (mGeometry + 40);
  }

  v8 = &mGeometry[72 * v4 + 40];
  if (v4 > v5)
  {
    v8 = v6;
  }

  if ((mFlags & 0x40) == 0)
  {
    v8 = v7;
  }

  return *v8;
}

- (void)setScale:(double)scale
{
  mGeometry = self->mGeometry;
  if (scale == 1.0 && mGeometry == 0)
  {
    return;
  }

  mFlags = self->super.mFlags;
  v8 = mFlags >> 28;
  if ((mFlags & 0x40) != 0)
  {
    if (mGeometry)
    {
      v11 = BYTE3(mFlags) & 0xF;
      if (v8 <= v11)
      {
        goto LABEL_37;
      }

      LODWORD(v12) = v11 + 1;
    }

    else
    {
      LODWORD(v12) = 0;
    }

    v13 = malloc_type_calloc(v8 + 1, 0x48uLL, 0x1000040FF89C88EuLL);
    self->mGeometry = v13;
    self->super.mFlags = self->super.mFlags & 0xF0FFFFFF | (self->super.mFlags >> 28 << 24) | 0x40;
    v12 = v12;
    if (mGeometry)
    {
      memcpy(v13, mGeometry, 48 * v12);
      free(mGeometry);
      v13 = self->mGeometry;
    }

    if (v12)
    {
      v19 = &v13[72 * v12];
      _Q0 = *(v19 - 56);
      v21 = *(v19 - 72);
      v22 = *(v19 - 40);
      v23 = *(v19 - 3);
      v24 = *(v19 - 1);
      v25 = *&v13[72 * (v12 - 1) + 56];
    }

    else
    {
      v22 = xmmword_163C80;
      __asm { FMOV            V0.2D, #2.0 }

      v21 = 0uLL;
      v24 = 0;
      v23 = 0;
      v25 = 0;
    }

    v31 = &v13[72 * v12 + 64];
    if (!v13)
    {
      goto LABEL_32;
    }

LABEL_31:
    for (i = (HIBYTE(self->super.mFlags) & 0xF) + 1; v12 < i; i = 0)
    {
      *(v31 - 4) = v21;
      *(v31 - 3) = _Q0;
      *(v31 - 2) = v22;
      *(v31 - 1) = v25;
      *v31 = v24;
      ++v12;
      *(v31 - 2) = v23;
      v31 += 72;
      if (v13)
      {
        goto LABEL_31;
      }

LABEL_32:
      ;
    }

    goto LABEL_36;
  }

  if (!mGeometry)
  {
    LODWORD(v10) = 0;
    goto LABEL_13;
  }

  v9 = BYTE3(mFlags) & 0xF;
  if (v8 > v9)
  {
    LODWORD(v10) = v9 + 1;
LABEL_13:
    v13 = malloc_type_calloc((v8 + 1), 0x30uLL, 0x1000040EED21634uLL);
    self->mGeometry = v13;
    self->super.mFlags = self->super.mFlags & 0xF0FFFFFF | (self->super.mFlags >> 28 << 24);
    v10 = v10;
    if (mGeometry)
    {
      memcpy(v13, mGeometry, 48 * v10);
      free(mGeometry);
      v13 = self->mGeometry;
    }

    if (v10)
    {
      v14 = &v13[48 * v10];
      v15 = *(v14 - 1);
      v17 = *(v14 - 3);
      _Q0 = *(v14 - 2);
      v18 = *&v13[48 * (v10 - 1) + 32];
    }

    else
    {
      __asm { FMOV            V0.2D, #2.0 }

      v17 = 0uLL;
      v18 = 0;
      v15 = 1.0;
    }

    v29 = &v13[48 * v10 + 32];
    if (!v13)
    {
      goto LABEL_25;
    }

LABEL_24:
    for (j = (HIBYTE(self->super.mFlags) & 0xF) + 1; v10 < j; j = 0)
    {
      *(v29 - 2) = v17;
      *(v29 - 1) = _Q0;
      ++v10;
      *v29 = v18;
      *(v29 + 1) = v15;
      v29 += 48;
      if (v13)
      {
        goto LABEL_24;
      }

LABEL_25:
      ;
    }

LABEL_36:
    mGeometry = v13;
  }

LABEL_37:
  if ((self->super.mFlags & 0x40) != 0)
  {
    v33 = &mGeometry[72 * (self->super.mFlags >> 28) + 40];
  }

  else
  {
    v33 = &mGeometry[48 * (self->super.mFlags >> 28) + 40];
  }

  *v33 = scale;
}

- (double)rotation
{
  mGeometry = self->mGeometry;
  if (!mGeometry)
  {
    return 0.0;
  }

  mFlags = self->super.mFlags;
  v4 = mFlags >> 28;
  v5 = BYTE3(mFlags) & 0xF;
  v6 = (mGeometry + 32);
  v7 = &mGeometry[48 * (self->super.mFlags >> 28) + 32];
  if (self->super.mFlags >> 28 > v5)
  {
    v7 = (mGeometry + 32);
  }

  v8 = &mGeometry[72 * v4 + 32];
  if (v4 > v5)
  {
    v8 = v6;
  }

  if ((mFlags & 0x40) == 0)
  {
    v8 = v7;
  }

  return *v8;
}

- (void)setRotation:(double)rotation
{
  mGeometry = self->mGeometry;
  if (rotation == 0.0 && mGeometry == 0)
  {
    return;
  }

  mFlags = self->super.mFlags;
  v8 = mFlags >> 28;
  if ((mFlags & 0x40) != 0)
  {
    if (mGeometry)
    {
      v11 = BYTE3(mFlags) & 0xF;
      if (v8 <= v11)
      {
        goto LABEL_37;
      }

      LODWORD(v12) = v11 + 1;
    }

    else
    {
      LODWORD(v12) = 0;
    }

    v13 = malloc_type_calloc(v8 + 1, 0x48uLL, 0x1000040FF89C88EuLL);
    self->mGeometry = v13;
    self->super.mFlags = self->super.mFlags & 0xF0FFFFFF | (self->super.mFlags >> 28 << 24) | 0x40;
    v12 = v12;
    if (mGeometry)
    {
      memcpy(v13, mGeometry, 48 * v12);
      free(mGeometry);
      v13 = self->mGeometry;
    }

    if (v12)
    {
      v19 = &v13[72 * v12];
      _Q0 = *(v19 - 56);
      v21 = *(v19 - 72);
      v22 = *(v19 - 40);
      v23 = *(v19 - 3);
      v24 = *(v19 - 1);
      v25 = *&v13[72 * (v12 - 1) + 56];
    }

    else
    {
      v22 = xmmword_163C80;
      __asm { FMOV            V0.2D, #2.0 }

      v21 = 0uLL;
      v24 = 0;
      v23 = 0;
      v25 = 0;
    }

    v31 = &v13[72 * v12 + 64];
    if (!v13)
    {
      goto LABEL_32;
    }

LABEL_31:
    for (i = (HIBYTE(self->super.mFlags) & 0xF) + 1; v12 < i; i = 0)
    {
      *(v31 - 4) = v21;
      *(v31 - 3) = _Q0;
      *(v31 - 2) = v22;
      *(v31 - 1) = v25;
      *v31 = v24;
      ++v12;
      *(v31 - 2) = v23;
      v31 += 72;
      if (v13)
      {
        goto LABEL_31;
      }

LABEL_32:
      ;
    }

    goto LABEL_36;
  }

  if (!mGeometry)
  {
    LODWORD(v10) = 0;
    goto LABEL_13;
  }

  v9 = BYTE3(mFlags) & 0xF;
  if (v8 > v9)
  {
    LODWORD(v10) = v9 + 1;
LABEL_13:
    v13 = malloc_type_calloc((v8 + 1), 0x30uLL, 0x1000040EED21634uLL);
    self->mGeometry = v13;
    self->super.mFlags = self->super.mFlags & 0xF0FFFFFF | (self->super.mFlags >> 28 << 24);
    v10 = v10;
    if (mGeometry)
    {
      memcpy(v13, mGeometry, 48 * v10);
      free(mGeometry);
      v13 = self->mGeometry;
    }

    if (v10)
    {
      v14 = &v13[48 * v10];
      v15 = *(v14 - 1);
      v17 = *(v14 - 3);
      _Q0 = *(v14 - 2);
      v18 = *&v13[48 * (v10 - 1) + 32];
    }

    else
    {
      __asm { FMOV            V0.2D, #2.0 }

      v17 = 0uLL;
      v18 = 0;
      v15 = 1.0;
    }

    v29 = &v13[48 * v10 + 32];
    if (!v13)
    {
      goto LABEL_25;
    }

LABEL_24:
    for (j = (HIBYTE(self->super.mFlags) & 0xF) + 1; v10 < j; j = 0)
    {
      *(v29 - 2) = v17;
      *(v29 - 1) = _Q0;
      ++v10;
      *v29 = v18;
      *(v29 + 1) = v15;
      v29 += 48;
      if (v13)
      {
        goto LABEL_24;
      }

LABEL_25:
      ;
    }

LABEL_36:
    mGeometry = v13;
  }

LABEL_37:
  if ((self->super.mFlags & 0x40) != 0)
  {
    v33 = &mGeometry[72 * (self->super.mFlags >> 28) + 32];
  }

  else
  {
    v33 = &mGeometry[48 * (self->super.mFlags >> 28) + 32];
  }

  *v33 = rotation;
}

- (double)positionZ
{
  result = 0.0;
  if ((self->super.mFlags & 0x40) != 0)
  {
    return *(self->mGeometry + 9 * (self->super.mFlags >> 28) + 6);
  }

  return result;
}

- (void)setPositionZ:(double)z
{
  mGeometry = self->mGeometry;
  if (z != 0.0 || mGeometry != 0)
  {
    mFlags = self->super.mFlags;
    v8 = mFlags >> 28;
    if (mGeometry)
    {
      v9 = BYTE3(mFlags) & 0xF;
      if ((mFlags & 0x40) != 0 && v8 <= v9)
      {
LABEL_33:
        mGeometry[9 * v8 + 6] = z;
        return;
      }

      v10 = v9 + 1;
      if ((mFlags & 0x40) != 0)
      {
        v11 = self->mGeometry;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v12 = malloc_type_calloc(v8 + 1, 0x48uLL, 0x1000040FF89C88EuLL);
    self->mGeometry = v12;
    self->super.mFlags = self->super.mFlags & 0xF0FFFFFF | (self->super.mFlags >> 28 << 24) | 0x40;
    if (v11)
    {
      memcpy(v12, v11, 48 * v10);
      v13 = v11;
    }

    else
    {
      if (!mGeometry)
      {
LABEL_23:
        mGeometry = self->mGeometry;
        v21 = v10;
        if (v10)
        {
          v22 = &mGeometry[9 * v10];
          _Q0 = *(v22 - 7);
          v24 = *(v22 - 9);
          v25 = *(v22 - 5);
          v26 = *(v22 - 3);
          v27 = *(v22 - 1);
          v28 = mGeometry[9 * v10 - 2];
        }

        else
        {
          v25 = xmmword_163C80;
          __asm { FMOV            V0.2D, #2.0 }

          v24 = 0uLL;
          v27 = 0;
          v26 = 0;
          v28 = 0.0;
        }

        v32 = &mGeometry[9 * v10 + 8];
        if (!mGeometry)
        {
          goto LABEL_28;
        }

LABEL_27:
        for (i = (HIBYTE(self->super.mFlags) & 0xF) + 1; v21 < i; i = 0)
        {
          *(v32 - 4) = v24;
          *(v32 - 3) = _Q0;
          *(v32 - 2) = v25;
          *(v32 - 1) = v28;
          *v32 = v27;
          ++v21;
          *(v32 - 2) = v26;
          v32 += 9;
          if (mGeometry)
          {
            goto LABEL_27;
          }

LABEL_28:
          ;
        }

        LODWORD(v8) = self->super.mFlags >> 28;
        goto LABEL_33;
      }

      v14 = 0;
      v15 = 0;
      v16 = mGeometry;
      if (!v12)
      {
        goto LABEL_17;
      }

LABEL_16:
      for (j = (HIBYTE(self->super.mFlags) & 0xF) + 1; v15 < j; j = 0)
      {
        v18 = &v12[v14];
        v19 = *v16;
        v20 = *(v16 + 2);
        *(v18 + 1) = *(v16 + 1);
        *(v18 + 2) = v20;
        *v18 = v19;
        ++v15;
        v12 = self->mGeometry;
        v14 += 72;
        v16 += 6;
        if (v12)
        {
          goto LABEL_16;
        }

LABEL_17:
        ;
      }

      v13 = mGeometry;
    }

    free(v13);
    goto LABEL_23;
  }
}

- (double)rotationX
{
  result = 0.0;
  if ((self->super.mFlags & 0x40) != 0)
  {
    return *(self->mGeometry + 9 * (self->super.mFlags >> 28) + 7);
  }

  return result;
}

- (void)setRotationX:(double)x
{
  mGeometry = self->mGeometry;
  if (x != 0.0 || mGeometry != 0)
  {
    mFlags = self->super.mFlags;
    v8 = mFlags >> 28;
    if (mGeometry)
    {
      v9 = BYTE3(mFlags) & 0xF;
      if ((mFlags & 0x40) != 0 && v8 <= v9)
      {
LABEL_33:
        mGeometry[9 * v8 + 7] = x;
        return;
      }

      v10 = v9 + 1;
      if ((mFlags & 0x40) != 0)
      {
        v11 = self->mGeometry;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v12 = malloc_type_calloc(v8 + 1, 0x48uLL, 0x1000040FF89C88EuLL);
    self->mGeometry = v12;
    self->super.mFlags = self->super.mFlags & 0xF0FFFFFF | (self->super.mFlags >> 28 << 24) | 0x40;
    if (v11)
    {
      memcpy(v12, v11, 48 * v10);
      v13 = v11;
    }

    else
    {
      if (!mGeometry)
      {
LABEL_23:
        mGeometry = self->mGeometry;
        v21 = v10;
        if (v10)
        {
          v22 = &mGeometry[9 * v10];
          _Q0 = *(v22 - 7);
          v24 = *(v22 - 9);
          v25 = *(v22 - 5);
          v26 = *(v22 - 3);
          v27 = *(v22 - 1);
          v28 = mGeometry[9 * v10 - 2];
        }

        else
        {
          v25 = xmmword_163C80;
          __asm { FMOV            V0.2D, #2.0 }

          v24 = 0uLL;
          v27 = 0;
          v26 = 0;
          v28 = 0.0;
        }

        v32 = &mGeometry[9 * v10 + 8];
        if (!mGeometry)
        {
          goto LABEL_28;
        }

LABEL_27:
        for (i = (HIBYTE(self->super.mFlags) & 0xF) + 1; v21 < i; i = 0)
        {
          *(v32 - 4) = v24;
          *(v32 - 3) = _Q0;
          *(v32 - 2) = v25;
          *(v32 - 1) = v28;
          *v32 = v27;
          ++v21;
          *(v32 - 2) = v26;
          v32 += 9;
          if (mGeometry)
          {
            goto LABEL_27;
          }

LABEL_28:
          ;
        }

        LODWORD(v8) = self->super.mFlags >> 28;
        goto LABEL_33;
      }

      v14 = 0;
      v15 = 0;
      v16 = mGeometry;
      if (!v12)
      {
        goto LABEL_17;
      }

LABEL_16:
      for (j = (HIBYTE(self->super.mFlags) & 0xF) + 1; v15 < j; j = 0)
      {
        v18 = &v12[v14];
        v19 = *v16;
        v20 = *(v16 + 2);
        *(v18 + 1) = *(v16 + 1);
        *(v18 + 2) = v20;
        *v18 = v19;
        ++v15;
        v12 = self->mGeometry;
        v14 += 72;
        v16 += 6;
        if (v12)
        {
          goto LABEL_16;
        }

LABEL_17:
        ;
      }

      v13 = mGeometry;
    }

    free(v13);
    goto LABEL_23;
  }
}

- (double)rotationY
{
  result = 0.0;
  if ((self->super.mFlags & 0x40) != 0)
  {
    return *(self->mGeometry + 9 * (self->super.mFlags >> 28) + 8);
  }

  return result;
}

- (void)setRotationY:(double)y
{
  mGeometry = self->mGeometry;
  if (y != 0.0 || mGeometry != 0)
  {
    mFlags = self->super.mFlags;
    v8 = mFlags >> 28;
    if (mGeometry)
    {
      v9 = BYTE3(mFlags) & 0xF;
      if ((mFlags & 0x40) != 0 && v8 <= v9)
      {
LABEL_33:
        mGeometry[9 * v8 + 8] = y;
        return;
      }

      v10 = v9 + 1;
      if ((mFlags & 0x40) != 0)
      {
        v11 = self->mGeometry;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v12 = malloc_type_calloc(v8 + 1, 0x48uLL, 0x1000040FF89C88EuLL);
    self->mGeometry = v12;
    self->super.mFlags = self->super.mFlags & 0xF0FFFFFF | (self->super.mFlags >> 28 << 24) | 0x40;
    if (v11)
    {
      memcpy(v12, v11, 48 * v10);
      v13 = v11;
    }

    else
    {
      if (!mGeometry)
      {
LABEL_23:
        mGeometry = self->mGeometry;
        v21 = v10;
        if (v10)
        {
          v22 = &mGeometry[9 * v10];
          _Q0 = *(v22 - 7);
          v24 = *(v22 - 9);
          v25 = *(v22 - 5);
          v26 = *(v22 - 3);
          v27 = *(v22 - 1);
          v28 = mGeometry[9 * v10 - 2];
        }

        else
        {
          v25 = xmmword_163C80;
          __asm { FMOV            V0.2D, #2.0 }

          v24 = 0uLL;
          v27 = 0;
          v26 = 0;
          v28 = 0.0;
        }

        v32 = &mGeometry[9 * v10 + 8];
        if (!mGeometry)
        {
          goto LABEL_28;
        }

LABEL_27:
        for (i = (HIBYTE(self->super.mFlags) & 0xF) + 1; v21 < i; i = 0)
        {
          *(v32 - 4) = v24;
          *(v32 - 3) = _Q0;
          *(v32 - 2) = v25;
          *(v32 - 1) = v28;
          *v32 = v27;
          ++v21;
          *(v32 - 2) = v26;
          v32 += 9;
          if (mGeometry)
          {
            goto LABEL_27;
          }

LABEL_28:
          ;
        }

        LODWORD(v8) = self->super.mFlags >> 28;
        goto LABEL_33;
      }

      v14 = 0;
      v15 = 0;
      v16 = mGeometry;
      if (!v12)
      {
        goto LABEL_17;
      }

LABEL_16:
      for (j = (HIBYTE(self->super.mFlags) & 0xF) + 1; v15 < j; j = 0)
      {
        v18 = &v12[v14];
        v19 = *v16;
        v20 = *(v16 + 2);
        *(v18 + 1) = *(v16 + 1);
        *(v18 + 2) = v20;
        *v18 = v19;
        ++v15;
        v12 = self->mGeometry;
        v14 += 72;
        v16 += 6;
        if (v12)
        {
          goto LABEL_16;
        }

LABEL_17:
        ;
      }

      v13 = mGeometry;
    }

    free(v13);
    goto LABEL_23;
  }
}

- (void)setIsTriggered:(BOOL)triggered
{
  if (triggered)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->super.mFlags = self->super.mFlags & 0xFFFFFFEF | v3;
}

- (void)setResetsTimeOnTrigger:(BOOL)trigger
{
  if (trigger)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->super.mFlags = self->super.mFlags & 0xFFFFFFDF | v3;
}

- (void)setClipsContainer:(BOOL)container
{
  if (container)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->super.mFlags = self->super.mFlags & 0xFFFFFF7F | v3;
}

- (unsigned)countOfLayouts
{
  if (self->mGeometry)
  {
    return (HIBYTE(self->super.mFlags) & 0xF) + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v8.receiver = self;
  v8.super_class = MCPlugParallel;
  [(MCPlug *)&v8 _copySelfToSnapshot:?];
  *(snapshot + 15) = *&self->mTimeIn;
  *(snapshot + 48) = self->mZIndex;
  *(snapshot + 49) = self->mAudioPriority;
  *(snapshot + 16) = *&self->mOpacity;
  if (self->mGeometry)
  {
    v5 = 72;
    if ((self->super.mFlags & 0x40) == 0)
    {
      v5 = 48;
    }

    v6 = v5 + v5 * (HIBYTE(self->super.mFlags) & 0xF);
    v7 = malloc_type_malloc(v6, 0xE2E202F9uLL);
    *(snapshot + 11) = v7;
    memcpy(v7, self->mGeometry, v6);
  }
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = MCPlugParallel;
  result = [-[MCPlugParallel description](&v11 "description")];
  mGeometry = self->mGeometry;
  if (mGeometry)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
LABEL_3:
    for (i = (HIBYTE(self->super.mFlags) & 0xF) + 1; v7 < i; i = 0)
    {
      v9 = &mGeometry[v6];
      if ((self->super.mFlags & 0x40) != 0)
      {
        v10 = v6;
      }

      else
      {
        v10 = v5;
      }

      if ((self->super.mFlags & 0x40) == 0)
      {
        v9 = &mGeometry[v5];
      }

      result = [result stringByAppendingFormat:@"\n\t\tposition=(%f, %f), size=(%f, %f), scale=%f, rotation=%f", *&mGeometry[v10], *(v9 + 1), *(v9 + 2), *(v9 + 3), *(v9 + 5), *(v9 + 4)];
      if ((self->super.mFlags & 0x40) != 0)
      {
        result = [result stringByAppendingFormat:@"\n\t\t\tpositionZ=%f, rotationX=%f, rotationY=%f", *(self->mGeometry + v6 + 48), *(self->mGeometry + v6 + 56), *(self->mGeometry + v6 + 64)];
      }

      ++v7;
      mGeometry = self->mGeometry;
      v6 += 72;
      v5 += 48;
      if (mGeometry)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

@end