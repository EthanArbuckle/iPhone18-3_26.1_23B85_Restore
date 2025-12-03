@interface _SBSATimerAndDescriptionRecord
- (BOOL)isTimerDescriptionElapsed;
- (_SBSATimerAndDescriptionRecord)initWithTimerDescription:(id)description;
- (void)schedule:(id)schedule;
@end

@implementation _SBSATimerAndDescriptionRecord

- (_SBSATimerAndDescriptionRecord)initWithTimerDescription:(id)description
{
  descriptionCopy = description;
  v13.receiver = self;
  v13.super_class = _SBSATimerAndDescriptionRecord;
  v5 = [(_SBSATimerAndDescriptionRecord *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(_SBSATimerAndDescriptionRecord *)v5 setTimerDescription:descriptionCopy];
    v7 = objc_alloc(MEMORY[0x277CF0BD8]);
    timerDescriptionIdentifier = [descriptionCopy timerDescriptionIdentifier];
    uUIDString = [timerDescriptionIdentifier UUIDString];
    v10 = [v7 initWithIdentifier:uUIDString];
    timer = v6->_timer;
    v6->_timer = v10;
  }

  return v6;
}

- (BOOL)isTimerDescriptionElapsed
{
  timerDescription = [(_SBSATimerAndDescriptionRecord *)self timerDescription];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  timerDescription2 = [(_SBSATimerAndDescriptionRecord *)self timerDescription];
  isElapsed = [timerDescription2 isElapsed];

  return isElapsed;
}

- (void)schedule:(id)schedule
{
  scheduleCopy = schedule;
  if (![(_SBSATimerAndDescriptionRecord *)self isTimerDescriptionElapsed])
  {
    objc_initWeak(&location, self);
    timer = self->_timer;
    timerDescription = [(_SBSATimerAndDescriptionRecord *)self timerDescription];
    [timerDescription timeInterval];
    v8 = v7;
    v9 = MEMORY[0x277D85CD0];
    v10 = MEMORY[0x277D85CD0];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43___SBSATimerAndDescriptionRecord_schedule___block_invoke;
    v11[3] = &unk_2783B8500;
    objc_copyWeak(&v13, &location);
    v12 = scheduleCopy;
    [(BSContinuousMachTimer *)timer scheduleWithFireInterval:v9 leewayInterval:v11 queue:v8 handler:0.0];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

@end