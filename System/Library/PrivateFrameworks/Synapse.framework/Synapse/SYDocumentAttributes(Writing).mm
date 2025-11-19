@interface SYDocumentAttributes(Writing)
@end

@implementation SYDocumentAttributes(Writing)

- (void)saveToFileURL:()Writing additionalAttributes:completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Unable to serialize document attributes, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end