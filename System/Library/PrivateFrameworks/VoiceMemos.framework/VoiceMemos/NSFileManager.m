@interface NSFileManager
@end

@implementation NSFileManager

void __68__NSFileManager_RCAdditions__rc_moveToTempAndMarkAsPurgeable_error___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  v6 = 0;
  v3 = _RCCleanUpURL(v1, &v6);
  v4 = v6;
  if (!v3)
  {
    v5 = OSLogForCategory(@"Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __68__NSFileManager_RCAdditions__rc_moveToTempAndMarkAsPurgeable_error___block_invoke_cold_1(v2, v4, v5);
    }
  }
}

uint64_t __58__NSFileManager_RCAdditions__rc_cleanUpTemporaryDirectory__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 lastPathComponent];
  v3 = [v2 isEqualToString:@"voicememos-purgeable"];

  return v3 ^ 1u;
}

uint64_t __58__NSFileManager_RCAdditions__rc_cleanUpAssetsInDirectory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = OSLogForCategory(@"Default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __58__NSFileManager_RCAdditions__rc_cleanUpAssetsInDirectory___block_invoke_cold_1();
  }

  return 1;
}

void __68__NSFileManager_RCAdditions__rc_moveToTempAndMarkAsPurgeable_error___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  *v4 = 136315650;
  *&v4[4] = "[NSFileManager(RCAdditions) rc_moveToTempAndMarkAsPurgeable:error:]_block_invoke";
  *&v4[12] = 2112;
  *&v4[14] = *a1;
  *&v4[22] = 2112;
  OUTLINED_FUNCTION_4(&dword_272442000, a2, a3, "%s -- Failed to mark directory as purgeable, url = %@, error = %@", *v4, *&v4[8], *&v4[16], a2);
  v3 = *MEMORY[0x277D85DE8];
}

void __58__NSFileManager_RCAdditions__rc_cleanUpAssetsInDirectory___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_272442000, v0, v1, "%s -- enumeratorAtURL error %@ url %@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

@end