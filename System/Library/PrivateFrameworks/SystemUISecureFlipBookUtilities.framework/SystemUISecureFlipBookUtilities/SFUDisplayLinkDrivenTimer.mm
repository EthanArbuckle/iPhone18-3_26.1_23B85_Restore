@interface SFUDisplayLinkDrivenTimer
- (BOOL)isScheduled;
- (NSString)_identifier;
- (NSString)identifier;
- (SFUDisplayLinkDrivenTimer)initWithIdentifier:(id)a3 forUseInWindow:(id)a4;
- (double)timeRemaining;
- (id)_clientHandler;
- (void)cancel;
- (void)displayLinkCallbackWithSender:(id)a3;
- (void)invalidate;
- (void)scheduleWithFireInterval:(double)a3 queue:(id)a4 handler:(id)a5;
- (void)set_clientHandler:(id)a3;
- (void)set_clientHandlerQueue:(id)a3;
- (void)set_displayLink:(id)a3;
- (void)set_identifier:(id)a3;
@end

@implementation SFUDisplayLinkDrivenTimer

- (SFUDisplayLinkDrivenTimer)initWithIdentifier:(id)a3 forUseInWindow:(id)a4
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_26C64D9F8();
  v7 = SFUDisplayLinkDrivenTimer.init(identifier:forUseIn:)(v5, v6, a4);

  return v7;
}

- (NSString)_identifier
{
  if (*(self + OBJC_IVAR___SFUDisplayLinkDrivenTimer__identifier + 8))
  {

    v2 = sub_26C64D9C8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)set_identifier:(id)a3
{
  if (a3)
  {
    v4 = sub_26C64D9F8();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SFUDisplayLinkDrivenTimer__identifier);
  *v6 = v4;
  v6[1] = v5;
}

- (void)set_displayLink:(id)a3
{
  v4 = *(self + OBJC_IVAR___SFUDisplayLinkDrivenTimer__displayLink);
  *(self + OBJC_IVAR___SFUDisplayLinkDrivenTimer__displayLink) = a3;
  v3 = a3;
}

- (void)set_clientHandlerQueue:(id)a3
{
  v4 = *(self + OBJC_IVAR___SFUDisplayLinkDrivenTimer__clientHandlerQueue);
  *(self + OBJC_IVAR___SFUDisplayLinkDrivenTimer__clientHandlerQueue) = a3;
  v3 = a3;
}

- (id)_clientHandler
{
  if (*(self + OBJC_IVAR___SFUDisplayLinkDrivenTimer__clientHandler))
  {
    v2 = *(self + OBJC_IVAR___SFUDisplayLinkDrivenTimer__clientHandler + 8);
    v5[4] = *(self + OBJC_IVAR___SFUDisplayLinkDrivenTimer__clientHandler);
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_26C6424F8;
    v5[3] = &block_descriptor_15;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)set_clientHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_26C643424;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___SFUDisplayLinkDrivenTimer__clientHandler);
  v8 = *(self + OBJC_IVAR___SFUDisplayLinkDrivenTimer__clientHandler);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_26C643400(v8);
}

- (void)displayLinkCallbackWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26C64264C(v4);
}

- (void)scheduleWithFireInterval:(double)a3 queue:(id)a4 handler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = a4;
  v11 = self;
  SFUDisplayLinkDrivenTimer.schedule(withFireInterval:queue:handler:)(v10, sub_26C643260, v9, a3);
}

- (NSString)identifier
{
  v2 = self;
  result = [(SFUDisplayLinkDrivenTimer *)v2 _identifier];
  if (result)
  {
    v4 = result;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)isScheduled
{
  v2 = self;
  v3 = [(SFUDisplayLinkDrivenTimer *)v2 _displayLink];
  v4 = [(CADisplayLink *)v3 isPaused];

  return v4 ^ 1;
}

- (double)timeRemaining
{
  v2 = self;
  if ([(SFUDisplayLinkDrivenTimer *)v2 isScheduled])
  {
    [(SFUDisplayLinkDrivenTimer *)v2 _fireDate];
    v4 = v3;
    v5 = [(SFUDisplayLinkDrivenTimer *)v2 _displayLink];
    [(CADisplayLink *)v5 timestamp];
    v7 = v6;

    result = v4 - v7;
    if (v4 - v7 < 0.0)
    {
      return 0.0;
    }
  }

  else
  {

    return NAN;
  }

  return result;
}

- (void)cancel
{
  v3 = self;
  v2 = [(SFUDisplayLinkDrivenTimer *)v3 _displayLink];
  [(CADisplayLink *)v2 setPaused:1];
}

- (void)invalidate
{
  v4 = self;
  v2 = [(SFUDisplayLinkDrivenTimer *)v4 _displayLink];
  [(CADisplayLink *)v2 setPaused:1];

  v3 = [(SFUDisplayLinkDrivenTimer *)v4 _displayLink];
  [(CADisplayLink *)v3 invalidate];

  [(SFUDisplayLinkDrivenTimer *)v4 set_valid:0];
}

@end