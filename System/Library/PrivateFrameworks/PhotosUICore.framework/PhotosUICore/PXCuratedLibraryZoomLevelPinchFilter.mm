@interface PXCuratedLibraryZoomLevelPinchFilter
- (PXCuratedLibraryZoomLevelPinchFilter)init;
- (void)filterPinchGestureWithScale:(double)scale initialPinchHandler:(id)handler subsequentDirectionChangeHandler:(id)changeHandler;
- (void)reset;
@end

@implementation PXCuratedLibraryZoomLevelPinchFilter

- (PXCuratedLibraryZoomLevelPinchFilter)init
{
  v5.receiver = self;
  v5.super_class = PXCuratedLibraryZoomLevelPinchFilter;
  v2 = [(PXCuratedLibraryZoomLevelPinchFilter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXCuratedLibraryZoomLevelPinchFilter *)v2 reset];
  }

  return v3;
}

- (void)reset
{
  v3 = +[PXCuratedLibrarySettings sharedInstance];
  [v3 zoomLevelPinchSignificantScaleDelta];
  v5 = v4;

  self->_isTrackingPinch = 0;
  self->_didHandleInitialPinch = 0;
  v6 = [[off_1E7721778 alloc] initWithInput:1.0];
  initialDirectionFilter = self->_initialDirectionFilter;
  self->_initialDirectionFilter = v6;

  [(PXInitialHysteresisNumberFilter *)self->_initialDirectionFilter setHysteresis:v5];
  v8 = [[off_1E7721510 alloc] initWithInput:1.0];
  scaleDirectionFilter = self->_scaleDirectionFilter;
  self->_scaleDirectionFilter = v8;

  v10 = self->_scaleDirectionFilter;

  [(PXChangeDirectionNumberFilter *)v10 setMinimumChange:v5];
}

- (void)filterPinchGestureWithScale:(double)scale initialPinchHandler:(id)handler subsequentDirectionChangeHandler:(id)changeHandler
{
  handlerCopy = handler;
  changeHandlerCopy = changeHandler;
  scaleDirectionFilter = self->_scaleDirectionFilter;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __121__PXCuratedLibraryZoomLevelPinchFilter_filterPinchGestureWithScale_initialPinchHandler_subsequentDirectionChangeHandler___block_invoke;
  v18[3] = &__block_descriptor_40_e33_v16__0___PXMutableNumberFilter__8l;
  *&v18[4] = scale;
  [(PXChangeDirectionNumberFilter *)scaleDirectionFilter performChanges:v18];
  [(PXChangeDirectionNumberFilter *)self->_scaleDirectionFilter output];
  v12 = v11;
  if (self->_isTrackingPinch)
  {
    if (self->_didHandleInitialPinch && changeHandlerCopy && v11 != self->_lastDirection)
    {
      if (v11 > 0.0)
      {
        v13 = 1;
      }

      else
      {
        v13 = -1;
      }

      changeHandlerCopy[2](changeHandlerCopy, v13);
    }
  }

  else
  {
    initialDirectionFilter = self->_initialDirectionFilter;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __121__PXCuratedLibraryZoomLevelPinchFilter_filterPinchGestureWithScale_initialPinchHandler_subsequentDirectionChangeHandler___block_invoke_2;
    v17[3] = &__block_descriptor_40_e33_v16__0___PXMutableNumberFilter__8l;
    *&v17[4] = scale;
    [(PXInitialHysteresisNumberFilter *)initialDirectionFilter performChanges:v17];
    [(PXInitialHysteresisNumberFilter *)self->_initialDirectionFilter output];
    if (v15 != 1.0)
    {
      self->_isTrackingPinch = 1;
      if (v15 > 1.0)
      {
        v16 = 1;
      }

      else
      {
        v16 = -1;
      }

      self->_didHandleInitialPinch = handlerCopy[2](handlerCopy, v16);
    }
  }

  self->_lastDirection = v12;
}

@end