@interface VLAR_DTMFEventReport
- (VLAR_DTMFEventReport)initWithTrigger:(id)a3 state:(VLAR_DTMFStateRecord *)a4 loopStartDate:(id)a5;
- (VLAR_DTMFStateRecord)state;
- (void)setState:(VLAR_DTMFStateRecord *)a3;
@end

@implementation VLAR_DTMFEventReport

- (VLAR_DTMFEventReport)initWithTrigger:(id)a3 state:(VLAR_DTMFStateRecord *)a4 loopStartDate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = VLAR_DTMFEventReport;
  v11 = [(VLAR_DTMFEventReport *)&v16 init];
  if (v11)
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    eventDate = v11->_eventDate;
    v11->_eventDate = v12;

    objc_storeStrong(&v11->_trigger, a3);
    v14 = *&a4->loopPhase;
    *&v11->_state.playbackState = *&a4->playbackState;
    *&v11->_state.loopPhase = v14;
    objc_storeStrong(&v11->_loopStartDate, a5);
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

- (void)setState:(VLAR_DTMFStateRecord *)a3
{
  v3 = *&a3->loopPhase;
  *&self->_state.playbackState = *&a3->playbackState;
  *&self->_state.loopPhase = v3;
}

@end