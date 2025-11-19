@interface TSDMediaLayout
- (CGRect)alignmentFrame;
- (CGRect)alignmentFrameInRoot;
- (CGRect)boundsForStandardKnobs;
- (CGRect)computeAlignmentFrameInRoot:(BOOL)a3;
- (TSDMediaLayout)initWithInfo:(id)a3;
- (id)mediaInfo;
- (id)stroke;
- (void)dynamicStrokeWidthUpdateToValue:(double)a3;
- (void)processChangedProperty:(int)a3;
- (void)setGeometry:(id)a3;
@end

@implementation TSDMediaLayout

- (CGRect)boundsForStandardKnobs
{
  x = self->mBoundsForStandardKnobs.origin.x;
  y = self->mBoundsForStandardKnobs.origin.y;
  width = self->mBoundsForStandardKnobs.size.width;
  height = self->mBoundsForStandardKnobs.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)processChangedProperty:(int)a3
{
  v7.receiver = self;
  v7.super_class = TSDMediaLayout;
  [(TSDDrawableLayout *)&v7 processChangedProperty:?];
  if (a3 == 517)
  {
    [(TSDLayout *)self invalidateFrame];
    [(TSDMediaLayout *)self invalidateAlignmentFrame];
    if (([(TSDInfo *)[(TSDLayout *)self info] isInlineWithText]& 1) != 0 || [(TSDInfo *)[(TSDLayout *)self info] isAnchoredToText])
    {
      v5 = [(TSDAbstractLayout *)self parent];
      if (v5)
      {
        v6 = v5;
        while ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v6 = [(TSDAbstractLayout *)v6 parent];
          if (!v6)
          {
            return;
          }
        }

        [(TSDAbstractLayout *)v6 wrappableChildInvalidated:self];
      }
    }
  }
}

- (TSDMediaLayout)initWithInfo:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSDMediaLayout;
  result = [(TSDLayout *)&v4 initWithInfo:a3];
  if (result)
  {
    *&result->mMediaInvalidFlags |= 1u;
  }

  return result;
}

- (id)mediaInfo
{
  objc_opt_class();
  [(TSDLayout *)self info];

  return TSUDynamicCast();
}

- (id)stroke
{
  if (self->mDynamicStroke)
  {
    return self->mDynamicStroke;
  }

  v5 = [(TSDMediaLayout *)self mediaInfo];

  return [v5 stroke];
}

- (void)dynamicStrokeWidthUpdateToValue:(double)a3
{
  v5 = [(TSDStroke *)self->mDynamicStroke isFrame];
  mDynamicStroke = self->mDynamicStroke;
  if (v5)
  {
    [(TSDMutableStroke *)mDynamicStroke setAssetScale:a3];
  }

  else
  {
    [(TSDMutableStroke *)mDynamicStroke setWidth:a3];
  }

  [(TSDMediaLayout *)self processChangedProperty:517];
  v7 = [objc_msgSend(objc_msgSend(-[TSDLayout layoutController](self "layoutController")];

  [v7 processChangedProperty:517];
}

- (void)setGeometry:(id)a3
{
  if ((*&self->mMediaInvalidFlags & 1) == 0)
  {
    v5 = [(TSDAbstractLayout *)self geometry];
    if (v5 && (v6 = v5, ![(TSDLayoutGeometry *)v5 differsInMoreThanTranslationFrom:a3]))
    {
      if (a3)
      {
        [a3 transform];
        v8 = v16.f64[1];
        v7 = v16.f64[0];
        v10 = v17.f64[1];
        v9 = v17.f64[0];
        v11 = v18.f64[1];
        v12 = v18.f64[0];
      }

      else
      {
        v11 = 0.0;
        v10 = 0.0;
        v8 = 0.0;
        v12 = 0.0;
        v9 = 0.0;
        v7 = 0.0;
      }

      [(TSDLayoutGeometry *)v6 transform];
      if ((*&self->mMediaInvalidFlags & 1) == 0)
      {
        v13 = TSDSubtractPoints(v12 + *(MEMORY[0x277CBF348] + 8) * v9 + v7 * *MEMORY[0x277CBF348], v11 + *(MEMORY[0x277CBF348] + 8) * v10 + v8 * *MEMORY[0x277CBF348], vaddq_f64(v18, vmlaq_n_f64(vmulq_n_f64(v17, *(MEMORY[0x277CBF348] + 8)), v16, *MEMORY[0x277CBF348])).f64[0]);
        self->mCachedAlignmentFrame.origin.x = TSDAddPoints(self->mCachedAlignmentFrame.origin.x, self->mCachedAlignmentFrame.origin.y, v13);
        self->mCachedAlignmentFrame.origin.y = v14;
      }
    }

    else
    {
      [(TSDMediaLayout *)self invalidateAlignmentFrame];
    }
  }

  v15.receiver = self;
  v15.super_class = TSDMediaLayout;
  [(TSDDrawableLayout *)&v15 setGeometry:a3];
}

- (CGRect)computeAlignmentFrameInRoot:(BOOL)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMediaLayout computeAlignmentFrameInRoot:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMediaLayout.m"), 177, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSDMediaLayout computeAlignmentFrameInRoot:]"), 0}]);
}

- (CGRect)alignmentFrame
{
  if (*&self->mMediaInvalidFlags)
  {
    p_mCachedAlignmentFrame = &self->mCachedAlignmentFrame;
    [(TSDMediaLayout *)self computeAlignmentFrameInRoot:0];
    p_mCachedAlignmentFrame->origin.x = v4;
    p_mCachedAlignmentFrame->origin.y = v5;
    p_mCachedAlignmentFrame->size.width = v6;
    p_mCachedAlignmentFrame->size.height = v7;
    *&self->mMediaInvalidFlags &= ~1u;
  }

  x = self->mCachedAlignmentFrame.origin.x;
  y = self->mCachedAlignmentFrame.origin.y;
  width = self->mCachedAlignmentFrame.size.width;
  height = self->mCachedAlignmentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)alignmentFrameInRoot
{
  if (!-[TSDAbstractLayout parent](self, "parent") || (v3 = -[TSDAbstractLayout parent](self, "parent"), v3 == [-[TSDLayout layoutController](self "layoutController")]))
  {
    [(TSDMediaLayout *)self alignmentFrame];
  }

  else
  {
    [(TSDMediaLayout *)self computeAlignmentFrameInRoot:1];
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

@end