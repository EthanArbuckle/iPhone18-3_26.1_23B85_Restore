@interface PSConstants
@end

@implementation PSConstants

void __41___PSConstants_eligibleShareSheetTargets__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x1E695DFD8];
  v4 = [*(a1 + 32) mobileMailBundleId];
  v5 = [*(a1 + 32) mobileMessagesBundleId];
  v6 = [v3 setWithObjects:{v4, v5, 0}];
  v7 = eligibleShareSheetTargets__pasExprOnceResult;
  eligibleShareSheetTargets__pasExprOnceResult = v6;

  objc_autoreleasePoolPop(v2);
}

void __33___PSConstants_messagesBundleIds__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x1E695DFD8]);
  v2 = +[_PSConstants mobileMessagesBundleId];
  v3 = +[_PSConstants shareSheetTargetBundleIdMessages];
  v4 = [v1 initWithObjects:{v2, v3, 0}];
  v5 = messagesBundleIds__pasExprOnceResult;
  messagesBundleIds__pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v0);
}

void __29___PSConstants_mailBundleIds__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x1E695DFD8]);
  v2 = +[_PSConstants mobileMailBundleId];
  v3 = +[_PSConstants shareSheetTargetBundleIdMail];
  v4 = +[_PSConstants macMailBundleId];
  v5 = [v1 initWithObjects:{v2, v3, v4, 0}];
  v6 = mailBundleIds__pasExprOnceResult;
  mailBundleIds__pasExprOnceResult = v5;

  objc_autoreleasePoolPop(v0);
}

void __34___PSConstants_shareplayBundleIds__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x1E695DFD8]);
  v2 = +[_PSConstants sharePlayBundleId];
  v3 = +[_PSConstants collaborationSuggestionBundleId];
  v4 = [v1 initWithObjects:{v2, v3, 0}];
  v5 = shareplayBundleIds__pasExprOnceResult;
  shareplayBundleIds__pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v0);
}

void __31___PSConstants_systemBundleIds__block_invoke()
{
  v5 = +[_PSConstants messagesBundleIds];
  v0 = +[_PSConstants mailBundleIds];
  v1 = +[_PSConstants shareplayBundleIds];
  v2 = objc_opt_new();
  [v2 unionSet:v0];
  [v2 unionSet:v5];
  [v2 unionSet:v1];
  v3 = [v2 copy];
  v4 = systemBundleIds_systemBundleIds;
  systemBundleIds_systemBundleIds = v3;
}

@end