@interface PCScheduleSystemWakeOperation
- (id)initForScheduledWake:(BOOL)a3 wakeDate:(id)a4 acceptableDelay:(double)a5 userVisible:(BOOL)a6 serviceIdentifier:(id)a7 uniqueIdentifier:(void *)a8;
- (void)main;
@end

@implementation PCScheduleSystemWakeOperation

- (void)main
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = PCStringFromDate(*a1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E3EF000, v2, v3, "Unable to schedule system wake for %@. IOPMSchedulePowerEvent() returned %#x", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (id)initForScheduledWake:(BOOL)a3 wakeDate:(id)a4 acceptableDelay:(double)a5 userVisible:(BOOL)a6 serviceIdentifier:(id)a7 uniqueIdentifier:(void *)a8
{
  v15 = a4;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = PCScheduleSystemWakeOperation;
  v17 = [(PCScheduleSystemWakeOperation *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_scheduleOrCancel = a3;
    objc_storeStrong(&v17->_wakeDate, a4);
    v18->_acceptableDelay = a5;
    v18->_userVisible = a6;
    v19 = [v16 copy];
    serviceIdentifier = v18->_serviceIdentifier;
    v18->_serviceIdentifier = v19;

    v18->_unqiueIdentifier = a8;
  }

  return v18;
}

@end