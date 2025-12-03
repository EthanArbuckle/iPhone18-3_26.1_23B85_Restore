@interface PVPanAndZoomManager
+ (CGPoint)adjustPositionToKeepMediaInViewBounds:(CGPoint)bounds scale:(double)scale minScale:(double)minScale mediaAspectRatio:(double)ratio viewAspectRatio:(double)aspectRatio fillMode:(int)mode outNeedsUpdate:(BOOL *)update;
+ (CGPoint)maximumNormalizedPositionForScale:(double)scale minScale:(double)minScale position:(CGPoint)position mediaAspectRatio:(double)ratio viewAspectRatio:(double)aspectRatio fillMode:(int)mode;
+ (PVTransformAnimationInfo)transformAnimInfoForScale:(SEL)scale atNormalizedLocationInView:(double)view minScale:(CGPoint)minScale currentScale:(double)currentScale currentTranslation:(double)translation mediaAspectRatio:(CGPoint)ratio viewAspectRatio:(double)aspectRatio fillMode:(double)self0 outNeedsUpdate:(int)self1;
+ (double)calculateMaxScale:(double)result forMediaAspectRatio:(double)ratio viewAspectRatio:(double)aspectRatio fillMode:(int)mode;
+ (double)calculateMinScaleForMediaAspectRatio:(double)ratio viewAspectRatio:(double)aspectRatio fillMode:(int)mode;
+ (double)maximumNormalizedPositionInAxisForScale:(double)scale minScale:(double)minScale isMediaAxisNormal:(BOOL)normal isPositionBelowZero:(BOOL)zero;
+ (id)panAndZoomManagerWithMediaSize:(CGSize)size viewSize:(CGSize)viewSize fillMode:(int)mode maxScale:(double)scale;
- (BOOL)isEditingTransformType:(int)type;
- (CGSize)mediaSize;
- (CGSize)viewSize;
- (PVPanAndZoomManager)initWithMediaSize:(CGSize)size viewSize:(CGSize)viewSize fillMode:(int)mode maxScale:(double)scale;
- (PVTransformAnimationInfo)endEditingTransformForType:(SEL)type;
- (PVTransformAnimationInfo)updateRotation:(SEL)rotation normalizedLocationInView:(double)view outNeedsUpdate:(CGPoint)update;
- (PVTransformAnimationInfo)updateScale:(SEL)scale normalizedLocationInView:(double)view outNeedsUpdate:(CGPoint)update;
- (PVTransformAnimationInfo)updateTranslation:(SEL)translation outNeedsUpdate:(CGPoint)update;
- (void)beginEditingTransform:(PVTransformAnimationInfo *)transform transformType:(int)type updateOtherWorkingTransforms:(BOOL)transforms;
- (void)cancelEditing;
- (void)cancelSnapTimer;
- (void)setFillMode:(int)mode;
- (void)setIsEditingTransform:(BOOL)transform type:(int)type;
- (void)setMaxScale:(double)scale;
- (void)setMediaSize:(CGSize)size;
- (void)setViewSize:(CGSize)size;
- (void)updateMediaAspectRatio;
- (void)updateViewAspectRatio;
@end

@implementation PVPanAndZoomManager

+ (id)panAndZoomManagerWithMediaSize:(CGSize)size viewSize:(CGSize)viewSize fillMode:(int)mode maxScale:(double)scale
{
  v6 = [[self alloc] initWithMediaSize:*&mode viewSize:size.width fillMode:size.height maxScale:{viewSize.width, viewSize.height, scale}];

  return v6;
}

- (PVPanAndZoomManager)initWithMediaSize:(CGSize)size viewSize:(CGSize)viewSize fillMode:(int)mode maxScale:(double)scale
{
  height = viewSize.height;
  width = viewSize.width;
  v10 = size.height;
  v11 = size.width;
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
    v13->_fillMode = mode;
    [(PVPanAndZoomManager *)v13 updateMinScale];
    scaleCopy = 3.0;
    if (fabs(scale) >= 0.0000001)
    {
      scaleCopy = scale;
    }

    v13->_maxScale = scaleCopy;
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

- (void)beginEditingTransform:(PVTransformAnimationInfo *)transform transformType:(int)type updateOtherWorkingTransforms:(BOOL)transforms
{
  transformsCopy = transforms;
  [(PVPanAndZoomManager *)self setIsEditingTransform:1 type:?];
  switch(type)
  {
    case 2:
      v15 = *&transform->time.value;
      v16 = *&transform->time.epoch;
      v17 = *&transform->translation.y;
      self->_workingTransformRotate.rotation = transform->rotation;
      *&self->_workingTransformRotate.translation.y = v17;
      *&self->_workingTransformRotate.time.epoch = v16;
      *&self->_workingTransformRotate.time.value = v15;
      break;
    case 1:
      v12 = *&transform->time.value;
      v13 = *&transform->time.epoch;
      v14 = *&transform->translation.y;
      self->_workingTransformScale.rotation = transform->rotation;
      *&self->_workingTransformScale.time.epoch = v13;
      *&self->_workingTransformScale.translation.y = v14;
      *&self->_workingTransformScale.time.value = v12;
      if (transformsCopy)
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
      v9 = *&transform->time.value;
      v10 = *&transform->time.epoch;
      v11 = *&transform->translation.y;
      self->_workingTransformTranslate.rotation = transform->rotation;
      *&self->_workingTransformTranslate.translation.y = v11;
      *&self->_workingTransformTranslate.time.epoch = v10;
      *&self->_workingTransformTranslate.time.value = v9;
      if (transformsCopy)
      {
        self->_workingTransformScale.translation = transform->translation;
      }

      if (self->_isEditingScale)
      {
        self->_workingTransformTranslate.scale = self->_workingTransformScale.scale;
      }

      break;
  }
}

- (PVTransformAnimationInfo)endEditingTransformForType:(SEL)type
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

- (PVTransformAnimationInfo)updateTranslation:(SEL)translation outNeedsUpdate:(CGPoint)update
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
        update = **&MEMORY[0x277CBF348];
      }

      if (self->_isTranslationDirectionLockEnabled)
      {
        v8 = fabs(update.x);
        v9 = fabs(update.y);
        translationDirectionLockThreshold = self->_translationDirectionLockThreshold;
        if (v9 <= v8 * translationDirectionLockThreshold)
        {
          if (v8 > v9 * translationDirectionLockThreshold)
          {
            update.y = 0.0;
          }
        }

        else
        {
          update.x = 0.0;
        }
      }

      if (self->_isEditingScale)
      {
        self->_workingTransformTranslate.scale = self->_workingTransformScale.scale;
      }

      result = [objc_opt_class() adjustPositionToKeepMediaInViewBounds:self->_fillMode scale:&v17 minScale:update.x + self->_workingTransformTranslate.translation.x mediaAspectRatio:update.y + self->_workingTransformTranslate.translation.y viewAspectRatio:self->_workingTransformTranslate.scale fillMode:self->_minScale outNeedsUpdate:{self->_mediaAspectRatio, self->_viewAspectRatio}];
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

    NSLog(&cfstr_Pvpanandzoomma.isa, translation, update.x, update.y);
  }

  PVTransformAnimationInfoIdentity(retstr);
  return result;
}

- (PVTransformAnimationInfo)updateScale:(SEL)scale normalizedLocationInView:(double)view outNeedsUpdate:(CGPoint)update
{
  y = update.y;
  x = update.x;
  selfCopy = self;
  if (a6)
  {
    *a6 = 0;
  }

  if (BYTE3(self[4].time.epoch) != 1)
  {
    if ((self[3].time.timescale & 0x100) != 0)
    {
      rotation = self[1].rotation;
      v12 = rotation * view;
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
        v20 = selfCopy[1].translation.y;
        v21 = selfCopy[1].scale;
        memset(v31, 0, 24);
        self = objc_opt_class();
        if (self)
        {
          self = [(PVTransformAnimationInfo *)self transformAnimInfoForScale:LODWORD(selfCopy[4].translation.x) atNormalizedLocationInView:0 minScale:v16 currentScale:x currentTranslation:y mediaAspectRatio:selfCopy[3].translation.y viewAspectRatio:rotation fillMode:v20 outNeedsUpdate:v21, *&selfCopy[3].time.epoch, *&selfCopy[3].translation.x];
        }

        else
        {
          memset(v31, 0, 24);
        }

        selfCopy[1].rotation = 0.0;
        *&selfCopy[1].translation.y = *(v31 + 8);
        if (LOBYTE(selfCopy[3].time.timescale) == 1)
        {
          selfCopy->rotation = 0.0;
          *&selfCopy->translation.y = *(v31 + 8);
        }

        v22 = 1;
        if (!a6)
        {
          goto LABEL_34;
        }

LABEL_33:
        *a6 = v22;
LABEL_34:
        translation = selfCopy[1].translation;
        *&retstr->time.value = *&selfCopy[1].time.timescale;
        *&retstr->time.epoch = translation;
        *&retstr->translation.y = *&selfCopy[1].scale;
        *&retstr->rotation = selfCopy[2].time.value;
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
            v15 = 1.0 - (selfCopy[4].rotation + selfCopy[4].rotation);
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
      v25 = *&selfCopy[4].time.timescale;
      *&selfCopy[4].time.timescale = v24;

      *&selfCopy[4].time.value = v16;
      selfCopy[1].rotation = v16;
      if (fabs(selfCopy[4].scale + -1.0) >= 0.0001)
      {
        goto LABEL_25;
      }

      v26 = *&selfCopy[3].time.epoch;
      v27 = 0x100000001;
      if (fabs(vsubq_f64(v26, vdupq_laneq_s64(v26, 1)).f64[0]) < 0.0001)
      {
LABEL_41:
        if (v27.i32[0])
        {
          selfCopy[1].translation.y = 0.0;
        }

        if (v27.i32[1])
        {
          selfCopy[1].scale = 0.0;
        }

        goto LABEL_25;
      }

      v28 = 0;
      x_low = LODWORD(selfCopy[4].translation.x);
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

    NSLog(&cfstr_Pvpanandzoomma_0.isa, scale, view);
  }

  PVTransformAnimationInfoIdentity(retstr);
  return self;
}

- (PVTransformAnimationInfo)updateRotation:(SEL)rotation normalizedLocationInView:(double)view outNeedsUpdate:(CGPoint)update
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

    NSLog(&cfstr_Pvpanandzoomma_1.isa, rotation, view, update.x, update.y);
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

- (void)setMediaSize:(CGSize)size
{
  if (self->_mediaSize.width != size.width || self->_mediaSize.height != size.height)
  {
    self->_mediaSize = size;
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

- (void)setViewSize:(CGSize)size
{
  if (self->_viewSize.width != size.width || self->_viewSize.height != size.height)
  {
    self->_viewSize = size;
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

- (void)setFillMode:(int)mode
{
  if (self->_fillMode != mode)
  {
    self->_fillMode = mode;
    [(PVPanAndZoomManager *)self updateMinScale];

    [(PVPanAndZoomManager *)self updateMaxScale];
  }
}

- (void)setMaxScale:(double)scale
{
  if (self->_maxScale != scale)
  {
    self->_maxScale = scale;
    [(PVPanAndZoomManager *)self updateMaxScale];
  }
}

- (BOOL)isEditingTransformType:(int)type
{
  if (type <= 2)
  {
    v3 = *(&self->_isEditingTranslate + type);
  }

  return v3 & 1;
}

- (void)setIsEditingTransform:(BOOL)transform type:(int)type
{
  if (type <= 2)
  {
    *(&self->_isEditingTranslate + type) = transform;
  }
}

+ (PVTransformAnimationInfo)transformAnimInfoForScale:(SEL)scale atNormalizedLocationInView:(double)view minScale:(CGPoint)minScale currentScale:(double)currentScale currentTranslation:(double)translation mediaAspectRatio:(CGPoint)ratio viewAspectRatio:(double)aspectRatio fillMode:(double)self0 outNeedsUpdate:(int)self1
{
  v13 = *&update;
  y = ratio.y;
  x = ratio.x;
  v18 = minScale.y;
  v19 = minScale.x;
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
      aspectRatioCopy2 = aspectRatio;
      if (v13 != 1)
      {
        goto LABEL_15;
      }

      if (mode <= 1.0)
      {
        if (aspectRatio < mode)
        {
          v23 = mode / aspectRatio;
        }
      }

      else
      {
        v23 = mode / aspectRatio;
        if (mode / aspectRatio < 1.0)
        {
          v23 = 1.0;
        }
      }

      goto LABEL_7;
    }

LABEL_13:
    aspectRatioCopy2 = mode;
    goto LABEL_15;
  }

  if (v13 == 13)
  {
    aspectRatioCopy2 = mode;
    v23 = mode / aspectRatio;
    goto LABEL_15;
  }

  if (v13 == 3)
  {
    goto LABEL_13;
  }

  aspectRatioCopy2 = aspectRatio;
  if (v13 == 2)
  {
    v23 = mode / aspectRatio;
    if (mode / aspectRatio > 1.0)
    {
      v23 = 1.0;
    }

LABEL_7:
    aspectRatioCopy2 = v23 * aspectRatio;
  }

LABEL_15:
  v25 = view * translation * aspectRatioCopy2;
  v26 = view * translation * v23;
  v27 = v19 + -0.5;
  v28 = 0.5 - v18;
  CGAffineTransformMakeScale(&v32, view / translation, view / translation);
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
  retstr->scale = view;
  result = [a2 adjustPositionToKeepMediaInViewBounds:v13 scale:a12 minScale:? mediaAspectRatio:? viewAspectRatio:? fillMode:? outNeedsUpdate:?];
  retstr->translation.x = v30;
  retstr->translation.y = v31;
  return result;
}

+ (CGPoint)adjustPositionToKeepMediaInViewBounds:(CGPoint)bounds scale:(double)scale minScale:(double)minScale mediaAspectRatio:(double)ratio viewAspectRatio:(double)aspectRatio fillMode:(int)mode outNeedsUpdate:(BOOL *)update
{
  y = bounds.y;
  x = bounds.x;
  [self maximumNormalizedPositionForScale:*&mode minScale:scale position:minScale mediaAspectRatio:bounds.x viewAspectRatio:bounds.y fillMode:{ratio, aspectRatio}];
  v14 = fabs(x);
  v15 = fabs(v12);
  v16 = fabs(y);
  v17 = fabs(v13);
  if (update)
  {
    v18 = v16 > v17;
    if (v14 > v15)
    {
      v18 = 1;
    }

    *update = v18;
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

+ (CGPoint)maximumNormalizedPositionForScale:(double)scale minScale:(double)minScale position:(CGPoint)position mediaAspectRatio:(double)ratio viewAspectRatio:(double)aspectRatio fillMode:(int)mode
{
  y = position.y;
  v12 = 1.0;
  if (aspectRatio <= 1.0)
  {
    if (ratio < aspectRatio)
    {
      v12 = aspectRatio / ratio;
    }
  }

  else
  {
    v12 = aspectRatio / ratio;
    if (aspectRatio / ratio < 1.0)
    {
      v12 = 1.0;
    }
  }

  ratioCopy2 = aspectRatio;
  if (mode <= 1)
  {
    if (mode)
    {
      ratioCopy2 = ratio;
      if (mode == 1)
      {
        v14 = 1.0;
        if (aspectRatio <= 1.0)
        {
          if (ratio < aspectRatio)
          {
            v14 = aspectRatio / ratio;
          }
        }

        else
        {
          v14 = aspectRatio / ratio;
          if (aspectRatio / ratio < 1.0)
          {
            v14 = 1.0;
          }
        }

        goto LABEL_12;
      }
    }
  }

  else if (mode != 13 && mode != 3)
  {
    ratioCopy2 = ratio;
    if (mode == 2)
    {
      v14 = aspectRatio / ratio;
      if (aspectRatio / ratio > 1.0)
      {
        v14 = 1.0;
      }

LABEL_12:
      ratioCopy2 = v14 * ratio;
    }
  }

  v15 = 0x100000001;
  if (vabdd_f64(ratio, aspectRatio) < 0.0001)
  {
    goto LABEL_23;
  }

  v16 = 0;
  if (mode <= 2)
  {
    if (mode)
    {
      if (mode == 1)
      {
        *v27.i64 = ratio;
        *&v27.i64[1] = aspectRatio;
        v26 = vcgtq_f64(vextq_s8(v27, v27, 8uLL), v27);
      }

      else
      {
        if (mode != 2)
        {
          goto LABEL_22;
        }

        v25.f64[0] = ratio;
        v25.f64[1] = aspectRatio;
        v26 = vcgtq_f64(v25, vextq_s8(v25, v25, 8uLL));
      }

      v16 = vmovn_s64(v26);
      goto LABEL_22;
    }
  }

  else if ((mode - 4) >= 0xA)
  {
    if (mode == 3)
    {
      v16 = 0x100000001;
    }

    else if (mode == 14)
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
  v17 = ratioCopy2 / (v12 * ratio) * scale;
  if (v15.i32[0])
  {
    scaleCopy = scale;
  }

  else
  {
    scaleCopy = ratioCopy2 / (v12 * ratio) * scale;
  }

  [self maximumNormalizedPositionInAxisForScale:v15.i32[0] != 0 minScale:position.x < 0.0 isMediaAxisNormal:scaleCopy isPositionBelowZero:minScale];
  v20 = v19;
  if (v28)
  {
    scaleCopy2 = scale;
  }

  else
  {
    scaleCopy2 = v17;
  }

  [self maximumNormalizedPositionInAxisForScale:v28 != 0 minScale:y < 0.0 isMediaAxisNormal:scaleCopy2 isPositionBelowZero:minScale];
  v23 = v22;
  v24 = v20;
  result.y = v23;
  result.x = v24;
  return result;
}

+ (double)maximumNormalizedPositionInAxisForScale:(double)scale minScale:(double)minScale isMediaAxisNormal:(BOOL)normal isPositionBelowZero:(BOOL)zero
{
  if (normal)
  {
    minScale = 1.0;
  }

  v6 = vabdd_f64(scale, minScale) / minScale;
  v7 = 2.0;
  if (zero)
  {
    v7 = -2.0;
  }

  return v6 / v7;
}

+ (double)calculateMinScaleForMediaAspectRatio:(double)ratio viewAspectRatio:(double)aspectRatio fillMode:(int)mode
{
  v5 = 1.0;
  if (fabs(aspectRatio) < 0.0000001 || fabs(ratio) < 0.0000001 || vabdd_f64(ratio, aspectRatio) < 0.0001)
  {
    return v5;
  }

  if (mode <= 1)
  {
    ratioCopy = aspectRatio;
    if (mode)
    {
      if (mode == 1)
      {
        v7 = 1.0;
        if (aspectRatio <= 1.0)
        {
          if (ratio < aspectRatio)
          {
            v7 = aspectRatio / ratio;
          }
        }

        else
        {
          v7 = aspectRatio / ratio;
          if (aspectRatio / ratio < 1.0)
          {
            v7 = 1.0;
          }
        }

        goto LABEL_23;
      }

      goto LABEL_20;
    }

LABEL_24:
    v10 = aspectRatio / ratio;
    if (v10 > 1.0)
    {
      v10 = 1.0;
    }

    return v10 * ratio / ratioCopy;
  }

  if (mode != 13)
  {
    ratioCopy = aspectRatio;
    if (mode != 3)
    {
      if (mode == 2)
      {
        v7 = aspectRatio / ratio;
        if (aspectRatio / ratio > 1.0)
        {
          v7 = 1.0;
        }

LABEL_23:
        ratioCopy = v7 * ratio;
        goto LABEL_24;
      }

LABEL_20:
      ratioCopy = ratio;
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  v8 = aspectRatio / ratio;
  v9 = 1.0;
  if (v8 <= 1.0)
  {
    v9 = v8;
  }

  return v9 / v8;
}

+ (double)calculateMaxScale:(double)result forMediaAspectRatio:(double)ratio viewAspectRatio:(double)aspectRatio fillMode:(int)mode
{
  if (fabs(aspectRatio) < 0.0000001 || fabs(ratio) < 0.0000001 || vabdd_f64(ratio, aspectRatio) < 0.0001)
  {
    return result;
  }

  v6 = 1.0;
  if (mode <= 1)
  {
    if (mode)
    {
      ratioCopy2 = ratio;
      if (mode != 1)
      {
        goto LABEL_18;
      }

      if (aspectRatio <= 1.0)
      {
        if (ratio < aspectRatio)
        {
          v6 = aspectRatio / ratio;
        }
      }

      else
      {
        v6 = aspectRatio / ratio;
        if (aspectRatio / ratio < 1.0)
        {
          v6 = 1.0;
        }
      }

      goto LABEL_10;
    }

LABEL_16:
    ratioCopy2 = aspectRatio;
    goto LABEL_18;
  }

  if (mode == 13)
  {
    ratioCopy2 = aspectRatio;
    v6 = aspectRatio / ratio;
    goto LABEL_18;
  }

  if (mode == 3)
  {
    goto LABEL_16;
  }

  ratioCopy2 = ratio;
  if (mode == 2)
  {
    v6 = aspectRatio / ratio;
    if (aspectRatio / ratio > 1.0)
    {
      v6 = 1.0;
    }

LABEL_10:
    ratioCopy2 = v6 * ratio;
  }

LABEL_18:
  v8 = 1.0;
  if (aspectRatio <= 1.0)
  {
    if (ratio < aspectRatio)
    {
      v8 = aspectRatio / ratio;
    }
  }

  else
  {
    v8 = aspectRatio / ratio;
    if (aspectRatio / ratio < 1.0)
    {
      v8 = 1.0;
    }
  }

  v9 = v8 * ratio / ratioCopy2;
  if (mode == 13)
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