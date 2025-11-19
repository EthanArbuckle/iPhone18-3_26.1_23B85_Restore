@interface SBUnhideProtectedAppAlertControllerFor
@end

@implementation SBUnhideProtectedAppAlertControllerFor

void ___SBUnhideProtectedAppAlertControllerFor_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CEBEA8] sharedManager];
  v3 = *(a1 + 32);
  v7 = 0;
  v4 = [v2 setSubject:v3 isHidden:0 error:&v7];
  v5 = v7;

  if (v4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___SBUnhideProtectedAppAlertControllerFor_block_invoke_cold_1();
    }
  }
}

void ___SBUnhideProtectedAppAlertControllerFor_block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_10();
  _os_log_error_impl(&dword_21ED4E000, v0, OS_LOG_TYPE_ERROR, "Error unhiding subject when adding to home screen: %@ %@", v1, 0x16u);
}

@end