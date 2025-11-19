@interface PVPanAndZoomManager
+ (CGPoint)adjustPositionToKeepMediaInViewBounds:(CGPoint)a3 scale:(double)a4 minScale:(double)a5 mediaAspectRatio:(double)a6 viewAspectRatio:(double)a7 fillMode:(int)a8 outNeedsUpdate:(BOOL *)a9;
+ (CGPoint)maximumNormalizedPositionForScale:(double)a3 minScale:(double)a4 position:(CGPoint)a5 mediaAspectRatio:(double)a6 viewAspectRatio:(double)a7 fillMode:(int)a8;
+ (PVTransformAnimationInfo)transformAnimInfoForScale:(SEL)a3 atNormalizedLocationInView:(double)a4 minScale:(CGPoint)a5 currentScale:(double)a6 currentTranslation:(double)a7 mediaAspectRatio:(CGPoint)a8 viewAspectRatio:(double)a9 fillMode:(double)a10 outNeedsUpdate:(int)a11;
+ (double)calculateMaxScale:(double)result forMediaAspectRatio:(double)a4 viewAspectRatio:(double)a5 fillMode:(int)a6;
+ (double)calculateMinScaleForMediaAspectRatio:(double)a3 viewAspectRatio:(double)a4 fillMode:(int)a5;
+ (double)maximumNormalizedPositionInAxisForScale:(double)a3 minScale:(double)a4 isMediaAxisNormal:(BOOL)a5 isPositionBelowZero:(BOOL)a6;
+ (id)panAndZoomManagerWithMediaSize:(CGSize)a3 viewSize:(CGSize)a4 fillMode:(int)a5 maxScale:(double)a6;
- (BOOL)isEditingTransformType:(int)a3;
- (CGSize)mediaSize;
- (CGSize)viewSize;
- (PVPanAndZoomManager)initWithMediaSize:(CGSize)a3 viewSize:(CGSize)a4 fillMode:(int)a5 maxScale:(double)a6;
- (PVTransformAnimationInfo)endEditingTransformForType:(SEL)a3;
- (PVTransformAnimationInfo)updateRotation:(SEL)a3 normalizedLocationInView:(double)a4 outNeedsUpdate:(CGPoint)a5;
- (PVTransformAnimationInfo)updateScale:(SEL)a3 normalizedLocationInView:(double)a4 outNeedsUpdate:(CGPoint)a5;
- (PVTransformAnimationInfo)updateTranslation:(SEL)a3 outNeedsUpdate:(CGPoint)a4;
- (void)beginEditingTransform:(PVTransformAnimationInfo *)a3 transformType:(int)a4 updateOtherWorkingTransforms:(BOOL)a5;
- (void)cancelEditing;
- (void)cancelSnapTimer;
- (void)setFillMode:(int)a3;
- (void)setIsEditingTransform:(BOOL)a3 type:(int)a4;
- (void)setMaxScale:(double)a3;
- (void)setMediaSize:(CGSize)a3;
- (void)setViewSize:(CGSize)a3;
- (void)updateMediaAspectRatio;
- (void)updateViewAspectRatio;
@end

@implementation PVPanAndZoomManager

+ (id)panAndZoomManagerWithMediaSize:(CGSize)a3 viewSize:(CGSize)a4 fillMode:(int)a5 maxScale:(double)a6
{
  v6 = [[a1 alloc] initWithMediaSize:*&a5 viewSize:a3.width fillMode:a3.height maxScale:{a4.width, a4.height, a6}];

  return v6;
}

- (PVPanAndZoomManager)initWithMediaSize:(CGSize)a3 viewSize:(CGSize)a4 fillMode:(int)a5 maxScale:(double)a6
{
  height = a4.height;
  width = a4.width;
  v10 = a3.height;
  v11 = a3.width;
  v17.receiver = self;
  v17.super_class = PVPanAndZoomManager;
  v12 = [(PVPanAndZoomManager *)&v17 init];
  v13 = v12;
  if (v12)
  {
    [(PVPanAndZoomManager *)v12 cancelEditing];
    v13->_mediaSize.width = v11;
    v13->_mediaSize.height = v10;
    [(PVPanAndZoomManager *)v13 updateMediaAspectRatio];
    v13->_viewSize.width = width;
    v13->_viewSize.height = height;
    [(PVPanAndZoomManager *)v13 updateViewAspectRatio];
    v13->_fillMode = a5;
    [(PVPanAndZoomManager *)v13 updateMinScale];
    v14 = 3.0;
    if (fabs(a6) >= 0.0000001)
    {
      v14 = a6;
    }

    v13->_maxScale = v14;
    [(PVPanAndZoomManager *)v13 updateMaxScale];
    v13->_skipFirstSnap = 0;
    v13->_isZoomSnapEnabled = 1;
    v13->_zoomSnapScale = 1.0;
    v13->_zoomSnapThreshold = 0.01;
    snapTimer = v13->_snapTimer;
    v13->_scaleWhileSnapped = 1.0;
    v13->_snapTimer = 0;

    v13->_isTranslationDirectionLockEnabled = 0;
    v13->_translationDirectionLockThreshold = 5.0;
  }

  return v13;
}

- (void)beginEditingTransform:(PVTransformAnimationInfo *)a3 transformType:(int)a4 updateOtherWorkingTransforms:(BOOL)a5
{
  v5 = a5;
  [(PVPanAndZoomManager *)self setIsEditingTransform:1 type:?];
  switch(a4)
  {
    case 2:
      v15 = *&a3->time.value;
      v16 = *&a3->time.epoch;
      v17 = *&a3->translation.y;
      self->_workingTransformRotate.rotation = a3->rotation;
      *&self->_workingTransformRotate.translation.y = v17;
      *&self->_workingTransformRotate.time.epoch = v16;
      *&self->_workingTransformRotate.time.value = v15;
      break;
    case 1:
      v12 = *&a3->time.value;
      v13 = *&a3->time.epoch;
      v14 = *&a3->translation.y;
      self->_workingTransformScale.rotation = a3->rotation;
      *&self->_workingTransformScale.time.epoch = v13;
      *&self->_workingTransformScale.translation.y = v14;
      *&self->_workingTransformScale.time.value = v12;
      if (v5)
      {
        self->_workingTransformTranslate.scale = self->_workingTransformScale.scale;
      }

      if (self->_isEditingTranslate)
      {
        self->_workingTransformScale.translation = self->_workingTransformTranslate.translation;
      }

      self->_skipFirstSnap = vabdd_f64(self->_workingTransformScale.scale, self->_zoomSnapScale) <= self->_zoomSnapThreshold;

      [(PVPanAndZoomManager *)self cancelSnapTimer];
      break;
    case 0:
      v9 = *&a3->time.value;
      v10 = *&a3->time.epoch;
      v11 = *&a3->translation.y;
      self->_workingTransformTranslate.rotation = a3->rotation;
      *&self->_workingTransformTranslate.translation.y = v11;
      *&self->_workingTransformTranslate.time.epoch = v10;
      *&self->_workingTransformTranslate.time.value = v9;
      if (v5)
      {
        self->_workingTransformScale.translation = a3->translation;
      }

      if (self->_isEditingScale)
      {
        self->_workingTransformTranslate.scale = self->_workingTransformScale.scale;
      }

      break;
  }
}

- (PVTransformAnimationInfo)endEditingTransformForType:(SEL)a3
{
  result = [(PVPanAndZoomManager *)self setIsEditingTransform:0 type:*&a4];
  if (a4 == 2)
  {
    if (!self->_disableRotation)
    {
      v11 = *&self->_workingTransformRotate.time.epoch;
      *&retstr->time.value = *&self->_workingTransformRotate.time.value;
      *&retstr->time.epoch = v11;
      *&retstr->translation.y = *&self->_workingTransformRotate.translation.y;
      rotation = self->_workingTransformRotate.rotation;
LABEL_17:
      retstr->rotation = rotation;
      return result;
    }
  }

  else if (a4 == 1)
  {
    if (!self->_disableScale)
    {
      result = [(PVPanAndZoomManager *)self cancelSnapTimer];
      if (self->_isEditingTranslate)
      {
        self->_workingTransformTranslate.scale = self->_workingTransformScale.scale;
      }

      v10 = *&self->_workingTransformScale.time.epoch;
      *&retstr->time.value = *&self->_workingTransformScale.time.value;
      *&retstr->time.epoch = v10;
      *&retstr->translation.y = *&self->_workingTransformScale.translation.y;
      rotation = self->_workingTransformScale.rotation;
      goto LABEL_17;
    }
  }

  else if (!a4 && !self->_disableTranslation)
  {
    if (self->_isEditingScale)
    {
      self->_workingTransformScale.translation = self->_workingTransformTranslate.translation;
    }

    v8 = *&self->_workingTransformTranslate.time.epoch;
    *&retstr->time.value = *&self->_workingTransformTranslate.time.value;
    *&retstr->time.epoch = v8;
    *&retstr->translation.y = *&self->_workingTransformTranslate.translation.y;
    rotation = self->_workingTransformTranslate.rotation;
    goto LABEL_17;
  }

  PVTransformAnimationInfoIdentity(retstr);
  return result;
}

- (void)cancelEditing
{
  [(PVPanAndZoomManager *)self cancelSnapTimer];
  *&self->_isEditingTranslate = 0;
  self->_isEditingRotate = 0;
  PVTransformAnimationInfoIdentity(&v6);
  v3 = v7;
  *&self->_workingTransformTranslate.time.value = v6;
  *&self->_workingTransformTranslate.time.epoch = v3;
  *&self->_workingTransformTranslate.translation.y = v8;
  self->_workingTransformTranslate.rotation = v9;
  PVTransformAnimationInfoIdentity(&v6);
  v4 = v7;
  *&self->_workingTransformScale.time.value = v6;
  *&self->_workingTransformScale.time.epoch = v4;
  *&self->_workingTransformScale.translation.y = v8;
  self->_workingTransformScale.rotation = v9;
  PVTransformAnimationInfoIdentity(&v6);
  v5 = v7;
  *&self->_workingTransformRotate.time.value = v6;
  *&self->_workingTransformRotate.time.epoch = v5;
  *&self->_workingTransformRotate.translation.y = v8;
  self->_workingTransformRotate.rotation = v9;
}

- (PVTransformAnimationInfo)updateTranslation:(SEL)a3 outNeedsUpdate:(CGPoint)a4
{
  v17 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  if (!self->_disableTranslation)
  {
    if (self->_isEditingTranslate)
    {
      if (self->_isZoomSnapEnabled && self->_snapTimer)
      {
        a4 = **&MEMORY[0x277CBF348];
      }

      if (self->_isTranslationDirectionLockEnabled)
      {
        v8 = fabs(a4.x);
        v9 = fabs(a4.y);
        translationDirectionLockThreshold = self->_translationDirectionLockThreshold;
        if (v9 <= v8 * translationDirectionLockThreshold)
        {
          if (v8 > v9 * translationDirectionLockThreshold)
          {
            a4.y = 0.0;
          }
        }

        else
        {
          a4.x = 0.0;
        }
      }

      if (self->_isEditingScale)
      {
        self->_workingTransformTranslate.scale = self->_workingTransformScale.scale;
      }

      result = [objc_opt_class() adjustPositionToKeepMediaInViewBounds:self->_fillMode scale:&v17 minScale:a4.x + self->_workingTransformTranslate.translation.x mediaAspectRatio:a4.y + self->_workingTransformTranslate.translation.y viewAspectRatio:self->_workingTransformTranslate.scale fillMode:self->_minScale outNeedsUpdate:{self->_mediaAspectRatio, self->_viewAspectRatio}];
      if ((v17 & 1) == 0 && (self->_workingTransformTranslate.translation.x == v12 ? (v14 = self->_workingTransformTranslate.translation.y == v13) : (v14 = 0), v14))
      {
        v15 = 0;
        if (!a5)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (self->_isEditingScale)
        {
          self->_workingTransformTranslate.scale = self->_workingTransformScale.scale;
        }

        self->_workingTransformTranslate.translation.x = v12;
        self->_workingTransformTranslate.translation.y = v13;
        v15 = 1;
        if (!a5)
        {
          goto LABEL_28;
        }
      }

      *a5 = v15;
LABEL_28:
      v16 = *&self->_workingTransformTranslate.time.epoch;
      *&retstr->time.value = *&self->_workingTransformTranslate.time.value;
      *&retstr->time.epoch = v16;
      *&retstr->translation.y = *&self->_workingTransformTranslate.translation.y;
      retstr->rotation = self->_workingTransformTranslate.rotation;
      return result;
    }

    NSLog(&cfstr_Pvpanandzoomma.isa, a3, a4.x, a4.y);
  }

  PVTransformAnimationInfoIdentity(retstr);
  return result;
}

- (PVTransformAnimationInfo)updateScale:(SEL)a3 normalizedLocationInView:(double)a4 outNeedsUpdate:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = self;
  if (a6)
  {
    *a6 = 0;
  }

  if (BYTE3(self[4].time.epoch) != 1)
  {
    if ((self[3].time.timescale & 0x100) != 0)
    {
      rotation = self[1].rotation;
      v12 = rotation * a4;
      scale = self[3].scale;
      v14 = fmax(v12, self[3].translation.y);
      if (LOBYTE(self[3].time.timescale) == 1)
      {
        *&self[1].translation.y = *&self->translation.y;
      }

      v15 = fmin(v14, scale);
      if (LOBYTE(self[4].time.epoch) != 1)
      {
LABEL_24:
        v16 = v15;
        if (vabdd_f64(rotation, v15) < 0.0001)
        {
          v22 = 0;
          if (!a6)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

LABEL_25:
        v20 = v9[1].translation.y;
        v21 = v9[1].scale;
        memset(v31, 0, 24);
        self = objc_opt_class();
        if (self)
        {
          self = [(PVTransformAnimationInfo *)self transformAnimInfoForScale:LODWORD(v9[4].translation.x) atNormalizedLocationInView:0 minScale:v16 currentScale:x currentTranslation:y mediaAspectRatio:v9[3].translation.y viewAspectRatio:rotation fillMode:v20 outNeedsUpdate:v21, *&v9[3].time.epoch, *&v9[3].translation.x];
        }

        else
        {
          memset(v31, 0, 24);
        }

        v9[1].rotation = 0.0;
        *&v9[1].translation.y = *(v31 + 8);
        if (LOBYTE(v9[3].time.timescale) == 1)
        {
          v9->rotation = 0.0;
          *&v9->translation.y = *(v31 + 8);
        }

        v22 = 1;
        if (!a6)
        {
          goto LABEL_34;
        }

LABEL_33:
        *a6 = v22;
LABEL_34:
        translation = v9[1].translation;
        *&retstr->time.value = *&v9[1].time.timescale;
        *&retstr->time.epoch = translation;
        *&retstr->translation.y = *&v9[1].scale;
        *&retstr->rotation = v9[2].time.value;
        return self;
      }

      if (*&self[4].time.timescale)
      {
        if (v15 <= self[4].rotation + 1.0)
        {
          v19 = v15 * *&self[4].time.value;
          *&self[4].time.value = v19;
          v15 = rotation;
          if (v19 <= 0.75)
          {
            self = [(PVTransformAnimationInfo *)self cancelSnapTimer];
            v15 = 1.0 - (v9[4].rotation + v9[4].rotation);
          }
        }

        else
        {
          self = [(PVTransformAnimationInfo *)self cancelSnapTimer];
        }

        goto LABEL_24;
      }

      v16 = self[4].scale;
      if (v15 >= v16)
      {
        goto LABEL_24;
      }

      v17 = self[4].rotation;
      if (vabdd_f64(rotation, v16) > v17 && rotation < v16 + v17)
      {
        goto LABEL_24;
      }

      if (LOBYTE(self[3].rotation) == 1)
      {
        LOBYTE(self[3].rotation) = 0;
        v15 = v16 - (v17 + v17);
        goto LABEL_24;
      }

      v24 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_onSnapTimer_ selector:0 userInfo:0 repeats:1.0];
      v25 = *&v9[4].time.timescale;
      *&v9[4].time.timescale = v24;

      *&v9[4].time.value = v16;
      v9[1].rotation = v16;
      if (fabs(v9[4].scale + -1.0) >= 0.0001)
      {
        goto LABEL_25;
      }

      v26 = *&v9[3].time.epoch;
      v27 = 0x100000001;
      if (fabs(vsubq_f64(v26, vdupq_laneq_s64(v26, 1)).f64[0]) < 0.0001)
      {
LABEL_41:
        if (v27.i32[0])
        {
          v9[1].translation.y = 0.0;
        }

        if (v27.i32[1])
        {
          v9[1].scale = 0.0;
        }

        goto LABEL_25;
      }

      v28 = 0;
      x_low = LODWORD(v9[4].translation.x);
      if (x_low <= 2)
      {
        if (x_low)
        {
          if (x_low == 1)
          {
            v30 = vcgtq_f64(vextq_s8(v26, v26, 8uLL), v26);
          }

          else
          {
            if (x_low != 2)
            {
              goto LABEL_40;
            }

            v30 = vcgtq_f64(v26, vextq_s8(v26, v26, 8uLL));
          }

          v28 = vmovn_s64(v30);
          goto LABEL_40;
        }
      }

      else if ((x_low - 4) >= 0xA)
      {
        if (x_low == 3)
        {
          v28 = 0x100000001;
        }

        else if (x_low == 14)
        {
          v28 = 0x100000000;
        }

        goto LABEL_40;
      }

      v28 = 1;
LABEL_40:
      v27 = vand_s8(v28, 0x100000001);
      goto LABEL_41;
    }

    NSLog(&cfstr_Pvpanandzoomma_0.isa, a3, a4);
  }

  PVTransformAnimationInfoIdentity(retstr);
  return self;
}

- (PVTransformAnimationInfo)updateRotation:(SEL)a3 normalizedLocationInView:(double)a4 outNeedsUpdate:(CGPoint)a5
{
  if (a6)
  {
    *a6 = 0;
  }

  if (BYTE4(self[4].time.epoch) != 1)
  {
    if ((self[3].time.timescale & 0x10000) != 0)
    {
      if (a6)
      {
        *a6 = 0;
      }

      translation = self[2].translation;
      *&retstr->time.value = *&self[2].time.timescale;
      *&retstr->time.epoch = translation;
      *&retstr->translation.y = *&self[2].scale;
      *&retstr->rotation = self[3].time.value;
      return self;
    }

    NSLog(&cfstr_Pvpanandzoomma_1.isa, a3, a4, a5.x, a5.y);
  }

  PVTransformAnimationInfoIdentity(retstr);
  return self;
}

- (void)cancelSnapTimer
{
  [(NSTimer *)self->_snapTimer invalidate];
  snapTimer = self->_snapTimer;
  self->_snapTimer = 0;
}

- (void)setMediaSize:(CGSize)a3
{
  if (self->_mediaSize.width != a3.width || self->_mediaSize.height != a3.height)
  {
    self->_mediaSize = a3;
    [(PVPanAndZoomManager *)self updateMediaAspectRatio];
    [(PVPanAndZoomManager *)self updateMinScale];

    [(PVPanAndZoomManager *)self updateMaxScale];
  }
}

- (void)updateMediaAspectRatio
{
  height = self->_mediaSize.height;
  v3 = 1.0;
  if (fabs(height) >= 0.0000001)
  {
    v3 = self->_mediaSize.width / height;
  }

  self->_mediaAspectRatio = v3;
}

- (void)setViewSize:(CGSize)a3
{
  if (self->_viewSize.width != a3.width || self->_viewSize.height != a3.height)
  {
    self->_viewSize = a3;
    [(PVPanAndZoomManager *)self updateViewAspectRatio];
    [(PVPanAndZoomManager *)self updateMinScale];

    [(PVPanAndZoomManager *)self updateMaxScale];
  }
}

- (void)updateViewAspectRatio
{
  height = self->_viewSize.height;
  v3 = 1.0;
  if (fabs(height) >= 0.0000001)
  {
    v3 = self->_viewSize.width / height;
  }

  self->_viewAspectRatio = v3;
}

- (void)setFillMode:(int)a3
{
  if (self->_fillMode != a3)
  {
    self->_fillMode = a3;
    [(PVPanAndZoomManager *)self updateMinScale];

    [(PVPanAndZoomManager *)self updateMaxScale];
  }
}

- (void)setMaxScale:(double)a3
{
  if (self->_maxScale != a3)
  {
    self->_maxScale = a3;
    [(PVPanAndZoomManager *)self updateMaxScale];
  }
}

- (BOOL)isEditingTransformType:(int)a3
{
  if (a3 <= 2)
  {
    v3 = *(&self->_isEditingTranslate + a3);
  }

  return v3 & 1;
}

- (void)setIsEditingTransform:(BOOL)a3 type:(int)a4
{
  if (a4 <= 2)
  {
    *(&self->_isEditingTranslate + a4) = a3;
  }
}

+ (PVTransformAnimationInfo)transformAnimInfoForScale:(SEL)a3 atNormalizedLocationInView:(double)a4 minScale:(CGPoint)a5 currentScale:(double)a6 currentTranslation:(double)a7 mediaAspectRatio:(CGPoint)a8 viewAspectRatio:(double)a9 fillMode:(double)a10 outNeedsUpdate:(int)a11
{
  v13 = *&a11;
  y = a8.y;
  x = a8.x;
  v18 = a5.y;
  v19 = a5.x;
  retstr->rotation = 0.0;
  *&retstr->time.epoch = 0u;
  *&retstr->translation.y = 0u;
  *&retstr->time.value = 0u;
  PVTransformAnimationInfoIdentity(retstr);
  v23 = 1.0;
  if (v13 <= 1)
  {
    if (v13)
    {
      v24 = a9;
      if (v13 != 1)
      {
        goto LABEL_15;
      }

      if (a10 <= 1.0)
      {
        if (a9 < a10)
        {
          v23 = a10 / a9;
        }
      }

      else
      {
        v23 = a10 / a9;
        if (a10 / a9 < 1.0)
        {
          v23 = 1.0;
        }
      }

      goto LABEL_7;
    }

LABEL_13:
    v24 = a10;
    goto LABEL_15;
  }

  if (v13 == 13)
  {
    v24 = a10;
    v23 = a10 / a9;
    goto LABEL_15;
  }

  if (v13 == 3)
  {
    goto LABEL_13;
  }

  v24 = a9;
  if (v13 == 2)
  {
    v23 = a10 / a9;
    if (a10 / a9 > 1.0)
    {
      v23 = 1.0;
    }

LABEL_7:
    v24 = v23 * a9;
  }

LABEL_15:
  v25 = a4 * a7 * v24;
  v26 = a4 * a7 * v23;
  v27 = v19 + -0.5;
  v28 = 0.5 - v18;
  CGAffineTransformMakeScale(&v32, a4 / a7, a4 / a7);
  memset(&v33, 0, sizeof(v33));
  CGAffineTransformMakeTranslation(&t1, -v27, -v28);
  t2 = v32;
  CGAffineTransformConcat(&v36, &t1, &t2);
  CGAffineTransformMakeTranslation(&t1, v27, v28);
  CGAffineTransformConcat(&v33, &v36, &t1);
  v36 = v33;
  v37.origin.x = x + v25 * -0.5;
  v37.origin.y = v26 * -0.5 - y;
  v37.size.width = v25;
  v37.size.height = v26;
  v38 = CGRectApplyAffineTransform(v37, &v36);
  retstr->translation.x = v38.origin.x + v38.size.width * 0.5;
  retstr->translation.y = -(v38.origin.y + v38.size.height * 0.5);
  retstr->scale = a4;
  result = [a2 adjustPositionToKeepMediaInViewBounds:v13 scale:a12 minScale:? mediaAspectRatio:? viewAspectRatio:? fillMode:? outNeedsUpdate:?];
  retstr->translation.x = v30;
  retstr->translation.y = v31;
  return result;
}

+ (CGPoint)adjustPositionToKeepMediaInViewBounds:(CGPoint)a3 scale:(double)a4 minScale:(double)a5 mediaAspectRatio:(double)a6 viewAspectRatio:(double)a7 fillMode:(int)a8 outNeedsUpdate:(BOOL *)a9
{
  y = a3.y;
  x = a3.x;
  [a1 maximumNormalizedPositionForScale:*&a8 minScale:a4 position:a5 mediaAspectRatio:a3.x viewAspectRatio:a3.y fillMode:{a6, a7}];
  v14 = fabs(x);
  v15 = fabs(v12);
  v16 = fabs(y);
  v17 = fabs(v13);
  if (a9)
  {
    v18 = v16 > v17;
    if (v14 > v15)
    {
      v18 = 1;
    }

    *a9 = v18;
  }

  if (v16 <= v17)
  {
    v13 = y;
  }

  if (v14 <= v15)
  {
    v12 = x;
  }

  result.y = v13;
  result.x = v12;
  return result;
}

+ (CGPoint)maximumNormalizedPositionForScale:(double)a3 minScale:(double)a4 position:(CGPoint)a5 mediaAspectRatio:(double)a6 viewAspectRatio:(double)a7 fillMode:(int)a8
{
  y = a5.y;
  v12 = 1.0;
  if (a7 <= 1.0)
  {
    if (a6 < a7)
    {
      v12 = a7 / a6;
    }
  }

  else
  {
    v12 = a7 / a6;
    if (a7 / a6 < 1.0)
    {
      v12 = 1.0;
    }
  }

  v13 = a7;
  if (a8 <= 1)
  {
    if (a8)
    {
      v13 = a6;
      if (a8 == 1)
      {
        v14 = 1.0;
        if (a7 <= 1.0)
        {
          if (a6 < a7)
          {
            v14 = a7 / a6;
          }
        }

        else
        {
          v14 = a7 / a6;
          if (a7 / a6 < 1.0)
          {
            v14 = 1.0;
          }
        }

        goto LABEL_12;
      }
    }
  }

  else if (a8 != 13 && a8 != 3)
  {
    v13 = a6;
    if (a8 == 2)
    {
      v14 = a7 / a6;
      if (a7 / a6 > 1.0)
      {
        v14 = 1.0;
      }

LABEL_12:
      v13 = v14 * a6;
    }
  }

  v15 = 0x100000001;
  if (vabdd_f64(a6, a7) < 0.0001)
  {
    goto LABEL_23;
  }

  v16 = 0;
  if (a8 <= 2)
  {
    if (a8)
    {
      if (a8 == 1)
      {
        *v27.i64 = a6;
        *&v27.i64[1] = a7;
        v26 = vcgtq_f64(vextq_s8(v27, v27, 8uLL), v27);
      }

      else
      {
        if (a8 != 2)
        {
          goto LABEL_22;
        }

        v25.f64[0] = a6;
        v25.f64[1] = a7;
        v26 = vcgtq_f64(v25, vextq_s8(v25, v25, 8uLL));
      }

      v16 = vmovn_s64(v26);
      goto LABEL_22;
    }
  }

  else if ((a8 - 4) >= 0xA)
  {
    if (a8 == 3)
    {
      v16 = 0x100000001;
    }

    else if (a8 == 14)
    {
      v16 = 0x100000000;
    }

    goto LABEL_22;
  }

  v16 = 1;
LABEL_22:
  v15 = vand_s8(v16, 0x100000001);
LABEL_23:
  v28 = v15.i32[1];
  v17 = v13 / (v12 * a6) * a3;
  if (v15.i32[0])
  {
    v18 = a3;
  }

  else
  {
    v18 = v13 / (v12 * a6) * a3;
  }

  [a1 maximumNormalizedPositionInAxisForScale:v15.i32[0] != 0 minScale:a5.x < 0.0 isMediaAxisNormal:v18 isPositionBelowZero:a4];
  v20 = v19;
  if (v28)
  {
    v21 = a3;
  }

  else
  {
    v21 = v17;
  }

  [a1 maximumNormalizedPositionInAxisForScale:v28 != 0 minScale:y < 0.0 isMediaAxisNormal:v21 isPositionBelowZero:a4];
  v23 = v22;
  v24 = v20;
  result.y = v23;
  result.x = v24;
  return result;
}

+ (double)maximumNormalizedPositionInAxisForScale:(double)a3 minScale:(double)a4 isMediaAxisNormal:(BOOL)a5 isPositionBelowZero:(BOOL)a6
{
  if (a5)
  {
    a4 = 1.0;
  }

  v6 = vabdd_f64(a3, a4) / a4;
  v7 = 2.0;
  if (a6)
  {
    v7 = -2.0;
  }

  return v6 / v7;
}

+ (double)calculateMinScaleForMediaAspectRatio:(double)a3 viewAspectRatio:(double)a4 fillMode:(int)a5
{
  v5 = 1.0;
  if (fabs(a4) < 0.0000001 || fabs(a3) < 0.0000001 || vabdd_f64(a3, a4) < 0.0001)
  {
    return v5;
  }

  if (a5 <= 1)
  {
    v6 = a4;
    if (a5)
    {
      if (a5 == 1)
      {
        v7 = 1.0;
        if (a4 <= 1.0)
        {
          if (a3 < a4)
          {
            v7 = a4 / a3;
          }
        }

        else
        {
          v7 = a4 / a3;
          if (a4 / a3 < 1.0)
          {
            v7 = 1.0;
          }
        }

        goto LABEL_23;
      }

      goto LABEL_20;
    }

LABEL_24:
    v10 = a4 / a3;
    if (v10 > 1.0)
    {
      v10 = 1.0;
    }

    return v10 * a3 / v6;
  }

  if (a5 != 13)
  {
    v6 = a4;
    if (a5 != 3)
    {
      if (a5 == 2)
      {
        v7 = a4 / a3;
        if (a4 / a3 > 1.0)
        {
          v7 = 1.0;
        }

LABEL_23:
        v6 = v7 * a3;
        goto LABEL_24;
      }

LABEL_20:
      v6 = a3;
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  v8 = a4 / a3;
  v9 = 1.0;
  if (v8 <= 1.0)
  {
    v9 = v8;
  }

  return v9 / v8;
}

+ (double)calculateMaxScale:(double)result forMediaAspectRatio:(double)a4 viewAspectRatio:(double)a5 fillMode:(int)a6
{
  if (fabs(a5) < 0.0000001 || fabs(a4) < 0.0000001 || vabdd_f64(a4, a5) < 0.0001)
  {
    return result;
  }

  v6 = 1.0;
  if (a6 <= 1)
  {
    if (a6)
    {
      v7 = a4;
      if (a6 != 1)
      {
        goto LABEL_18;
      }

      if (a5 <= 1.0)
      {
        if (a4 < a5)
        {
          v6 = a5 / a4;
        }
      }

      else
      {
        v6 = a5 / a4;
        if (a5 / a4 < 1.0)
        {
          v6 = 1.0;
        }
      }

      goto LABEL_10;
    }

LABEL_16:
    v7 = a5;
    goto LABEL_18;
  }

  if (a6 == 13)
  {
    v7 = a5;
    v6 = a5 / a4;
    goto LABEL_18;
  }

  if (a6 == 3)
  {
    goto LABEL_16;
  }

  v7 = a4;
  if (a6 == 2)
  {
    v6 = a5 / a4;
    if (a5 / a4 > 1.0)
    {
      v6 = 1.0;
    }

LABEL_10:
    v7 = v6 * a4;
  }

LABEL_18:
  v8 = 1.0;
  if (a5 <= 1.0)
  {
    if (a4 < a5)
    {
      v8 = a5 / a4;
    }
  }

  else
  {
    v8 = a5 / a4;
    if (a5 / a4 < 1.0)
    {
      v8 = 1.0;
    }
  }

  v9 = v8 * a4 / v7;
  if (a6 == 13)
  {
    v9 = v8 / v6;
  }

  return v9 * result;
}

- (CGSize)mediaSize
{
  width = self->_mediaSize.width;
  height = self->_mediaSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)viewSize
{
  width = self->_viewSize.width;
  height = self->_viewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end