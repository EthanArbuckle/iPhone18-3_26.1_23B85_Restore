@interface TMLUIControlActionTarget
- (TMLUIControlActionTarget)initWithSignal:(id)a3 controlEvent:(unint64_t)a4;
- (void)controlAction:(id)a3 forEvent:(id)a4;
@end

@implementation TMLUIControlActionTarget

- (TMLUIControlActionTarget)initWithSignal:(id)a3 controlEvent:(unint64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = TMLUIControlActionTarget;
  v8 = [(TMLUIControlActionTarget *)&v13 init];
  if (v8)
  {
    v10 = objc_msgSend_copy(v6, v7, v9);
    signalName = v8->_signalName;
    v8->_signalName = v10;

    v8->_controlEvent = a4;
  }

  return v8;
}

- (void)controlAction:(id)a3 forEvent:(id)a4
{
  signalName = self->_signalName;
  controlEvent = self->_controlEvent;
  v16 = a3;
  if (controlEvent >= 0x1000)
  {
    objc_msgSend_emitTMLSignal_withArguments_(v16, v7, v8, signalName, 0);
    v15 = v16;
  }

  else
  {
    v9 = objc_msgSend_allTouches(a4, v7, v8);
    v12 = objc_msgSend_allObjects(v9, v10, v11);
    objc_msgSend_emitTMLSignal_withArguments_(v16, v13, v14, signalName, v12);

    v15 = v9;
  }
}

@end