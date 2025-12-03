@interface RCPSyntheticEventStream
+ (id)eventStreamWithCLIArguments:(id)arguments;
+ (id)eventStreamWithCLIArguments:(id)arguments withDisplayUUID:(id)d;
+ (id)eventStreamWithEventActions:(id)actions;
- (BOOL)_isEdgePoint:(CGPoint)point getMask:(unsigned int *)mask;
- (CAMediaTimingFunction)pointerCurveFunction;
- (CAMediaTimingFunction)touchCurveFunction;
- (CGPoint)_normalizePoint:(CGPoint)point;
- (CGSize)gsScreenPointSize;
- (CGSize)screenSize;
- (RCPSyntheticEventStream)init;
- (__IOHIDEvent)_createIOHIDWithEventType:(int64_t)type;
- (__IOHIDEvent)_createIOSButtonHIDEventWithButtonType:(int64_t)type down:(BOOL)down;
- (__IOHIDEvent)_createIOSButtonHIDEventWithPage:(unsigned int)page usage:(unsigned int)usage down:(BOOL)down;
- (__IOHIDEvent)_parentZeroPointerEvent;
- (double)_nextPointerDeltaFrom:(uint64_t)from to:(double)to step:(double)step steps:(double)steps;
- (double)_nextTouchLocationFrom:(void *)from to:at:;
- (double)defaultPressure;
- (double)defaultRadius;
- (id)_splitStringIntoArrayOfCharacters:(id)characters;
- (unint64_t)_currentMachTime;
- (void)_addIOHIDEventToProcessingBuffer:(__IOHIDEvent *)buffer;
- (void)_delayBetweenMove:(int)move elapsedTime:(double)time;
- (void)_dragWithStartPoint:(CGPoint)point mask:(unint64_t)mask endPoint:(CGPoint)endPoint mask:(unint64_t)a6 duration:(double)duration tapAndWait:(double)wait lift:(BOOL)lift pressure:(double)self0 radius:(double)self1;
- (void)_finalizeHomeButtonEvents;
- (void)_finalizePointerButtonMasks;
- (void)_finalizeProcessingEventBuffer;
- (void)_flickWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration pressure:(double)pressure radius:(double)radius;
- (void)_hoverAtPoints:(CGPoint *)points touchCount:(unint64_t)count pressure:(double)pressure radius:(double)radius edgeMaskOptions:(id *)options withEventType:(int64_t)type withZPosition:(double)position withAzimuthAngle:(double)self0 withRollAngle:(double)self1 withAltitudeAngle:(double)self2;
- (void)_initScreenProperties;
- (void)_initScreenPropertiesForScreen:(id)screen;
- (void)_knobEventForOffset:(CGVector)offset buttonMask:(unsigned int)mask oldButtonMask:(unsigned int)buttonMask;
- (void)_moveLastTouchPoint:(CGPoint)point eventMask:(unint64_t)mask;
- (void)_pressButtonEventForIndex:(int64_t)index down:(BOOL)down;
- (void)_setMajorRadiusForAllPoints:(double)points;
- (void)_setPressureForAllPoints:(double)points;
- (void)_squeezeWithPhase:(unsigned __int16)phase withPage:(id)page withUsage:(id)usage withVersion:(unsigned __int8)version withStage:(unsigned int)stage withTransition:(unsigned int)transition withNextThreshold:(double)threshold withPressedThreshold:(double)self0 withReleasedThreshold:(double)self1 withNormalizedForce:(double)self2 withNormalizedForceVelocity:(double)self3;
- (void)_tap:(CGPoint)_tap withPressure:(double)pressure;
- (void)_touchDownAtPoints:(CGPoint *)points touchCount:(unint64_t)count pressure:(double)pressure radius:(double)radius edgeMaskOptions:(id *)options;
- (void)_touchSensitiveButtonEventWithPhase:(unsigned __int16)phase withPage:(id)page withUsage:(id)usage withStage:(unsigned int)stage withTransition:(unsigned int)transition withNormalizedForce:(double)force withNormalizedForceVelocity:(double)velocity withNormalizedPositionX:(double)self0 withNormalizedPositionDeltaX:(double)self1 withNormalizedPositionY:(double)self2 withNormalizedPositionDeltaY:(double)self3 withMajorRadius:(double)self4 withMinorRadius:(double)self5 withMask:(unsigned int)self6 withTouch:(int)self7 withNextThreshold:(double)self8 withPressedThreshold:(double)self9 withReleasedThreshold:(double)releasedThreshold;
- (void)_updateTouchPoints:(CGPoint *)points count:(unint64_t)count;
- (void)_withPointerEventStreamAtFrequency:(int64_t)frequency perform:(id)perform;
- (void)_wrapInPointerParentAndAddToProcessingBuffer:(__IOHIDEvent *)buffer;
- (void)barrelRollAtLocation:(CGPoint)location withZPosition:(double)position withAltitudeAngle:(double)angle withAzimuthAngle:(double)azimuthAngle withRollAngle:(double)rollAngle;
- (void)beginButtonPressForButtonType:(int64_t)type;
- (void)beginButtonPressWithPage:(unint64_t)page usage:(unint64_t)usage;
- (void)composeDockGestureOfFlavor:(unsigned __int16)flavor motion:(unsigned __int16)motion frequency:(unint64_t)frequency actionBlock:(id)block;
- (void)composeNavigationGestureInMotion:(unsigned __int16)motion frequency:(unint64_t)frequency actionBlock:(id)block;
- (void)composeWithSender:(id)sender actionBlock:(id)block;
- (void)dealloc;
- (void)dragWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration;
- (void)dragWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration pressure:(double)pressure;
- (void)dragWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration radius:(double)radius;
- (void)dragWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration tapAndWait:(double)wait lift:(BOOL)lift;
- (void)dragWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration tapAndWait:(double)wait lift:(BOOL)lift pressure:(double)pressure;
- (void)dragWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration tapAndWait:(double)wait lift:(BOOL)lift radius:(double)radius;
- (void)dragWithStartPoint:(CGPoint)point mask:(unint64_t)mask endPoint:(CGPoint)endPoint mask:(unint64_t)a6 duration:(double)duration;
- (void)edgeOrb:(CGPoint)orb;
- (void)edgeOrbSwipe:(CGPoint)swipe withEndLocation:(CGPoint)location withDuration:(double)duration;
- (void)endButtonPressForButtonType:(int64_t)type;
- (void)endButtonPressWithPage:(unint64_t)page usage:(unint64_t)usage;
- (void)flipRingerSwitchToValue:(BOOL)value;
- (void)hoverAtLocation:(CGPoint)location withDuration:(double)duration;
- (void)hoverAtLocation:(CGPoint)location withDuration:(double)duration withZPosition:(double)position;
- (void)hoverAtLocation:(CGPoint)location withDuration:(double)duration withZPosition:(double)position withAltitudeAngle:(double)angle withAzimuthAngle:(double)azimuthAngle withRollAngle:(double)rollAngle;
- (void)hoverToTapAtLocation:(CGPoint)location withDuration:(double)duration;
- (void)hoverToTapAtLocation:(CGPoint)location withDuration:(double)duration withZPosition:(double)position;
- (void)knobNudge:(CGVector)nudge buttonMask:(unsigned int)mask duration:(double)duration;
- (void)liftUp:(CGPoint)up touchCount:(unint64_t)count;
- (void)liftUpActivePointsByIndex:(id)index;
- (void)liftUpAtAllActivePoints;
- (void)liftUpAtAllActivePointsWithEventType:(int64_t)type;
- (void)liftUpAtPoints:(CGPoint *)points touchCount:(unint64_t)count;
- (void)moveToPoints:(CGPoint *)points touchCount:(unint64_t)count duration:(double)duration;
- (void)moveToPoints:(CGPoint *)points touchCount:(unint64_t)count pressure:(double)pressure duration:(double)duration;
- (void)moveToPoints:(CGPoint *)points touchCount:(unint64_t)count pressure:(double)pressure duration:(double)duration radius:(double)radius;
- (void)multifingerDragWithPointArray:(CGPoint *)array numPoints:(unint64_t)points duration:(double)duration numFingers:(unint64_t)fingers;
- (void)peekAndPop:(CGPoint)pop commit:(BOOL)commit duration:(double)duration;
- (void)peekAndPop:(CGPoint)pop commit:(BOOL)commit duration:(double)duration pressure:(double)pressure radius:(double)radius;
- (void)peekAndPop:(CGPoint)pop commit:(BOOL)commit duration:(double)duration presure:(double)presure;
- (void)peekAndPop:(CGPoint)pop commit:(BOOL)commit duration:(double)duration radius:(double)radius;
- (void)pinchCloseWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration;
- (void)pinchCloseWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration pressure:(double)pressure;
- (void)pinchCloseWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration pressure:(double)pressure radius:(double)radius;
- (void)pinchCloseWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration radius:(double)radius;
- (void)pinchOpenWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration;
- (void)pinchOpenWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration pressure:(double)pressure;
- (void)pinchOpenWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration pressure:(double)pressure radius:(double)radius;
- (void)pinchOpenWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration radius:(double)radius;
- (void)pointerDiscreteGesture:(id)gesture duration:(double)duration frequency:(int64_t)frequency;
- (void)pointerDiscreteScroll:(CGPoint)scroll duration:(double)duration;
- (void)pointerDiscreteScroll:(CGPoint)scroll duration:(double)duration frequency:(int64_t)frequency;
- (void)pointerMoveByDelta:(CGVector)delta duration:(double)duration;
- (void)pointerMoveDelta:(CGPoint)delta duration:(double)duration frequency:(int64_t)frequency;
- (void)pointerMoveFromOriginPoint:(CGPoint)point toDestinationPoint:(CGPoint)destinationPoint duration:(double)duration frequency:(int64_t)frequency;
- (void)pointerMoveToPoint:(CGPoint)point duration:(double)duration;
- (void)pointerPhasedFlick:(CGPoint)flick duration:(double)duration;
- (void)pointerPhasedFlick:(CGPoint)flick duration:(double)duration frequency:(int64_t)frequency;
- (void)pointerPhasedScroll:(CGPoint)scroll duration:(double)duration;
- (void)pointerPhasedScroll:(CGPoint)scroll duration:(double)duration frequency:(int64_t)frequency;
- (void)pointerRotation:(double)rotation duration:(double)duration frequency:(int64_t)frequency;
- (void)pointerScale:(double)scale duration:(double)duration frequency:(int64_t)frequency;
- (void)pointerSetAbsolutePosition:(CGPoint)position;
- (void)pointerTranslatation:(CGPoint)translatation duration:(double)duration frequency:(int64_t)frequency;
- (void)pressButtons:(id)buttons duration:(double)duration;
- (void)pressButtonsWithPages:(id)pages usages:(id)usages duration:(double)duration;
- (void)pressDiscreteGameControllerButton:(int64_t)button duration:(double)duration;
- (void)rotate:(CGPoint)rotate withRadius:(double)radius rotation:(double)rotation duration:(double)duration touchCount:(unint64_t)count;
- (void)rotateCrown:(double)crown direction:(int64_t)direction duration:(double)duration;
- (void)sendFlickWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration;
- (void)sendFlickWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration pressure:(double)pressure;
- (void)sendFlickWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration radius:(double)radius;
- (void)sendUnicodeString:(id)string;
- (void)sendUnicodeString:(id)string synthesizePerCharacterEvents:(BOOL)events durationBetweenEvents:(double)betweenEvents;
- (void)sendUnicodeStringByCharacters:(id)characters durationBetweenEvents:(double)events;
- (void)setPointerCurveFunction:(id)function;
- (void)setSenderProperties:(id)properties;
- (void)squeeze;
- (void)squeezeAtLocation:(CGPoint)location;
- (void)stylusBarrelDoubleTap;
- (void)tap:(CGPoint)tap pressure:(double)pressure;
- (void)tap:(CGPoint)tap radius:(double)radius;
- (void)tapToWakeAtPoint:(CGPoint)point;
- (void)taps:(unint64_t)taps location:(CGPoint)location withNumberOfTouches:(unint64_t)touches;
- (void)taps:(unint64_t)taps location:(CGPoint)location withNumberOfTouches:(unint64_t)touches pressure:(double)pressure radius:(double)radius;
- (void)tapsNoLift:(unint64_t)lift location:(CGPoint)location withNumberOfTouches:(unint64_t)touches;
- (void)touchDown:(CGPoint)down;
- (void)touchDown:(CGPoint)down touchCount:(unint64_t)count;
- (void)touchDown:(CGPoint)down touchCount:(unint64_t)count pressure:(double)pressure;
- (void)touchDown:(CGPoint)down touchCount:(unint64_t)count pressure:(double)pressure radius:(double)radius;
- (void)touchDown:(CGPoint)down touchCount:(unint64_t)count radius:(double)radius;
- (void)touchDownAtPoints:(CGPoint *)points touchCount:(unint64_t)count;
- (void)touchDownAtPoints:(CGPoint *)points touchCount:(unint64_t)count pressure:(double)pressure;
- (void)touchDownAtPoints:(CGPoint *)points touchCount:(unint64_t)count radius:(double)radius;
- (void)touchSensitiveButtonClickWithPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY;
- (void)touchSensitiveButtonEngagedWithDuration:(double)duration withPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY;
- (void)touchSensitiveButtonEngagedWithLiftWithDuration:(double)duration withPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY;
- (void)touchSensitiveButtonEngagedWithPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY;
- (void)touchSensitiveButtonHoldWithDuration:(double)duration withPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY;
- (void)touchSensitiveButtonHoldWithPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY;
- (void)touchSensitiveButtonIntermediatePressWithDuration:(double)duration withPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY;
- (void)touchSensitiveButtonIntermediatePressWithPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY;
- (void)touchSensitiveButtonLiftWithPage:(id)page withUsage:(id)usage;
- (void)touchSensitiveButtonReleaseHoldWithPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY;
- (void)touchTapDown:(CGPoint)down;
- (void)vendorEventWithPage:(id)page withUsage:(id)usage withVersion:(unsigned __int8)version withData:(id)data;
- (void)withExclusiveChildStream:(id)stream perform:(id)perform;
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
    array = [MEMORY[0x277CBEB18] array];
    processingEventBuffer = v3->_processingEventBuffer;
    v3->_processingEventBuffer = array;

    v3->_transducerType = 2;
    v3->_scalePointerPhaseScrollToPixels = 0;
    [(RCPSyntheticEventStream *)v3 setActivePointCount:0];
    v6 = [RCPPointerTrackingChildEventStream alloc];
    v7 = [(RCPPointerTrackingChildEventStream *)v6 initWithCurrentPointerLocation:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    [(RCPSyntheticEventStream *)v3 setPointerChildEventStream:v7];

    [(RCPSyntheticEventStream *)v3 pointerFrequency];
    v9 = v8;
    pointerChildEventStream = [(RCPSyntheticEventStream *)v3 pointerChildEventStream];
    [pointerChildEventStream setFrequency:v9];
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
  environment = [(RCPEventStream *)self environment];
  screens = [environment screens];
  firstObject = [screens firstObject];

  [(RCPSyntheticEventStream *)self _initScreenPropertiesForScreen:firstObject];
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
  environment = [(RCPEventStream *)self environment];
  v4 = [environment machAbsoluteTimeForTimeInterval:self->_currentTimeOffset];

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
  selfCopy = self;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __52__RCPSyntheticEventStream__finalizeHomeButtonEvents__block_invoke_2;
  v29[3] = &unk_279AF1148;
  v29[4] = self;
  v3 = MEMORY[0x266715C00](v29, a2);
  environment = [(RCPEventStream *)selfCopy environment];
  v20 = [environment machAbsoluteTimeForTimeInterval:0.25];

  environment2 = [(RCPEventStream *)selfCopy environment];
  v24 = [environment2 machAbsoluteTimeForTimeInterval:0.38];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __52__RCPSyntheticEventStream__finalizeHomeButtonEvents__block_invoke_3;
  v28[3] = &unk_279AF1148;
  v28[4] = selfCopy;
  v6 = MEMORY[0x266715C00](v28);
  if (![(NSMutableArray *)selfCopy->_processingEventBuffer count])
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
  v21 = selfCopy;
  v10 = 1;
  do
  {
    v11 = [(NSMutableArray *)selfCopy->_processingEventBuffer objectAtIndexedSubscript:v9];
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

        v9 = (v3)[2](v3, selfCopy->_processingEventBuffer, v9, v16, v7, v25 & 1);
        v7 = 0;
        v14 = 0;
        v15 = v26;
      }

      v10 = 1;
      v27 = v14;
      if (v8 && v13 > v8)
      {
        v9 = v23[2](v23, selfCopy->_processingEventBuffer, v9, v8, v15, 1);
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
      selfCopy = v21;
      v3 = v22;
      goto LABEL_33;
    }

    if (v10)
    {
      v25 = 1;
      v10 = 1;
      ++v7;
      selfCopy = v21;
      v3 = v22;
LABEL_33:
      ++v9;
      goto LABEL_34;
    }

    selfCopy = v21;
    v25 = 1;
    v3 = v22;
    v9 = (v22)[2](v22, v21->_processingEventBuffer, v9 + 1, v13, v7 + 1, 1);
    v27 = 0;
    v10 = 1;
    ++v7;
LABEL_34:
  }

  while (v9 < [(NSMutableArray *)selfCopy->_processingEventBuffer count]);
  v19 = (v27 == 0) | v10;
  v6 = v23;
  if ((v19 & 1) == 0)
  {
    (v3[2])(v3, selfCopy->_processingEventBuffer, v9);
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
  selfCopy = self;
  v25 = *MEMORY[0x277D85DE8];
  v3 = 24;
  if ([(NSMutableArray *)self->_processingEventBuffer count])
  {
    v4 = 0;
    v5 = 0;
    v17 = 24;
    v18 = selfCopy;
    do
    {
      v6 = [*(&selfCopy->super.super.isa + v3) objectAtIndexedSubscript:{v4, v17, v18}];
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
        selfCopy = v18;
        v6 = v19;
      }

      ++v4;
    }

    while (v4 < [*(&selfCopy->super.super.isa + v3) count]);
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

- (void)setPointerCurveFunction:(id)function
{
  objc_storeStrong(&self->_pointerCurveFunction, function);
  functionCopy = function;
  pointerChildEventStream = [(RCPSyntheticEventStream *)self pointerChildEventStream];
  [pointerChildEventStream setPointerCurveFunction:functionCopy];
}

- (void)composeDockGestureOfFlavor:(unsigned __int16)flavor motion:(unsigned __int16)motion frequency:(unint64_t)frequency actionBlock:(id)block
{
  motionCopy = motion;
  flavorCopy = flavor;
  blockCopy = block;
  v16 = [[RCPSyntheticFluidSwipeEventStream alloc] initWithEventType:23 flavor:flavorCopy motion:motionCopy];
  environment = [(RCPEventStream *)self environment];
  [(RCPSyntheticFluidSwipeEventStream *)v16 setEnvironment:environment];

  senderProperties = [(RCPSyntheticEventStream *)self senderProperties];
  [(RCPSyntheticFluidSwipeEventStream *)v16 setSenderProperties:senderProperties];

  [(RCPSyntheticFluidSwipeEventStream *)v16 setCurrentTimeOffset:self->_currentTimeOffset];
  [(RCPSyntheticFluidSwipeEventStream *)v16 setFrequency:frequency];
  blockCopy[2](blockCopy, v16);

  processingEventBuffer = self->_processingEventBuffer;
  finalizeEventStream = [(RCPSyntheticFluidSwipeEventStream *)v16 finalizeEventStream];
  [(NSMutableArray *)processingEventBuffer addObjectsFromArray:finalizeEventStream];

  [(RCPSyntheticFluidSwipeEventStream *)v16 currentTimeOffset];
  self->_currentTimeOffset = v15;
}

- (void)composeNavigationGestureInMotion:(unsigned __int16)motion frequency:(unint64_t)frequency actionBlock:(id)block
{
  motionCopy = motion;
  blockCopy = block;
  v9 = [[RCPSyntheticFluidSwipeEventStream alloc] initWithEventType:16 flavor:5 motion:motionCopy];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__RCPSyntheticEventStream_composeNavigationGestureInMotion_frequency_actionBlock___block_invoke;
  v12[3] = &unk_279AF10F8;
  v14 = blockCopy;
  frequencyCopy = frequency;
  v13 = v9;
  v10 = blockCopy;
  v11 = v9;
  [(RCPSyntheticEventStream *)self withExclusiveChildStream:v11 perform:v12];
}

uint64_t __82__RCPSyntheticEventStream_composeNavigationGestureInMotion_frequency_actionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrequency:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)withExclusiveChildStream:(id)stream perform:(id)perform
{
  performCopy = perform;
  streamCopy = stream;
  environment = [(RCPEventStream *)self environment];
  [streamCopy setEnvironment:environment];

  senderProperties = [(RCPSyntheticEventStream *)self senderProperties];
  [streamCopy setSenderProperties:senderProperties];

  [streamCopy setCurrentTimeOffset:self->_currentTimeOffset];
  performCopy[2](performCopy);

  processingEventBuffer = self->_processingEventBuffer;
  finalizeEventStream = [streamCopy finalizeEventStream];
  [(NSMutableArray *)processingEventBuffer addObjectsFromArray:finalizeEventStream];

  [streamCopy currentTimeOffset];
  v13 = v12;

  self->_currentTimeOffset = v13;
}

+ (id)eventStreamWithCLIArguments:(id)arguments
{
  argumentsCopy = arguments;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__RCPSyntheticEventStream_eventStreamWithCLIArguments___block_invoke;
  v11[3] = &unk_279AF1120;
  v5 = argumentsCopy;
  v12 = v5;
  v13 = &v14;
  v6 = [self eventStreamWithEventActions:v11];
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

+ (id)eventStreamWithCLIArguments:(id)arguments withDisplayUUID:(id)d
{
  dCopy = d;
  v7 = [self eventStreamWithCLIArguments:arguments];
  v8 = v7;
  if (v7)
  {
    if (dCopy)
    {
      senderProperties = [v7 senderProperties];
      v10 = [senderProperties senderPropertiesWithDisplayUUID:dCopy];
      [v8 setSenderProperties:v10];
    }

    v11 = v8;
  }

  return v8;
}

+ (id)eventStreamWithEventActions:(id)actions
{
  actionsCopy = actions;
  v4 = objc_opt_new();
  actionsCopy[2](actionsCopy, v4);

  [v4 _finalizeProcessingEventBuffer];
  [v4 setEvents:v4[3]];
  v5 = v4[3];
  v4[3] = 0;

  return v4;
}

- (void)_initScreenPropertiesForScreen:(id)screen
{
  p_screenSize = &self->_screenSize;
  screenCopy = screen;
  [screenCopy pointSize];
  p_screenSize->width = v6;
  p_screenSize->height = v7;
  environment = [(RCPEventStream *)self environment];
  self->_touchFrequency = [environment touchScanRate];

  environment2 = [(RCPEventStream *)self environment];
  self->_pointerFrequency = [environment2 pointerScanRate];

  self->_gsScreenPointSize = *p_screenSize;
  [screenCopy scale];
  v11 = v10;

  self->_gsScreenScaleFactor = v11;
  width = self->_gsScreenPointSize.width;
  self->_gsScreenPointSize.height = v11 * self->_gsScreenPointSize.height;
  self->_gsScreenPointSize.width = self->_gsScreenScaleFactor * width;
}

- (__IOHIDEvent)_createIOSButtonHIDEventWithPage:(unsigned int)page usage:(unsigned int)usage down:(BOOL)down
{
  [(RCPSyntheticEventStream *)self _currentMachTime];
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  IOHIDEventSetIntegerValue();
  return KeyboardEvent;
}

- (__IOHIDEvent)_createIOSButtonHIDEventWithButtonType:(int64_t)type down:(BOOL)down
{
  downCopy = down;
  v5 = type - 1;
  if ((type - 1) > 7)
  {
    v7 = 64;
    v6 = 12;
  }

  else
  {
    v6 = dword_261A03FC4[v5];
    v7 = dword_261A03FE4[v5];
  }

  return [(RCPSyntheticEventStream *)self _createIOSButtonHIDEventWithPage:v6 usage:v7 down:downCopy];
}

- (__IOHIDEvent)_createIOHIDWithEventType:(int64_t)type
{
  activePoints = [(RCPSyntheticEventStream *)self activePoints];
  x = activePoints->var4.x;
  y = activePoints->var4.y;
  [(RCPSyntheticEventStream *)self activePoints];
  [(RCPSyntheticEventStream *)self _normalizePoint:x, y];
  [(RCPSyntheticEventStream *)self activePoints];
  [(RCPSyntheticEventStream *)self activePoints];
  [(RCPSyntheticEventStream *)self activePoints];
  if ((type - 1) > 0xB)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_261A04004[type - 1];
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
  senderProperties = [(RCPSyntheticEventStream *)self senderProperties];

  if (senderProperties)
  {
    senderProperties2 = [(RCPSyntheticEventStream *)self senderProperties];
    properties = [senderProperties2 properties];
    v15 = [properties objectForKeyedSubscript:@"DisplayIntegrated"];
    [v15 BOOLValue];

    IOHIDEventSetIntegerValue();
    senderProperties3 = [(RCPSyntheticEventStream *)self senderProperties];
    properties2 = [senderProperties3 properties];
    v18 = [properties2 objectForKeyedSubscript:@"Built-In"];
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
      activePoints2 = [(RCPSyntheticEventStream *)self activePoints];
      v22 = activePoints2;
      if (type == 1)
      {
        v23 = &activePoints2[v19];
        if (activePoints2[v19].var5 == 0.0)
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
        v26 = &activePoints2[v19];
        if (!activePoints2[v19].var9)
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
      if (type == 1 && !v28->var9)
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

- (void)_addIOHIDEventToProcessingBuffer:(__IOHIDEvent *)buffer
{
  v4 = [RCPEvent eventWithHIDEvent:buffer deliveryTimeStamp:[(RCPSyntheticEventStream *)self _currentMachTime] senderProperties:self->_senderProperties preActions:0];
  [(NSMutableArray *)self->_processingEventBuffer addObject:v4];
}

- (CGPoint)_normalizePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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

- (BOOL)_isEdgePoint:(CGPoint)point getMask:(unsigned int *)mask
{
  if (self->_transducerType != 2)
  {
    goto LABEL_14;
  }

  if (point.y >= 0.01)
  {
    v5 = (point.x < 0.01) << 27;
  }

  else
  {
    v5 = ((point.x < 0.01) << 27) | 0x2000000;
  }

  if (point.x > 0.99)
  {
    v5 |= 0x4000000u;
  }

  v6 = point.y <= 0.99 ? v5 : v5 | 0x1000000;
  if (v6)
  {
    environment = [(RCPEventStream *)self environment];
    homeButtonHardware = [environment homeButtonHardware];

    v9 = v6 | 0x40000;
    if (homeButtonHardware == 2)
    {
      v9 = 2048;
    }
  }

  else
  {
LABEL_14:
    v9 = 0;
  }

  *mask = v9;
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

- (void)_updateTouchPoints:(CGPoint *)points count:(unint64_t)count
{
  if ([(RCPSyntheticEventStream *)self activePointCount])
  {
    if (!count)
    {
      [(RCPSyntheticEventStream *)self setActivePointCount:0];
      v7 = 6;
      goto LABEL_12;
    }

    if ([(RCPSyntheticEventStream *)self activePointCount]== count)
    {
      v7 = 2;
    }

    else
    {
      v7 = 5;
    }

    [(RCPSyntheticEventStream *)self setActivePointCount:count];
  }

  else
  {
    [(RCPSyntheticEventStream *)self setActivePointCount:count];
    v7 = 1;
    if (!count)
    {
      goto LABEL_12;
    }
  }

  v8 = 32;
  do
  {
    activePoints = [(RCPSyntheticEventStream *)self activePoints];
    v10 = *points++;
    *(&activePoints->var0 + v8) = v10;
    v8 += 80;
    --count;
  }

  while (count);
LABEL_12:
  v11 = [(RCPSyntheticEventStream *)self _createIOHIDWithEventType:v7];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v11];

  CFRelease(v11);
}

- (void)_delayBetweenMove:(int)move elapsedTime:(double)time
{
  moveCopy = move;
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  v8 = -(time - moveCopy * v7);

  [(RCPSyntheticEventStream *)self advanceTime:v8];
}

- (void)composeWithSender:(id)sender actionBlock:(id)block
{
  blockCopy = block;
  senderCopy = sender;
  senderProperties = [(RCPSyntheticEventStream *)self senderProperties];
  [(RCPSyntheticEventStream *)self setSenderProperties:senderCopy];

  blockCopy[2](blockCopy, self);
  [(RCPSyntheticEventStream *)self setSenderProperties:senderProperties];
}

- (void)setSenderProperties:(id)properties
{
  propertiesCopy = properties;
  if (self->_senderProperties != propertiesCopy)
  {
    objc_storeStrong(&self->_senderProperties, properties);
    properties = [(RCPEventSenderProperties *)self->_senderProperties properties];
    v7 = [properties objectForKeyedSubscript:@"displayUUID"];
    if (v7)
    {
      environment = [(RCPEventStream *)self environment];
      screens = [environment screens];
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __47__RCPSyntheticEventStream_setSenderProperties___block_invoke;
      v17 = &unk_279AF1170;
      v18 = v7;
      selfCopy = self;
      [screens enumerateObjectsUsingBlock:&v14];
    }

    else
    {
      [(RCPSyntheticEventStream *)self _initScreenProperties];
    }

    v10 = [properties objectForKeyedSubscript:{@"PrimaryUsagePage", v14, v15, v16, v17}];
    if ([v10 intValue] == 13)
    {
      v11 = [properties objectForKeyedSubscript:@"PrimaryUsage"];
      intValue = [v11 intValue];

      if (intValue == 32)
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

- (void)_touchDownAtPoints:(CGPoint *)points touchCount:(unint64_t)count pressure:(double)pressure radius:(double)radius edgeMaskOptions:(id *)options
{
  if (count)
  {
    countCopy = count;
    do
    {
      activePointCount = [(RCPSyntheticEventStream *)self activePointCount];
      x = points->x;
      y = points->y;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount + 32) = *points;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount + 56) = pressure;
      if (options && !options->var1)
      {
        var0 = options->var0;
        *([(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount + 68) = var0;
      }

      else
      {
        [(RCPSyntheticEventStream *)self _normalizePoint:x, y];
        v17 = v16;
        v19 = v18;
        *([(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount + 68) = 0;
        [(RCPSyntheticEventStream *)self _isEdgePoint:[(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount + 68 getMask:v17, v19];
      }

      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount + 72) = 0;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount + 48) = radius;
      [(RCPSyntheticEventStream *)self setActivePointCount:[(RCPSyntheticEventStream *)self activePointCount]+ 1];
      ++points;
      --countCopy;
    }

    while (countCopy);
  }

  radius = [(RCPSyntheticEventStream *)self _createIOHIDWithEventType:1, pressure, radius];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:radius];

  CFRelease(radius);
}

- (void)touchDownAtPoints:(CGPoint *)points touchCount:(unint64_t)count radius:(double)radius
{
  [(RCPSyntheticEventStream *)self defaultPressure];

  [RCPSyntheticEventStream _touchDownAtPoints:"_touchDownAtPoints:touchCount:pressure:radius:edgeMaskOptions:" touchCount:points pressure:count radius:0 edgeMaskOptions:?];
}

- (void)touchDownAtPoints:(CGPoint *)points touchCount:(unint64_t)count pressure:(double)pressure
{
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self _touchDownAtPoints:points touchCount:count pressure:0 radius:pressure edgeMaskOptions:v9];
}

- (void)touchDownAtPoints:(CGPoint *)points touchCount:(unint64_t)count
{
  [(RCPSyntheticEventStream *)self defaultPressure];
  v8 = v7;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self _touchDownAtPoints:points touchCount:count pressure:0 radius:v8 edgeMaskOptions:v9];
}

- (void)touchDown:(CGPoint)down touchCount:(unint64_t)count pressure:(double)pressure radius:(double)radius
{
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x28223BE20](self, a2, down, *&down.y, *&pressure, *&radius);
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

- (void)touchDown:(CGPoint)down touchCount:(unint64_t)count radius:(double)radius
{
  y = down.y;
  x = down.x;
  [(RCPSyntheticEventStream *)self defaultPressure];

  [(RCPSyntheticEventStream *)self touchDown:count touchCount:x pressure:y radius:v10, radius];
}

- (void)touchDown:(CGPoint)down touchCount:(unint64_t)count pressure:(double)pressure
{
  y = down.y;
  x = down.x;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self touchDown:count touchCount:x pressure:y radius:pressure, v10];
}

- (void)touchDown:(CGPoint)down touchCount:(unint64_t)count
{
  y = down.y;
  x = down.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v9 = v8;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self touchDown:count touchCount:x pressure:y radius:v9, v10];
}

- (void)touchDown:(CGPoint)down
{
  [(RCPSyntheticEventStream *)self defaultPressure:*&down.x];
  v5 = v4;
  [(RCPSyntheticEventStream *)self defaultRadius];
  [(RCPSyntheticEventStream *)self _touchDownAtPoints:&v7 touchCount:1 pressure:0 radius:v5 edgeMaskOptions:v6];
}

- (void)touchTapDown:(CGPoint)down
{
  downCopy = down;
  v8 = 0;
  [(RCPSyntheticEventStream *)self _isEdgePoint:&v8 getMask:?];
  v8 |= 0x20000u;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v5 = v4;
  [(RCPSyntheticEventStream *)self defaultRadius];
  [(RCPSyntheticEventStream *)self _touchDownAtPoints:&downCopy touchCount:1 pressure:&v7 radius:v5 edgeMaskOptions:v6];
}

- (void)edgeOrb:(CGPoint)orb
{
  orbCopy = orb;
  v8 = 0;
  [(RCPSyntheticEventStream *)self _isEdgePoint:&v8 getMask:?];
  v8 |= 0x8000u;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v5 = v4;
  [(RCPSyntheticEventStream *)self defaultRadius];
  [(RCPSyntheticEventStream *)self _touchDownAtPoints:&orbCopy touchCount:1 pressure:&v7 radius:v5 edgeMaskOptions:v6];
  [(RCPSyntheticEventStream *)self moveToPoints:&orbCopy touchCount:1 pressure:300.0 duration:0.5];
  [(RCPSyntheticEventStream *)self moveToPoints:&orbCopy touchCount:1 pressure:150.0 duration:0.2];
  [(RCPSyntheticEventStream *)self moveToPoints:&orbCopy touchCount:1 pressure:700.0 duration:1.3];
  [(RCPSyntheticEventStream *)self liftUpAtPoints:&orbCopy touchCount:1];
}

- (void)edgeOrbSwipe:(CGPoint)swipe withEndLocation:(CGPoint)location withDuration:(double)duration
{
  swipeCopy = swipe;
  v16 = 0;
  [(RCPSyntheticEventStream *)self _isEdgePoint:&v16 getMask:?];
  v16 |= 0x8000u;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v8 = v7;
  [(RCPSyntheticEventStream *)self defaultRadius];
  [(RCPSyntheticEventStream *)self _touchDownAtPoints:&swipeCopy touchCount:1 pressure:&v15 radius:v8 edgeMaskOptions:v9];
  [(RCPSyntheticEventStream *)self moveToPoints:&swipeCopy touchCount:1 pressure:300.0 duration:0.5];
  currentTimeOffset = self->_currentTimeOffset;
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  if (v11 < duration)
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

    while (v13 < duration - v14);
  }

  [(RCPSyntheticEventStream *)self liftUpAtAllActivePoints];
}

- (void)liftUpActivePointsByIndex:(id)index
{
  v28 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [indexCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(indexCopy);
        }

        integerValue = [*(*(&v23 + 1) + 8 * i) integerValue];
        if (integerValue < [(RCPSyntheticEventStream *)self activePointCount])
        {
          *([(RCPSyntheticEventStream *)self activePoints]+ 80 * integerValue + 72) = 0;
          ++v7;
        }
      }

      v6 = [indexCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
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
  activePointCount = [(RCPSyntheticEventStream *)self activePointCount];
  if (activePointCount)
  {
    v13 = activePointCount;
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

- (void)liftUpAtAllActivePointsWithEventType:(int64_t)type
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

  v7 = [(RCPSyntheticEventStream *)self _createIOHIDWithEventType:type];
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

- (void)liftUpAtPoints:(CGPoint *)points touchCount:(unint64_t)count
{
  activePointCount = [(RCPSyntheticEventStream *)self activePointCount];
  v8 = activePointCount - count;
  if (count)
  {
    v9 = 80 * activePointCount - 80 * count;
    do
    {
      activePoints = [(RCPSyntheticEventStream *)self activePoints];
      v11 = *points++;
      *(&activePoints->var4 + v9) = v11;
      *([(RCPSyntheticEventStream *)self activePoints]+ v9 + 72) = 0;
      v9 += 80;
      --count;
    }

    while (count);
  }

  v12 = [(RCPSyntheticEventStream *)self _createIOHIDWithEventType:6];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v12];
  CFRelease(v12);

  [(RCPSyntheticEventStream *)self setActivePointCount:v8];
}

- (void)liftUp:(CGPoint)up touchCount:(unint64_t)count
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (count >= 5)
  {
    countCopy = 5;
  }

  else
  {
    countCopy = count;
  }

  if (count)
  {
    v5 = &v7[1] - (16 * countCopy);
    v6 = countCopy;
    do
    {
      *(v5 - 8) = up;
      v5 += 16;
      --v6;
    }

    while (v6);
  }

  [(RCPSyntheticEventStream *)self liftUpAtPoints:up.x touchCount:up.y];
}

- (void)_moveLastTouchPoint:(CGPoint)point eventMask:(unint64_t)mask
{
  y = point.y;
  x = point.x;
  activePoints = [(RCPSyntheticEventStream *)self activePoints];
  v9 = &activePoints[[(RCPSyntheticEventStream *)self activePointCount]];
  v9[-1].var4.x = x;
  v9[-1].var4.y = y;
  if (mask)
  {
    activePoints2 = [(RCPSyntheticEventStream *)self activePoints];
    activePoints2[[(RCPSyntheticEventStream *)self activePointCount]- 1].var8 = mask;
  }

  v11 = [(RCPSyntheticEventStream *)self _createIOHIDWithEventType:2];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v11];

  CFRelease(v11);
}

- (void)moveToPoints:(CGPoint *)points touchCount:(unint64_t)count pressure:(double)pressure duration:(double)duration radius:(double)radius
{
  pointsCopy = points;
  v34 = *MEMORY[0x277D85DE8];
  if (count >= 5)
  {
    countCopy = 5;
  }

  else
  {
    countCopy = count;
  }

  v32 = &pointsCopy - (16 * countCopy);
  countCopy2 = count;
  v12 = v32;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v14 = v13;
  currentTimeOffset = self->_currentTimeOffset;
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  if (v16 < duration)
  {
    v17 = 0;
    v18 = pressure - v14;
    v30 = (v12 + 8);
    p_y = &pointsCopy->y;
    do
    {
      v19 = self->_currentTimeOffset - currentTimeOffset;
      v20 = v19 / duration;
      if (v19 / duration > 1.0)
      {
        v20 = 1.0;
      }

      v21 = fmax(v20, 0.0);
      if (countCopy2)
      {
        v22 = countCopy;
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
      [(RCPSyntheticEventStream *)self _setMajorRadiusForAllPoints:radius];
      [(RCPSyntheticEventStream *)self _updateTouchPoints:v12 count:countCopy];
      [(RCPSyntheticEventStream *)self _delayBetweenMove:v17 elapsedTime:v19];
      [(RCPSyntheticEventStream *)self touchMoveInterval];
      v17 = (v17 + 1);
    }

    while (v19 < duration - v28);
  }

  [(RCPSyntheticEventStream *)self _updateTouchPoints:pointsCopy count:countCopy];
}

- (void)moveToPoints:(CGPoint *)points touchCount:(unint64_t)count pressure:(double)pressure duration:(double)duration
{
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self moveToPoints:points touchCount:count pressure:pressure duration:duration radius:v11];
}

- (void)moveToPoints:(CGPoint *)points touchCount:(unint64_t)count duration:(double)duration
{
  [(RCPSyntheticEventStream *)self defaultPressure];

  [RCPSyntheticEventStream moveToPoints:"moveToPoints:touchCount:pressure:duration:" touchCount:points pressure:count duration:?];
}

- (void)_setPressureForAllPoints:(double)points
{
  v5 = 5;
  do
  {
    *([(RCPSyntheticEventStream *)self activePoints]+ 56) = points;
    --v5;
  }

  while (v5);
}

- (void)_setMajorRadiusForAllPoints:(double)points
{
  v5 = 5;
  do
  {
    *([(RCPSyntheticEventStream *)self activePoints]+ 48) = points;
    --v5;
  }

  while (v5);
}

- (void)tap:(CGPoint)tap radius:(double)radius
{
  y = tap.y;
  x = tap.x;
  [(RCPSyntheticEventStream *)self defaultPressure];

  [(RCPSyntheticEventStream *)self taps:1 location:1 withNumberOfTouches:x pressure:y radius:v8, radius];
}

- (void)tap:(CGPoint)tap pressure:(double)pressure
{
  y = tap.y;
  x = tap.x;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self taps:1 location:1 withNumberOfTouches:x pressure:y radius:pressure, v8];
}

- (void)tapToWakeAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(RCPSyntheticEventStream *)self touchTapDown:?];
  [(RCPSyntheticEventStream *)self advanceTime:0.05];

  [(RCPSyntheticEventStream *)self liftUp:1 touchCount:x, y];
}

- (void)_tap:(CGPoint)_tap withPressure:(double)pressure
{
  y = _tap.y;
  x = _tap.x;
  *([(RCPSyntheticEventStream *)self activePoints:_tap.x]+ 56) = 0x3FF0000000000000;

  [(RCPSyntheticEventStream *)self tap:x, y];
}

- (void)taps:(unint64_t)taps location:(CGPoint)location withNumberOfTouches:(unint64_t)touches
{
  y = location.y;
  x = location.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v11 = v10;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self taps:taps location:touches withNumberOfTouches:x pressure:y radius:v11, v12];
}

- (void)taps:(unint64_t)taps location:(CGPoint)location withNumberOfTouches:(unint64_t)touches pressure:(double)pressure radius:(double)radius
{
  if (taps)
  {
    y = location.y;
    x = location.x;
    for (i = taps - 1; ; --i)
    {
      [(RCPSyntheticEventStream *)self touchDown:touches touchCount:x pressure:y radius:pressure, radius];
      [(RCPSyntheticEventStream *)self advanceTime:0.05];
      [(RCPSyntheticEventStream *)self liftUp:touches touchCount:x, y];
      if (!i)
      {
        break;
      }

      [(RCPSyntheticEventStream *)self advanceTime:0.15];
    }
  }
}

- (void)tapsNoLift:(unint64_t)lift location:(CGPoint)location withNumberOfTouches:(unint64_t)touches
{
  if (lift)
  {
    y = location.y;
    x = location.x;
    for (i = lift - 1; ; --i)
    {
      [(RCPSyntheticEventStream *)self touchDown:touches touchCount:x, y];
      [(RCPSyntheticEventStream *)self advanceTime:0.05];
      if (!i)
      {
        break;
      }

      [(RCPSyntheticEventStream *)self advanceTime:0.15];
    }
  }
}

- (void)pressButtonsWithPages:(id)pages usages:(id)usages duration:(double)duration
{
  pagesCopy = pages;
  usagesCopy = usages;
  v9 = [pagesCopy count];
  if (v9 < 1)
  {
    [(RCPSyntheticEventStream *)self advanceTime:duration];
  }

  else
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = [pagesCopy objectAtIndexedSubscript:i];
      unsignedIntValue = [v12 unsignedIntValue];
      v14 = [usagesCopy objectAtIndexedSubscript:i];
      v15 = -[RCPSyntheticEventStream _createIOSButtonHIDEventWithPage:usage:down:](self, "_createIOSButtonHIDEventWithPage:usage:down:", unsignedIntValue, [v14 unsignedIntValue], 1);

      [(RCPSyntheticEventStream *)self advanceTime:0.0001];
      [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v15];
      CFRelease(v15);
    }

    [(RCPSyntheticEventStream *)self advanceTime:duration];
    for (j = 0; j != v10; ++j)
    {
      v17 = [pagesCopy objectAtIndexedSubscript:j];
      unsignedIntValue2 = [v17 unsignedIntValue];
      v19 = [usagesCopy objectAtIndexedSubscript:j];
      v20 = -[RCPSyntheticEventStream _createIOSButtonHIDEventWithPage:usage:down:](self, "_createIOSButtonHIDEventWithPage:usage:down:", unsignedIntValue2, [v19 unsignedIntValue], 0);

      [(RCPSyntheticEventStream *)self advanceTime:0.0001];
      [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v20];
      CFRelease(v20);
    }
  }
}

- (void)pressButtons:(id)buttons duration:(double)duration
{
  v28 = *MEMORY[0x277D85DE8];
  buttonsCopy = buttons;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [buttonsCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(buttonsCopy);
        }

        v11 = -[RCPSyntheticEventStream _createIOSButtonHIDEventWithButtonType:down:](self, "_createIOSButtonHIDEventWithButtonType:down:", [*(*(&v22 + 1) + 8 * v10) integerValue], 1);
        [(RCPSyntheticEventStream *)self advanceTime:0.0001];
        [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v11];
        CFRelease(v11);
        ++v10;
      }

      while (v8 != v10);
      v8 = [buttonsCopy countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  [(RCPSyntheticEventStream *)self advanceTime:duration];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = buttonsCopy;
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

- (void)beginButtonPressForButtonType:(int64_t)type
{
  v4 = [(RCPSyntheticEventStream *)self _createIOSButtonHIDEventWithButtonType:type down:1];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v4];

  CFRelease(v4);
}

- (void)endButtonPressForButtonType:(int64_t)type
{
  v4 = [(RCPSyntheticEventStream *)self _createIOSButtonHIDEventWithButtonType:type down:0];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v4];

  CFRelease(v4);
}

- (void)beginButtonPressWithPage:(unint64_t)page usage:(unint64_t)usage
{
  v5 = [(RCPSyntheticEventStream *)self _createIOSButtonHIDEventWithPage:page usage:usage down:1];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v5];

  CFRelease(v5);
}

- (void)endButtonPressWithPage:(unint64_t)page usage:(unint64_t)usage
{
  v5 = [(RCPSyntheticEventStream *)self _createIOSButtonHIDEventWithPage:page usage:usage down:0];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v5];

  CFRelease(v5);
}

- (void)flipRingerSwitchToValue:(BOOL)value
{
  v4 = [(RCPSyntheticEventStream *)self _createIOSButtonHIDEventWithPage:11 usage:46 down:value];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v4];

  CFRelease(v4);
}

- (void)rotateCrown:(double)crown direction:(int64_t)direction duration:(double)duration
{
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  v8 = v7;
  v9 = llround(duration / v7);
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

- (void)_knobEventForOffset:(CGVector)offset buttonMask:(unsigned int)mask oldButtonMask:(unsigned int)buttonMask
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

- (void)knobNudge:(CGVector)nudge buttonMask:(unsigned int)mask duration:(double)duration
{
  v6 = *&mask;
  [(RCPSyntheticEventStream *)self _knobEventForOffset:*&mask buttonMask:0 oldButtonMask:nudge.dx, nudge.dy];
  [(RCPSyntheticEventStream *)self advanceTime:duration];

  [(RCPSyntheticEventStream *)self _knobEventForOffset:0 buttonMask:v6 oldButtonMask:0.0, 0.0];
}

- (void)sendUnicodeString:(id)string
{
  v6 = [string dataUsingEncoding:4];
  [(RCPSyntheticEventStream *)self _currentMachTime];
  v4 = v6;
  [v6 bytes];
  [v6 length];
  UnicodeEvent = IOHIDEventCreateUnicodeEvent();
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:UnicodeEvent];
  CFRelease(UnicodeEvent);
}

- (void)sendUnicodeStringByCharacters:(id)characters durationBetweenEvents:(double)events
{
  charactersCopy = characters;
  if ([charactersCopy count])
  {
    v6 = 0;
    do
    {
      v7 = [charactersCopy objectAtIndexedSubscript:v6];
      [(RCPSyntheticEventStream *)self sendUnicodeString:v7];

      if (v6 != [charactersCopy count] - 1)
      {
        [(RCPSyntheticEventStream *)self advanceTime:events];
      }

      ++v6;
    }

    while ([charactersCopy count] > v6);
  }
}

- (void)sendUnicodeString:(id)string synthesizePerCharacterEvents:(BOOL)events durationBetweenEvents:(double)betweenEvents
{
  if (events)
  {
    v7 = [(RCPSyntheticEventStream *)self _splitStringIntoArrayOfCharacters:string];
    [(RCPSyntheticEventStream *)self sendUnicodeStringByCharacters:v7 durationBetweenEvents:betweenEvents];
  }

  else
  {

    [(RCPSyntheticEventStream *)self sendUnicodeString:string, betweenEvents];
  }
}

- (id)_splitStringIntoArrayOfCharacters:(id)characters
{
  v3 = MEMORY[0x277CBEB18];
  charactersCopy = characters;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(charactersCopy, "length")}];
  v6 = [charactersCopy length];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__RCPSyntheticEventStream__splitStringIntoArrayOfCharacters___block_invoke;
  v10[3] = &unk_279AF10D0;
  v11 = v5;
  v7 = v5;
  [charactersCopy enumerateSubstringsInRange:0 options:v6 usingBlock:{2, v10}];

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

- (void)pressDiscreteGameControllerButton:(int64_t)button duration:(double)duration
{
  v6 = [(RCPSyntheticEventStream *)self _createIOHIDGameControllerEventForDpadButton:button];
  [(RCPSyntheticEventStream *)self advanceTime:0.0001];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v6];
  CFRelease(v6);
  [(RCPSyntheticEventStream *)self advanceTime:duration];
  v7 = [(RCPSyntheticEventStream *)self _createIOHIDGameControllerEventForDpadButton:0];
  [(RCPSyntheticEventStream *)self advanceTime:0.0001];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v7];

  CFRelease(v7);
}

- (void)dragWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration
{
  y = endPoint.y;
  x = endPoint.x;
  v8 = point.y;
  v9 = point.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v12 = v11;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self dragWithStartPoint:v9 endPoint:v8 duration:x pressure:y radius:duration, v12, v13];
}

- (void)dragWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration radius:(double)radius
{
  y = endPoint.y;
  x = endPoint.x;
  v10 = point.y;
  v11 = point.x;
  [(RCPSyntheticEventStream *)self defaultPressure];

  [(RCPSyntheticEventStream *)self dragWithStartPoint:v11 endPoint:v10 duration:x pressure:y radius:duration, v13, radius];
}

- (void)dragWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration pressure:(double)pressure
{
  y = endPoint.y;
  x = endPoint.x;
  v10 = point.y;
  v11 = point.x;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self dragWithStartPoint:v11 endPoint:v10 duration:x pressure:y radius:duration, pressure, v13];
}

- (void)dragWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration tapAndWait:(double)wait lift:(BOOL)lift
{
  liftCopy = lift;
  y = endPoint.y;
  x = endPoint.x;
  v12 = point.y;
  v13 = point.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v16 = v15;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self dragWithStartPoint:liftCopy endPoint:v13 duration:v12 tapAndWait:x lift:y pressure:duration radius:wait, v16, v17];
}

- (void)dragWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration tapAndWait:(double)wait lift:(BOOL)lift radius:(double)radius
{
  liftCopy = lift;
  y = endPoint.y;
  x = endPoint.x;
  v14 = point.y;
  v15 = point.x;
  [(RCPSyntheticEventStream *)self defaultPressure];

  [(RCPSyntheticEventStream *)self dragWithStartPoint:liftCopy endPoint:v15 duration:v14 tapAndWait:x lift:y pressure:duration radius:wait, v17, radius];
}

- (void)dragWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration tapAndWait:(double)wait lift:(BOOL)lift pressure:(double)pressure
{
  liftCopy = lift;
  y = endPoint.y;
  x = endPoint.x;
  v14 = point.y;
  v15 = point.x;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self dragWithStartPoint:liftCopy endPoint:v15 duration:v14 tapAndWait:x lift:y pressure:duration radius:wait, pressure, v17];
}

- (void)dragWithStartPoint:(CGPoint)point mask:(unint64_t)mask endPoint:(CGPoint)endPoint mask:(unint64_t)a6 duration:(double)duration
{
  y = endPoint.y;
  x = endPoint.x;
  v12 = point.y;
  v13 = point.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v16 = v15;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self _dragWithStartPoint:mask mask:a6 endPoint:1 mask:v13 duration:v12 tapAndWait:x lift:y pressure:duration radius:0.0, v16, v17];
}

- (void)sendFlickWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration
{
  y = endPoint.y;
  x = endPoint.x;
  v8 = point.y;
  v9 = point.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v12 = v11;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self _flickWithStartPoint:v9 endPoint:v8 duration:x pressure:y radius:duration, v12, v13];
}

- (void)sendFlickWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration pressure:(double)pressure
{
  y = endPoint.y;
  x = endPoint.x;
  v10 = point.y;
  v11 = point.x;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self _flickWithStartPoint:v11 endPoint:v10 duration:x pressure:y radius:duration, pressure, v13];
}

- (void)sendFlickWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration radius:(double)radius
{
  y = endPoint.y;
  x = endPoint.x;
  v10 = point.y;
  v11 = point.x;
  [(RCPSyntheticEventStream *)self defaultPressure];

  [(RCPSyntheticEventStream *)self _flickWithStartPoint:v11 endPoint:v10 duration:x pressure:y radius:duration, v13, radius];
}

- (void)multifingerDragWithPointArray:(CGPoint *)array numPoints:(unint64_t)points duration:(double)duration numFingers:(unint64_t)fingers
{
  v42 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (array && points >= 2)
  {
    v35 = &v35;
    if (fingers >= 5)
    {
      fingersCopy = 5;
    }

    else
    {
      fingersCopy = fingers;
    }

    v10 = (MEMORY[0x28223BE20])(self, a2, *&duration) / (points - 1);
    v11 = (fingersCopy >> 1);
    v37 = fingersCopy;
    v12 = 1;
    do
    {
      currentTimeOffset = self->_currentTimeOffset;
      v14 = &arrayCopy[v12];
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

          if (fingers)
          {
            v32 = 0;
            v33 = (&v35 - 2 * fingersCopy + 1);
            do
            {
              *(v33 - 1) = v24 + v32;
              *v33 = v23 + v32++;
              v33 += 2;
            }

            while (fingersCopy != v32);
          }

          [(RCPSyntheticEventStream *)self _updateTouchPoints:&v35 - 2 * fingersCopy count:fingersCopy];
          [(RCPSyntheticEventStream *)self _delayBetweenMove:v17 elapsedTime:v18];
          [(RCPSyntheticEventStream *)self touchMoveInterval];
          v17 = (v17 + 1);
        }

        while (v18 < v10 - v34);
      }

      ++v12;
    }

    while (v12 != points);
    [(RCPSyntheticEventStream *)self liftUpAtPoints:&v35 - 2 * fingersCopy touchCount:fingersCopy];
    [(RCPSyntheticEventStream *)self setActivePointCount:0];
  }
}

- (void)rotate:(CGPoint)rotate withRadius:(double)radius rotation:(double)rotation duration:(double)duration touchCount:(unint64_t)count
{
  rotationCopy = rotation;
  y = rotate.y;
  x = rotate.x;
  v29 = *MEMORY[0x277D85DE8];
  if (count >= 5)
  {
    countCopy = 5;
  }

  else
  {
    countCopy = count;
  }

  v14 = MEMORY[0x28223BE20](self, a2, rotate, *&rotate.y, *&radius, *&rotation);
  v16 = v15[4];
  [v15 touchMoveInterval];
  v18 = v17;
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  if (v19 < duration)
  {
    v20 = 0;
    v21 = llround(duration / v18);
    do
    {
      if (count)
      {
        v22 = 0;
        v23 = v20 / v21 * rotationCopy;
        v24 = &rotationCopy - 2 * countCopy + 1;
        do
        {
          v25 = __sincos_stret(v23 + 6.28318531 / countCopy * v22);
          *(v24 - 1) = x + radius * v25.__cosval;
          *v24 = y + radius * v25.__sinval;
          ++v22;
          v24 += 2;
        }

        while (countCopy != v22);
      }

      [(RCPSyntheticEventStream *)self _updateTouchPoints:&rotationCopy - 2 * countCopy count:countCopy, *&rotationCopy, v29];
      v26 = self->_currentTimeOffset - v16;
      [(RCPSyntheticEventStream *)self _delayBetweenMove:v20 elapsedTime:v26];
      [(RCPSyntheticEventStream *)self touchMoveInterval];
      v20 = (v20 + 1);
    }

    while (v26 < duration - v27);
  }

  [(RCPSyntheticEventStream *)self liftUpAtPoints:&rotationCopy - 2 * countCopy touchCount:countCopy, *&rotationCopy];
  [(RCPSyntheticEventStream *)self setActivePointCount:0];
}

- (void)_dragWithStartPoint:(CGPoint)point mask:(unint64_t)mask endPoint:(CGPoint)endPoint mask:(unint64_t)a6 duration:(double)duration tapAndWait:(double)wait lift:(BOOL)lift pressure:(double)self0 radius:(double)self1
{
  y = endPoint.y;
  x = endPoint.x;
  pointCopy = point;
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  v22 = v21;
  maskCopy = mask;
  [(RCPSyntheticEventStream *)self _touchDownAtPoints:&pointCopy touchCount:1 pressure:&maskCopy radius:pressure edgeMaskOptions:radius];
  if (wait > 0.0)
  {
    [(RCPSyntheticEventStream *)self advanceTime:wait];
  }

  v23 = llround(duration / v22);
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
        maskCopy2 = a6;
      }

      else
      {
        maskCopy2 = mask;
      }

      [(RCPSyntheticEventStream *)self _moveLastTouchPoint:maskCopy2 eventMask:v26];
      ++v24;
    }

    while (v25 != v24);
  }

  [(RCPSyntheticEventStream *)self advanceTime:v22];
  if (lift)
  {
    [(RCPSyntheticEventStream *)self liftUp:x, y];
  }
}

- (void)_flickWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration pressure:(double)pressure radius:(double)radius
{
  y = endPoint.y;
  x = endPoint.x;
  currentTimeOffset = self->_currentTimeOffset;
  [RCPSyntheticEventStream touchDown:"touchDown:touchCount:pressure:radius:" touchCount:1 pressure:? radius:?];
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  if (v12 < duration)
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

    while (v14 < duration - v15);
  }

  [(RCPSyntheticEventStream *)self liftUp:x, y];
}

- (void)pinchOpenWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration
{
  y = endPoint.y;
  x = endPoint.x;
  v8 = point.y;
  v9 = point.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v12 = v11;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self pinchOpenWithStartPoint:v9 endPoint:v8 duration:x pressure:y radius:duration, v12, v13];
}

- (void)pinchOpenWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration radius:(double)radius
{
  y = endPoint.y;
  x = endPoint.x;
  v10 = point.y;
  v11 = point.x;
  [(RCPSyntheticEventStream *)self defaultPressure];

  [(RCPSyntheticEventStream *)self pinchOpenWithStartPoint:v11 endPoint:v10 duration:x pressure:y radius:duration, v13, radius];
}

- (void)pinchOpenWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration pressure:(double)pressure
{
  y = endPoint.y;
  x = endPoint.x;
  v10 = point.y;
  v11 = point.x;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self pinchOpenWithStartPoint:v11 endPoint:v10 duration:x pressure:y radius:duration, pressure, v13];
}

- (void)pinchCloseWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration
{
  y = endPoint.y;
  x = endPoint.x;
  v8 = point.y;
  v9 = point.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v12 = v11;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self pinchCloseWithStartPoint:v9 endPoint:v8 duration:x pressure:y radius:duration, v12, v13];
}

- (void)pinchCloseWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration pressure:(double)pressure
{
  y = endPoint.y;
  x = endPoint.x;
  v10 = point.y;
  v11 = point.x;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self pinchCloseWithStartPoint:v11 endPoint:v10 duration:x pressure:y radius:duration, pressure, v13];
}

- (void)pinchCloseWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration radius:(double)radius
{
  y = endPoint.y;
  x = endPoint.x;
  v10 = point.y;
  v11 = point.x;
  [(RCPSyntheticEventStream *)self defaultPressure];

  [(RCPSyntheticEventStream *)self pinchCloseWithStartPoint:v11 endPoint:v10 duration:x pressure:y radius:duration, v13, radius];
}

- (void)peekAndPop:(CGPoint)pop commit:(BOOL)commit duration:(double)duration
{
  commitCopy = commit;
  y = pop.y;
  x = pop.x;
  [(RCPSyntheticEventStream *)self defaultPressure];
  v11 = v10;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self peekAndPop:commitCopy commit:x duration:y pressure:duration radius:v11, v12];
}

- (void)peekAndPop:(CGPoint)pop commit:(BOOL)commit duration:(double)duration presure:(double)presure
{
  commitCopy = commit;
  y = pop.y;
  x = pop.x;
  [(RCPSyntheticEventStream *)self defaultRadius];

  [(RCPSyntheticEventStream *)self peekAndPop:commitCopy commit:x duration:y pressure:duration radius:presure, v12];
}

- (void)peekAndPop:(CGPoint)pop commit:(BOOL)commit duration:(double)duration radius:(double)radius
{
  commitCopy = commit;
  y = pop.y;
  x = pop.x;
  [(RCPSyntheticEventStream *)self defaultPressure];

  [(RCPSyntheticEventStream *)self peekAndPop:commitCopy commit:x duration:y pressure:duration radius:v12, radius];
}

- (void)peekAndPop:(CGPoint)pop commit:(BOOL)commit duration:(double)duration pressure:(double)pressure radius:(double)radius
{
  commitCopy = commit;
  popCopy = pop;
  [(RCPSyntheticEventStream *)self _touchDownAtPoints:&popCopy touchCount:1 pressure:0 radius:pressure edgeMaskOptions:radius];
  [(RCPSyntheticEventStream *)self moveToPoints:&popCopy touchCount:1 pressure:300.0 duration:0.5 radius:radius];
  [(RCPSyntheticEventStream *)self moveToPoints:&popCopy touchCount:1 pressure:150.0 duration:0.2 radius:radius];
  [(RCPSyntheticEventStream *)self advanceTime:duration];
  if (commitCopy)
  {
    [(RCPSyntheticEventStream *)self moveToPoints:&popCopy touchCount:1 pressure:700.0 duration:0.8 radius:radius];
  }

  [(RCPSyntheticEventStream *)self liftUpAtPoints:&popCopy touchCount:1];
}

- (__IOHIDEvent)_parentZeroPointerEvent
{
  [(RCPSyntheticEventStream *)self _currentMachTime];
  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();

  return CFAutorelease(RelativePointerEvent);
}

- (void)_wrapInPointerParentAndAddToProcessingBuffer:(__IOHIDEvent *)buffer
{
  [(RCPSyntheticEventStream *)self _currentMachTime];
  RelativePointerEvent = IOHIDEventCreateRelativePointerEvent();
  IOHIDEventAppendEvent();
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:RelativePointerEvent];

  CFRelease(RelativePointerEvent);
}

- (void)pointerSetAbsolutePosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  [(RCPSyntheticEventStream *)self _currentMachTime];
  v6 = IOHIDEventCreate();
  pointerChildEventStream = [(RCPSyntheticEventStream *)self pointerChildEventStream];
  [pointerChildEventStream setCurrentPointerLocation:{x, y}];

  [(RCPSyntheticEventStream *)self _normalizePoint:x, y];
  v9 = v8;
  v11 = v10;
  pointerChildEventStream2 = [(RCPSyntheticEventStream *)self pointerChildEventStream];
  [pointerChildEventStream2 orientedNormalPoint:{v9, v11}];

  IOHIDEventSetFloatValue();
  IOHIDEventSetFloatValue();
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:v6];

  CFRelease(v6);
}

- (void)pointerMoveDelta:(CGPoint)delta duration:(double)duration frequency:(int64_t)frequency
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__RCPSyntheticEventStream_pointerMoveDelta_duration_frequency___block_invoke;
  v5[3] = &unk_279AF1048;
  v5[4] = self;
  deltaCopy = delta;
  durationCopy = duration;
  [(RCPSyntheticEventStream *)self _withPointerEventStreamAtFrequency:frequency perform:v5];
}

- (void)pointerMoveByDelta:(CGVector)delta duration:(double)duration
{
  dy = delta.dy;
  dx = delta.dx;
  pointerChildEventStream = [(RCPSyntheticEventStream *)self pointerChildEventStream];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__RCPSyntheticEventStream_pointerMoveByDelta_duration___block_invoke;
  v9[3] = &unk_279AF1048;
  v9[4] = self;
  *&v9[5] = dx;
  *&v9[6] = dy;
  *&v9[7] = duration;
  [(RCPSyntheticEventStream *)self withExclusiveChildStream:pointerChildEventStream perform:v9];
}

void __55__RCPSyntheticEventStream_pointerMoveByDelta_duration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pointerChildEventStream];
  [v2 moveByDelta:*(a1 + 40) duration:{*(a1 + 48), *(a1 + 56)}];
}

- (void)pointerMoveToPoint:(CGPoint)point duration:(double)duration
{
  y = point.y;
  x = point.x;
  pointerChildEventStream = [(RCPSyntheticEventStream *)self pointerChildEventStream];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__RCPSyntheticEventStream_pointerMoveToPoint_duration___block_invoke;
  v9[3] = &unk_279AF1048;
  v9[4] = self;
  *&v9[5] = x;
  *&v9[6] = y;
  *&v9[7] = duration;
  [(RCPSyntheticEventStream *)self withExclusiveChildStream:pointerChildEventStream perform:v9];
}

void __55__RCPSyntheticEventStream_pointerMoveToPoint_duration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pointerChildEventStream];
  [v2 moveToPoint:*(a1 + 40) duration:{*(a1 + 48), *(a1 + 56)}];
}

- (void)pointerMoveFromOriginPoint:(CGPoint)point toDestinationPoint:(CGPoint)destinationPoint duration:(double)duration frequency:(int64_t)frequency
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __92__RCPSyntheticEventStream_pointerMoveFromOriginPoint_toDestinationPoint_duration_frequency___block_invoke;
  v6[3] = &unk_279AF1198;
  v6[4] = self;
  pointCopy = point;
  destinationPointCopy = destinationPoint;
  durationCopy = duration;
  [(RCPSyntheticEventStream *)self _withPointerEventStreamAtFrequency:frequency perform:v6];
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

- (void)pointerDiscreteScroll:(CGPoint)scroll duration:(double)duration frequency:(int64_t)frequency
{
  v5 = vcvtpd_s64_f64(frequency * duration);
  if (v5 >= 1)
  {
    [(RCPSyntheticEventStream *)self pointerDiscreteScroll:v5 duration:scroll.x frequency:scroll.y, 1.0 / frequency];
  }
}

- (void)pointerDiscreteScroll:(CGPoint)scroll duration:(double)duration
{
  y = scroll.y;
  x = scroll.x;
  [(RCPSyntheticEventStream *)self pointerFrequency];

  [(RCPSyntheticEventStream *)self pointerDiscreteScroll:v8 duration:x frequency:y, duration];
}

- (void)pointerPhasedScroll:(CGPoint)scroll duration:(double)duration frequency:(int64_t)frequency
{
  y = scroll.y;
  x = scroll.x;
  v10 = objc_alloc_init(RCPScrollEventStream);
  [(RCPScrollEventStream *)v10 setFrequency:frequency];
  if (self->_scalePointerPhaseScrollToPixels)
  {
    [(RCPSyntheticEventStream *)self gsScreenScaleFactor];
    [(RCPScrollEventStream *)v10 setDeltaToPixelsScaleFactor:?];
  }

  pointerCurveFunction = [(RCPSyntheticEventStream *)self pointerCurveFunction];
  [(RCPScrollEventStream *)v10 setPointerCurveFunction:pointerCurveFunction];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__RCPSyntheticEventStream_pointerPhasedScroll_duration_frequency___block_invoke;
  v13[3] = &unk_279AF1048;
  v14 = v10;
  v15 = x;
  v16 = y;
  durationCopy = duration;
  v12 = v10;
  [(RCPSyntheticEventStream *)self withExclusiveChildStream:v12 perform:v13];
}

- (void)pointerPhasedScroll:(CGPoint)scroll duration:(double)duration
{
  y = scroll.y;
  x = scroll.x;
  [(RCPSyntheticEventStream *)self pointerFrequency];

  [(RCPSyntheticEventStream *)self pointerPhasedScroll:v8 duration:x frequency:y, duration];
}

- (void)pointerPhasedFlick:(CGPoint)flick duration:(double)duration frequency:(int64_t)frequency
{
  y = flick.y;
  x = flick.x;
  v10 = objc_alloc_init(RCPScrollEventStream);
  [(RCPScrollEventStream *)v10 setFrequency:frequency];
  if (self->_scalePointerPhaseScrollToPixels)
  {
    [(RCPSyntheticEventStream *)self gsScreenScaleFactor];
    [(RCPScrollEventStream *)v10 setDeltaToPixelsScaleFactor:?];
  }

  pointerCurveFunction = [(RCPSyntheticEventStream *)self pointerCurveFunction];
  rcp_functionWithLinearEnd = [pointerCurveFunction rcp_functionWithLinearEnd];
  [(RCPScrollEventStream *)v10 setPointerCurveFunction:rcp_functionWithLinearEnd];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__RCPSyntheticEventStream_pointerPhasedFlick_duration_frequency___block_invoke;
  v14[3] = &unk_279AF1048;
  v15 = v10;
  v16 = x;
  v17 = y;
  durationCopy = duration;
  v13 = v10;
  [(RCPSyntheticEventStream *)self withExclusiveChildStream:v13 perform:v14];
}

- (void)pointerPhasedFlick:(CGPoint)flick duration:(double)duration
{
  y = flick.y;
  x = flick.x;
  [(RCPSyntheticEventStream *)self pointerFrequency];

  [(RCPSyntheticEventStream *)self pointerPhasedFlick:v8 duration:x frequency:y, duration];
}

- (void)pointerDiscreteGesture:(id)gesture duration:(double)duration frequency:(int64_t)frequency
{
  v42 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  frequencyCopy = frequency;
  v9 = vcvtpd_s64_f64(frequency * duration);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *MEMORY[0x277CBF348];
    v12 = *(MEMORY[0x277CBF348] + 8);
    v34 = 1.0 / frequencyCopy;
    do
    {
      _parentZeroPointerEvent = [(RCPSyntheticEventStream *)self _parentZeroPointerEvent];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = gestureCopy;
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

      [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:_parentZeroPointerEvent];
      [(RCPSyntheticEventStream *)self advanceTime:v34];
      ++v10;
    }

    while (v10 != v9);
  }
}

- (void)pointerScale:(double)scale duration:(double)duration frequency:(int64_t)frequency
{
  v8 = MEMORY[0x277CBEB98];
  v10 = [RCPDiscreteGestureSpec scaleZ:scale];
  v9 = [v8 setWithObject:v10];
  [(RCPSyntheticEventStream *)self pointerDiscreteGesture:v9 duration:frequency frequency:duration];
}

- (void)pointerRotation:(double)rotation duration:(double)duration frequency:(int64_t)frequency
{
  v8 = MEMORY[0x277CBEB98];
  v10 = [RCPDiscreteGestureSpec rotationZ:rotation];
  v9 = [v8 setWithObject:v10];
  [(RCPSyntheticEventStream *)self pointerDiscreteGesture:v9 duration:frequency frequency:duration];
}

- (void)pointerTranslatation:(CGPoint)translatation duration:(double)duration frequency:(int64_t)frequency
{
  v8 = MEMORY[0x277CBEB98];
  v10 = [RCPDiscreteGestureSpec translation:translatation.x, translatation.y];
  v9 = [v8 setWithObject:v10];
  [(RCPSyntheticEventStream *)self pointerDiscreteGesture:v9 duration:frequency frequency:duration];
}

- (void)_pressButtonEventForIndex:(int64_t)index down:(BOOL)down
{
  [(RCPSyntheticEventStream *)self _currentMachTime];
  v5 = IOHIDEventCreate();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetIntegerValue();
  IOHIDEventSetIntegerValue();
  [(RCPSyntheticEventStream *)self _wrapInPointerParentAndAddToProcessingBuffer:v5];

  CFRelease(v5);
}

- (void)_withPointerEventStreamAtFrequency:(int64_t)frequency perform:(id)perform
{
  performCopy = perform;
  pointerChildEventStream = [(RCPSyntheticEventStream *)self pointerChildEventStream];
  [pointerChildEventStream frequency];
  v9 = v8;

  frequencyCopy = frequency;
  pointerChildEventStream2 = [(RCPSyntheticEventStream *)self pointerChildEventStream];
  [pointerChildEventStream2 setFrequency:frequencyCopy];

  performCopy[2](performCopy);
  pointerChildEventStream3 = [(RCPSyntheticEventStream *)self pointerChildEventStream];
  [pointerChildEventStream3 setFrequency:v9];
}

- (void)_hoverAtPoints:(CGPoint *)points touchCount:(unint64_t)count pressure:(double)pressure radius:(double)radius edgeMaskOptions:(id *)options withEventType:(int64_t)type withZPosition:(double)position withAzimuthAngle:(double)self0 withRollAngle:(double)self1 withAltitudeAngle:(double)self2
{
  if (count)
  {
    countCopy = count;
    do
    {
      activePointCount = [(RCPSyntheticEventStream *)self activePointCount];
      x = points->x;
      y = points->y;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount + 32) = *points;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount + 56) = pressure;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount) = position;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount + 16) = angle;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount + 8) = rollAngle;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount + 24) = altitudeAngle;
      if (options && !options->var1)
      {
        var0 = options->var0;
        *([(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount + 68) = var0;
      }

      else
      {
        [(RCPSyntheticEventStream *)self _normalizePoint:x, y];
        v27 = v26;
        v29 = v28;
        *([(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount + 68) = 0;
        [(RCPSyntheticEventStream *)self _isEdgePoint:[(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount + 68 getMask:v27, v29];
      }

      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount + 72) = 0;
      *([(RCPSyntheticEventStream *)self activePoints]+ 80 * activePointCount + 48) = radius;
      [(RCPSyntheticEventStream *)self setActivePointCount:[(RCPSyntheticEventStream *)self activePointCount]+ 1];
      ++points;
      --countCopy;
    }

    while (countCopy);
  }

  altitudeAngle = [(RCPSyntheticEventStream *)self _createIOHIDWithEventType:type, pressure, radius, position, angle, rollAngle, altitudeAngle];
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:altitudeAngle];

  CFRelease(altitudeAngle);
}

- (void)hoverAtLocation:(CGPoint)location withDuration:(double)duration
{
  locationCopy = location;
  [(RCPSyntheticEventStream *)self _hoverAtPoints:&locationCopy touchCount:1 pressure:0 radius:9 edgeMaskOptions:0.0 withEventType:0.0 withZPosition:5.0 withAzimuthAngle:0.0 withRollAngle:0.0 withAltitudeAngle:0.785398163];
  [(RCPSyntheticEventStream *)self advanceTime:duration];
  [(RCPSyntheticEventStream *)self liftUpAtAllActivePointsWithEventType:9];
}

- (void)hoverToTapAtLocation:(CGPoint)location withDuration:(double)duration
{
  locationCopy = location;
  [(RCPSyntheticEventStream *)self _hoverAtPoints:&locationCopy touchCount:1 pressure:0 radius:12 edgeMaskOptions:0.0 withEventType:0.0 withZPosition:5.0 withAzimuthAngle:0.0 withRollAngle:0.0 withAltitudeAngle:0.785398163];
  [(RCPSyntheticEventStream *)self advanceTime:duration];
  [(RCPSyntheticEventStream *)self liftUpAtAllActivePointsWithEventType:10];
}

- (void)hoverAtLocation:(CGPoint)location withDuration:(double)duration withZPosition:(double)position
{
  locationCopy = location;
  [(RCPSyntheticEventStream *)self _hoverAtPoints:&locationCopy touchCount:1 pressure:0 radius:9 edgeMaskOptions:0.0 withEventType:0.0 withZPosition:position withAzimuthAngle:0.0 withRollAngle:0.0 withAltitudeAngle:0.785398163];
  [(RCPSyntheticEventStream *)self advanceTime:duration];
  [(RCPSyntheticEventStream *)self liftUpAtAllActivePointsWithEventType:10];
}

- (void)hoverAtLocation:(CGPoint)location withDuration:(double)duration withZPosition:(double)position withAltitudeAngle:(double)angle withAzimuthAngle:(double)azimuthAngle withRollAngle:(double)rollAngle
{
  locationCopy = location;
  [(RCPSyntheticEventStream *)self _hoverAtPoints:&locationCopy touchCount:1 pressure:0 radius:9 edgeMaskOptions:0.0 withEventType:0.0 withZPosition:position withAzimuthAngle:azimuthAngle withRollAngle:rollAngle withAltitudeAngle:angle];
  [(RCPSyntheticEventStream *)self advanceTime:duration];
  [(RCPSyntheticEventStream *)self liftUpAtAllActivePointsWithEventType:10];
}

- (void)hoverToTapAtLocation:(CGPoint)location withDuration:(double)duration withZPosition:(double)position
{
  locationCopy = location;
  [(RCPSyntheticEventStream *)self _hoverAtPoints:&locationCopy touchCount:1 pressure:0 radius:12 edgeMaskOptions:0.0 withEventType:0.0 withZPosition:position withAzimuthAngle:0.0 withRollAngle:0.0 withAltitudeAngle:0.785398163];
  [(RCPSyntheticEventStream *)self advanceTime:duration];
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

- (void)barrelRollAtLocation:(CGPoint)location withZPosition:(double)position withAltitudeAngle:(double)angle withAzimuthAngle:(double)azimuthAngle withRollAngle:(double)rollAngle
{
  locationCopy = location;
  [(RCPSyntheticEventStream *)self _hoverAtPoints:&locationCopy touchCount:1 pressure:0 radius:9 edgeMaskOptions:0.0 withEventType:0.0 withZPosition:position withAzimuthAngle:0.0 withRollAngle:0.0 withAltitudeAngle:0.785398163];
  [(RCPSyntheticEventStream *)self _currentMachTime];
  GenericGestureEvent = IOHIDEventCreateGenericGestureEvent();
  IOHIDEventSetFloatValue();
  IOHIDEventSetFloatValue();
  IOHIDEventSetFloatValue();
  IOHIDEventSetPhase();
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:GenericGestureEvent];
  CFRelease(GenericGestureEvent);
}

- (void)_squeezeWithPhase:(unsigned __int16)phase withPage:(id)page withUsage:(id)usage withVersion:(unsigned __int8)version withStage:(unsigned int)stage withTransition:(unsigned int)transition withNextThreshold:(double)threshold withPressedThreshold:(double)self0 withReleasedThreshold:(double)self1 withNormalizedForce:(double)self2 withNormalizedForceVelocity:(double)self3
{
  v19 = __PAIR64__(transition, stage);
  thresholdCopy = threshold;
  releasedThresholdCopy = releasedThreshold;
  forceCopy = force;
  velocityCopy = velocity;
  usageCopy = usage;
  pageCopy = page;
  [(RCPSyntheticEventStream *)self _currentMachTime:v19];
  GenericGestureEvent = IOHIDEventCreateGenericGestureEvent();
  v18 = [MEMORY[0x277CBEA90] dataWithBytes:&v19 length:48];
  [(RCPSyntheticEventStream *)self _currentMachTime];
  [pageCopy unsignedIntValue];

  [usageCopy unsignedIntValue];
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

- (void)squeezeAtLocation:(CGPoint)location
{
  locationCopy = location;
  [(RCPSyntheticEventStream *)self _hoverAtPoints:&locationCopy touchCount:1 pressure:0 radius:9 edgeMaskOptions:0.0 withEventType:0.0 withZPosition:5.0 withAzimuthAngle:0.0 withRollAngle:0.0 withAltitudeAngle:0.785398163];
  [(RCPSyntheticEventStream *)self squeeze];
}

- (void)_touchSensitiveButtonEventWithPhase:(unsigned __int16)phase withPage:(id)page withUsage:(id)usage withStage:(unsigned int)stage withTransition:(unsigned int)transition withNormalizedForce:(double)force withNormalizedForceVelocity:(double)velocity withNormalizedPositionX:(double)self0 withNormalizedPositionDeltaX:(double)self1 withNormalizedPositionY:(double)self2 withNormalizedPositionDeltaY:(double)self3 withMajorRadius:(double)self4 withMinorRadius:(double)self5 withMask:(unsigned int)self6 withTouch:(int)self7 withNextThreshold:(double)self8 withPressedThreshold:(double)self9 withReleasedThreshold:(double)releasedThreshold
{
  usageCopy = usage;
  pageCopy = page;
  [(RCPSyntheticEventStream *)self _currentMachTime];
  [usageCopy unsignedIntValue];

  [pageCopy unsignedIntValue];
  TouchSensitiveButtonEventWithRadius = IOHIDEventCreateTouchSensitiveButtonEventWithRadius();
  [(RCPSyntheticEventStream *)self _currentMachTime];
  IOHIDEventCreateForceStageEvent();
  IOHIDEventAppendEvent();
  IOHIDEventSetPhase();
  [(RCPSyntheticEventStream *)self _addIOHIDEventToProcessingBuffer:TouchSensitiveButtonEventWithRadius];

  CFRelease(TouchSensitiveButtonEventWithRadius);
}

- (void)touchSensitiveButtonClickWithPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY
{
  usageCopy = usage;
  pageCopy = page;
  LODWORD(v13) = touch;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:1 withPage:pageCopy withUsage:usageCopy withStage:4 withTransition:1 withNormalizedForce:8 withNormalizedForceVelocity:0.002 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:y withMajorRadius:deltaY withMinorRadius:0.0 withMask:0.0 withTouch:v13 withNextThreshold:0x7FF8000000000000 withPressedThreshold:0x7FF8000000000000 withReleasedThreshold:0x7FF8000000000000];
  LODWORD(v14) = touch;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:4 withPage:pageCopy withUsage:usageCopy withStage:4 withTransition:2 withNormalizedForce:8 withNormalizedForceVelocity:0.002 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:y withMajorRadius:deltaY withMinorRadius:0.0 withMask:0.0 withTouch:v14 withNextThreshold:0x7FF8000000000000 withPressedThreshold:0x7FF8000000000000 withReleasedThreshold:0x7FF8000000000000];
}

- (void)touchSensitiveButtonHoldWithPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY
{
  usageCopy = usage;
  pageCopy = page;
  LODWORD(v13) = touch;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:1 withPage:pageCopy withUsage:usageCopy withStage:4 withTransition:1 withNormalizedForce:8 withNormalizedForceVelocity:0.002 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:y withMajorRadius:deltaY withMinorRadius:0.0 withMask:0.0 withTouch:v13 withNextThreshold:0x7FF8000000000000 withPressedThreshold:0x7FF8000000000000 withReleasedThreshold:0x7FF8000000000000];
  LODWORD(v14) = touch;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:2 withPage:pageCopy withUsage:usageCopy withStage:4 withTransition:0 withNormalizedForce:8 withNormalizedForceVelocity:0.002 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:y withMajorRadius:deltaY withMinorRadius:0.0 withMask:0.0 withTouch:v14 withNextThreshold:0x7FF8000000000000 withPressedThreshold:0x7FF8000000000000 withReleasedThreshold:0x7FF8000000000000];
}

- (void)touchSensitiveButtonHoldWithDuration:(double)duration withPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY
{
  [(RCPSyntheticEventStream *)self touchSensitiveButtonHoldWithPage:page withUsage:usage withTouch:*&touch withNormalizedPositionY:y withNormalizedPositionDeltaY:deltaY];

  [(RCPSyntheticEventStream *)self advanceTime:duration];
}

- (void)touchSensitiveButtonReleaseHoldWithPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY
{
  usageCopy = usage;
  pageCopy = page;
  LODWORD(v13) = touch;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:2 withPage:pageCopy withUsage:usageCopy withStage:4 withTransition:2 withNormalizedForce:4 withNormalizedForceVelocity:0.002 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:y withMajorRadius:deltaY withMinorRadius:0.0 withMask:0.0 withTouch:v13 withNextThreshold:0x7FF8000000000000 withPressedThreshold:0x7FF8000000000000 withReleasedThreshold:0x7FF8000000000000];
  [(RCPSyntheticEventStream *)self touchSensitiveButtonLiftWithPage:pageCopy withUsage:usageCopy];
}

- (void)touchSensitiveButtonIntermediatePressWithPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY
{
  usageCopy = usage;
  pageCopy = page;
  LODWORD(v13) = touch;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:1 withPage:pageCopy withUsage:usageCopy withStage:1 withTransition:1 withNormalizedForce:0 withNormalizedForceVelocity:0.009602 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:y withMajorRadius:deltaY withMinorRadius:3.3405 withMask:0.0 withTouch:v13 withNextThreshold:0x3FC0000000000000 withPressedThreshold:0x3FA999999999999ALL withReleasedThreshold:0x3FA999999999999ALL];
  LODWORD(v14) = touch;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:2 withPage:pageCopy withUsage:usageCopy withStage:2 withTransition:1 withNormalizedForce:0 withNormalizedForceVelocity:0.12584 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:y withMajorRadius:deltaY withMinorRadius:10.314577 withMask:0.0 withTouch:v14 withNextThreshold:0x3FC03C4B09E98DCELL withPressedThreshold:0x3FC0000000000000 withReleasedThreshold:0x3FB999999999999ALL];
  LODWORD(v15) = touch;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:2 withPage:pageCopy withUsage:usageCopy withStage:3 withTransition:1 withNormalizedForce:0 withNormalizedForceVelocity:0.169056 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:y withMajorRadius:deltaY withMinorRadius:9.957315 withMask:0.0 withTouch:v15 withNextThreshold:0x7FF8000000000000 withPressedThreshold:0x3FC0000000000000 withReleasedThreshold:0x3FB999999999999ALL];
}

- (void)touchSensitiveButtonIntermediatePressWithDuration:(double)duration withPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY
{
  v10 = *&touch;
  usageCopy = usage;
  pageCopy = page;
  [(RCPSyntheticEventStream *)self touchSensitiveButtonIntermediatePressWithPage:pageCopy withUsage:usageCopy withTouch:v10 withNormalizedPositionY:y withNormalizedPositionDeltaY:deltaY];
  [(RCPSyntheticEventStream *)self advanceTime:duration];
  [(RCPSyntheticEventStream *)self touchSensitiveButtonLiftWithPage:pageCopy withUsage:usageCopy];
}

- (void)touchSensitiveButtonLiftWithPage:(id)page withUsage:(id)usage
{
  usageCopy = usage;
  pageCopy = page;
  LODWORD(v7) = 0;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:2 withPage:pageCopy withUsage:usageCopy withStage:3 withTransition:2 withNormalizedForce:0 withNormalizedForceVelocity:0.002767 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:0.0 withMajorRadius:0.0 withMinorRadius:0.0 withMask:0.0 withTouch:v7 withNextThreshold:0x7FF8000000000000 withPressedThreshold:0x3FC0000000000000 withReleasedThreshold:0x3FB999999999999ALL];
  LODWORD(v8) = 0;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:2 withPage:pageCopy withUsage:usageCopy withStage:2 withTransition:2 withNormalizedForce:0 withNormalizedForceVelocity:0.002767 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:0.0 withMajorRadius:0.0 withMinorRadius:0.0 withMask:0.0 withTouch:v8 withNextThreshold:0x3F6EDBF8B9BAA151 withPressedThreshold:0x3FC0000000000000 withReleasedThreshold:0x3FB999999999999ALL];
  LODWORD(v9) = 0;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:4 withPage:pageCopy withUsage:usageCopy withStage:1 withTransition:2 withNormalizedForce:0 withNormalizedForceVelocity:0.002767 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:0.0 withMajorRadius:0.0 withMinorRadius:0.0 withMask:0.0 withTouch:v9 withNextThreshold:0x3FC0000000000000 withPressedThreshold:0x3FA999999999999ALL withReleasedThreshold:0x3FA999999999999ALL];
}

- (void)touchSensitiveButtonEngagedWithPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY
{
  usageCopy = usage;
  pageCopy = page;
  LODWORD(v13) = touch;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:1 withPage:pageCopy withUsage:usageCopy withStage:1 withTransition:1 withNormalizedForce:1 withNormalizedForceVelocity:0.005953 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:y withMajorRadius:deltaY withMinorRadius:3.964151 withMask:0.0 withTouch:v13 withNextThreshold:0x3FC0000000000000 withPressedThreshold:0x3FA999999999999ALL withReleasedThreshold:0x3FA999999999999ALL];
  LODWORD(v14) = touch;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:2 withPage:pageCopy withUsage:usageCopy withStage:1 withTransition:0 withNormalizedForce:1 withNormalizedForceVelocity:0.023871 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:y withMajorRadius:deltaY withMinorRadius:1.715379 withMask:0.0 withTouch:v14 withNextThreshold:0x3FC0000000000000 withPressedThreshold:0x3FA999999999999ALL withReleasedThreshold:0x3FA999999999999ALL];
  LODWORD(v15) = touch;
  [(RCPSyntheticEventStream *)self _touchSensitiveButtonEventWithPhase:4 withPage:pageCopy withUsage:usageCopy withStage:1 withTransition:2 withNormalizedForce:1 withNormalizedForceVelocity:0.006992 withNormalizedPositionX:0.0 withNormalizedPositionDeltaX:NAN withNormalizedPositionY:NAN withNormalizedPositionDeltaY:y withMajorRadius:deltaY withMinorRadius:0.0 withMask:0.0 withTouch:v15 withNextThreshold:0x3FC0000000000000 withPressedThreshold:0x3FA999999999999ALL withReleasedThreshold:0x3FA999999999999ALL];
}

- (void)touchSensitiveButtonEngagedWithDuration:(double)duration withPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY
{
  v10 = *&touch;
  usageCopy = usage;
  pageCopy = page;
  [(RCPSyntheticEventStream *)self advanceTime:duration];
  [(RCPSyntheticEventStream *)self touchSensitiveButtonEngagedWithPage:pageCopy withUsage:usageCopy withTouch:v10 withNormalizedPositionY:y withNormalizedPositionDeltaY:deltaY];
}

- (void)touchSensitiveButtonEngagedWithLiftWithDuration:(double)duration withPage:(id)page withUsage:(id)usage withTouch:(int)touch withNormalizedPositionY:(double)y withNormalizedPositionDeltaY:(double)deltaY
{
  v10 = *&touch;
  usageCopy = usage;
  pageCopy = page;
  [(RCPSyntheticEventStream *)self advanceTime:duration];
  [(RCPSyntheticEventStream *)self touchSensitiveButtonEngagedWithPage:pageCopy withUsage:usageCopy withTouch:v10 withNormalizedPositionY:y withNormalizedPositionDeltaY:deltaY];
  [(RCPSyntheticEventStream *)self touchSensitiveButtonLiftWithPage:pageCopy withUsage:usageCopy];
}

- (void)vendorEventWithPage:(id)page withUsage:(id)usage withVersion:(unsigned __int8)version withData:(id)data
{
  dataCopy = data;
  usageCopy = usage;
  pageCopy = page;
  [(RCPSyntheticEventStream *)self _currentMachTime];
  [pageCopy unsignedIntValue];

  [usageCopy unsignedIntValue];
  [dataCopy bytes];
  [dataCopy length];

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

- (double)_nextTouchLocationFrom:(void *)from to:at:
{
  if (!from)
  {
    return 0.0;
  }

  touchCurveFunction = [from touchCurveFunction];
  OUTLINED_FUNCTION_0();
  [v2 rcp_solveForStart:? end:? at:?];
  v4 = v3;

  return v4;
}

- (void)pinchOpenWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration pressure:(double)pressure radius:(double)radius
{
  currentTimeOffset = self->_currentTimeOffset;
  [RCPSyntheticEventStream touchDown:"touchDown:touchCount:pressure:radius:" touchCount:1 pressure:? radius:?];
  [RCPSyntheticEventStream _nextTouchLocationFrom:? to:? at:?];
  v11 = v10;
  [RCPSyntheticEventStream touchDown:"touchDown:touchCount:pressure:radius:" touchCount:1 pressure:? radius:?];
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  if (v12 < duration)
  {
    do
    {
      v13 = self->_currentTimeOffset - currentTimeOffset;
      OUTLINED_FUNCTION_2();
      [(RCPSyntheticEventStream *)self _moveLastTouchPoint:0 eventMask:[RCPSyntheticEventStream _nextTouchLocationFrom:v14 to:? at:?]];
      OUTLINED_FUNCTION_3();
      [(RCPSyntheticEventStream *)self touchMoveInterval];
    }

    while (v13 < duration - v15);
  }

  v16 = OUTLINED_FUNCTION_1();
  [v17 _moveLastTouchPoint:0 eventMask:v16];
  [(RCPSyntheticEventStream *)self advanceTime:0.05];
  v18 = OUTLINED_FUNCTION_1();
  [v19 liftUp:v18];
  v21 = OUTLINED_FUNCTION_2();

  [v20 liftUp:{v21, v11}];
}

- (void)pinchCloseWithStartPoint:(CGPoint)point endPoint:(CGPoint)endPoint duration:(double)duration pressure:(double)pressure radius:(double)radius
{
  y = point.y;
  currentTimeOffset = self->_currentTimeOffset;
  [(RCPSyntheticEventStream *)self touchDown:endPoint.x, endPoint.y];
  v11 = OUTLINED_FUNCTION_2();
  [v12 touchDown:{v11, y}];
  [(RCPSyntheticEventStream *)self touchMoveInterval];
  if (v13 < duration)
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

    while (v14 < duration - v16);
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

- (double)_nextPointerDeltaFrom:(uint64_t)from to:(double)to step:(double)step steps:(double)steps
{
  if (!self)
  {
    return 0.0;
  }

  pointerCurveFunction = [self pointerCurveFunction];
  [pointerCurveFunction rcp_solveForDelta:from withSteps:a2 step:{steps - to, a7 - step}];
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