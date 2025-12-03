@interface VLAR_DTMFEventReport
- (VLAR_DTMFEventReport)initWithTrigger:(id)trigger state:(VLAR_DTMFStateRecord *)state loopStartDate:(id)date;
- (VLAR_DTMFStateRecord)state;
- (void)setState:(VLAR_DTMFStateRecord *)state;
@end

@implementation VLAR_DTMFEventReport

- (VLAR_DTMFEventReport)initWithTrigger:(id)trigger state:(VLAR_DTMFStateRecord *)state loopStartDate:(id)date
{
  triggerCopy = trigger;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = VLAR_DTMFEventReport;
  v11 = [(VLAR_DTMFEventReport *)&v16 init];
  if (v11)
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    eventDate = v11->_eventDate;
    v11->_eventDate = v12;

    objc_storeStrong(&v11->_trigger, trigger);
    v14 = *&state->loopPhase;
    *&v11->_state.playbackState = *&state->playbackState;
    *&v11->_state.loopPhase = v14;
    objc_storeStrong(&v11->_loopStartDate, date);
  }

  return v11;
}

- (VLAR_DTMFStateRecord)state
{
  v3 = *&self[2].loopPhase;
  *&retstr->playbackState = *&self[2].playbackState;
  *&retstr->loopPhase = v3;
  return self;
}

- (void)setState:(VLAR_DTMFStateRecord *)state
{
  v3 = *&state->loopPhase;
  *&self->_state.playbackState = *&state->playbackState;
  *&self->_state.loopPhase = v3;
}

@end