@interface PMSignInWithAppleController
- (void)cancelAppIconRequestBundleID:(id)d completion:(id)completion;
- (void)deleteAllItemsFromDepartedGroupWithContext:(id)context completion:(id)completion;
- (void)fetchAppIconForBundleID:(id)d iconSize:(CGSize)size completion:(id)completion;
- (void)leaveGroupWithContext:(id)context completion:(id)completion;
- (void)participantRemovedWithContext:(id)context participantID:(id)d completion:(id)completion;
- (void)performHealthCheckInBackground;
@end

@implementation PMSignInWithAppleController

- (void)performHealthCheckInBackground
{
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  mEMORY[0x277CF0130]2 = [MEMORY[0x277CF0130] sharedInstance];
  primaryAuthKitAccount = [mEMORY[0x277CF0130]2 primaryAuthKitAccount];
  v7 = [mEMORY[0x277CF0130] altDSIDForAccount:primaryAuthKitAccount];

  if (v7)
  {
    v5 = [objc_alloc(MEMORY[0x277CF02E8]) initWithAltDSID:v7];
    v6 = objc_alloc_init(MEMORY[0x277CF02E0]);
    [v6 performHealthCheckWithContext:v5 completion:&__block_literal_global_0];
  }
}

- (void)leaveGroupWithContext:(id)context completion:(id)completion
{
  v5 = MEMORY[0x277CF02E0];
  completionCopy = completion;
  contextCopy = context;
  v8 = objc_alloc_init(v5);
  [v8 leaveGroupWithContext:contextCopy completion:completionCopy];
}

- (void)deleteAllItemsFromDepartedGroupWithContext:(id)context completion:(id)completion
{
  v5 = MEMORY[0x277CF02E0];
  completionCopy = completion;
  contextCopy = context;
  v8 = objc_alloc_init(v5);
  [v8 deleteAllItemsFromDepartedGroupWithContext:contextCopy completion:completionCopy];
}

- (void)participantRemovedWithContext:(id)context participantID:(id)d completion:(id)completion
{
  v7 = MEMORY[0x277CF02E0];
  completionCopy = completion;
  dCopy = d;
  contextCopy = context;
  v11 = objc_alloc_init(v7);
  [v11 participantRemovedWithContext:contextCopy participantID:dCopy completion:completionCopy];
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

- (void)fetchAppIconForBundleID:(id)d iconSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v8 = MEMORY[0x277CF0268];
  completionCopy = completion;
  dCopy = d;
  sharedInstance = [v8 sharedInstance];
  v11 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
  [sharedInstance appIconForBundleID:dCopy size:v11 completion:completionCopy];
}

- (void)cancelAppIconRequestBundleID:(id)d completion:(id)completion
{
  v5 = MEMORY[0x277CF0268];
  completionCopy = completion;
  dCopy = d;
  sharedInstance = [v5 sharedInstance];
  [sharedInstance cancelAppIconRequestForBundleID:dCopy completion:completionCopy];
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