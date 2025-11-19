@interface RCPSyntheticEventStream
+ (id)eventStreamWithCLIArguments:(id)a3;
+ (id)eventStreamWithCLIArguments:(id)a3 withDisplayUUID:(id)a4;
+ (id)eventStreamWithEventActions:(id)a3;
- (BOOL)_isEdgePoint:(CGPoint)a3 getMask:(unsigned int *)a4;
- (CAMediaTimingFunction)pointerCurveFunction;
- (CAMediaTimingFunction)touchCurveFunction;
- (CGPoint)_normalizePoint:(CGPoint)a3;
- (CGSize)gsScreenPointSize;
- (CGSize)screenSize;
- (RCPSyntheticEventStream)init;
- (__IOHIDEvent)_createIOHIDWithEventType:(int64_t)a3;
- (__IOHIDEvent)_createIOSButtonHIDEventWithButtonType:(int64_t)a3 down:(BOOL)a4;
- (__IOHIDEvent)_createIOSButtonHIDEventWithPage:(unsigned int)a3 usage:(unsigned int)a4 down:(BOOL)a5;
- (__IOHIDEvent)_parentZeroPointerEvent;
- (double)_nextPointerDeltaFrom:(uint64_t)a3 to:(double)a4 step:(double)a5 steps:(double)a6;
- (double)_nextTouchLocationFrom:(void *)a1 to:at:;
- (double)defaultPressure;
- (double)defaultRadius;
- (id)_splitStringIntoArrayOfCharacters:(id)a3;
- (unint64_t)_currentMachTime;
- (void)_addIOHIDEventToProcessingBuffer:(__IOHIDEvent *)a3;
- (void)_delayBetweenMove:(int)a3 elapsedTime:(double)a4;
- (void)_dragWithStartPoint:(CGPoint)a3 mask:(unint64_t)a4 endPoint:(CGPoint)a5 mask:(unint64_t)a6 duration:(double)a7 tapAndWait:(double)a8 lift:(BOOL)a9 pressure:(double)a10 radius:(double)a11;
- (void)_finalizeHomeButtonEvents;
- (void)_finalizePointerButtonMasks;
- (void)_finalizeProcessingEventBuffer;
- (void)_flickWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 pressure:(double)a6 radius:(double)a7;
- (void)_hoverAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 pressure:(double)a5 radius:(double)a6 edgeMaskOptions:(id *)a7 withEventType:(int64_t)a8 withZPosition:(double)a9 withAzimuthAngle:(double)a10 withRollAngle:(double)a11 withAltitudeAngle:(double)a12;
- (void)_initScreenProperties;
- (void)_initScreenPropertiesForScreen:(id)a3;
- (void)_knobEventForOffset:(CGVector)a3 buttonMask:(unsigned int)a4 oldButtonMask:(unsigned int)a5;
- (void)_moveLastTouchPoint:(CGPoint)a3 eventMask:(unint64_t)a4;
- (void)_pressButtonEventForIndex:(int64_t)a3 down:(BOOL)a4;
- (void)_setMajorRadiusForAllPoints:(double)a3;
- (void)_setPressureForAllPoints:(double)a3;
- (void)_squeezeWithPhase:(unsigned __int16)a3 withPage:(id)a4 withUsage:(id)a5 withVersion:(unsigned __int8)a6 withStage:(unsigned int)a7 withTransition:(unsigned int)a8 withNextThreshold:(double)a9 withPressedThreshold:(double)a10 withReleasedThreshold:(double)a11 withNormalizedForce:(double)a12 withNormalizedForceVelocity:(double)a13;
- (void)_tap:(CGPoint)a3 withPressure:(double)a4;
- (void)_touchDownAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 pressure:(double)a5 radius:(double)a6 edgeMaskOptions:(id *)a7;
- (void)_touchSensitiveButtonEventWithPhase:(unsigned __int16)a3 withPage:(id)a4 withUsage:(id)a5 withStage:(unsigned int)a6 withTransition:(unsigned int)a7 withNormalizedForce:(double)a8 withNormalizedForceVelocity:(double)a9 withNormalizedPositionX:(double)a10 withNormalizedPositionDeltaX:(double)a11 withNormalizedPositionY:(double)a12 withNormalizedPositionDeltaY:(double)a13 withMajorRadius:(double)a14 withMinorRadius:(double)a15 withMask:(unsigned int)a16 withTouch:(int)a17 withNextThreshold:(double)a18 withPressedThreshold:(double)a19 withReleasedThreshold:(double)a20;
- (void)_updateTouchPoints:(CGPoint *)a3 count:(unint64_t)a4;
- (void)_withPointerEventStreamAtFrequency:(int64_t)a3 perform:(id)a4;
- (void)_wrapInPointerParentAndAddToProcessingBuffer:(__IOHIDEvent *)a3;
- (void)barrelRollAtLocation:(CGPoint)a3 withZPosition:(double)a4 withAltitudeAngle:(double)a5 withAzimuthAngle:(double)a6 withRollAngle:(double)a7;
- (void)beginButtonPressForButtonType:(int64_t)a3;
- (void)beginButtonPressWithPage:(unint64_t)a3 usage:(unint64_t)a4;
- (void)composeDockGestureOfFlavor:(unsigned __int16)a3 motion:(unsigned __int16)a4 frequency:(unint64_t)a5 actionBlock:(id)a6;
- (void)composeNavigationGestureInMotion:(unsigned __int16)a3 frequency:(unint64_t)a4 actionBlock:(id)a5;
- (void)composeWithSender:(id)a3 actionBlock:(id)a4;
- (void)dealloc;
- (void)dragWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5;
- (void)dragWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 pressure:(double)a6;
- (void)dragWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 radius:(double)a6;
- (void)dragWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 tapAndWait:(double)a6 lift:(BOOL)a7;
- (void)dragWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 tapAndWait:(double)a6 lift:(BOOL)a7 pressure:(double)a8;
- (void)dragWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 tapAndWait:(double)a6 lift:(BOOL)a7 radius:(double)a8;
- (void)dragWithStartPoint:(CGPoint)a3 mask:(unint64_t)a4 endPoint:(CGPoint)a5 mask:(unint64_t)a6 duration:(double)a7;
- (void)edgeOrb:(CGPoint)a3;
- (void)edgeOrbSwipe:(CGPoint)a3 withEndLocation:(CGPoint)a4 withDuration:(double)a5;
- (void)endButtonPressForButtonType:(int64_t)a3;
- (void)endButtonPressWithPage:(unint64_t)a3 usage:(unint64_t)a4;
- (void)flipRingerSwitchToValue:(BOOL)a3;
- (void)hoverAtLocation:(CGPoint)a3 withDuration:(double)a4;
- (void)hoverAtLocation:(CGPoint)a3 withDuration:(double)a4 withZPosition:(double)a5;
- (void)hoverAtLocation:(CGPoint)a3 withDuration:(double)a4 withZPosition:(double)a5 withAltitudeAngle:(double)a6 withAzimuthAngle:(double)a7 withRollAngle:(double)a8;
- (void)hoverToTapAtLocation:(CGPoint)a3 withDuration:(double)a4;
- (void)hoverToTapAtLocation:(CGPoint)a3 withDuration:(double)a4 withZPosition:(double)a5;
- (void)knobNudge:(CGVector)a3 buttonMask:(unsigned int)a4 duration:(double)a5;
- (void)liftUp:(CGPoint)a3 touchCount:(unint64_t)a4;
- (void)liftUpActivePointsByIndex:(id)a3;
- (void)liftUpAtAllActivePoints;
- (void)liftUpAtAllActivePointsWithEventType:(int64_t)a3;
- (void)liftUpAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4;
- (void)moveToPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 duration:(double)a5;
- (void)moveToPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 pressure:(double)a5 duration:(double)a6;
- (void)moveToPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 pressure:(double)a5 duration:(double)a6 radius:(double)a7;
- (void)multifingerDragWithPointArray:(CGPoint *)a3 numPoints:(unint64_t)a4 duration:(double)a5 numFingers:(unint64_t)a6;
- (void)peekAndPop:(CGPoint)a3 commit:(BOOL)a4 duration:(double)a5;
- (void)peekAndPop:(CGPoint)a3 commit:(BOOL)a4 duration:(double)a5 pressure:(double)a6 radius:(double)a7;
- (void)peekAndPop:(CGPoint)a3 commit:(BOOL)a4 duration:(double)a5 presure:(double)a6;
- (void)peekAndPop:(CGPoint)a3 commit:(BOOL)a4 duration:(double)a5 radius:(double)a6;
- (void)pinchCloseWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5;
- (void)pinchCloseWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 pressure:(double)a6;
- (void)pinchCloseWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 pressure:(double)a6 radius:(double)a7;
- (void)pinchCloseWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 radius:(double)a6;
- (void)pinchOpenWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5;
- (void)pinchOpenWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 pressure:(double)a6;
- (void)pinchOpenWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 pressure:(double)a6 radius:(double)a7;
- (void)pinchOpenWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 radius:(double)a6;
- (void)pointerDiscreteGesture:(id)a3 duration:(double)a4 frequency:(int64_t)a5;
- (void)pointerDiscreteScroll:(CGPoint)a3 duration:(double)a4;
- (void)pointerDiscreteScroll:(CGPoint)a3 duration:(double)a4 frequency:(int64_t)a5;
- (void)pointerMoveByDelta:(CGVector)a3 duration:(double)a4;
- (void)pointerMoveDelta:(CGPoint)a3 duration:(double)a4 frequency:(int64_t)a5;
- (void)pointerMoveFromOriginPoint:(CGPoint)a3 toDestinationPoint:(CGPoint)a4 duration:(double)a5 frequency:(int64_t)a6;
- (void)pointerMoveToPoint:(CGPoint)a3 duration:(double)a4;
- (void)pointerPhasedFlick:(CGPoint)a3 duration:(double)a4;
- (void)pointerPhasedFlick:(CGPoint)a3 duration:(double)a4 frequency:(int64_t)a5;
- (void)pointerPhasedScroll:(CGPoint)a3 duration:(double)a4;
- (void)pointerPhasedScroll:(CGPoint)a3 duration:(double)a4 frequency:(int64_t)a5;
- (void)pointerRotation:(double)a3 duration:(double)a4 frequency:(int64_t)a5;
- (void)pointerScale:(double)a3 duration:(double)a4 frequency:(int64_t)a5;
- (void)pointerSetAbsolutePosition:(CGPoint)a3;
- (void)pointerTranslatation:(CGPoint)a3 duration:(double)a4 frequency:(int64_t)a5;
- (void)pressButtons:(id)a3 duration:(double)a4;
- (void)pressButtonsWithPages:(id)a3 usages:(id)a4 duration:(double)a5;
- (void)pressDiscreteGameControllerButton:(int64_t)a3 duration:(double)a4;
- (void)rotate:(CGPoint)a3 withRadius:(double)a4 rotation:(double)a5 duration:(double)a6 touchCount:(unint64_t)a7;
- (void)rotateCrown:(double)a3 direction:(int64_t)a4 duration:(double)a5;
- (void)sendFlickWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5;
- (void)sendFlickWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 pressure:(double)a6;
- (void)sendFlickWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 radius:(double)a6;
- (void)sendUnicodeString:(id)a3;
- (void)sendUnicodeString:(id)a3 synthesizePerCharacterEvents:(BOOL)a4 durationBetweenEvents:(double)a5;
- (void)sendUnicodeStringByCharacters:(id)a3 durationBetweenEvents:(double)a4;
- (void)setPointerCurveFunction:(id)a3;
- (void)setSenderProperties:(id)a3;
- (void)squeeze;
- (void)squeezeAtLocation:(CGPoint)a3;
- (void)stylusBarrelDoubleTap;
- (void)tap:(CGPoint)a3 pressure:(double)a4;
- (void)tap:(CGPoint)a3 radius:(double)a4;
- (void)tapToWakeAtPoint:(CGPoint)a3;
- (void)taps:(unint64_t)a3 location:(CGPoint)a4 withNumberOfTouches:(unint64_t)a5;
- (void)taps:(unint64_t)a3 location:(CGPoint)a4 withNumberOfTouches:(unint64_t)a5 pressure:(double)a6 radius:(double)a7;
- (void)tapsNoLift:(unint64_t)a3 location:(CGPoint)a4 withNumberOfTouches:(unint64_t)a5;
- (void)touchDown:(CGPoint)a3;
- (void)touchDown:(CGPoint)a3 touchCount:(unint64_t)a4;
- (void)touchDown:(CGPoint)a3 touchCount:(unint64_t)a4 pressure:(double)a5;
- (void)touchDown:(CGPoint)a3 touchCount:(unint64_t)a4 pressure:(double)a5 radius:(double)a6;
- (void)touchDown:(CGPoint)a3 touchCount:(unint64_t)a4 radius:(double)a5;
- (void)touchDownAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4;
- (void)touchDownAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 pressure:(double)a5;
- (void)touchDownAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 radius:(double)a5;
- (void)touchSensitiveButtonClickWithPage:(id)a3 withUsage:(id)a4 withTouch:(int)a5 withNormalizedPositionY:(double)a6 withNormalizedPositionDeltaY:(double)a7;
- (void)touchSensitiveButtonEngagedWithDuration:(double)a3 withPage:(id)a4 withUsage:(id)a5 withTouch:(int)a6 withNormalizedPositionY:(double)a7 withNormalizedPositionDeltaY:(double)a8;
- (void)touchSensitiveButtonEngagedWithLiftWithDuration:(double)a3 withPage:(id)a4 withUsage:(id)a5 withTouch:(int)a6 withNormalizedPositionY:(double)a7 withNormalizedPositionDeltaY:(double)a8;
- (void)touchSensitiveButtonEngagedWithPage:(id)a3 withUsage:(id)a4 withTouch:(int)a5 withNormalizedPositionY:(double)a6 withNormalizedPositionDeltaY:(double)a7;
- (void)touchSensitiveButtonHoldWithDuration:(double)a3 withPage:(id)a4 withUsage:(id)a5 withTouch:(int)a6 withNormalizedPositionY:(double)a7 withNormalizedPositionDeltaY:(double)a8;
- (void)touchSensitiveButtonHoldWithPage:(id)a3 withUsage:(id)a4 withTouch:(int)a5 withNormalizedPositionY:(double)a6 withNormalizedPositionDeltaY:(double)a7;
- (void)touchSensitiveButtonIntermediatePressWithDuration:(double)a3 withPage:(id)a4 withUsage:(id)a5 withTouch:(int)a6 withNormalizedPositionY:(double)a7 withNormalizedPositionDeltaY:(double)a8;
- (void)touchSensitiveButtonIntermediatePressWithPage:(id)a3 withUsage:(id)a4 withTouch:(int)a5 withNormalizedPositionY:(double)a6 withNormalizedPositionDeltaY:(double)a7;
- (void)touchSensitiveButtonLiftWithPage:(id)a3 withUsage:(id)a4;
- (void)touchSensitiveButtonReleaseHoldWithPage:(id)a3 withUsage:(id)a4 withTouch:(int)a5 withNormalizedPositionY:(double)a6 withNormalizedPositionDeltaY:(double)a7;
- (void)touchTapDown:(CGPoint)a3;
- (void)vendorEventWithPage:(id)a3 withUsage:(id)a4 withVersion:(unsigned __int8)a5 withData:(id)a6;
- (void)withExclusiveChildStream:(id)a3 perform:(id)a4;
@end

@implementation RCPSyntheticEventStream

- (RCPSyntheticEventStream)init
{
  v12.receiver = self;
  v12.super_class = RCPSyntheticEventStream;
  v2 = [(RCPEventStream *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(RCPSyntheticEventStream *)v2 _initScreenProperties];
    v3->_activePoints = malloc_type_calloc(5uLL, 0x50uLL, 0x10000404A7914ACuLL);
    v4 = [MEMORY[0x277CBEB18] array];
    processingEventBuffer = v3->_processingEventBuffer;
    v3->_processingEventBuffer = v4;

    v3->_transducerType = 2;
    v3->_scalePointerPhaseScrollToPixels = 0;
    [(RCPSyntheticEventStream *)v3 setActivePointCount:0];
    v6 = [RCPPointerTrackingChildEventStream alloc];
    v7 = [(RCPPointerTrackingChildEventStream *)v6 initWithCurrentPointerLocation:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    [(RCPSyntheticEventStream *)v3 setPointerChildEventStream:v7];

    [(RCPSyntheticEventStream *)v3 pointerFrequency];
    v9 = v8;
    v10 = [(RCPSyntheticEventStream *)v3 pointerChildEventStream];
    [v10 setFrequency:v9];
  }

  return v3;
}

- (void)dealloc
{
  free(self->_activePoints);
  v3.receiver = self;
  v3.super_class = RCPSyntheticEventStream;
  [(RCPSyntheticEventStream *)&v3 dealloc];
}

- (void)_initScreenProperties
{
  v3 = [(RCPEventStream *)self environment];
  v4 = [v3 screens];
  v5 = [v4 firstObject];

  [(RCPSyntheticEventStream *)self _initScreenPropertiesForScreen:v5];
}

- (double)defaultRadius
{
  result = 0.027;
  if (!self->_transducerType)
  {
    return 0.0;
  }

  return result;
}

- (CGSize)gsScreenPointSize
{
  width = self->_gsScreenPointSize.width;
  height = self->_gsScreenPointSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (unint64_t)_currentMachTime
{
  v3 = [(RCPEventStream *)self environment];
  v4 = [v3 machAbsoluteTimeForTimeInterval:self->_currentTimeOffset];

  return v4;
}

- (double)defaultPressure
{
  if (self->_transducerType)
  {
    return 60;
  }

  else
  {
    return 120;
  }
}

- (CAMediaTimingFunction)touchCurveFunction
{
  touchCurveFunction = self->_touchCurveFunction;
  if (!touchCurveFunction)
  {
    v8 = RCPMediaTimingFunctionForInputType(0, 0, v2, v3, v4, v5);
    v9 = self->_touchCurveFunction;
    self->_touchCurveFunction = v8;

    touchCurveFunction = self->_touchCurveFunction;
  }

  return touchCurveFunction;
}

- (void)_finalizeProcessingEventBuffer
{
  [(RCPSyntheticEventStream *)self _finalizeHomeButtonEvents];

  [(RCPSyntheticEventStream *)self _finalizePointerButtonMasks];
}

- (void)_finalizeHomeButtonEvents
{
  v2 = self;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __52__RCPSyntheticEventStream__finalizeHomeButtonEvents__block_invoke_2;
  v29[3] = &unk_279AF1148;
  v29[4] = self;
  v3 = MEMORY[0x266715C00](v29, a2);
  v4 = [(RCPEventStream *)v2 environment];
  v20 = [v4 machAbsoluteTimeForTimeInterval:0.25];

  v5 = [(RCPEventStream *)v2 environment];
  v24 = [v5 machAbsoluteTimeForTimeInterval:0.38];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __52__RCPSyntheticEventStream__finalizeHomeButtonEvents__block_invoke_3;
  v28[3] = &unk_279AF1148;
  v28[4] = v2;
  v6 = MEMORY[0x266715C00](v28);
  if (![(NSMutableArray *)v2->_processingEventBuffer count])
  {
    goto LABEL_39;
  }

  v26 = 0;
  v27 = 0;
  v7 = 0;
  v25 = 0;
  v8 = 0;
  v9 = 0;
  v22 = v3;
  v23 = v6;
  v21 = v2;
  v10 = 1;
  do
  {
    v11 = [(NSMutableArray *)v2->_processingEventBuffer objectAtIndexedSubscript:v9];
    [v11 hidEvent];
    TimeStamp = IOHIDEventGetTimeStamp();
    v13 = TimeStamp;
    v14 = v27;
    if (v27)
    {
      if ((v10 & (v8 == 0)) != 0)
      {
        goto LABEL_12;
      }

      if (TimeStamp > v27)
      {
        goto LABEL_10;
      }
    }

    else if (!v8)
    {
      goto LABEL_12;
    }

    if (v8 && TimeStamp > v8)
    {
LABEL_10:
      if (v10)
      {
        v15 = v26;
      }

      else
      {
        if (v27 >= v8)
        {
          v16 = v8;
        }

        else
        {
          v16 = v27;
        }

        v9 = (v3)[2](v3, v2->_processingEventBuffer, v9, v16, v7, v25 & 1);
        v7 = 0;
        v14 = 0;
        v15 = v26;
      }

      v10 = 1;
      v27 = v14;
      if (v8 && v13 > v8)
      {
        v9 = v23[2](v23, v2->_processingEventBuffer, v9, v8, v15, 1);
        v8 = 0;
      }

      goto LABEL_34;
    }

LABEL_12:
    if (!__52__RCPSyntheticEventStream__finalizeHomeButtonEvents__block_invoke())
    {
      goto LABEL_33;
    }

    if (!IOHIDEventGetIntegerValue())
    {
      IOHIDEventSetIntegerValue();
      v8 = 0;
      v25 = 0;
      v17 = v7 <= 2;
      if (v7 > 2)
      {
        v7 = 0;
      }

      v18 = v27;
      if (v17)
      {
        v18 = v13 + v20;
      }

      v27 = v18;
      goto LABEL_33;
    }

    if (!v7)
    {
      IOHIDEventSetPhase();
      v10 = 0;
    }

    v8 = v13 + v24;
    IOHIDEventSetIntegerValue();
    v26 = v7 + 1;
    if (v7 < 2)
    {
      v25 = 1;
      ++v7;
      v2 = v21;
      v3 = v22;
      goto LABEL_33;
    }

    if (v10)
    {
      v25 = 1;
      v10 = 1;
      ++v7;
      v2 = v21;
      v3 = v22;
LABEL_33:
      ++v9;
      goto LABEL_34;
    }

    v2 = v21;
    v25 = 1;
    v3 = v22;
    v9 = (v22)[2](v22, v21->_processingEventBuffer, v9 + 1, v13, v7 + 1, 1);
    v27 = 0;
    v10 = 1;
    ++v7;
LABEL_34:
  }

  while (v9 < [(NSMutableArray *)v2->_processingEventBuffer count]);
  v19 = (v27 == 0) | v10;
  v6 = v23;
  if ((v19 & 1) == 0)
  {
    (v3[2])(v3, v2->_processingEventBuffer, v9);
  }

LABEL_39:
}

BOOL __52__RCPSyntheticEventStream__finalizeHomeButtonEvents__block_invoke()
{
  result = 0;
  if (IOHIDEventGetType() == 3)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v1 = IOHIDEventGetIntegerValue();
    if (IntegerValue == 12 && v1 == 64)
    {
      return 1;
    }
  }

  return result;
}

- (void)_finalizePointerButtonMasks
{
  v2 = self;
  v25 = *MEMORY[0x277D85DE8];
  v3 = 24;
  if ([(NSMutableArray *)self->_processingEventBuffer count])
  {
    v4 = 0;
    v5 = 0;
    v17 = 24;
    v18 = v2;
    do
    {
      v6 = [*(&v2->super.super.isa + v3) objectAtIndexedSubscript:{v4, v17, v18}];
      [v6 hidEvent];
      if (IOHIDEventGetType() == 17)
      {
        v19 = v6;
        v7 = IOHIDEventGetChildren();
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v21;
          do
          {
            v11 = 0;
            do
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(v7);
              }

              if (IOHIDEventGetType() == 2)
              {
                IntegerValue = IOHIDEventGetIntegerValue();
                v13 = IOHIDEventGetIntegerValue();
                v14 = 1 << (IntegerValue - 1);
                v15 = v14 | v5;
                v16 = v5 & ~v14;
                if (v13 <= 0)
                {
                  v5 = v16;
                }

                else
                {
                  v5 = v15;
                }

                IOHIDEventSetIntegerValue();
              }

              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v9);
        }

        IOHIDEventSetIntegerValue();

        v3 = v17;
        v2 = v18;
        v6 = v19;
      }

      ++v4;
    }

    while (v4 < [*(&v2->super.super.isa + v3) count]);
  }
}

- (CAMediaTimingFunction)pointerCurveFunction
{
  pointerCurveFunction = self->_pointerCurveFunction;
  if (!pointerCurveFunction)
  {
    v8 = RCPMediaTimingFunctionForInputType(0, 1, v2, v3, v4, v5);
    [(RCPSyntheticEventStream *)self setPointerCurveFunction:v8];

    pointerCurveFunction = self->_pointerCurveFunction;
  }

  return pointerCurveFunction;
}

- (void)setPointerCurveFunction:(id)a3
{
  objc_storeStrong(&self->_pointerCurveFunction, a3);
  v5 = a3;
  v6 = [(RCPSyntheticEventStream *)self pointerChildEventStream];
  [v6 setPointerCurveFunction:v5];
}

- (void)composeDockGestureOfFlavor:(unsigned __int16)a3 motion:(unsigned __int16)a4 frequency:(unint64_t)a5 actionBlock:(id)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a6;
  v16 = [[RCPSyntheticFluidSwipeEventStream alloc] initWithEventType:23 flavor:v8 motion:v7];
  v11 = [(RCPEventStream *)self environment];
  [(RCPSyntheticFluidSwipeEventStream *)v16 setEnvironment:v11];

  v12 = [(RCPSyntheticEventStream *)self senderProperties];
  [(RCPSyntheticFluidSwipeEventStream *)v16 setSenderProperties:v12];

  [(RCPSyntheticFluidSwipeEventStream *)v16 setCurrentTimeOffset:self->_currentTimeOffset];
  [(RCPSyntheticFluidSwipeEventStream *)v16 setFrequency:a5];
  v10[2](v10, v16);

  processingEventBuffer = self->_processingEventBuffer;
  v14 = [(RCPSyntheticFluidSwipeEventStream *)v16 finalizeEventStream];
  [(NSMutableArray *)processingEventBuffer addObjectsFromArray:v14];

  [(RCPSyntheticFluidSwipeEventStream *)v16 currentTimeOffset];
  self->_currentTimeOffset = v15;
}

- (void)composeNavigationGestureInMotion:(unsigned __int16)a3 frequency:(unint64_t)a4 actionBlock:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = [[RCPSyntheticFluidSwipeEventStream alloc] initWithEventType:16 flavor:5 motion:v6];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__RCPSyntheticEventStream_composeNavigationGestureInMotion_frequency_actionBlock___block_invoke;
  v12[3] = &unk_279AF10F8;
  v14 = v8;
  v15 = a4;
  v13 = v9;
  v10 = v8;
  v11 = v9;
  [(RCPSyntheticEventStream *)self withExclusiveChildStream:v11 perform:v12];
}

uint64_t __82__RCPSyntheticEventStream_composeNavigationGestureInMotion_frequency_actionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrequency:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)withExclusiveChildStream:(id)a3 perform:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RCPEventStream *)self environment];
  [v7 setEnvironment:v8];

  v9 = [(RCPSyntheticEventStream *)self senderProperties];
  [v7 setSenderProperties:v9];

  [v7 setCurrentTimeOffset:self->_currentTimeOffset];
  v6[2](v6);

  processingEventBuffer = self->_processingEventBuffer;
  v11 = [v7 finalizeEventStream];
  [(NSMutableArray *)processingEventBuffer addObjectsFromArray:v11];

  [v7 currentTimeOffset];
  v13 = v12;

  self->_currentTimeOffset = v13;
}

+ (id)eventStreamWithCLIArguments:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__RCPSyntheticEventStream_eventStreamWithCLIArguments___block_invoke;
  v11[3] = &unk_279AF1120;
  v5 = v4;
  v12 = v5;
  v13 = &v14;
  v6 = [a1 eventStreamWithEventActions:v11];
  v7 = v6;
  if (*(v15 + 24))
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __55__RCPSyntheticEventStream_eventStreamWithCLIArguments___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  while ([v3 count])
  {
    v4 = parseCommandFromCLIArguments(v3, v5);

    v3 = v4;
    if (!v4)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      goto LABEL_6;
    }
  }

LABEL_6:
}

+ (id)eventStreamWithCLIArguments:(id)a3 withDisplayUUID:(id)a4
{
  v6 = a4;
  v7 = [a1 eventStreamWithCLIArguments:a3];
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      v9 = [v7 senderProperties];
      v10 = [v9 senderPropertiesWithDisplayUUID:v6];
      [v8 setSenderProperties:v10];
    }

    v11 = v8;
  }

  return v8;
}

+ (id)eventStreamWithEventActions:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v3[2](v3, v4);

  [v4 _finalizeProcessingEventBuffer];
  [v4 setEvents:v4[3]];
  v5 = v4[3];
  v4[3] = 0;

  return v4;
}

- (void)_initScreenPropertiesForScreen:(id)a3
{
  p_screenSize = &self->_screenSize;
  v5 = a3;
  [v5 pointSize];
  p_screenSize->width = v6;
  p_screenSize->height = v7;
  v8 = [(RCPEventStream *)self environment];
  self->_touchFrequency = [v8 touchScanRate];

  v9 = [(RCPEventStream *)self environment];
  self->_pointerFrequency = [v9 pointerScanRate];

  self->_gsScreenPointSize = *p_screenSize;
  [v5 scale];
  v11 = v10;

  self->_gsScreenScaleFactor = v11;
  width = self->_gsScreenPointSize.width;
  self->_gsScreenPointSize.height = v11 * self->_gsScreenPointSize.height;
  self->_gsScreenPointSize.width = self->_gsScreenScaleFactor * width;
}

- (__IOHIDEvent)_createIOSButtonHIDEventWithPage:(unsigned int)a3 usage:(unsigned int)a4 down:(BOOL)a5
{
  [(RCPSyntheticEventStream *)self _currentMachTime];
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  IOHIDEventSetIntegerValue();
  return KeyboardEvent;
}

- (__IOHIDEvent)_createIOSButtonHIDEventWithButtonType:(int64_t)a3 down:(BOOL)a4
{
  v4 = a4;
  v5 = a3 - 1;
  if ((a3 - 1) > 7)
  {
    v7 = 64;
    v6 = 12;
  }

  else
  {
    v6 = dword_261A03FC4[v5];
    v7 = dword_261A03FE4[v5];
  }

  return [(RCPSyntheticEventStream *)self _createIOSButtonHIDEventWithPage:v6 usage:v7 down:v4];
}

- (__IOHIDEvent)_createIOHIDWithEventType:(int64_t)a3
{
  v5 = [(RCPSyntheticEventStream *)self activePoints];
  x = v5->var4.x;
  y = v5->var4.y;
  [(RCPSyntheticEventStream *)self activePoints];
  [(RCPSyntheticEventStream *)self _normalizePoint:x, y];
  [(RCPSyntheticEventStream *)self activePoints];
  [(RCPSyntheticEventStream *)self activePoints];
  [(RCPSyntheticEventStream *)self activePoints];
  if ((a3 - 1) > 0xB)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_261A04004[a3 - 1];
  }

  if ([(RCPSyntheticEventStream *)self activePointCount])
  {
    v9 = 0;
    v10 = 68;
    do
    {
      v8 |= [(RCPSyntheticEventStream *)self activePoints][v10];
      ++v9;
      v10 += 80;
    }

    while (v9 < [(RCPSyntheticEventStream *)self activePointCount]);
  }

  [(RCPSyntheticEventStream *)self _currentMachTime];
  DigitizerEvent = IOHIDEventCreateDigitizerEvent();
  v12 = [(RCPSyntheticEventStream *)self senderProperties];

  if (v12)
  {
    v13 = [(RCPSyntheticEventStream *)self senderProperties];
    v14 = [v13 properties];
    v15 = [v14 objectForKeyedSubscript:@"DisplayIntegrated"];
    [v15 BOOLValue];

    IOHIDEventSetIntegerValue();
    v16 = [(RCPSyntheticEventStream *)self senderProperties];
    v17 = [v16 properties];
    v18 = [v17 objectForKeyedSubscript:@"Built-In"];
    [v18 BOOLValue];
  }

  else
  {
    IOHIDEventSetIntegerValue();
  }

  IOHIDEventSetIntegerValue();
  if ([(RCPSyntheticEventStream *)self activePointCount])
  {
    v19 = 0;
    v20 = 0;
    v31 = DigitizerEvent;
    do
    {
      v21 = [(RCPSyntheticEventStream *)self activePoints];
      v22 = v21;
      if (a3 == 1)
      {
        v23 = &v21[v19];
        if (v21[v19].var5 == 0.0)
        {
          [(RCPSyntheticEventStream *)self defaultRadius];
          v23->var5 = v24;
        }

        if (v23->var6 == 0.0)
        {
          [(RCPSyntheticEventStream *)self defaultPressure];
          v23->var6 = v25;
        }

        if (!v22[v19].var7)
        {
          v22[v19].var7 = 3;
        }
      }

      else
      {
        v26 = &v21[v19];
        if (!v21[v19].var9)
        {
          v26->var5 = 0.0;
          v26->var6 = 0.0;
          v26->var7 = 0;
        }
      }

      [(RCPSyntheticEventStream *)self _normalizePoint:v22[v19].var4.x, v22[v19].var4.y];
      if (self->_transducerType)
      {
        DigitizerFingerEvent = IOHIDEventCreateDigitizerFingerEvent();
      }

      else
      {
        LODWORD(v30) = 64;
        DigitizerFingerEvent = IOHIDEventCreateDigitizerStylusEventWithPolarOrientation();
        IOHIDEventSetFloatValue();
        IOHIDEventSetFloatValue();
        IOHIDEventSetFloatValue();
        IOHIDEventSetIntegerValue();
        ++self->_generationCount;
        IOHIDEventSetIntegerValue();
        IOHIDEventSetFloatValue();
        IOHIDEventSetFloatValue();
        IOHIDEventSetIntegerValue();
        IOHIDEventSetIntegerValue();
      }

      v28 = &v22[v19];
      IOHIDEventSetFloatValue();
      DigitizerEvent = v31;
      IOHIDEventAppendEvent();
      if (a3 == 1 && !v28->var9)
      {
        v28->var9 = 1;
      }

      CFRelease(DigitizerFingerEvent);
      ++v20;
      ++v19;
    }

    while (v20 < [(RCPSyntheticEventStream *)self activePointCount]);
  }

  return DigitizerEvent;
}

- (void)_addIOHIDEventToProcessingBuffer:(__IOHIDEvent *)a3
{
  v4 = [RCPEvent eventWithHIDEvent:a3 deliveryTimeStamp:[(RCPSyntheticEventStream *)self _currentMachTime] senderProperties:self->_senderProperties preActions:0];
  [(NSMutableArray *)self->_processingEventBuffer addObject:v4];
}

- (CGPoint)_normalizePoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(RCPSyntheticEventStream *)self gsScreenPointSize];
  [(RCPSyntheticEventStream *)self gsScreenPointSize];
  [(RCPSyntheticEventStream *)self gsScreenPointSize];
  if (v6 == 0.0 || ([(RCPSyntheticEventStream *)self gsScreenPointSize], v7 == 0.0))
  {
    [RCPSyntheticEventStream _normalizePoint:];
  }

  [(RCPSyntheticEventStream *)self gsScreenPointSize];
  v9 = x / v8;
  [(RCPSyntheticEventStream *)self gsScreenPointSize];
  v11 = y / v10;
  [(RCPSyntheticEventStream *)self gsScreenScaleFactor];
  v13 = v9 * v12;
  [(RCPSyntheticEventStream *)self gsScreenScaleFactor];
  v15 = v11 * v14;
  v16 = v13;
  result.y = v15;
  result.x = v16;
  return result;
}

- (BOOL)_isEdgePoint:(CGPoint)a3 getMask:(unsigned int *)a4
{
  if (self->_transducerType != 2)
  {
    goto LABEL_14;
  }

  if (a3.y >= 0.01)
  {
    v5 = (a3.x < 0.01) << 27;
  }

  else
  {
    v5 = ((a3.x < 0.01) << 27) | 0x2000000;
  }

  if (a3.x > 0.99)
  {
    v5 |= 0x4000000u;
  }

  v6 = a3.y <= 0.99 ? v5 : v5 | 0x1000000;
  if (v6)
  {
    v7 = [(RCPEventStream *)self environment];
    v8 = [v7 homeButtonHardware];

    v9 = v6 | 0x40000;
    if (v8 == 2)
    {
      v9 = 2048;
    }
  }

  else
  {
LABEL_14:
    v9 = 0;
  }

  *a4 = v9;
  return v9 != 0;
}

uint64_t __52__RCPSyntheticEventStream__finalizeHomeButtonEvents__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = [v9 _createIOSButtonHIDEventWithButtonType:0 down:a6];
  IOHIDEventSetPhase();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetTimeStamp();
  v12 = [RCPEvent eventWithHIDEvent:v11 deliveryTimeStamp:a4];
  CFRelease(v11);
  [v10 insertObject:v12 atIndex:a3];

  return a3 + 1;
}

uint64_t __52__RCPSyntheticEventStream__finalizeHomeButtonEvents__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = [v9 _createIOSButtonHIDEventWithButtonType:0 down:a6];
  IOHIDEventSetIntegerValue();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetTimeStamp();
  v12 = [RCPEvent eventWithHIDEvent:v11 deliveryTimeStamp:a4];
  CFRelease(v11);
  [v10 insertObject:v12 atIndex:a3];

  return a3 + 1;
}

- (void)_updateTouchPoints:(CGPoint *)a3 count:(unint64_t)a4
{
  if ([(RCPSyntheticEventStream *)self activePointCount])
  {
    if (!a4)
    {
      [(RCPSyntheticEventStream *)self setActivePointCount:0];
      v7 = 6;
      goto LABEL_12;
    }

    if ([(RCPSyntheticEventStream *)self activePointCount]== a4)
    {
      v7 = 2;
    }

    else
    {
      v7 = 5;
    }

    [(RCPSyntheticEventStream *)self setActivePointCount:a4];
  }

  else
  {
    [(RCPSyntheticEventStream *)self setActivePointCount:a4];
    v7 = 1;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  v8 = 32;
  do
  {
    v9 = [(RCPSyntheticEventStream *)self activePoints];
    v10 = *a3++;
    *(&v9->var0 + v8) = v10;
    v8 += 80;
    --a4;
  }

  while (a4);
LABEL_12:
  v11 = [(RCPSyntheticEventStream *)self _createIOHIDWithEventType:v7];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v11];

  CFRelease(v11);
}

- (void)_delayBetweenMove:(int)a3 elapsedTime:(double)a4
{
  v6 = a3;
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  v8 = -(a4 - v6 * v7);

  [(RCPSyntheticEventStream *)self advanceTime:v8];
}

- (void)composeWithSender:(id)a3 actionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RCPSyntheticEventStream *)self senderProperties];
  [(RCPSyntheticEventStream *)self setSenderProperties:v7];

  v6[2](v6, self);
  [(RCPSyntheticEventStream *)self setSenderProperties:v8];
}

- (void)setSenderProperties:(id)a3
{
  v5 = a3;
  if (self->_senderProperties != v5)
  {
    objc_storeStrong(&self->_senderProperties, a3);
    v6 = [(RCPEventSenderProperties *)self->_senderProperties properties];
    v7 = [v6 objectForKeyedSubscript:@"displayUUID"];
    if (v7)
    {
      v8 = [(RCPEventStream *)self environment];
      v9 = [v8 screens];
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __47__RCPSyntheticEventStream_setSenderProperties___block_invoke;
      v17 = &unk_279AF1170;
      v18 = v7;
      v19 = self;
      [v9 enumerateObjectsUsingBlock:&v14];
    }

    else
    {
      [(RCPSyntheticEventStream *)self _initScreenProperties];
    }

    v10 = [v6 objectForKeyedSubscript:{@"PrimaryUsagePage", v14, v15, v16, v17}];
    if ([v10 intValue] == 13)
    {
      v11 = [v6 objectForKeyedSubscript:@"PrimaryUsage"];
      v12 = [v11 intValue];

      if (v12 == 32)
      {
        v13 = 0;
LABEL_10:
        self->_transducerType = v13;

        goto LABEL_11;
      }
    }

    else
    {
    }

    v13 = 2;
    goto LABEL_10;
  }

LABEL_11:
}

void __47__RCPSyntheticEventStream_setSenderProperties___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 displayUUID];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    [*(a1 + 40) _initScreenPropertiesForScreen:v8];
    *a4 = 1;
  }
}

- (void)_touchDownAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 pressure:(double)a5 radius:(double)a6 edgeMaskOptions:(id *)a7
{
  if (a4)
  {
    v11 = a4;
    do
    {
      v13 = [(RCPSyntheticEventStream *)self activePointCount];
      x = a3->x;
      y = a3->y;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * v13 + 32) = *a3;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * v13 + 56) = a5;
      if (a7 && !a7->var1)
      {
        var0 = a7->var0;
        *([(RCPSyntheticEventStream *)self activePoints]+ 80 * v13 + 68) = var0;
      }

      else
      {
        [(RCPSyntheticEventStream *)self _normalizePoint:x, y];
        v17 = v16;
        v19 = v18;
        *([(RCPSyntheticEventStream *)self activePoints]+ 80 * v13 + 68) = 0;
        [(RCPSyntheticEventStream *)self _isEdgePoint:[(RCPSyntheticEventStream *)self activePoints]+ 80 * v13 + 68 getMask:v17, v19];
      }

      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * v13 + 72) = 0;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * v13 + 48) = a6;
      [(RCPSyntheticEventStream *)self setActivePointCount:[(RCPSyntheticEventStream *)self activePointCount]+ 1];
      ++a3;
      --v11;
    }

    while (v11);
  }

  v21 = [(RCPSyntheticEventStream *)self _createIOHIDWithEventType:1, a5, a6];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v21];

  CFRelease(v21);
}

- (void)touchDownAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 radius:(double)a5
{
  [(RCPSyntheticEventStream *)self defaultPressure];

  [RCPSyntheticEventStream _touchDownAtPoints:"_touchDownAtPoints:touchCount:pressure:radius:edgeMaskOptions:" touchCount:a3 pressure:a4 radius:0 edgeMaskOptions:?];
}

- (void)touchDownAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 pressure:(double)a5
{
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self _touchDownAtPoints:a3 touchCount:a4 pressure:0 radius:a5 edgeMaskOptions:v9];
}

- (void)touchDownAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4
{
  [(RCPSyntheticEventStream *)self defaultPressure];
  v8 = v7;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self _touchDownAtPoints:a3 touchCount:a4 pressure:0 radius:v8 edgeMaskOptions:v9];
}

- (void)touchDown:(CGPoint)a3 touchCount:(unint64_t)a4 pressure:(double)a5 radius:(double)a6
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x28223BE20](self, a2, a3, *&a3.y, *&a5, *&a6);
  if (v12)
  {
    v13 = 0;
    v14 = &v15[-2 * v7 + 1];
    do
    {
      *(v14 - 1) = v8 + v13;
      *v14 = v9 + v13;
      v13 += 50;
      v14 += 2;
    }

    while (50 * v7 != v13);
  }

  [v6 _touchDownAtPoints:v10 touchCount:v11 pressure:? radius:? edgeMaskOptions:?];
}

- (void)touchDown:(CGPoint)a3 touchCount:(unint64_t)a4 radius:(double)a5
{
  y = a3.y;
  x = a3.x;
  [(RCPSyntheticEventStream *)self defaultPressure];

  [(RCPSyntheticEventStream *)self touchDown:a4 touchCount:x pressure:y radius:v10, a5];
}

- (void)touchDown:(CGPoint)a3 touchCount:(unint64_t)a4 pressure:(double)a5
{
  y = a3.y;
  x = a3.x;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self touchDown:a4 touchCount:x pressure:y radius:a5, v10];
}

- (void)touchDown:(CGPoint)a3 touchCount:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v9 = v8;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self touchDown:a4 touchCount:x pressure:y radius:v9, v10];
}

- (void)touchDown:(CGPoint)a3
{
  [(RCPSyntheticEventStream *)self defaultPressure:*&a3.x];
  v5 = v4;
  [(RCPSyntheticEventStream *)self defaultRadius];
  [(RCPSyntheticEventStream *)self _touchDownAtPoints:&v7 touchCount:1 pressure:0 radius:v5 edgeMaskOptions:v6];
}

- (void)touchTapDown:(CGPoint)a3
{
  v9 = a3;
  v8 = 0;
  [(RCPSyntheticEventStream *)self _isEdgePoint:&v8 getMask:?];
  v8 |= 0x20000u;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v5 = v4;
  [(RCPSyntheticEventStream *)self defaultRadius];
  [(RCPSyntheticEventStream *)self _touchDownAtPoints:&v9 touchCount:1 pressure:&v7 radius:v5 edgeMaskOptions:v6];
}

- (void)edgeOrb:(CGPoint)a3
{
  v9 = a3;
  v8 = 0;
  [(RCPSyntheticEventStream *)self _isEdgePoint:&v8 getMask:?];
  v8 |= 0x8000u;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v5 = v4;
  [(RCPSyntheticEventStream *)self defaultRadius];
  [(RCPSyntheticEventStream *)self _touchDownAtPoints:&v9 touchCount:1 pressure:&v7 radius:v5 edgeMaskOptions:v6];
  [(RCPSyntheticEventStream *)self moveToPoints:&v9 touchCount:1 pressure:300.0 duration:0.5];
  [(RCPSyntheticEventStream *)self moveToPoints:&v9 touchCount:1 pressure:150.0 duration:0.2];
  [(RCPSyntheticEventStream *)self moveToPoints:&v9 touchCount:1 pressure:700.0 duration:1.3];
  [(RCPSyntheticEventStream *)self liftUpAtPoints:&v9 touchCount:1];
}

- (void)edgeOrbSwipe:(CGPoint)a3 withEndLocation:(CGPoint)a4 withDuration:(double)a5
{
  v17 = a3;
  v16 = 0;
  [(RCPSyntheticEventStream *)self _isEdgePoint:&v16 getMask:?];
  v16 |= 0x8000u;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v8 = v7;
  [(RCPSyntheticEventStream *)self defaultRadius];
  [(RCPSyntheticEventStream *)self _touchDownAtPoints:&v17 touchCount:1 pressure:&v15 radius:v8 edgeMaskOptions:v9];
  [(RCPSyntheticEventStream *)self moveToPoints:&v17 touchCount:1 pressure:300.0 duration:0.5];
  currentTimeOffset = self->_currentTimeOffset;
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  if (v11 < a5)
  {
    v12 = 0;
    do
    {
      v13 = self->_currentTimeOffset - currentTimeOffset;
      [(RCPSyntheticEventStream *)self _moveLastTouchPoint:0 eventMask:[RCPSyntheticEventStream _nextTouchLocationFrom:? to:? at:?]];
      [(RCPSyntheticEventStream *)self _delayBetweenMove:v12 elapsedTime:v13];
      [(RCPSyntheticEventStream *)self touchMoveInterval];
      v12 = (v12 + 1);
    }

    while (v13 < a5 - v14);
  }

  [(RCPSyntheticEventStream *)self liftUpAtAllActivePoints];
}

- (void)liftUpActivePointsByIndex:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v23 + 1) + 8 * i) integerValue];
        if (v10 < [(RCPSyntheticEventStream *)self activePointCount])
        {
          *([(RCPSyntheticEventStream *)self activePoints]+ 80 * v10 + 72) = 0;
          ++v7;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v11 = [(RCPSyntheticEventStream *)self _createIOHIDWithEventType:6];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v11];
  CFRelease(v11);
  v12 = [(RCPSyntheticEventStream *)self activePointCount];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    do
    {
      if (([(RCPSyntheticEventStream *)self activePoints]+ 80 * v14)[72])
      {
        ++v14;
      }

      else if (v14 <= 3)
      {
        v15 = v14 - 4;
        v16 = 80 * v14;
        do
        {
          v17 = [(RCPSyntheticEventStream *)self activePoints]+ v16;
          v18 = [(RCPSyntheticEventStream *)self activePoints]+ v16;
          *&v17->var0 = *&v18[1].var0;
          v19 = *&v18[1].var7;
          v21 = *&v18[1].var2;
          var4 = v18[1].var4;
          *&v17->var5 = *&v18[1].var5;
          *&v17->var7 = v19;
          *&v17->var2 = v21;
          v17->var4 = var4;
          v16 += 80;
        }

        while (!__CFADD__(v15++, 1));
      }

      --v13;
    }

    while (v13);
  }

  [(RCPSyntheticEventStream *)self setActivePointCount:[(RCPSyntheticEventStream *)self activePointCount]- v7];
}

- (void)liftUpAtAllActivePointsWithEventType:(int64_t)a3
{
  if ([(RCPSyntheticEventStream *)self activePointCount])
  {
    v5 = 0;
    v6 = 72;
    do
    {
      *([(RCPSyntheticEventStream *)self activePoints]+ v6) = 0;
      ++v5;
      v6 += 80;
    }

    while (v5 < [(RCPSyntheticEventStream *)self activePointCount]);
  }

  v7 = [(RCPSyntheticEventStream *)self _createIOHIDWithEventType:a3];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v7];
  CFRelease(v7);

  [(RCPSyntheticEventStream *)self setActivePointCount:0];
}

- (void)liftUpAtAllActivePoints
{
  if ([(RCPSyntheticEventStream *)self activePointCount])
  {
    v3 = 0;
    v4 = 72;
    do
    {
      *([(RCPSyntheticEventStream *)self activePoints]+ v4) = 0;
      ++v3;
      v4 += 80;
    }

    while (v3 < [(RCPSyntheticEventStream *)self activePointCount]);
  }

  v5 = [(RCPSyntheticEventStream *)self _createIOHIDWithEventType:6];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v5];
  CFRelease(v5);

  [(RCPSyntheticEventStream *)self setActivePointCount:0];
}

- (void)liftUpAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4
{
  v7 = [(RCPSyntheticEventStream *)self activePointCount];
  v8 = v7 - a4;
  if (a4)
  {
    v9 = 80 * v7 - 80 * a4;
    do
    {
      v10 = [(RCPSyntheticEventStream *)self activePoints];
      v11 = *a3++;
      *(&v10->var4 + v9) = v11;
      *([(RCPSyntheticEventStream *)self activePoints]+ v9 + 72) = 0;
      v9 += 80;
      --a4;
    }

    while (a4);
  }

  v12 = [(RCPSyntheticEventStream *)self _createIOHIDWithEventType:6];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v12];
  CFRelease(v12);

  [(RCPSyntheticEventStream *)self setActivePointCount:v8];
}

- (void)liftUp:(CGPoint)a3 touchCount:(unint64_t)a4
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a4 >= 5)
  {
    v4 = 5;
  }

  else
  {
    v4 = a4;
  }

  if (a4)
  {
    v5 = &v7[1] - (16 * v4);
    v6 = v4;
    do
    {
      *(v5 - 8) = a3;
      v5 += 16;
      --v6;
    }

    while (v6);
  }

  [(RCPSyntheticEventStream *)self liftUpAtPoints:a3.x touchCount:a3.y];
}

- (void)_moveLastTouchPoint:(CGPoint)a3 eventMask:(unint64_t)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(RCPSyntheticEventStream *)self activePoints];
  v9 = &v8[[(RCPSyntheticEventStream *)self activePointCount]];
  v9[-1].var4.x = x;
  v9[-1].var4.y = y;
  if (a4)
  {
    v10 = [(RCPSyntheticEventStream *)self activePoints];
    v10[[(RCPSyntheticEventStream *)self activePointCount]- 1].var8 = a4;
  }

  v11 = [(RCPSyntheticEventStream *)self _createIOHIDWithEventType:2];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v11];

  CFRelease(v11);
}

- (void)moveToPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 pressure:(double)a5 duration:(double)a6 radius:(double)a7
{
  v29 = a3;
  v34 = *MEMORY[0x277D85DE8];
  if (a4 >= 5)
  {
    v11 = 5;
  }

  else
  {
    v11 = a4;
  }

  v32 = &v29 - (16 * v11);
  v33 = a4;
  v12 = v32;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v14 = v13;
  currentTimeOffset = self->_currentTimeOffset;
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  if (v16 < a6)
  {
    v17 = 0;
    v18 = a5 - v14;
    v30 = (v12 + 8);
    p_y = &v29->y;
    do
    {
      v19 = self->_currentTimeOffset - currentTimeOffset;
      v20 = v19 / a6;
      if (v19 / a6 > 1.0)
      {
        v20 = 1.0;
      }

      v21 = fmax(v20, 0.0);
      if (v33)
      {
        v22 = v11;
        v24 = v30;
        v23 = p_y;
        v25 = v32;
        v26 = 32;
        do
        {
          if (!v17)
          {
            *v25 = [(RCPSyntheticEventStream *)self activePoints][v26];
          }

          ++v25;
          v26 += 80;
          *(v24 - 1) = [RCPSyntheticEventStream _nextTouchLocationFrom:? to:? at:?];
          *v24 = v27;
          v23 += 2;
          v24 += 2;
          --v22;
        }

        while (v22);
      }

      [(RCPSyntheticEventStream *)self _setPressureForAllPoints:v14 + v18 * v21];
      [(RCPSyntheticEventStream *)self _setMajorRadiusForAllPoints:a7];
      [(RCPSyntheticEventStream *)self _updateTouchPoints:v12 count:v11];
      [(RCPSyntheticEventStream *)self _delayBetweenMove:v17 elapsedTime:v19];
      [(RCPSyntheticEventStream *)self touchMoveInterval];
      v17 = (v17 + 1);
    }

    while (v19 < a6 - v28);
  }

  [(RCPSyntheticEventStream *)self _updateTouchPoints:v29 count:v11];
}

- (void)moveToPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 pressure:(double)a5 duration:(double)a6
{
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self moveToPoints:a3 touchCount:a4 pressure:a5 duration:a6 radius:v11];
}

- (void)moveToPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 duration:(double)a5
{
  [(RCPSyntheticEventStream *)self defaultPressure];

  [RCPSyntheticEventStream moveToPoints:"moveToPoints:touchCount:pressure:duration:" touchCount:a3 pressure:a4 duration:?];
}

- (void)_setPressureForAllPoints:(double)a3
{
  v5 = 5;
  do
  {
    *([(RCPSyntheticEventStream *)self activePoints]+ 56) = a3;
    --v5;
  }

  while (v5);
}

- (void)_setMajorRadiusForAllPoints:(double)a3
{
  v5 = 5;
  do
  {
    *([(RCPSyntheticEventStream *)self activePoints]+ 48) = a3;
    --v5;
  }

  while (v5);
}

- (void)tap:(CGPoint)a3 radius:(double)a4
{
  y = a3.y;
  x = a3.x;
  [(RCPSyntheticEventStream *)self defaultPressure];

  [(RCPSyntheticEventStream *)self taps:1 location:1 withNumberOfTouches:x pressure:y radius:v8, a4];
}

- (void)tap:(CGPoint)a3 pressure:(double)a4
{
  y = a3.y;
  x = a3.x;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self taps:1 location:1 withNumberOfTouches:x pressure:y radius:a4, v8];
}

- (void)tapToWakeAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(RCPSyntheticEventStream *)self touchTapDown:?];
  [(RCPSyntheticEventStream *)self advanceTime:0.05];

  [(RCPSyntheticEventStream *)self liftUp:1 touchCount:x, y];
}

- (void)_tap:(CGPoint)a3 withPressure:(double)a4
{
  y = a3.y;
  x = a3.x;
  *([(RCPSyntheticEventStream *)self activePoints:a3.x]+ 56) = 0x3FF0000000000000;

  [(RCPSyntheticEventStream *)self tap:x, y];
}

- (void)taps:(unint64_t)a3 location:(CGPoint)a4 withNumberOfTouches:(unint64_t)a5
{
  y = a4.y;
  x = a4.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v11 = v10;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self taps:a3 location:a5 withNumberOfTouches:x pressure:y radius:v11, v12];
}

- (void)taps:(unint64_t)a3 location:(CGPoint)a4 withNumberOfTouches:(unint64_t)a5 pressure:(double)a6 radius:(double)a7
{
  if (a3)
  {
    y = a4.y;
    x = a4.x;
    for (i = a3 - 1; ; --i)
    {
      [(RCPSyntheticEventStream *)self touchDown:a5 touchCount:x pressure:y radius:a6, a7];
      [(RCPSyntheticEventStream *)self advanceTime:0.05];
      [(RCPSyntheticEventStream *)self liftUp:a5 touchCount:x, y];
      if (!i)
      {
        break;
      }

      [(RCPSyntheticEventStream *)self advanceTime:0.15];
    }
  }
}

- (void)tapsNoLift:(unint64_t)a3 location:(CGPoint)a4 withNumberOfTouches:(unint64_t)a5
{
  if (a3)
  {
    y = a4.y;
    x = a4.x;
    for (i = a3 - 1; ; --i)
    {
      [(RCPSyntheticEventStream *)self touchDown:a5 touchCount:x, y];
      [(RCPSyntheticEventStream *)self advanceTime:0.05];
      if (!i)
      {
        break;
      }

      [(RCPSyntheticEventStream *)self advanceTime:0.15];
    }
  }
}

- (void)pressButtonsWithPages:(id)a3 usages:(id)a4 duration:(double)a5
{
  v21 = a3;
  v8 = a4;
  v9 = [v21 count];
  if (v9 < 1)
  {
    [(RCPSyntheticEventStream *)self advanceTime:a5];
  }

  else
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = [v21 objectAtIndexedSubscript:i];
      v13 = [v12 unsignedIntValue];
      v14 = [v8 objectAtIndexedSubscript:i];
      v15 = -[RCPSyntheticEventStream _createIOSButtonHIDEventWithPage:usage:down:](self, "_createIOSButtonHIDEventWithPage:usage:down:", v13, [v14 unsignedIntValue], 1);

      [(RCPSyntheticEventStream *)self advanceTime:0.0001];
      [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v15];
      CFRelease(v15);
    }

    [(RCPSyntheticEventStream *)self advanceTime:a5];
    for (j = 0; j != v10; ++j)
    {
      v17 = [v21 objectAtIndexedSubscript:j];
      v18 = [v17 unsignedIntValue];
      v19 = [v8 objectAtIndexedSubscript:j];
      v20 = -[RCPSyntheticEventStream _createIOSButtonHIDEventWithPage:usage:down:](self, "_createIOSButtonHIDEventWithPage:usage:down:", v18, [v19 unsignedIntValue], 0);

      [(RCPSyntheticEventStream *)self advanceTime:0.0001];
      [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v20];
      CFRelease(v20);
    }
  }
}

- (void)pressButtons:(id)a3 duration:(double)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = -[RCPSyntheticEventStream _createIOSButtonHIDEventWithButtonType:down:](self, "_createIOSButtonHIDEventWithButtonType:down:", [*(*(&v22 + 1) + 8 * v10) integerValue], 1);
        [(RCPSyntheticEventStream *)self advanceTime:0.0001];
        [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v11];
        CFRelease(v11);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  [(RCPSyntheticEventStream *)self advanceTime:a4];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = -[RCPSyntheticEventStream _createIOSButtonHIDEventWithButtonType:down:](self, "_createIOSButtonHIDEventWithButtonType:down:", [*(*(&v18 + 1) + 8 * v16) integerValue], 0);
        [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v17];
        CFRelease(v17);
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }
}

- (void)beginButtonPressForButtonType:(int64_t)a3
{
  v4 = [(RCPSyntheticEventStream *)self _createIOSButtonHIDEventWithButtonType:a3 down:1];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v4];

  CFRelease(v4);
}

- (void)endButtonPressForButtonType:(int64_t)a3
{
  v4 = [(RCPSyntheticEventStream *)self _createIOSButtonHIDEventWithButtonType:a3 down:0];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v4];

  CFRelease(v4);
}

- (void)beginButtonPressWithPage:(unint64_t)a3 usage:(unint64_t)a4
{
  v5 = [(RCPSyntheticEventStream *)self _createIOSButtonHIDEventWithPage:a3 usage:a4 down:1];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v5];

  CFRelease(v5);
}

- (void)endButtonPressWithPage:(unint64_t)a3 usage:(unint64_t)a4
{
  v5 = [(RCPSyntheticEventStream *)self _createIOSButtonHIDEventWithPage:a3 usage:a4 down:0];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v5];

  CFRelease(v5);
}

- (void)flipRingerSwitchToValue:(BOOL)a3
{
  v4 = [(RCPSyntheticEventStream *)self _createIOSButtonHIDEventWithPage:11 usage:46 down:a3];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v4];

  CFRelease(v4);
}

- (void)rotateCrown:(double)a3 direction:(int64_t)a4 duration:(double)a5
{
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  v8 = v7;
  v9 = llround(a5 / v7);
  if (v9 >= 2)
  {
    v10 = v9 - 1;
    do
    {
      [(RCPSyntheticEventStream *)self advanceTime:v8];
      [RCPSyntheticEventStream _nextTouchLocationFrom:? to:? at:?];
      [(RCPSyntheticEventStream *)self _currentMachTime];
      ScrollEvent = IOHIDEventCreateScrollEvent();
      IOHIDEventSetIntegerValue();
      [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:ScrollEvent];
      CFRelease(ScrollEvent);
      --v10;
    }

    while (v10);
  }
}

- (void)_knobEventForOffset:(CGVector)a3 buttonMask:(unsigned int)a4 oldButtonMask:(unsigned int)a5
{
  [(RCPSyntheticEventStream *)self _currentMachTime];
  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
  [(RCPSyntheticEventStream *)self _currentMachTime];
  v7 = IOHIDEventCreate();
  IOHIDEventSetFloatValue();
  IOHIDEventSetFloatValue();
  if (v7)
  {
    IOHIDEventAppendEvent();
    CFRelease(v7);
  }

  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:RelativePointerEvent];

  CFRelease(RelativePointerEvent);
}

- (void)knobNudge:(CGVector)a3 buttonMask:(unsigned int)a4 duration:(double)a5
{
  v6 = *&a4;
  [(RCPSyntheticEventStream *)self _knobEventForOffset:*&a4 buttonMask:0 oldButtonMask:a3.dx, a3.dy];
  [(RCPSyntheticEventStream *)self advanceTime:a5];

  [(RCPSyntheticEventStream *)self _knobEventForOffset:0 buttonMask:v6 oldButtonMask:0.0, 0.0];
}

- (void)sendUnicodeString:(id)a3
{
  v6 = [a3 dataUsingEncoding:4];
  [(RCPSyntheticEventStream *)self _currentMachTime];
  v4 = v6;
  [v6 bytes];
  [v6 length];
  UnicodeEvent = IOHIDEventCreateUnicodeEvent();
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:UnicodeEvent];
  CFRelease(UnicodeEvent);
}

- (void)sendUnicodeStringByCharacters:(id)a3 durationBetweenEvents:(double)a4
{
  v8 = a3;
  if ([v8 count])
  {
    v6 = 0;
    do
    {
      v7 = [v8 objectAtIndexedSubscript:v6];
      [(RCPSyntheticEventStream *)self sendUnicodeString:v7];

      if (v6 != [v8 count] - 1)
      {
        [(RCPSyntheticEventStream *)self advanceTime:a4];
      }

      ++v6;
    }

    while ([v8 count] > v6);
  }
}

- (void)sendUnicodeString:(id)a3 synthesizePerCharacterEvents:(BOOL)a4 durationBetweenEvents:(double)a5
{
  if (a4)
  {
    v7 = [(RCPSyntheticEventStream *)self _splitStringIntoArrayOfCharacters:a3];
    [(RCPSyntheticEventStream *)self sendUnicodeStringByCharacters:v7 durationBetweenEvents:a5];
  }

  else
  {

    [(RCPSyntheticEventStream *)self sendUnicodeString:a3, a5];
  }
}

- (id)_splitStringIntoArrayOfCharacters:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "length")}];
  v6 = [v4 length];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__RCPSyntheticEventStream__splitStringIntoArrayOfCharacters___block_invoke;
  v10[3] = &unk_279AF10D0;
  v11 = v5;
  v7 = v5;
  [v4 enumerateSubstringsInRange:0 options:v6 usingBlock:{2, v10}];

  v8 = [v7 copy];

  return v8;
}

uint64_t __61__RCPSyntheticEventStream__splitStringIntoArrayOfCharacters___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (void)pressDiscreteGameControllerButton:(int64_t)a3 duration:(double)a4
{
  v6 = [(RCPSyntheticEventStream *)self _createIOHIDGameControllerEventForDpadButton:a3];
  [(RCPSyntheticEventStream *)self advanceTime:0.0001];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v6];
  CFRelease(v6);
  [(RCPSyntheticEventStream *)self advanceTime:a4];
  v7 = [(RCPSyntheticEventStream *)self _createIOHIDGameControllerEventForDpadButton:0];
  [(RCPSyntheticEventStream *)self advanceTime:0.0001];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v7];

  CFRelease(v7);
}

- (void)dragWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v12 = v11;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self dragWithStartPoint:v9 endPoint:v8 duration:x pressure:y radius:a5, v12, v13];
}

- (void)dragWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 radius:(double)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  [(RCPSyntheticEventStream *)self defaultPressure];

  [(RCPSyntheticEventStream *)self dragWithStartPoint:v11 endPoint:v10 duration:x pressure:y radius:a5, v13, a6];
}

- (void)dragWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 pressure:(double)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self dragWithStartPoint:v11 endPoint:v10 duration:x pressure:y radius:a5, a6, v13];
}

- (void)dragWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 tapAndWait:(double)a6 lift:(BOOL)a7
{
  v7 = a7;
  y = a4.y;
  x = a4.x;
  v12 = a3.y;
  v13 = a3.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v16 = v15;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self dragWithStartPoint:v7 endPoint:v13 duration:v12 tapAndWait:x lift:y pressure:a5 radius:a6, v16, v17];
}

- (void)dragWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 tapAndWait:(double)a6 lift:(BOOL)a7 radius:(double)a8
{
  v9 = a7;
  y = a4.y;
  x = a4.x;
  v14 = a3.y;
  v15 = a3.x;
  [(RCPSyntheticEventStream *)self defaultPressure];

  [(RCPSyntheticEventStream *)self dragWithStartPoint:v9 endPoint:v15 duration:v14 tapAndWait:x lift:y pressure:a5 radius:a6, v17, a8];
}

- (void)dragWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 tapAndWait:(double)a6 lift:(BOOL)a7 pressure:(double)a8
{
  v9 = a7;
  y = a4.y;
  x = a4.x;
  v14 = a3.y;
  v15 = a3.x;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self dragWithStartPoint:v9 endPoint:v15 duration:v14 tapAndWait:x lift:y pressure:a5 radius:a6, a8, v17];
}

- (void)dragWithStartPoint:(CGPoint)a3 mask:(unint64_t)a4 endPoint:(CGPoint)a5 mask:(unint64_t)a6 duration:(double)a7
{
  y = a5.y;
  x = a5.x;
  v12 = a3.y;
  v13 = a3.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v16 = v15;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self _dragWithStartPoint:a4 mask:a6 endPoint:1 mask:v13 duration:v12 tapAndWait:x lift:y pressure:a7 radius:0.0, v16, v17];
}

- (void)sendFlickWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v12 = v11;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self _flickWithStartPoint:v9 endPoint:v8 duration:x pressure:y radius:a5, v12, v13];
}

- (void)sendFlickWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 pressure:(double)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self _flickWithStartPoint:v11 endPoint:v10 duration:x pressure:y radius:a5, a6, v13];
}

- (void)sendFlickWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 radius:(double)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  [(RCPSyntheticEventStream *)self defaultPressure];

  [(RCPSyntheticEventStream *)self _flickWithStartPoint:v11 endPoint:v10 duration:x pressure:y radius:a5, v13, a6];
}

- (void)multifingerDragWithPointArray:(CGPoint *)a3 numPoints:(unint64_t)a4 duration:(double)a5 numFingers:(unint64_t)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v36 = a3;
  if (a3 && a4 >= 2)
  {
    v35 = &v35;
    if (a6 >= 5)
    {
      v9 = 5;
    }

    else
    {
      v9 = a6;
    }

    v10 = (MEMORY[0x28223BE20])(self, a2, *&a5) / (a4 - 1);
    v11 = (v9 >> 1);
    v37 = v9;
    v12 = 1;
    do
    {
      currentTimeOffset = self->_currentTimeOffset;
      v14 = &v36[v12];
      v15 = *(v14 - 1);
      v40 = *(v14 - 2);
      v41 = currentTimeOffset;
      v38 = *v14;
      v39 = v15;
      [(RCPSyntheticEventStream *)self touchMoveInterval];
      if (v10 > v16)
      {
        v17 = 0;
        do
        {
          v18 = self->_currentTimeOffset - v41;
          v19 = [RCPSyntheticEventStream _nextTouchLocationFrom:? to:? at:?];
          v21 = v20;
          v22 = v19 - v11;
          v23 = 0.0;
          v24 = 0.0;
          if (v19 - v11 >= 0.0)
          {
            v25 = v22 + v37;
            [(RCPSyntheticEventStream *)self screenSize];
            v27 = v25 <= v26;
            v24 = v22;
            if (!v27)
            {
              [(RCPSyntheticEventStream *)self screenSize];
              v24 = v28;
            }
          }

          if (v21 - v11 >= 0.0)
          {
            v29 = v21 - v11 + v37;
            [(RCPSyntheticEventStream *)self screenSize];
            v27 = v29 <= v30;
            v23 = v21 - v11;
            if (!v27)
            {
              [(RCPSyntheticEventStream *)self screenSize];
              v23 = v31;
            }
          }

          if (a6)
          {
            v32 = 0;
            v33 = (&v35 - 2 * v9 + 1);
            do
            {
              *(v33 - 1) = v24 + v32;
              *v33 = v23 + v32++;
              v33 += 2;
            }

            while (v9 != v32);
          }

          [(RCPSyntheticEventStream *)self _updateTouchPoints:&v35 - 2 * v9 count:v9];
          [(RCPSyntheticEventStream *)self _delayBetweenMove:v17 elapsedTime:v18];
          [(RCPSyntheticEventStream *)self touchMoveInterval];
          v17 = (v17 + 1);
        }

        while (v18 < v10 - v34);
      }

      ++v12;
    }

    while (v12 != a4);
    [(RCPSyntheticEventStream *)self liftUpAtPoints:&v35 - 2 * v9 touchCount:v9];
    [(RCPSyntheticEventStream *)self setActivePointCount:0];
  }
}

- (void)rotate:(CGPoint)a3 withRadius:(double)a4 rotation:(double)a5 duration:(double)a6 touchCount:(unint64_t)a7
{
  v28 = a5;
  y = a3.y;
  x = a3.x;
  v29 = *MEMORY[0x277D85DE8];
  if (a7 >= 5)
  {
    v13 = 5;
  }

  else
  {
    v13 = a7;
  }

  v14 = MEMORY[0x28223BE20](self, a2, a3, *&a3.y, *&a4, *&a5);
  v16 = v15[4];
  [v15 touchMoveInterval];
  v18 = v17;
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  if (v19 < a6)
  {
    v20 = 0;
    v21 = llround(a6 / v18);
    do
    {
      if (a7)
      {
        v22 = 0;
        v23 = v20 / v21 * v28;
        v24 = &v28 - 2 * v13 + 1;
        do
        {
          v25 = __sincos_stret(v23 + 6.28318531 / v13 * v22);
          *(v24 - 1) = x + a4 * v25.__cosval;
          *v24 = y + a4 * v25.__sinval;
          ++v22;
          v24 += 2;
        }

        while (v13 != v22);
      }

      [(RCPSyntheticEventStream *)self _updateTouchPoints:&v28 - 2 * v13 count:v13, *&v28, v29];
      v26 = self->_currentTimeOffset - v16;
      [(RCPSyntheticEventStream *)self _delayBetweenMove:v20 elapsedTime:v26];
      [(RCPSyntheticEventStream *)self touchMoveInterval];
      v20 = (v20 + 1);
    }

    while (v26 < a6 - v27);
  }

  [(RCPSyntheticEventStream *)self liftUpAtPoints:&v28 - 2 * v13 touchCount:v13, *&v28];
  [(RCPSyntheticEventStream *)self setActivePointCount:0];
}

- (void)_dragWithStartPoint:(CGPoint)a3 mask:(unint64_t)a4 endPoint:(CGPoint)a5 mask:(unint64_t)a6 duration:(double)a7 tapAndWait:(double)a8 lift:(BOOL)a9 pressure:(double)a10 radius:(double)a11
{
  y = a5.y;
  x = a5.x;
  v29 = a3;
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  v22 = v21;
  v28 = a4;
  [(RCPSyntheticEventStream *)self _touchDownAtPoints:&v29 touchCount:1 pressure:&v28 radius:a10 edgeMaskOptions:a11];
  if (a8 > 0.0)
  {
    [(RCPSyntheticEventStream *)self advanceTime:a8];
  }

  v23 = llround(a7 / v22);
  if (v23 >= 2)
  {
    v24 = 0;
    v25 = v23 - 1;
    do
    {
      [(RCPSyntheticEventStream *)self advanceTime:v22];
      v26 = [RCPSyntheticEventStream _nextTouchLocationFrom:? to:? at:?];
      if (v24 >= v25 / 3)
      {
        v27 = a6;
      }

      else
      {
        v27 = a4;
      }

      [(RCPSyntheticEventStream *)self _moveLastTouchPoint:v27 eventMask:v26];
      ++v24;
    }

    while (v25 != v24);
  }

  [(RCPSyntheticEventStream *)self advanceTime:v22];
  if (a9)
  {
    [(RCPSyntheticEventStream *)self liftUp:x, y];
  }
}

- (void)_flickWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 pressure:(double)a6 radius:(double)a7
{
  y = a4.y;
  x = a4.x;
  currentTimeOffset = self->_currentTimeOffset;
  [RCPSyntheticEventStream touchDown:"touchDown:touchCount:pressure:radius:" touchCount:1 pressure:? radius:?];
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  if (v12 < a5)
  {
    v13 = 0;
    v14 = 0.0;
    do
    {
      [(RCPSyntheticEventStream *)self _delayBetweenMove:v13 elapsedTime:v14];
      v14 = self->_currentTimeOffset - currentTimeOffset;
      [(RCPSyntheticEventStream *)self _moveLastTouchPoint:0 eventMask:[RCPSyntheticEventStream _nextTouchLocationFrom:? to:? at:?]];
      v13 = (v13 + 1);
      [(RCPSyntheticEventStream *)self touchMoveInterval];
    }

    while (v14 < a5 - v15);
  }

  [(RCPSyntheticEventStream *)self liftUp:x, y];
}

- (void)pinchOpenWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v12 = v11;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self pinchOpenWithStartPoint:v9 endPoint:v8 duration:x pressure:y radius:a5, v12, v13];
}

- (void)pinchOpenWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 radius:(double)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  [(RCPSyntheticEventStream *)self defaultPressure];

  [(RCPSyntheticEventStream *)self pinchOpenWithStartPoint:v11 endPoint:v10 duration:x pressure:y radius:a5, v13, a6];
}

- (void)pinchOpenWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 pressure:(double)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self pinchOpenWithStartPoint:v11 endPoint:v10 duration:x pressure:y radius:a5, a6, v13];
}

- (void)pinchCloseWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v12 = v11;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self pinchCloseWithStartPoint:v9 endPoint:v8 duration:x pressure:y radius:a5, v12, v13];
}

- (void)pinchCloseWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 pressure:(double)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self pinchCloseWithStartPoint:v11 endPoint:v10 duration:x pressure:y radius:a5, a6, v13];
}

- (void)pinchCloseWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 radius:(double)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  [(RCPSyntheticEventStream *)self defaultPressure];

  [(RCPSyntheticEventStream *)self pinchCloseWithStartPoint:v11 endPoint:v10 duration:x pressure:y radius:a5, v13, a6];
}

- (void)peekAndPop:(CGPoint)a3 commit:(BOOL)a4 duration:(double)a5
{
  v6 = a4;
  y = a3.y;
  x = a3.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v11 = v10;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self peekAndPop:v6 commit:x duration:y pressure:a5 radius:v11, v12];
}

- (void)peekAndPop:(CGPoint)a3 commit:(BOOL)a4 duration:(double)a5 presure:(double)a6
{
  v8 = a4;
  y = a3.y;
  x = a3.x;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self peekAndPop:v8 commit:x duration:y pressure:a5 radius:a6, v12];
}

- (void)peekAndPop:(CGPoint)a3 commit:(BOOL)a4 duration:(double)a5 radius:(double)a6
{
  v8 = a4;
  y = a3.y;
  x = a3.x;
  [(RCPSyntheticEventStream *)self defaultPressure];

  [(RCPSyntheticEventStream *)self peekAndPop:v8 commit:x duration:y pressure:a5 radius:v12, a6];
}

- (void)peekAndPop:(CGPoint)a3 commit:(BOOL)a4 duration:(double)a5 pressure:(double)a6 radius:(double)a7
{
  v9 = a4;
  v11 = a3;
  [(RCPSyntheticEventStream *)self _touchDownAtPoints:&v11 touchCount:1 pressure:0 radius:a6 edgeMaskOptions:a7];
  [(RCPSyntheticEventStream *)self moveToPoints:&v11 touchCount:1 pressure:300.0 duration:0.5 radius:a7];
  [(RCPSyntheticEventStream *)self moveToPoints:&v11 touchCount:1 pressure:150.0 duration:0.2 radius:a7];
  [(RCPSyntheticEventStream *)self advanceTime:a5];
  if (v9)
  {
    [(RCPSyntheticEventStream *)self moveToPoints:&v11 touchCount:1 pressure:700.0 duration:0.8 radius:a7];
  }

  [(RCPSyntheticEventStream *)self liftUpAtPoints:&v11 touchCount:1];
}

- (__IOHIDEvent)_parentZeroPointerEvent
{
  [(RCPSyntheticEventStream *)self _currentMachTime];
  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();

  return CFAutorelease(RelativePointerEvent);
}

- (void)_wrapInPointerParentAndAddToProcessingBuffer:(__IOHIDEvent *)a3
{
  [(RCPSyntheticEventStream *)self _currentMachTime];
  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
  IOHIDEventAppendEvent();
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:RelativePointerEvent];

  CFRelease(RelativePointerEvent);
}

- (void)pointerSetAbsolutePosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(RCPSyntheticEventStream *)self _currentMachTime];
  v6 = IOHIDEventCreate();
  v7 = [(RCPSyntheticEventStream *)self pointerChildEventStream];
  [v7 setCurrentPointerLocation:{x, y}];

  [(RCPSyntheticEventStream *)self _normalizePoint:x, y];
  v9 = v8;
  v11 = v10;
  v12 = [(RCPSyntheticEventStream *)self pointerChildEventStream];
  [v12 orientedNormalPoint:{v9, v11}];

  IOHIDEventSetFloatValue();
  IOHIDEventSetFloatValue();
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v6];

  CFRelease(v6);
}

- (void)pointerMoveDelta:(CGPoint)a3 duration:(double)a4 frequency:(int64_t)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__RCPSyntheticEventStream_pointerMoveDelta_duration_frequency___block_invoke;
  v5[3] = &unk_279AF1048;
  v5[4] = self;
  v6 = a3;
  v7 = a4;
  [(RCPSyntheticEventStream *)self _withPointerEventStreamAtFrequency:a5 perform:v5];
}

- (void)pointerMoveByDelta:(CGVector)a3 duration:(double)a4
{
  dy = a3.dy;
  dx = a3.dx;
  v8 = [(RCPSyntheticEventStream *)self pointerChildEventStream];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__RCPSyntheticEventStream_pointerMoveByDelta_duration___block_invoke;
  v9[3] = &unk_279AF1048;
  v9[4] = self;
  *&v9[5] = dx;
  *&v9[6] = dy;
  *&v9[7] = a4;
  [(RCPSyntheticEventStream *)self withExclusiveChildStream:v8 perform:v9];
}

void __55__RCPSyntheticEventStream_pointerMoveByDelta_duration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pointerChildEventStream];
  [v2 moveByDelta:*(a1 + 40) duration:{*(a1 + 48), *(a1 + 56)}];
}

- (void)pointerMoveToPoint:(CGPoint)a3 duration:(double)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(RCPSyntheticEventStream *)self pointerChildEventStream];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__RCPSyntheticEventStream_pointerMoveToPoint_duration___block_invoke;
  v9[3] = &unk_279AF1048;
  v9[4] = self;
  *&v9[5] = x;
  *&v9[6] = y;
  *&v9[7] = a4;
  [(RCPSyntheticEventStream *)self withExclusiveChildStream:v8 perform:v9];
}

void __55__RCPSyntheticEventStream_pointerMoveToPoint_duration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pointerChildEventStream];
  [v2 moveToPoint:*(a1 + 40) duration:{*(a1 + 48), *(a1 + 56)}];
}

- (void)pointerMoveFromOriginPoint:(CGPoint)a3 toDestinationPoint:(CGPoint)a4 duration:(double)a5 frequency:(int64_t)a6
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __92__RCPSyntheticEventStream_pointerMoveFromOriginPoint_toDestinationPoint_duration_frequency___block_invoke;
  v6[3] = &unk_279AF1198;
  v6[4] = self;
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [(RCPSyntheticEventStream *)self _withPointerEventStreamAtFrequency:a6 perform:v6];
}

uint64_t __92__RCPSyntheticEventStream_pointerMoveFromOriginPoint_toDestinationPoint_duration_frequency___block_invoke(uint64_t a1)
{
  [*(a1 + 32) pointerMoveToPoint:*(a1 + 40) duration:{*(a1 + 48), 0.1}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 56);

  return [v2 pointerMoveToPoint:v5 duration:{v3, v4}];
}

- (void)pointerDiscreteScroll:(CGPoint)a3 duration:(double)a4 frequency:(int64_t)a5
{
  v5 = vcvtpd_s64_f64(a5 * a4);
  if (v5 >= 1)
  {
    [(RCPSyntheticEventStream *)self pointerDiscreteScroll:v5 duration:a3.x frequency:a3.y, 1.0 / a5];
  }
}

- (void)pointerDiscreteScroll:(CGPoint)a3 duration:(double)a4
{
  y = a3.y;
  x = a3.x;
  [(RCPSyntheticEventStream *)self pointerFrequency];

  [(RCPSyntheticEventStream *)self pointerDiscreteScroll:v8 duration:x frequency:y, a4];
}

- (void)pointerPhasedScroll:(CGPoint)a3 duration:(double)a4 frequency:(int64_t)a5
{
  y = a3.y;
  x = a3.x;
  v10 = objc_alloc_init(RCPScrollEventStream);
  [(RCPScrollEventStream *)v10 setFrequency:a5];
  if (self->_scalePointerPhaseScrollToPixels)
  {
    [(RCPSyntheticEventStream *)self gsScreenScaleFactor];
    [(RCPScrollEventStream *)v10 setDeltaToPixelsScaleFactor:?];
  }

  v11 = [(RCPSyntheticEventStream *)self pointerCurveFunction];
  [(RCPScrollEventStream *)v10 setPointerCurveFunction:v11];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__RCPSyntheticEventStream_pointerPhasedScroll_duration_frequency___block_invoke;
  v13[3] = &unk_279AF1048;
  v14 = v10;
  v15 = x;
  v16 = y;
  v17 = a4;
  v12 = v10;
  [(RCPSyntheticEventStream *)self withExclusiveChildStream:v12 perform:v13];
}

- (void)pointerPhasedScroll:(CGPoint)a3 duration:(double)a4
{
  y = a3.y;
  x = a3.x;
  [(RCPSyntheticEventStream *)self pointerFrequency];

  [(RCPSyntheticEventStream *)self pointerPhasedScroll:v8 duration:x frequency:y, a4];
}

- (void)pointerPhasedFlick:(CGPoint)a3 duration:(double)a4 frequency:(int64_t)a5
{
  y = a3.y;
  x = a3.x;
  v10 = objc_alloc_init(RCPScrollEventStream);
  [(RCPScrollEventStream *)v10 setFrequency:a5];
  if (self->_scalePointerPhaseScrollToPixels)
  {
    [(RCPSyntheticEventStream *)self gsScreenScaleFactor];
    [(RCPScrollEventStream *)v10 setDeltaToPixelsScaleFactor:?];
  }

  v11 = [(RCPSyntheticEventStream *)self pointerCurveFunction];
  v12 = [v11 rcp_functionWithLinearEnd];
  [(RCPScrollEventStream *)v10 setPointerCurveFunction:v12];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__RCPSyntheticEventStream_pointerPhasedFlick_duration_frequency___block_invoke;
  v14[3] = &unk_279AF1048;
  v15 = v10;
  v16 = x;
  v17 = y;
  v18 = a4;
  v13 = v10;
  [(RCPSyntheticEventStream *)self withExclusiveChildStream:v13 perform:v14];
}

- (void)pointerPhasedFlick:(CGPoint)a3 duration:(double)a4
{
  y = a3.y;
  x = a3.x;
  [(RCPSyntheticEventStream *)self pointerFrequency];

  [(RCPSyntheticEventStream *)self pointerPhasedFlick:v8 duration:x frequency:y, a4];
}

- (void)pointerDiscreteGesture:(id)a3 duration:(double)a4 frequency:(int64_t)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v8 = a5;
  v9 = vcvtpd_s64_f64(a5 * a4);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *MEMORY[0x277CBF348];
    v12 = *(MEMORY[0x277CBF348] + 8);
    v34 = 1.0 / v8;
    do
    {
      v13 = [(RCPSyntheticEventStream *)self _parentZeroPointerEvent];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = v35;
      v14 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (!v14)
      {
        goto LABEL_17;
      }

      v15 = v14;
      v16 = *v38;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v37 + 1) + 8 * i);
          if ([v18 isScale])
          {
            LODWORD(v19) = 1056437569;
            LODWORD(v20) = 1026291025;
            LODWORD(v21) = 1057228128;
            LODWORD(v22) = 1064648875;
            v23 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v19 :v20 :v21 :v22];
            [v18 z];
            [v23 rcp_solveForDelta:v9 withSteps:v10 step:?];
            [(RCPSyntheticEventStream *)self _currentMachTime];
            ScaleEvent = IOHIDEventCreateScaleEvent();
LABEL_12:
            v29 = ScaleEvent;
            IOHIDEventAppendEvent();
            CFRelease(v29);

            continue;
          }

          if ([v18 isRotation])
          {
            LODWORD(v25) = 1056437569;
            LODWORD(v26) = 1026291025;
            LODWORD(v27) = 1057228128;
            LODWORD(v28) = 1064648875;
            v23 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v25 :v26 :v27 :v28];
            [v18 z];
            [v23 rcp_solveForDelta:v9 withSteps:v10 step:?];
            [(RCPSyntheticEventStream *)self _currentMachTime];
            ScaleEvent = IOHIDEventCreateRotationEvent();
            goto LABEL_12;
          }

          if ([v18 isTranslation])
          {
            [v18 x];
            v31 = v30;
            [v18 y];
            [(RCPSyntheticEventStream *)self _nextPointerDeltaFrom:v9 to:v10 step:v11 steps:v12, v31, v32];
            [(RCPSyntheticEventStream *)self _currentMachTime];
            TranslationEvent = IOHIDEventCreateTranslationEvent();
            IOHIDEventAppendEvent();
            CFRelease(TranslationEvent);
          }
        }

        v15 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v15);
LABEL_17:

      [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v13];
      [(RCPSyntheticEventStream *)self advanceTime:v34];
      ++v10;
    }

    while (v10 != v9);
  }
}

- (void)pointerScale:(double)a3 duration:(double)a4 frequency:(int64_t)a5
{
  v8 = MEMORY[0x277CBEB98];
  v10 = [RCPDiscreteGestureSpec scaleZ:a3];
  v9 = [v8 setWithObject:v10];
  [(RCPSyntheticEventStream *)self pointerDiscreteGesture:v9 duration:a5 frequency:a4];
}

- (void)pointerRotation:(double)a3 duration:(double)a4 frequency:(int64_t)a5
{
  v8 = MEMORY[0x277CBEB98];
  v10 = [RCPDiscreteGestureSpec rotationZ:a3];
  v9 = [v8 setWithObject:v10];
  [(RCPSyntheticEventStream *)self pointerDiscreteGesture:v9 duration:a5 frequency:a4];
}

- (void)pointerTranslatation:(CGPoint)a3 duration:(double)a4 frequency:(int64_t)a5
{
  v8 = MEMORY[0x277CBEB98];
  v10 = [RCPDiscreteGestureSpec translation:a3.x, a3.y];
  v9 = [v8 setWithObject:v10];
  [(RCPSyntheticEventStream *)self pointerDiscreteGesture:v9 duration:a5 frequency:a4];
}

- (void)_pressButtonEventForIndex:(int64_t)a3 down:(BOOL)a4
{
  [(RCPSyntheticEventStream *)self _currentMachTime];
  v5 = IOHIDEventCreate();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetIntegerValue();
  [(RCPSyntheticEventStream *)self _wrapInPointerParentAndAddToProcessingBuffer:v5];

  CFRelease(v5);
}

- (void)_withPointerEventStreamAtFrequency:(int64_t)a3 perform:(id)a4
{
  v6 = a4;
  v7 = [(RCPSyntheticEventStream *)self pointerChildEventStream];
  [v7 frequency];
  v9 = v8;

  v10 = a3;
  v11 = [(RCPSyntheticEventStream *)self pointerChildEventStream];
  [v11 setFrequency:v10];

  v6[2](v6);
  v12 = [(RCPSyntheticEventStream *)self pointerChildEventStream];
  [v12 setFrequency:v9];
}

- (void)_hoverAtPoints:(CGPoint *)a3 touchCount:(unint64_t)a4 pressure:(double)a5 radius:(double)a6 edgeMaskOptions:(id *)a7 withEventType:(int64_t)a8 withZPosition:(double)a9 withAzimuthAngle:(double)a10 withRollAngle:(double)a11 withAltitudeAngle:(double)a12
{
  if (a4)
  {
    v21 = a4;
    do
    {
      v23 = [(RCPSyntheticEventStream *)self activePointCount];
      x = a3->x;
      y = a3->y;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * v23 + 32) = *a3;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * v23 + 56) = a5;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * v23) = a9;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * v23 + 16) = a10;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * v23 + 8) = a11;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * v23 + 24) = a12;
      if (a7 && !a7->var1)
      {
        var0 = a7->var0;
        *([(RCPSyntheticEventStream *)self activePoints]+ 80 * v23 + 68) = var0;
      }

      else
      {
        [(RCPSyntheticEventStream *)self _normalizePoint:x, y];
        v27 = v26;
        v29 = v28;
        *([(RCPSyntheticEventStream *)self activePoints]+ 80 * v23 + 68) = 0;
        [(RCPSyntheticEventStream *)self _isEdgePoint:[(RCPSyntheticEventStream *)self activePoints]+ 80 * v23 + 68 getMask:v27, v29];
      }

      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * v23 + 72) = 0;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * v23 + 48) = a6;
      [(RCPSyntheticEventStream *)self setActivePointCount:[(RCPSyntheticEventStream *)self activePointCount]+ 1];
      ++a3;
      --v21;
    }

    while (v21);
  }

  v31 = [(RCPSyntheticEventStream *)self _createIOHIDWithEventType:a8, a5, a6, a9, a10, a11, a12];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v31];

  CFRelease(v31);
}

- (void)hoverAtLocation:(CGPoint)a3 withDuration:(double)a4
{
  v6 = a3;
  [(RCPSyntheticEventStream *)self _hoverAtPoints:&v6 touchCount:1 pressure:0 radius:9 edgeMaskOptions:0.0 withEventType:0.0 withZPosition:5.0 withAzimuthAngle:0.0 withRollAngle:0.0 withAltitudeAngle:0.785398163];
  [(RCPSyntheticEventStream *)self advanceTime:a4];
  [(RCPSyntheticEventStream *)self liftUpAtAllActivePointsWithEventType:9];
}

- (void)hoverToTapAtLocation:(CGPoint)a3 withDuration:(double)a4
{
  v6 = a3;
  [(RCPSyntheticEventStream *)self _hoverAtPoints:&v6 touchCount:1 pressure:0 radius:12 edgeMaskOptions:0.0 withEventType:0.0 withZPosition:5.0 withAzimuthAngle:0.0 withRollAngle:0.0 withAltitudeAngle:0.785398163];
  [(RCPSyntheticEventStream *)self advanceTime:a4];
  [(RCPSyntheticEventStream *)self liftUpAtAllActivePointsWithEventType:10];
}

- (void)hoverAtLocation:(CGPoint)a3 withDuration:(double)a4 withZPosition:(double)a5
{
  v7 = a3;
  [(RCPSyntheticEventStream *)self _hoverAtPoints:&v7 touchCount:1 pressure:0 radius:9 edgeMaskOptions:0.0 withEventType:0.0 withZPosition:a5 withAzimuthAngle:0.0 withRollAngle:0.0 withAltitudeAngle:0.785398163];
  [(RCPSyntheticEventStream *)self advanceTime:a4];
  [(RCPSyntheticEventStream *)self liftUpAtAllActivePointsWithEventType:10];
}

- (void)hoverAtLocation:(CGPoint)a3 withDuration:(double)a4 withZPosition:(double)a5 withAltitudeAngle:(double)a6 withAzimuthAngle:(double)a7 withRollAngle:(double)a8
{
  v10 = a3;
  [(RCPSyntheticEventStream *)self _hoverAtPoints:&v10 touchCount:1 pressure:0 radius:9 edgeMaskOptions:0.0 withEventType:0.0 withZPosition:a5 withAzimuthAngle:a7 withRollAngle:a8 withAltitudeAngle:a6];
  [(RCPSyntheticEventStream *)self advanceTime:a4];
  [(RCPSyntheticEventStream *)self liftUpAtAllActivePointsWithEventType:10];
}

- (void)hoverToTapAtLocation:(CGPoint)a3 withDuration:(double)a4 withZPosition:(double)a5
{
  v7 = a3;
  [(RCPSyntheticEventStream *)self _hoverAtPoints:&v7 touchCount:1 pressure:0 radius:12 edgeMaskOptions:0.0 withEventType:0.0 withZPosition:a5 withAzimuthAngle:0.0 withRollAngle:0.0 withAltitudeAngle:0.785398163];
  [(RCPSyntheticEventStream *)self advanceTime:a4];
  [(RCPSyntheticEventStream *)self liftUpAtAllActivePointsWithEventType:10];
}

- (void)stylusBarrelDoubleTap
{
  [(RCPSyntheticEventStream *)self _currentMachTime];
  GenericGestureEvent = IOHIDEventCreateGenericGestureEvent();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetPhase();
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:GenericGestureEvent];

  CFRelease(GenericGestureEvent);
}

- (void)barrelRollAtLocation:(CGPoint)a3 withZPosition:(double)a4 withAltitudeAngle:(double)a5 withAzimuthAngle:(double)a6 withRollAngle:(double)a7
{
  v9 = a3;
  [(RCPSyntheticEventStream *)self _hoverAtPoints:&v9 touchCount:1 pressure:0 radius:9 edgeMaskOptions:0.0 withEventType:0.0 withZPosition:a4 withAzimuthAngle:0.0 withRollAngle:0.0 withAltitudeAngle:0.785398163];
  [(RCPSyntheticEventStream *)self _currentMachTime];
  GenericGestureEvent = IOHIDEventCreateGenericGestureEvent();
  IOHIDEventSetFloatValue();
  IOHIDEventSetFloatValue();
  IOHIDEventSetFloatValue();
  IOHIDEventSetPhase();
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:GenericGestureEvent];
  CFRelease(GenericGestureEvent);
}

- (void)_squeezeWithPhase:(unsigned __int16)a3 withPage:(id)a4 withUsage:(id)a5 withVersion:(unsigned __int8)a6 withStage:(unsigned int)a7 withTransition:(unsigned int)a8 withNextThreshold:(double)a9 withPressedThreshold:(double)a10 withReleasedThreshold:(double)a11 withNormalizedForce:(double)a12 withNormalizedForceVelocity:(double)a13
{
  v19 = __PAIR64__(a8, a7);
  v20 = a9;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v15 = a5;
  v16 = a4;
  [(RCPSyntheticEventStream *)self _currentMachTime:v19];
  GenericGestureEvent = IOHIDEventCreateGenericGestureEvent();
  v18 = [MEMORY[0x277CBEA90] dataWithBytes:&v19 length:48];
  [(RCPSyntheticEventStream *)self _currentMachTime];
  [v16 unsignedIntValue];

  [v15 unsignedIntValue];
  [v18 bytes];
  [v18 length];
  IOHIDEventCreateVendorDefinedEvent();
  IOHIDEventAppendEvent();
  IOHIDEventSetPhase();
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:GenericGestureEvent];
  CFRelease(GenericGestureEvent);
}

- (void)squeeze
{
  [(RCPSyntheticEventStream *)self _squeezeWithPhase:1 withPage:&unk_2874269D0 withUsage:&unk_2874269E8 withVersion:0 withStage:1 withTransition:1 withNextThreshold:1.0 withPressedThreshold:5.0 withReleasedThreshold:4.0 withNormalizedForce:5.01 withNormalizedForceVelocity:4.5];
  [(RCPSyntheticEventStream *)self _squeezeWithPhase:2 withPage:&unk_2874269D0 withUsage:&unk_2874269E8 withVersion:0 withStage:1 withTransition:0 withNextThreshold:1.0 withPressedThreshold:5.0 withReleasedThreshold:5.0 withNormalizedForce:0.8 withNormalizedForceVelocity:4.5];

  [(RCPSyntheticEventStream *)self _squeezeWithPhase:4 withPage:&unk_2874269D0 withUsage:&unk_2874269E8 withVersion:0 withStage:1 withTransition:2 withNextThreshold:1.0 withPressedThreshold:5.0 withReleasedThreshold:4.0 withNormalizedForce:3.99 withNormalizedForceVelocity:4.5];
}

- (void)squeezeAtLocation:(CGPoint)a3
{
  v4 = a3;
  [(RCPSyntheticEventStream *)self _hoverAtPoints:&v4 touchCount:1 pressure:0 radius:9 edgeMaskOptions:0.0 withEventType:0.0 withZPosition:5.0 withAzimuthAngle:0.0 withRollAngle:0.0 withAltitudeAngle:0.785398163];
  [(RCPSyntheticEventStream *)self squeeze];
}

- (void)_touchSensitiveButtonEventWithPhase:(unsigned __int16)a3 withPage:(id)a4 withUsage:(id)a5 withStage:(unsigned int)a6 withTransition:(unsigned int)a7 withNormalizedForce:(double)a8 withNormalizedForceVelocity:(double)a9 withNormalizedPositionX:(double)a10 withNormalizedPositionDeltaX:(double)a11 withNormalizedPositionY:(double)a12 withNormalizedPositionDeltaY:(double)a13 withMajorRadius:(double)a14 withMinorRadius:(double)a15 withMask:(unsigned int)a16 withTouch:(int)a17 withNextThreshold:(double)a18 withPressedThreshold:(double)a19 withReleasedThreshold:(double)a20
{
  v22 = a5;
  v23 = a4;
  [(RCPSyntheticEventStream *)self _currentMachTime];
  [v22 unsignedIntValue];

  [v23 unsignedIntValue];
  TouchSensitiveButtonEventWithRadius = IOHIDEventCreateTouchSensitiveButtonEventWithRadius();
  [(RCPSyntheticEventStream *)self _currentMachTime];
  IOHIDEventCreateForceStageEvent();
  IOHIDEventAppendEvent();
  IOHIDEventSetPhase();
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:TouchSensitiveButtonEventWithRadius];

  CFRelease(TouchSensitiveButtonEventWithRadius);
}

- (void)touchSensitiveButtonClickWithPage:(id)a3 withUsage:(id)a4 withTouch:(int)a5 withNormalizedPositionY:(double)a6 withNormalizedPositionDeltaY:(double)a7
{
  v12 = a4;
  v15 = a3;
  LODWORD(v13) = a5;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:1 withPage:v15 withUsage:v12 withStage:4 withTransition:1 withNormalizedForce:8 withNormalizedForceVelocity:0.002 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:a6 withMajorRadius:a7 withMinorRadius:0.0 withMask:0.0 withTouch:v13 withNextThreshold:0x7FF8000000000000 withPressedThreshold:0x7FF8000000000000 withReleasedThreshold:0x7FF8000000000000];
  LODWORD(v14) = a5;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:4 withPage:v15 withUsage:v12 withStage:4 withTransition:2 withNormalizedForce:8 withNormalizedForceVelocity:0.002 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:a6 withMajorRadius:a7 withMinorRadius:0.0 withMask:0.0 withTouch:v14 withNextThreshold:0x7FF8000000000000 withPressedThreshold:0x7FF8000000000000 withReleasedThreshold:0x7FF8000000000000];
}

- (void)touchSensitiveButtonHoldWithPage:(id)a3 withUsage:(id)a4 withTouch:(int)a5 withNormalizedPositionY:(double)a6 withNormalizedPositionDeltaY:(double)a7
{
  v12 = a4;
  v15 = a3;
  LODWORD(v13) = a5;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:1 withPage:v15 withUsage:v12 withStage:4 withTransition:1 withNormalizedForce:8 withNormalizedForceVelocity:0.002 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:a6 withMajorRadius:a7 withMinorRadius:0.0 withMask:0.0 withTouch:v13 withNextThreshold:0x7FF8000000000000 withPressedThreshold:0x7FF8000000000000 withReleasedThreshold:0x7FF8000000000000];
  LODWORD(v14) = a5;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:2 withPage:v15 withUsage:v12 withStage:4 withTransition:0 withNormalizedForce:8 withNormalizedForceVelocity:0.002 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:a6 withMajorRadius:a7 withMinorRadius:0.0 withMask:0.0 withTouch:v14 withNextThreshold:0x7FF8000000000000 withPressedThreshold:0x7FF8000000000000 withReleasedThreshold:0x7FF8000000000000];
}

- (void)touchSensitiveButtonHoldWithDuration:(double)a3 withPage:(id)a4 withUsage:(id)a5 withTouch:(int)a6 withNormalizedPositionY:(double)a7 withNormalizedPositionDeltaY:(double)a8
{
  [(RCPSyntheticEventStream *)self touchSensitiveButtonHoldWithPage:a4 withUsage:a5 withTouch:*&a6 withNormalizedPositionY:a7 withNormalizedPositionDeltaY:a8];

  [(RCPSyntheticEventStream *)self advanceTime:a3];
}

- (void)touchSensitiveButtonReleaseHoldWithPage:(id)a3 withUsage:(id)a4 withTouch:(int)a5 withNormalizedPositionY:(double)a6 withNormalizedPositionDeltaY:(double)a7
{
  v12 = a4;
  v14 = a3;
  LODWORD(v13) = a5;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:2 withPage:v14 withUsage:v12 withStage:4 withTransition:2 withNormalizedForce:4 withNormalizedForceVelocity:0.002 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:a6 withMajorRadius:a7 withMinorRadius:0.0 withMask:0.0 withTouch:v13 withNextThreshold:0x7FF8000000000000 withPressedThreshold:0x7FF8000000000000 withReleasedThreshold:0x7FF8000000000000];
  [(RCPSyntheticEventStream *)self touchSensitiveButtonLiftWithPage:v14 withUsage:v12];
}

- (void)touchSensitiveButtonIntermediatePressWithPage:(id)a3 withUsage:(id)a4 withTouch:(int)a5 withNormalizedPositionY:(double)a6 withNormalizedPositionDeltaY:(double)a7
{
  v12 = a4;
  v16 = a3;
  LODWORD(v13) = a5;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:1 withPage:v16 withUsage:v12 withStage:1 withTransition:1 withNormalizedForce:0 withNormalizedForceVelocity:0.009602 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:a6 withMajorRadius:a7 withMinorRadius:3.3405 withMask:0.0 withTouch:v13 withNextThreshold:0x3FC0000000000000 withPressedThreshold:0x3FA999999999999ALL withReleasedThreshold:0x3FA999999999999ALL];
  LODWORD(v14) = a5;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:2 withPage:v16 withUsage:v12 withStage:2 withTransition:1 withNormalizedForce:0 withNormalizedForceVelocity:0.12584 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:a6 withMajorRadius:a7 withMinorRadius:10.314577 withMask:0.0 withTouch:v14 withNextThreshold:0x3FC03C4B09E98DCELL withPressedThreshold:0x3FC0000000000000 withReleasedThreshold:0x3FB999999999999ALL];
  LODWORD(v15) = a5;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:2 withPage:v16 withUsage:v12 withStage:3 withTransition:1 withNormalizedForce:0 withNormalizedForceVelocity:0.169056 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:a6 withMajorRadius:a7 withMinorRadius:9.957315 withMask:0.0 withTouch:v15 withNextThreshold:0x7FF8000000000000 withPressedThreshold:0x3FC0000000000000 withReleasedThreshold:0x3FB999999999999ALL];
}

- (void)touchSensitiveButtonIntermediatePressWithDuration:(double)a3 withPage:(id)a4 withUsage:(id)a5 withTouch:(int)a6 withNormalizedPositionY:(double)a7 withNormalizedPositionDeltaY:(double)a8
{
  v10 = *&a6;
  v14 = a5;
  v15 = a4;
  [(RCPSyntheticEventStream *)self touchSensitiveButtonIntermediatePressWithPage:v15 withUsage:v14 withTouch:v10 withNormalizedPositionY:a7 withNormalizedPositionDeltaY:a8];
  [(RCPSyntheticEventStream *)self advanceTime:a3];
  [(RCPSyntheticEventStream *)self touchSensitiveButtonLiftWithPage:v15 withUsage:v14];
}

- (void)touchSensitiveButtonLiftWithPage:(id)a3 withUsage:(id)a4
{
  v6 = a4;
  v10 = a3;
  LODWORD(v7) = 0;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:2 withPage:v10 withUsage:v6 withStage:3 withTransition:2 withNormalizedForce:0 withNormalizedForceVelocity:0.002767 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:0.0 withMajorRadius:0.0 withMinorRadius:0.0 withMask:0.0 withTouch:v7 withNextThreshold:0x7FF8000000000000 withPressedThreshold:0x3FC0000000000000 withReleasedThreshold:0x3FB999999999999ALL];
  LODWORD(v8) = 0;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:2 withPage:v10 withUsage:v6 withStage:2 withTransition:2 withNormalizedForce:0 withNormalizedForceVelocity:0.002767 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:0.0 withMajorRadius:0.0 withMinorRadius:0.0 withMask:0.0 withTouch:v8 withNextThreshold:0x3F6EDBF8B9BAA151 withPressedThreshold:0x3FC0000000000000 withReleasedThreshold:0x3FB999999999999ALL];
  LODWORD(v9) = 0;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:4 withPage:v10 withUsage:v6 withStage:1 withTransition:2 withNormalizedForce:0 withNormalizedForceVelocity:0.002767 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:0.0 withMajorRadius:0.0 withMinorRadius:0.0 withMask:0.0 withTouch:v9 withNextThreshold:0x3FC0000000000000 withPressedThreshold:0x3FA999999999999ALL withReleasedThreshold:0x3FA999999999999ALL];
}

- (void)touchSensitiveButtonEngagedWithPage:(id)a3 withUsage:(id)a4 withTouch:(int)a5 withNormalizedPositionY:(double)a6 withNormalizedPositionDeltaY:(double)a7
{
  v12 = a4;
  v16 = a3;
  LODWORD(v13) = a5;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:1 withPage:v16 withUsage:v12 withStage:1 withTransition:1 withNormalizedForce:1 withNormalizedForceVelocity:0.005953 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:a6 withMajorRadius:a7 withMinorRadius:3.964151 withMask:0.0 withTouch:v13 withNextThreshold:0x3FC0000000000000 withPressedThreshold:0x3FA999999999999ALL withReleasedThreshold:0x3FA999999999999ALL];
  LODWORD(v14) = a5;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:2 withPage:v16 withUsage:v12 withStage:1 withTransition:0 withNormalizedForce:1 withNormalizedForceVelocity:0.023871 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:a6 withMajorRadius:a7 withMinorRadius:1.715379 withMask:0.0 withTouch:v14 withNextThreshold:0x3FC0000000000000 withPressedThreshold:0x3FA999999999999ALL withReleasedThreshold:0x3FA999999999999ALL];
  LODWORD(v15) = a5;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:4 withPage:v16 withUsage:v12 withStage:1 withTransition:2 withNormalizedForce:1 withNormalizedForceVelocity:0.006992 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:a6 withMajorRadius:a7 withMinorRadius:0.0 withMask:0.0 withTouch:v15 withNextThreshold:0x3FC0000000000000 withPressedThreshold:0x3FA999999999999ALL withReleasedThreshold:0x3FA999999999999ALL];
}

- (void)touchSensitiveButtonEngagedWithDuration:(double)a3 withPage:(id)a4 withUsage:(id)a5 withTouch:(int)a6 withNormalizedPositionY:(double)a7 withNormalizedPositionDeltaY:(double)a8
{
  v10 = *&a6;
  v14 = a5;
  v15 = a4;
  [(RCPSyntheticEventStream *)self advanceTime:a3];
  [(RCPSyntheticEventStream *)self touchSensitiveButtonEngagedWithPage:v15 withUsage:v14 withTouch:v10 withNormalizedPositionY:a7 withNormalizedPositionDeltaY:a8];
}

- (void)touchSensitiveButtonEngagedWithLiftWithDuration:(double)a3 withPage:(id)a4 withUsage:(id)a5 withTouch:(int)a6 withNormalizedPositionY:(double)a7 withNormalizedPositionDeltaY:(double)a8
{
  v10 = *&a6;
  v14 = a5;
  v15 = a4;
  [(RCPSyntheticEventStream *)self advanceTime:a3];
  [(RCPSyntheticEventStream *)self touchSensitiveButtonEngagedWithPage:v15 withUsage:v14 withTouch:v10 withNormalizedPositionY:a7 withNormalizedPositionDeltaY:a8];
  [(RCPSyntheticEventStream *)self touchSensitiveButtonLiftWithPage:v15 withUsage:v14];
}

- (void)vendorEventWithPage:(id)a3 withUsage:(id)a4 withVersion:(unsigned __int8)a5 withData:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  [(RCPSyntheticEventStream *)self _currentMachTime];
  [v11 unsignedIntValue];

  [v10 unsignedIntValue];
  [v9 bytes];
  [v9 length];

  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:VendorDefinedEvent];

  CFRelease(VendorDefinedEvent);
}

- (CGSize)screenSize
{
  width = self->_screenSize.width;
  height = self->_screenSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (double)_nextTouchLocationFrom:(void *)a1 to:at:
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = [a1 touchCurveFunction];
  OUTLINED_FUNCTION_0();
  [v2 rcp_solveForStart:? end:? at:?];
  v4 = v3;

  return v4;
}

- (void)pinchOpenWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 pressure:(double)a6 radius:(double)a7
{
  currentTimeOffset = self->_currentTimeOffset;
  [RCPSyntheticEventStream touchDown:"touchDown:touchCount:pressure:radius:" touchCount:1 pressure:? radius:?];
  [RCPSyntheticEventStream _nextTouchLocationFrom:? to:? at:?];
  v11 = v10;
  [RCPSyntheticEventStream touchDown:"touchDown:touchCount:pressure:radius:" touchCount:1 pressure:? radius:?];
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  if (v12 < a5)
  {
    do
    {
      v13 = self->_currentTimeOffset - currentTimeOffset;
      OUTLINED_FUNCTION_2();
      [(RCPSyntheticEventStream *)self _moveLastTouchPoint:0 eventMask:[RCPSyntheticEventStream _nextTouchLocationFrom:v14 to:? at:?]];
      OUTLINED_FUNCTION_3();
      [(RCPSyntheticEventStream *)self touchMoveInterval];
    }

    while (v13 < a5 - v15);
  }

  v16 = OUTLINED_FUNCTION_1();
  [v17 _moveLastTouchPoint:0 eventMask:v16];
  [(RCPSyntheticEventStream *)self advanceTime:0.05];
  v18 = OUTLINED_FUNCTION_1();
  [v19 liftUp:v18];
  v21 = OUTLINED_FUNCTION_2();

  [v20 liftUp:{v21, v11}];
}

- (void)pinchCloseWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 duration:(double)a5 pressure:(double)a6 radius:(double)a7
{
  y = a3.y;
  currentTimeOffset = self->_currentTimeOffset;
  [(RCPSyntheticEventStream *)self touchDown:a4.x, a4.y];
  v11 = OUTLINED_FUNCTION_2();
  [v12 touchDown:{v11, y}];
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  if (v13 < a5)
  {
    do
    {
      v14 = self->_currentTimeOffset - currentTimeOffset;
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_0();
      [(RCPSyntheticEventStream *)self _moveLastTouchPoint:0 eventMask:[RCPSyntheticEventStream _nextTouchLocationFrom:v15 to:? at:?]];
      OUTLINED_FUNCTION_3();
      [(RCPSyntheticEventStream *)self touchMoveInterval];
    }

    while (v14 < a5 - v16);
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  v18 = [RCPSyntheticEventStream _nextTouchLocationFrom:v17 to:? at:?];
  v20 = v19;
  [(RCPSyntheticEventStream *)self _moveLastTouchPoint:0 eventMask:?];
  [(RCPSyntheticEventStream *)self liftUp:v18, v20];
  [(RCPSyntheticEventStream *)self advanceTime:0.05];
  v22 = OUTLINED_FUNCTION_1();

  [v21 liftUp:v22];
}

- (double)_nextPointerDeltaFrom:(uint64_t)a3 to:(double)a4 step:(double)a5 steps:(double)a6
{
  if (!a1)
  {
    return 0.0;
  }

  v13 = [a1 pointerCurveFunction];
  [v13 rcp_solveForDelta:a3 withSteps:a2 step:{a6 - a4, a7 - a5}];
  v15 = v14;

  return v15;
}

- (void)_normalizePoint:.cold.1()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Normalization failed due to the screen width and height was unexpectedly 0 or NaN."];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[RCPSyntheticEventStream _normalizePoint:]"];
    v2 = 138544130;
    v3 = v1;
    v4 = 2114;
    v5 = @"RCPSyntheticEventStream.m";
    v6 = 1024;
    v7 = 2000;
    v8 = 2114;
    v9 = v0;
    _os_log_error_impl(&dword_2619DE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v2, 0x26u);
  }

  [v0 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (uint64_t)pointerDiscreteScroll:(double)a3 duration:(double)a4 frequency:(double)a5 .cold.1(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = 0;
  v11 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  do
  {
    [(RCPSyntheticEventStream *)a1 _nextPointerDeltaFrom:v10 to:a2 step:v11 steps:v12, a3, a4];
    [a1 _currentMachTime];
    ScrollEvent = IOHIDEventCreateScrollEvent();
    [a1 _addIOHIDEventToProcessingBuffer:ScrollEvent];
    CFRelease(ScrollEvent);
    result = [a1 advanceTime:a5];
    ++v10;
  }

  while (a2 != v10);
  return result;
}

@end