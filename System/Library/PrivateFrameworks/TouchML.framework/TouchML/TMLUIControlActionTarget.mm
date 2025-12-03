@interface TMLUIControlActionTarget
- (TMLUIControlActionTarget)initWithSignal:(id)signal controlEvent:(unint64_t)event;
- (void)controlAction:(id)action forEvent:(id)event;
@end

@implementation TMLUIControlActionTarget

- (TMLUIControlActionTarget)initWithSignal:(id)signal controlEvent:(unint64_t)event
{
  signalCopy = signal;
  v13.receiver = self;
  v13.super_class = TMLUIControlActionTarget;
  v8 = [(TMLUIControlActionTarget *)&v13 init];
  if (v8)
  {
    v10 = objc_msgSend_copy(signalCopy, v7, v9);
    signalName = v8->_signalName;
    v8->_signalName = v10;

    v8->_controlEvent = event;
  }

  return v8;
}

- (void)controlAction:(id)action forEvent:(id)event
{
  signalName = self->_signalName;
  controlEvent = self->_controlEvent;
  actionCopy = action;
  if (controlEvent >= 0x1000)
  {
    objc_msgSend_emitTMLSignal_withArguments_(actionCopy, v7, v8, signalName, 0);
    v15 = actionCopy;
  }

  else
  {
    v9 = objc_msgSend_allTouches(event, v7, v8);
    v12 = objc_msgSend_allObjects(v9, v10, v11);
    objc_msgSend_emitTMLSignal_withArguments_(actionCopy, v13, v14, signalName, v12);

    v15 = v9;
  }
}

@end