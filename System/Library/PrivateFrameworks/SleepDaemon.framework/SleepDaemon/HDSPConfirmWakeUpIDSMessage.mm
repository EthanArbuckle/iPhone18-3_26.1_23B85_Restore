@interface HDSPConfirmWakeUpIDSMessage
- (HDSPConfirmWakeUpIDSMessage)initWithCoder:(id)coder;
- (HDSPConfirmWakeUpIDSMessage)initWithWasExplicitConfirmation:(BOOL)confirmation wakeUpConfirmedDate:(id)date wakeUpConfirmedUntilDate:(id)untilDate;
- (id)succinctDescriptionBuilder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDSPConfirmWakeUpIDSMessage

- (HDSPConfirmWakeUpIDSMessage)initWithWasExplicitConfirmation:(BOOL)confirmation wakeUpConfirmedDate:(id)date wakeUpConfirmedUntilDate:(id)untilDate
{
  untilDateCopy = untilDate;
  v14.receiver = self;
  v14.super_class = HDSPConfirmWakeUpIDSMessage;
  v10 = [(HDSPEventRecordMessage *)&v14 initWithDate:date];
  v11 = v10;
  if (v10)
  {
    v10->_wasExplicitConfirmation = confirmation;
    objc_storeStrong(&v10->_wakeUpConfirmedUntilDate, untilDate);
    v12 = v11;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDSPConfirmWakeUpIDSMessage;
  coderCopy = coder;
  [(HDSPEventRecordMessage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_wakeUpConfirmedUntilDate forKey:{@"confirmedUntilDate", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_wasExplicitConfirmation forKey:@"wasExplicitConfirmation"];
}

- (HDSPConfirmWakeUpIDSMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HDSPConfirmWakeUpIDSMessage;
  v5 = [(HDSPEventRecordMessage *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confirmedUntilDate"];
    wakeUpConfirmedUntilDate = v5->_wakeUpConfirmedUntilDate;
    v5->_wakeUpConfirmedUntilDate = v6;

    v5->_wasExplicitConfirmation = [coderCopy decodeBoolForKey:@"wasExplicitConfirmation"];
    v8 = v5;
  }

  return v5;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[HDSPConfirmWakeUpIDSMessage wasExplicitConfirmation](self withName:{"wasExplicitConfirmation"), @"wasExplicitConfirmation"}];
  wakeUpConfirmedDate = [(HDSPConfirmWakeUpIDSMessage *)self wakeUpConfirmedDate];
  v6 = [v3 appendObject:wakeUpConfirmedDate withName:@"wakeUpConfirmedDate"];

  wakeUpConfirmedUntilDate = [(HDSPConfirmWakeUpIDSMessage *)self wakeUpConfirmedUntilDate];
  v8 = [v3 appendObject:wakeUpConfirmedUntilDate withName:@"wakeUpConfirmedUntilDate"];

  return v3;
}

@end