@interface PMSignInWithAppleController
- (void)cancelAppIconRequestBundleID:(id)a3 completion:(id)a4;
- (void)deleteAllItemsFromDepartedGroupWithContext:(id)a3 completion:(id)a4;
- (void)fetchAppIconForBundleID:(id)a3 iconSize:(CGSize)a4 completion:(id)a5;
- (void)leaveGroupWithContext:(id)a3 completion:(id)a4;
- (void)participantRemovedWithContext:(id)a3 participantID:(id)a4 completion:(id)a5;
- (void)performHealthCheckInBackground;
@end

@implementation PMSignInWithAppleController

- (void)performHealthCheckInBackground
{
  v2 = [MEMORY[0x277CF0130] sharedInstance];
  v3 = [MEMORY[0x277CF0130] sharedInstance];
  v4 = [v3 primaryAuthKitAccount];
  v7 = [v2 altDSIDForAccount:v4];

  if (v7)
  {
    v5 = [objc_alloc(MEMORY[0x277CF02E8]) initWithAltDSID:v7];
    v6 = objc_alloc_init(MEMORY[0x277CF02E0]);
    [v6 performHealthCheckWithContext:v5 completion:&__block_literal_global_0];
  }
}

- (void)leaveGroupWithContext:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CF02E0];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 leaveGroupWithContext:v7 completion:v6];
}

- (void)deleteAllItemsFromDepartedGroupWithContext:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CF02E0];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 deleteAllItemsFromDepartedGroupWithContext:v7 completion:v6];
}

- (void)participantRemovedWithContext:(id)a3 participantID:(id)a4 completion:(id)a5
{
  v7 = MEMORY[0x277CF02E0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v7);
  [v11 participantRemovedWithContext:v10 participantID:v9 completion:v8];
}

void __61__PMSignInWithAppleController_performHealthCheckInBackground__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__PMSignInWithAppleController_performHealthCheckInBackground__block_invoke_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __61__PMSignInWithAppleController_performHealthCheckInBackground__block_invoke_cold_2(v5);
  }
}

- (void)fetchAppIconForBundleID:(id)a3 iconSize:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = MEMORY[0x277CF0268];
  v9 = a5;
  v10 = a3;
  v12 = [v8 sharedInstance];
  v11 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
  [v12 appIconForBundleID:v10 size:v11 completion:v9];
}

- (void)cancelAppIconRequestBundleID:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277CF0268];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedInstance];
  [v8 cancelAppIconRequestForBundleID:v7 completion:v6];
}

void __61__PMSignInWithAppleController_performHealthCheckInBackground__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_21C6E5000, a2, OS_LOG_TYPE_ERROR, "Sign in with Apple health check failed with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end