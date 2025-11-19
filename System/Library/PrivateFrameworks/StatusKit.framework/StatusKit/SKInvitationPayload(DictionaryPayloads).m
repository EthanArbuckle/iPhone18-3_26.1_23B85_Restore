@interface SKInvitationPayload(DictionaryPayloads)
- (void)payloadDictionary;
@end

@implementation SKInvitationPayload(DictionaryPayloads)

- (void)initWithDictionary:()DictionaryPayloads dateCreated:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26BA07000, a2, OS_LOG_TYPE_ERROR, "Error serializing status payload dictionary: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)payloadDictionary
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_26BA07000, a2, OS_LOG_TYPE_ERROR, "Error deserializing status payload data as dictionary: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end