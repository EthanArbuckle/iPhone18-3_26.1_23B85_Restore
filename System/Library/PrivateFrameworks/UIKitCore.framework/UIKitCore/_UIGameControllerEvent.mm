@interface _UIGameControllerEvent
- (BOOL)_determineInputTypeAndProcess:(id *)process pressesEvent:(id)event timestamp:(double)timestamp;
- (BOOL)_processDPad:(id *)pad pressesEvent:(id)event timestamp:(double)timestamp;
- (BOOL)_processLeftStick:(id *)stick pressesEvent:(id)event timestamp:(double)timestamp;
- (BOOL)_processRightStick:(id *)stick pressesEvent:(id)event timestamp:(double)timestamp;
- (BOOL)_processShoulder:(id *)shoulder pressesEvent:(id)event timestamp:(double)timestamp;
- (BOOL)_processStandardButtons:(id *)buttons pressesEvent:(id)event timestamp:(double)timestamp;
- (CGPoint)_leftStickPosition;
- (void)_maybeConvertAndSendAsPressesEvent;
- (void)_reset;
@end

@implementation _UIGameControllerEvent

- (void)_reset
{
  *&self->_previousState.senderID = 0u;
  *&self->_previousState.controllerState[1] = 0u;
  *&self->_previousState.controllerState[3] = 0u;
  *&self->_previousState.controllerState[5] = 0u;
  *&self->_previousState.controllerState[7] = 0u;
  *&self->_previousState.controllerState[9] = 0u;
  *&self->_previousState.controllerState[11] = 0u;
  *&self->_previousState.controllerState[13] = 0u;
  *&self->_previousState.controllerState[15] = 0u;
  *&self->_previousState.normalizedLeftStickState[1] = 0u;
  *&self->_previousState.normalizedLeftStickState[3] = 0u;
  *&self->_previousState.normalizedRightStickState[1] = 0u;
  *&self->_previousState.normalizedRightStickState[3] = 0u;
  *&self->_previousState.normalizedShoulderButtonState[1] = 0u;
  self->_previousState.normalizedShoulderButtonState[3] = 0.0;
  self->_activeComponent = 0;
}

- (void)_maybeConvertAndSendAsPressesEvent
{
  v41 = *MEMORY[0x1E69E9840];
  _hidEvent = [(UIEvent *)self _hidEvent];
  TimeStamp = IOHIDEventGetTimeStamp();
  v5 = _UIMediaTimeForMachTime(TimeStamp);
  v37 = xmmword_18A682588;
  v38 = unk_18A682598;
  v39 = xmmword_18A6825A8;
  v40 = unk_18A6825B8;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  *&v30 = 0;
  IOHIDEventGetFloatMultiple();
  *&v23 = IOHIDEventGetSenderID();
  *(&v30 + 1) = fmax(0.0, 0.0);
  v31 = vmaxnmq_f64(vnegq_f64(vextq_s8(*(v29 + 8), *(v29 + 8), 8uLL)), 0);
  *&v32 = *(&v30 + 1);
  *(&v32 + 1) = *(&v30 + 1);
  v33 = vmaxnmq_f64(vnegq_f64(vextq_s8(0, 0, 8uLL)), 0);
  *&v34 = *(&v30 + 1);
  *(&v34 + 1) = *(&v30 + 1);
  v35 = vmaxnmq_f64(vextq_s8(v28, v28, 8uLL), 0);
  v36 = *(&v30 + 1);
  if (v23 == self->_previousState.senderID || !self->_activeComponent)
  {
    v6 = _UIEventHIDUIWindowForHIDEvent();
    _focusBehavior = [v6 _focusBehavior];
    supportsGameControllers = [_focusBehavior supportsGameControllers];

    if (!supportsGameControllers)
    {
      goto LABEL_17;
    }

    v9 = UIApp;
    v10 = _UIEventHIDUIWindowForHIDEvent();
    v11 = [v9 _pressesEventForWindow:v10];

    [v11 _setHIDEvent:_hidEvent];
    [v11 _setGSEvent:{-[UIEvent _gsEvent](self, "_gsEvent")}];
    v12 = [(_UIGameControllerEvent *)self _processStandardButtons:&v23 pressesEvent:v11 timestamp:v5];
    v13 = v12;
    activeComponent = self->_activeComponent;
    if (activeComponent <= 1)
    {
      if (activeComponent)
      {
        if (activeComponent != 1)
        {
          goto LABEL_19;
        }

        v15 = [(_UIGameControllerEvent *)self _processDPad:&v23 pressesEvent:v11 timestamp:v5];
      }

      else
      {
        v15 = [(_UIGameControllerEvent *)self _determineInputTypeAndProcess:&v23 pressesEvent:v11 timestamp:v5];
      }
    }

    else
    {
      switch(activeComponent)
      {
        case 2:
          v15 = [(_UIGameControllerEvent *)self _processLeftStick:&v23 pressesEvent:v11 timestamp:v5];
          break;
        case 3:
          v15 = [(_UIGameControllerEvent *)self _processRightStick:&v23 pressesEvent:v11 timestamp:v5];
          break;
        case 5:
          v15 = [(_UIGameControllerEvent *)self _processShoulder:&v23 pressesEvent:v11 timestamp:v5];
          break;
        default:
LABEL_19:
          if (!v12)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
      }
    }

    if (v13 || v15)
    {
LABEL_16:
      [UIApp sendEvent:{v11, v23}];
      [UIApp _finishButtonEvent:v11];
    }

LABEL_17:
    v16 = v35;
    *&self->_previousState.normalizedRightStickState[3] = v34;
    *&self->_previousState.normalizedShoulderButtonState[1] = v16;
    self->_previousState.normalizedShoulderButtonState[3] = v36;
    v17 = v31;
    *&self->_previousState.controllerState[15] = v30;
    *&self->_previousState.normalizedLeftStickState[1] = v17;
    v18 = v33;
    *&self->_previousState.normalizedLeftStickState[3] = v32;
    *&self->_previousState.normalizedRightStickState[1] = v18;
    v19 = v28;
    *&self->_previousState.controllerState[7] = v27;
    *&self->_previousState.controllerState[9] = v19;
    v20 = v29[1];
    *&self->_previousState.controllerState[11] = v29[0];
    *&self->_previousState.controllerState[13] = v20;
    v21 = v24;
    *&self->_previousState.senderID = v23;
    *&self->_previousState.controllerState[1] = v21;
    v22 = v26;
    *&self->_previousState.controllerState[3] = v25;
    *&self->_previousState.controllerState[5] = v22;
  }
}

- (CGPoint)_leftStickPosition
{
  v2 = self->_previousState.controllerState[12];
  v3 = self->_previousState.controllerState[13];
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)_determineInputTypeAndProcess:(id *)process pressesEvent:(id)event timestamp:(double)timestamp
{
  eventCopy = event;
  v15 = 0;
  _UIAppGameControllerProcessDPad(&self->_previousState.senderID, &process->var0, eventCopy, &v15, 0, timestamp);
  if (v15 == 1)
  {
    v9 = 1;
    self->_activeComponent = 1;
    goto LABEL_8;
  }

  v14 = 0;
  _UIAppGameControllerProcessGenericStick(2, self->_previousState.normalizedLeftStickState, process->var2, eventCopy, &v14, 0, timestamp);
  if (v14 == 1)
  {
    v10 = 2;
LABEL_7:
    self->_activeComponent = v10;
    v9 = 1;
    goto LABEL_8;
  }

  v13 = 0;
  _UIAppGameControllerProcessGenericStick(3, self->_previousState.normalizedRightStickState, process->var3, eventCopy, &v13, 0, timestamp);
  if (v13 == 1)
  {
    v10 = 3;
    goto LABEL_7;
  }

  v12 = 0;
  _UIAppGameControllerProcessShoulders(&self->_previousState.senderID, &process->var0, eventCopy, &v12, 0, timestamp);
  v9 = v12;
  if (v12)
  {
    self->_activeComponent = 5;
  }

LABEL_8:

  return v9;
}

- (BOOL)_processStandardButtons:(id *)buttons pressesEvent:(id)event timestamp:(double)timestamp
{
  eventCopy = event;
  [eventCopy _hidEvent];
  v9 = BKSHIDEventGetBaseAttributes();
  contextID = [v9 contextID];

  p_previousState = &self->_previousState;
  v12 = _UIAppGameControllerPressInfoForState(4, 4, contextID, self->_previousState.controllerState[4], buttons->var1[4], timestamp);
  v13 = _UIAppGameControllerPressInfoForState(5, 4, contextID, p_previousState->controllerState[5], buttons->var1[5], timestamp);
  v14 = _UIAppGameControllerPressInfoForState(6, 4, contextID, p_previousState->controllerState[6], buttons->var1[6], timestamp);
  if (v12)
  {
    [UIApp _prepareButtonEvent:eventCopy withPressInfo:v12];
  }

  if (v13)
  {
    [UIApp _prepareButtonEvent:eventCopy withPressInfo:v13];
  }

  if (v14)
  {
    [UIApp _prepareButtonEvent:eventCopy withPressInfo:v14];
  }

  return (v12 | v13 | v14) != 0;
}

- (BOOL)_processDPad:(id *)pad pressesEvent:(id)event timestamp:(double)timestamp
{
  v7 = 0;
  _UIAppGameControllerProcessDPad(&self->_previousState.senderID, &pad->var0, event, &v7 + 1, &v7, timestamp);
  if (v7 == 1)
  {
    self->_activeComponent = 0;
  }

  return HIBYTE(v7);
}

- (BOOL)_processLeftStick:(id *)stick pressesEvent:(id)event timestamp:(double)timestamp
{
  v7 = 0;
  _UIAppGameControllerProcessGenericStick(2, self->_previousState.normalizedLeftStickState, stick->var2, event, &v7 + 1, &v7, timestamp);
  if (v7 == 1)
  {
    self->_activeComponent = 0;
  }

  return HIBYTE(v7);
}

- (BOOL)_processRightStick:(id *)stick pressesEvent:(id)event timestamp:(double)timestamp
{
  v7 = 0;
  _UIAppGameControllerProcessGenericStick(3, self->_previousState.normalizedRightStickState, stick->var3, event, &v7 + 1, &v7, timestamp);
  if (v7 == 1)
  {
    self->_activeComponent = 0;
  }

  return HIBYTE(v7);
}

- (BOOL)_processShoulder:(id *)shoulder pressesEvent:(id)event timestamp:(double)timestamp
{
  v7 = 0;
  _UIAppGameControllerProcessShoulders(&self->_previousState.senderID, &shoulder->var0, event, &v7 + 1, &v7, timestamp);
  if (v7 == 1)
  {
    self->_activeComponent = 0;
  }

  return HIBYTE(v7);
}

@end