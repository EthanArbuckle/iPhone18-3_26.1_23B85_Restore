@interface SKAGeneratedEncryptionKey(Ratchets)
- (void)outgoingRatchet;
@end

@implementation SKAGeneratedEncryptionKey(Ratchets)

- (void)outgoingRatchet
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_220099000, a2, OS_LOG_TYPE_ERROR, "Failed to create outgoing ratchet due to invalid data. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end