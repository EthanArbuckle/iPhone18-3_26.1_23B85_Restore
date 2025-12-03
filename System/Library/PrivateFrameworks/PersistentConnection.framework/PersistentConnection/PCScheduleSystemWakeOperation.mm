@interface PCScheduleSystemWakeOperation
- (id)initForScheduledWake:(BOOL)wake wakeDate:(id)date acceptableDelay:(double)delay userVisible:(BOOL)visible serviceIdentifier:(id)identifier uniqueIdentifier:(void *)uniqueIdentifier;
- (void)main;
@end

@implementation PCScheduleSystemWakeOperation

- (void)main
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = PCStringFromDate(*self);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E3EF000, v2, v3, "Unable to schedule system wake for %@. IOPMSchedulePowerEvent() returned %#x", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (id)initForScheduledWake:(BOOL)wake wakeDate:(id)date acceptableDelay:(double)delay userVisible:(BOOL)visible serviceIdentifier:(id)identifier uniqueIdentifier:(void *)uniqueIdentifier
{
  dateCopy = date;
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = PCScheduleSystemWakeOperation;
  v17 = [(PCScheduleSystemWakeOperation *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_scheduleOrCancel = wake;
    objc_storeStrong(&v17->_wakeDate, date);
    v18->_acceptableDelay = delay;
    v18->_userVisible = visible;
    v19 = [identifierCopy copy];
    serviceIdentifier = v18->_serviceIdentifier;
    v18->_serviceIdentifier = v19;

    v18->_unqiueIdentifier = uniqueIdentifier;
  }

  return v18;
}

@end