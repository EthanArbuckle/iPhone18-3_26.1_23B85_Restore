@interface SFUDisplayLinkDrivenTimer
- (BOOL)isScheduled;
- (NSString)_identifier;
- (NSString)identifier;
- (SFUDisplayLinkDrivenTimer)initWithIdentifier:(id)identifier forUseInWindow:(id)window;
- (double)timeRemaining;
- (id)_clientHandler;
- (void)cancel;
- (void)displayLinkCallbackWithSender:(id)sender;
- (void)invalidate;
- (void)scheduleWithFireInterval:(double)interval queue:(id)queue handler:(id)handler;
- (void)set_clientHandler:(id)handler;
- (void)set_clientHandlerQueue:(id)queue;
- (void)set_displayLink:(id)link;
- (void)set_identifier:(id)set_identifier;
@end

@implementation SFUDisplayLinkDrivenTimer

- (SFUDisplayLinkDrivenTimer)initWithIdentifier:(id)identifier forUseInWindow:(id)window
{
  sub_26C64DA88();
  sub_26C64DA78();
  sub_26C64DA68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = sub_26C64D9F8();
  v7 = SFUDisplayLinkDrivenTimer.init(identifier:forUseIn:)(v5, v6, window);

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

- (void)set_identifier:(id)set_identifier
{
  if (set_identifier)
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

- (void)set_displayLink:(id)link
{
  v4 = *(self + OBJC_IVAR___SFUDisplayLinkDrivenTimer__displayLink);
  *(self + OBJC_IVAR___SFUDisplayLinkDrivenTimer__displayLink) = link;
  linkCopy = link;
}

- (void)set_clientHandlerQueue:(id)queue
{
  v4 = *(self + OBJC_IVAR___SFUDisplayLinkDrivenTimer__clientHandlerQueue);
  *(self + OBJC_IVAR___SFUDisplayLinkDrivenTimer__clientHandlerQueue) = queue;
  queueCopy = queue;
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

- (void)set_clientHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_26C643400(v8);
}

- (void)displayLinkCallbackWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_26C64264C(senderCopy);
}

- (void)scheduleWithFireInterval:(double)interval queue:(id)queue handler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  queueCopy = queue;
  selfCopy = self;
  SFUDisplayLinkDrivenTimer.schedule(withFireInterval:queue:handler:)(queueCopy, sub_26C643260, v9, interval);
}

- (NSString)identifier
{
  selfCopy = self;
  result = [(SFUDisplayLinkDrivenTimer *)selfCopy _identifier];
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
  selfCopy = self;
  _displayLink = [(SFUDisplayLinkDrivenTimer *)selfCopy _displayLink];
  isPaused = [(CADisplayLink *)_displayLink isPaused];

  return isPaused ^ 1;
}

- (double)timeRemaining
{
  selfCopy = self;
  if ([(SFUDisplayLinkDrivenTimer *)selfCopy isScheduled])
  {
    [(SFUDisplayLinkDrivenTimer *)selfCopy _fireDate];
    v4 = v3;
    _displayLink = [(SFUDisplayLinkDrivenTimer *)selfCopy _displayLink];
    [(CADisplayLink *)_displayLink timestamp];
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
  selfCopy = self;
  _displayLink = [(SFUDisplayLinkDrivenTimer *)selfCopy _displayLink];
  [(CADisplayLink *)_displayLink setPaused:1];
}

- (void)invalidate
{
  selfCopy = self;
  _displayLink = [(SFUDisplayLinkDrivenTimer *)selfCopy _displayLink];
  [(CADisplayLink *)_displayLink setPaused:1];

  _displayLink2 = [(SFUDisplayLinkDrivenTimer *)selfCopy _displayLink];
  [(CADisplayLink *)_displayLink2 invalidate];

  [(SFUDisplayLinkDrivenTimer *)selfCopy set_valid:0];
}

@end