@interface SKADatabaseReceivedInvitation(IncomingRatchet)
- (void)incomingRatchet;
@end

@implementation SKADatabaseReceivedInvitation(IncomingRatchet)

- (void)incomingRatchet
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_220099000, a2, OS_LOG_TYPE_ERROR, "Failed to create incomingRatchet due to invalid data. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end