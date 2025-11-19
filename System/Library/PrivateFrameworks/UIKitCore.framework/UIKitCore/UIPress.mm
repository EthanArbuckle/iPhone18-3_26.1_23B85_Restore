@interface UIPress
- (NSString)description;
- (SEL)_responderSelectorForPhase:(int64_t)a3;
- (_UIEventComponentPhaseValue)_eventComponentPhase;
- (id)_eventComponentPhaseForValue:(int64_t)a3;
- (id)_mutableForwardingRecord;
- (id)_phaseDescription;
- (void)_abandonForwardingRecord;
- (void)_loadStateFromPress:(id)a3;
- (void)_loadStateFromPressInfo:(id)a3;
- (void)_removeGestureRecognizer:(id)a3;
- (void)setGestureRecognizers:(id)a3;
@end

@implementation UIPress

- (void)setGestureRecognizers:(id)a3
{
  if (self->_gestureRecognizers != a3)
  {
    v5 = [a3 mutableCopy];
    gestureRecognizers = self->_gestureRecognizers;
    self->_gestureRecognizers = v5;
  }
}

- (void)_removeGestureRecognizer:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_gestureRecognizers containsObject:?])
  {
    [(NSMutableArray *)self->_gestureRecognizers removeObject:v4];
  }
}

- (id)_mutableForwardingRecord
{
  forwardingRecord = self->_forwardingRecord;
  if (!forwardingRecord)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_forwardingRecord;
    self->_forwardingRecord = v4;

    forwardingRecord = self->_forwardingRecord;
  }

  return forwardingRecord;
}

- (void)_abandonForwardingRecord
{
  self->_abandonForwardingRecord = 1;
  forwardingRecord = self->_forwardingRecord;
  self->_forwardingRecord = 0;
}

- (SEL)_responderSelectorForPhase:(int64_t)a3
{
  if (a3 == 4)
  {
    return sel_pressesCancelled_withEvent_;
  }

  if (a3 == 3)
  {
    return sel_pressesEnded_withEvent_;
  }

  if (a3)
  {
    return 0;
  }

  return sel_pressesBegan_withEvent_;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(UIPress *)self phase];
  v6 = [(UIPress *)self type];
  [(UIPress *)self force];
  return [v3 stringWithFormat:@"<%@: %p phase=%ld type=%ld force=%f>", v4, self, v5, v6, v7];
}

- (id)_phaseDescription
{
  phase = self->_phase;
  if (phase > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7115D28[phase];
  }
}

- (_UIEventComponentPhaseValue)_eventComponentPhase
{
  phase = self->_phase;
  v3 = _eventComponentPhaseMapping_0();
  v4 = _eventComponentPhaseForUnderlyingValue(phase, v3);

  return v4;
}

- (id)_eventComponentPhaseForValue:(int64_t)a3
{
  v4 = _eventComponentPhaseMapping_0();
  v5 = _eventComponentPhaseForValue(a3, v4);

  return v5;
}

- (void)_loadStateFromPress:(id)a3
{
  self->_timestamp = *(a3 + 4);
  self->_phase = *(a3 + 5);
  self->_type = *(a3 + 6);
  self->_force = *(a3 + 9);
  self->_source = *(a3 + 12);
  self->_gameControllerComponent = *(a3 + 13);
  self->_isDelayed = *(a3 + 25);
  self->_sentPressesEnded = *(a3 + 26);
  v5 = *(a3 + 8);
  responder = self->_responder;
  self->_responder = v5;
  v7 = a3;

  objc_storeStrong(&self->_window, *(v7 + 7));
  self->_clickCount = *(v7 + 14);
  self->_longClick = *(v7 + 27);
  LODWORD(responder) = *(v7 + 7);

  self->_contextID = responder;
}

- (void)_loadStateFromPressInfo:(id)a3
{
  v4 = a3;
  [v4 timestamp];
  self->_timestamp = v5;
  self->_phase = [v4 phase];
  self->_type = [v4 type];
  [v4 force];
  self->_force = v6;
  self->_source = [v4 source];
  self->_gameControllerComponent = [v4 gameControllerComponent];
  self->_clickCount = [v4 clickCount];
  self->_longClick = [v4 isLongClick];
  self->_contextID = [v4 contextID];
  v7 = [v4 key];
  key = self->_key;
  self->_key = v7;

  v9 = [v4 modifierFlags];
  self->_modifierFlags = v9;
}

@end