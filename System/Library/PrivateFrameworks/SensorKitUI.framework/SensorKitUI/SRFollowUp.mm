@interface SRFollowUp
+ (void)initialize;
- (SRFollowUp)init;
- (void)clearPendingFollowUpItemsWithUniqueIdentifiers:(id)identifiers completion:(id)completion;
- (void)dealloc;
- (void)pendingFollowUpItemsWithCompletion:(id)completion;
- (void)postFollowUpItem:(id)item completion:(id)completion;
@end

@implementation SRFollowUp

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogFollowUp = os_log_create("com.apple.SensorKit", "SRFollowUp");
  }
}

- (SRFollowUp)init
{
  v4.receiver = self;
  v4.super_class = SRFollowUp;
  v2 = [(SRFollowUp *)&v4 init];
  if (v2)
  {
    v2->_followUpController = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.sensorkitd"];
  }

  return v2;
}

- (void)dealloc
{
  self->_followUpController = 0;
  v3.receiver = self;
  v3.super_class = SRFollowUp;
  [(SRFollowUp *)&v3 dealloc];
}

- (void)postFollowUpItem:(id)item completion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = SRLogFollowUp;
  if (os_log_type_enabled(SRLogFollowUp, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    itemCopy = item;
    _os_log_impl(&dword_265602000, v7, OS_LOG_TYPE_INFO, "Attempting to post follow up item: %{public}@", &v9, 0xCu);
  }

  [(FLFollowUpController *)self->_followUpController postFollowUpItem:item completion:completion];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)clearPendingFollowUpItemsWithUniqueIdentifiers:(id)identifiers completion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = SRLogFollowUp;
  if (os_log_type_enabled(SRLogFollowUp, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    identifiersCopy = identifiers;
    _os_log_impl(&dword_265602000, v7, OS_LOG_TYPE_INFO, "Attempting to clear follow up identifiers: %{public}@", &v9, 0xCu);
  }

  [(FLFollowUpController *)self->_followUpController clearPendingFollowUpItemsWithUniqueIdentifiers:identifiers completion:completion];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)pendingFollowUpItemsWithCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = SRLogFollowUp;
  if (os_log_type_enabled(SRLogFollowUp, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = @"com.apple.SensorKit.followup.enableSensorKit";
    _os_log_impl(&dword_265602000, v5, OS_LOG_TYPE_INFO, "Retrieving follow items for %{public}@", &v7, 0xCu);
  }

  [(FLFollowUpController *)self->_followUpController pendingFollowUpItemsWithCompletion:completion];
  v6 = *MEMORY[0x277D85DE8];
}

@end