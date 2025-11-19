@interface TSDFreehandDrawingAnimationPlaybackSession
- (TSDFreehandDrawingAnimationPlaybackSession)initWithFreehandDrawingInfo:(id)a3 duration:(double)a4 framesPerSecond:(double)a5;
- (double)visibilityOfChild:(id)a3;
- (id)dynamicOverrideForRep:(id)a3;
@end

@implementation TSDFreehandDrawingAnimationPlaybackSession

- (TSDFreehandDrawingAnimationPlaybackSession)initWithFreehandDrawingInfo:(id)a3 duration:(double)a4 framesPerSecond:(double)a5
{
  v9 = a3;
  v19.receiver = self;
  v19.super_class = TSDFreehandDrawingAnimationPlaybackSession;
  v10 = [(TSDFreehandDrawingAnimationPlaybackSession *)&v19 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_drawingInfo, a3);
    v12 = [TSDFreehandDrawingAnimationPlaybackTiming alloc];
    v14 = objc_msgSend_initWithFreehandDrawingInfo_(v12, v13, v11->_drawingInfo);
    timing = v11->_timing;
    v11->_timing = v14;

    v11->_framesPerSecond = a5;
    v11->_duration = a4;
    objc_msgSend_p_updateShouldParameterizeStrokes(v11, v16, v17);
  }

  return v11;
}

- (double)visibilityOfChild:(id)a3
{
  timing = self->_timing;
  v5 = a3;
  objc_msgSend_progress(self, v6, v7);
  objc_msgSend_visibilityOfChild_atPercent_(timing, v8, v5);
  v10 = v9;

  return v10;
}

- (id)dynamicOverrideForRep:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_info(v4, v5, v6);
  v10 = v7;
  if (v7 != self->_drawingInfo)
  {
    v13 = objc_msgSend_parentInfo(v7, v8, v9);
    drawingInfo = self->_drawingInfo;
    if (v13 != drawingInfo)
    {
LABEL_3:

LABEL_4:
      v15 = 0;
      goto LABEL_8;
    }

    v16 = objc_msgSend_freehandDrawingSpacerShape(drawingInfo, v11, v12);
    v19 = v16;
    if (v16 == v10)
    {

      goto LABEL_3;
    }

    v20 = self->_drawingInfo;
    v21 = objc_msgSend_info(v4, v17, v18);
    LOBYTE(v20) = objc_msgSend_isNonGroupedChild_(v20, v22, v21);

    if (v20)
    {
      goto LABEL_4;
    }
  }

  v15 = self;
LABEL_8:

  return v15;
}

@end