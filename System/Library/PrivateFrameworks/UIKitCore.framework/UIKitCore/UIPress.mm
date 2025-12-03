@interface UIPress
- (NSString)description;
- (SEL)_responderSelectorForPhase:(int64_t)phase;
- (_UIEventComponentPhaseValue)_eventComponentPhase;
- (id)_eventComponentPhaseForValue:(int64_t)value;
- (id)_mutableForwardingRecord;
- (id)_phaseDescription;
- (void)_abandonForwardingRecord;
- (void)_loadStateFromPress:(id)press;
- (void)_loadStateFromPressInfo:(id)info;
- (void)_removeGestureRecognizer:(id)recognizer;
- (void)setGestureRecognizers:(id)recognizers;
@end

@implementation UIPress

- (void)setGestureRecognizers:(id)recognizers
{
  if (self->_gestureRecognizers != recognizers)
  {
    v5 = [recognizers mutableCopy];
    gestureRecognizers = self->_gestureRecognizers;
    self->_gestureRecognizers = v5;
  }
}

- (void)_removeGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([(NSMutableArray *)self->_gestureRecognizers containsObject:?])
  {
    [(NSMutableArray *)self->_gestureRecognizers removeObject:recognizerCopy];
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

- (SEL)_responderSelectorForPhase:(int64_t)phase
{
  if (phase == 4)
  {
    return sel_pressesCancelled_withEvent_;
  }

  if (phase == 3)
  {
    return sel_pressesEnded_withEvent_;
  }

  if (phase)
  {
    return 0;
  }

  return sel_pressesBegan_withEvent_;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  phase = [(UIPress *)self phase];
  type = [(UIPress *)self type];
  [(UIPress *)self force];
  return [v3 stringWithFormat:@"<%@: %p phase=%ld type=%ld force=%f>", v4, self, phase, type, v7];
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

- (id)_eventComponentPhaseForValue:(int64_t)value
{
  v4 = _eventComponentPhaseMapping_0();
  v5 = _eventComponentPhaseForValue(value, v4);

  return v5;
}

- (void)_loadStateFromPress:(id)press
{
  self->_timestamp = *(press + 4);
  self->_phase = *(press + 5);
  self->_type = *(press + 6);
  self->_force = *(press + 9);
  self->_source = *(press + 12);
  self->_gameControllerComponent = *(press + 13);
  self->_isDelayed = *(press + 25);
  self->_sentPressesEnded = *(press + 26);
  v5 = *(press + 8);
  responder = self->_responder;
  self->_responder = v5;
  pressCopy = press;

  objc_storeStrong(&self->_window, *(pressCopy + 7));
  self->_clickCount = *(pressCopy + 14);
  self->_longClick = *(pressCopy + 27);
  LODWORD(responder) = *(pressCopy + 7);

  self->_contextID = responder;
}

- (void)_loadStateFromPressInfo:(id)info
{
  infoCopy = info;
  [infoCopy timestamp];
  self->_timestamp = v5;
  self->_phase = [infoCopy phase];
  self->_type = [infoCopy type];
  [infoCopy force];
  self->_force = v6;
  self->_source = [infoCopy source];
  self->_gameControllerComponent = [infoCopy gameControllerComponent];
  self->_clickCount = [infoCopy clickCount];
  self->_longClick = [infoCopy isLongClick];
  self->_contextID = [infoCopy contextID];
  v7 = [infoCopy key];
  key = self->_key;
  self->_key = v7;

  modifierFlags = [infoCopy modifierFlags];
  self->_modifierFlags = modifierFlags;
}

@end