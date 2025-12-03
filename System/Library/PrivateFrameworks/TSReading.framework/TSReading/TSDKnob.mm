@interface TSDKnob
- (BOOL)isHitByUnscaledPoint:(CGPoint)point andRep:(id)rep returningDistance:(double *)distance;
- (BOOL)obscuresKnob:(id)knob;
- (BOOL)overlapsWithKnob:(id)knob;
- (CALayer)layer;
- (CGPoint)offset;
- (CGPoint)position;
- (CGRect)boundingBoxOfHitRegionForRep:(id)rep scale:(double)scale;
- (TSDKnob)init;
- (TSDKnob)initWithType:(int)type position:(CGPoint)position radius:(double)radius tag:(unint64_t)tag onRep:(id)rep;
- (double)i_rotationInDegreesForKnobOnRep:(id)rep;
- (id)description;
- (id)hitRegionLayerForRep:(id)rep;
- (id)knobImage;
- (void)dealloc;
- (void)updateHitRegionPathForRep:(id)rep;
@end

@implementation TSDKnob

- (TSDKnob)initWithType:(int)type position:(CGPoint)position radius:(double)radius tag:(unint64_t)tag onRep:(id)rep
{
  y = position.y;
  x = position.x;
  v19.receiver = self;
  v19.super_class = TSDKnob;
  v13 = [(TSDKnob *)&v19 init];
  v14 = v13;
  if (v13)
  {
    *(v13 + 2) = type;
    v15 = MEMORY[0x277CBF348];
    *(v13 + 2) = x;
    *(v13 + 3) = y;
    *(v13 + 40) = *v15;
    v13[32] = 0;
    *(v13 + 7) = radius;
    *(v13 + 8) = tag;
    if (!rep)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnob initWithType:position:radius:tag:onRep:]"];
      [currentHandler handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnob.m"), 294, @"invalid nil value for '%s'", "rep"}];
    }

    v14->mRep = rep;
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDKnob;
  [(TSDKnob *)&v3 dealloc];
}

- (TSDKnob)init
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnob init]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnob.m"), 312, @"Please use designated initializers on knobs, not this"}];
  return 0;
}

- (BOOL)isHitByUnscaledPoint:(CGPoint)point andRep:(id)rep returningDistance:(double *)distance
{
  y = point.y;
  x = point.x;
  v40 = *MEMORY[0x277D85DE8];
  if (self->mRep != rep)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnob isHitByUnscaledPoint:andRep:returningDistance:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnob.m"), 335, @"wrong rep for hit testing knob"}];
  }

  interactiveCanvasController = [rep interactiveCanvasController];
  if (!-[TSDKnob worksWhenRepLocked](self, "worksWhenRepLocked") && ([rep isLocked] & 1) != 0 || !-[TSDKnob worksWhenInVersionBrowsingMode](self, "worksWhenInVersionBrowsingMode") && (objc_msgSend(interactiveCanvasController, "inVersionBrowsingMode") & 1) != 0)
  {
    return 0;
  }

  [(TSDKnob *)self position];
  [rep convertNaturalPointToUnscaledCanvas:?];
  v14 = v13;
  v16 = v15;
  mHitRegionPath = self->mHitRegionPath;
  if (!mHitRegionPath)
  {
    [(TSDKnob *)self updateHitRegionPathForRep:rep];
    mHitRegionPath = self->mHitRegionPath;
  }

  v18 = TSDSubtractPoints(x, y, v14);
  v20 = v19;
  [objc_msgSend(rep "interactiveCanvasController")];
  v22 = [(TSDBezierPath *)mHitRegionPath containsPoint:TSDMultiplyPointScalar(v18, v20, v21)];
  if (distance)
  {
    *distance = TSDDistanceSquared(v14, v16, x, y);
  }

  if (!v22)
  {
    return 0;
  }

  if (![(TSDKnob *)self shouldDisplayDirectlyOverRep])
  {
    return 1;
  }

  v23 = [objc_msgSend(objc_msgSend(rep "interactiveCanvasController")];
  v24 = v23;
  v25 = v23 == 0;
  if (v23 && v23 != rep)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    interactiveCanvasController2 = [rep interactiveCanvasController];
    v27 = [interactiveCanvasController2 topLevelZOrderedSiblingsOfInfos:{objc_msgSend(MEMORY[0x277CBEB98], "setWithObject:", objc_msgSend(v24, "info"))}];
    v28 = [v27 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v36;
LABEL_17:
      v31 = 0;
      while (1)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v35 + 1) + 8 * v31);
        info = [v24 info];
        v25 = v32 == info;
        if (v32 == info || v32 == [rep info] || v32 == objc_msgSend(objc_msgSend(rep, "repForSelecting"), "info"))
        {
          break;
        }

        if (v29 == ++v31)
        {
          v29 = [v27 countByEnumeratingWithState:&v35 objects:v39 count:16];
          v25 = 0;
          if (v29)
          {
            goto LABEL_17;
          }

          return v24 == rep || v25;
        }
      }
    }

    else
    {
      v25 = 0;
    }
  }

  return v24 == rep || v25;
}

- (id)knobImage
{
  mType = self->mType;
  if (mType <= 3)
  {
    if (mType != 1)
    {
      if (mType == 3)
      {
        v3 = MEMORY[0x277D6C2F8];
        v4 = TSDBundle();
        v5 = @"sf-ios-canvas-knob-text";
        goto LABEL_12;
      }

      goto LABEL_8;
    }

LABEL_7:
    v3 = MEMORY[0x277D6C2F8];
    v4 = TSDBundle();
    v5 = @"sf-ios-canvas-knob-yellow";
    goto LABEL_12;
  }

  if (mType == 4)
  {
    v3 = MEMORY[0x277D6C2F8];
    v4 = TSDBundle();
    v5 = @"sf-ios-canvas-knob-locked";
    goto LABEL_12;
  }

  if (mType == 5)
  {
    goto LABEL_7;
  }

LABEL_8:
  v6 = self->mTag - 12;
  v3 = MEMORY[0x277D6C2F8];
  v4 = TSDBundle();
  if (v6 > 4)
  {
    v5 = @"sf-ios-canvas-knob-blue";
  }

  else
  {
    v5 = @"sf-ios-canvas-knob-green";
  }

LABEL_12:

  return [v3 imageNamed:v5 inBundle:v4];
}

- (CALayer)layer
{
  result = self->mLayer;
  if (!result)
  {
    knobImage = [(TSDKnob *)self knobImage];
    if (knobImage)
    {
      v5 = knobImage;
      self->mLayer = objc_alloc_init(MEMORY[0x277CD9ED0]);
      [v5 size];
      [(CALayer *)self->mLayer setBounds:TSDRectWithSize()];
      [(TSDCanvas *)[(TSDRep *)self->mRep canvas] contentsScale];
      -[CALayer setContents:](self->mLayer, "setContents:", [v5 CGImageForContentsScale:?]);
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x277CD9F90]);
      self->mLayer = v6;
      Mutable = CGPathCreateMutable();
      [(TSDKnob *)self radius];
      v9 = v8 + v8;
      v10 = *MEMORY[0x277CBF348];
      v11 = *(MEMORY[0x277CBF348] + 8);
      [(CALayer *)v6 setBounds:*MEMORY[0x277CBF348], v11, v9, v9];
      v13.origin.x = v10;
      v13.origin.y = v11;
      v13.size.width = v9;
      v13.size.height = v9;
      CGPathAddEllipseInRect(Mutable, 0, v13);
      [(CALayer *)v6 setPath:Mutable];
      CGPathRelease(Mutable);
      -[CALayer setFillColor:](v6, "setFillColor:", [objc_msgSend(MEMORY[0x277D6C2A8] "whiteColor")]);
      -[CALayer setStrokeColor:](v6, "setStrokeColor:", [objc_msgSend(MEMORY[0x277D6C2A8] "blackColor")]);
    }

    result = self->mLayer;
    if (self->mTag - 12 <= 4)
    {
      [(CALayer *)result zPosition];
      [(CALayer *)self->mLayer setZPosition:v12 + 1.0];
      return self->mLayer;
    }
  }

  return result;
}

- (id)hitRegionLayerForRep:(id)rep
{
  if (self->mRep != rep)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnob hitRegionLayerForRep:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnob.m"), 488, @"wrong rep for hit region"}];
  }

  result = self->mHitRegionLayer;
  if (!result)
  {
    self->mHitRegionLayer = objc_alloc_init(MEMORY[0x277CD9F90]);
    -[CAShapeLayer setFillColor:](self->mHitRegionLayer, "setFillColor:", [objc_msgSend(MEMORY[0x277D6C2A8] colorWithRed:0.7 green:0.1 blue:0.1 alpha:{0.3), "CGColor"}]);
    mHitRegionPath = self->mHitRegionPath;
    if (!mHitRegionPath)
    {
      [(TSDKnob *)self updateHitRegionPathForRep:rep];
      mHitRegionPath = self->mHitRegionPath;
    }

    [(CAShapeLayer *)self->mHitRegionLayer setPath:[(TSDBezierPath *)mHitRegionPath CGPath]];
    return self->mHitRegionLayer;
  }

  return result;
}

- (CGRect)boundingBoxOfHitRegionForRep:(id)rep scale:(double)scale
{
  if (self->mRep != rep)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDKnob boundingBoxOfHitRegionForRep:scale:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnob.m"), 503, @"wrong rep for bounding box"}];
  }

  if (!self->mHitRegionPath)
  {
    [(TSDKnob *)self updateHitRegionPathForRep:rep];
  }

  [(TSDKnob *)self position];
  [rep convertNaturalPointToUnscaledCanvas:?];
  v10 = v9;
  v12 = v11;
  [objc_msgSend(rep "interactiveCanvasController")];
  v14 = 1.0 / v13 * scale;
  [(TSDBezierPath *)self->mHitRegionPath bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  CGAffineTransformMakeScale(&v23, v14, v14);
  v24.origin.x = v16;
  v24.origin.y = v18;
  v24.size.width = v20;
  v24.size.height = v22;
  v25 = CGRectApplyAffineTransform(v24, &v23);
  return CGRectOffset(v25, v10, v12);
}

- (double)i_rotationInDegreesForKnobOnRep:(id)rep
{
  v4 = [(TSDKnob *)self tag];
  layout = [rep layout];
  if (layout)
  {
    [layout transformInRoot];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
  }

  if (TSDIsTransformFlipped(&v9))
  {
    v4 = TSDKnobTagWithFlip(v4);
  }

  v6 = 0.0;
  if (v4 - 1 <= 0xB)
  {
    v6 = dbl_26CA65878[v4 - 1];
  }

  [rep additionalRotationForKnobOrientation];
  TSDNormalizeAngleInDegrees(v6 + v7);
  return result;
}

- (void)updateHitRegionPathForRep:(id)rep
{
  self->mHitRegionPath = 0;
  [(TSDKnob *)self radius];
  v6 = v5;
  if (([rep canUseSpecializedHitRegionForKnob:self] & 1) == 0)
  {
    goto LABEL_26;
  }

  [rep boundsForStandardKnobs];
  v8 = v7;
  v10 = v9;
  [objc_msgSend(rep "interactiveCanvasController")];
  v12 = v11;
  [objc_msgSend(rep "interactiveCanvasController")];
  v14 = v6 / v13 * 10.0;
  if ([(TSDKnob *)self tag]>= 0xC && [(TSDKnob *)self tag]<= 0x10)
  {
    if (v8 < v14 || v10 < v14)
    {
      v16 = -15.0;
      v17 = -15.0;
      v18 = 30.0;
      v19 = 30.0;
LABEL_27:
      self->mHitRegionPath = [TSDBezierPath bezierPathWithOvalInRect:v16, v17, v18, v19];
      goto LABEL_28;
    }

LABEL_26:
    v16 = -(v6 + v6);
    v18 = v6 + v6 + v6 + v6;
    v17 = v16;
    v19 = v18;
    goto LABEL_27;
  }

  v20 = v6 / v12 + v6 / v12;
  if (v8 < v20 || v10 < v20)
  {
    self->mHitRegionPath = [TSDBezierPath bezierPathWithOvalInRect:-15.0, -15.0, 30.0, 45.0];
    v22 = v8;
    v23 = v10;
    memset(&v36.c, 0, 32);
    if (fminf(v22, v23) >= 30.0)
    {
      v24 = 3.75;
    }

    else
    {
      v24 = 7.5;
    }

    *&v36.a = 0uLL;
    [(TSDKnob *)self i_rotationInDegreesForKnobOnRep:rep];
    CGAffineTransformMakeRotation(&v36, v25 * 0.0174532925);
    memset(&v35, 0, sizeof(v35));
    CGAffineTransformMakeTranslation(&v35, v36.tx + v24 * v36.c + v36.a * 0.0, v36.ty + v24 * v36.d + v36.b * 0.0);
    mHitRegionPath = self->mHitRegionPath;
    t1 = v36;
    v32 = v35;
    CGAffineTransformConcat(&v34, &t1, &v32);
    v27 = &v34;
    v28 = mHitRegionPath;
  }

  else
  {
    if (v8 >= v14 && v10 >= v14)
    {
      goto LABEL_26;
    }

    self->mHitRegionPath = [TSDBezierPath bezierPathWithOvalInRect:-v6, -v6, v6 + v6, v6 * 3.0];
    memset(&v36, 0, sizeof(v36));
    [(TSDKnob *)self i_rotationInDegreesForKnobOnRep:rep];
    CGAffineTransformMakeRotation(&v36, v30 * 0.0174532925);
    v28 = self->mHitRegionPath;
    v35 = v36;
    v27 = &v35;
  }

  [(TSDBezierPath *)v28 transformUsingAffineTransform:v27];
LABEL_28:
  v31 = self->mHitRegionPath;
}

- (BOOL)overlapsWithKnob:(id)knob
{
  [(CALayer *)[(TSDKnob *)self layer] frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [objc_msgSend(knob "layer")];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v5;
  v21 = v7;
  v22 = v9;
  v23 = v11;

  return CGRectIntersectsRect(*&v20, *&v13);
}

- (BOOL)obscuresKnob:(id)knob
{
  [(CALayer *)[(TSDKnob *)self layer] zPosition];
  v5 = v4;
  [objc_msgSend(knob "layer")];
  return v5 > v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(TSDKnob *)self tag];
  [(TSDKnob *)self position];
  return [v3 stringWithFormat:@"<%@: %p tag=%lu position=%@>", v4, self, v5, NSStringFromCGPoint(v7)];
}

- (CGPoint)position
{
  x = self->mPosition.x;
  y = self->mPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)offset
{
  x = self->mOffset.x;
  y = self->mOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end