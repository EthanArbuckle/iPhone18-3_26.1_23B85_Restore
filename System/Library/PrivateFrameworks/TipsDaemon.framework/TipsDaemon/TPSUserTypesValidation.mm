@interface TPSUserTypesValidation
+ (BOOL)isBetaBuild;
+ (BOOL)isInternalBuild;
+ (BOOL)isUserMatchingType:(id)type;
- (TPSUserTypesValidation)initWithTargetUserTypes:(id)types excludeUserTypes:(id)userTypes;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSUserTypesValidation

+ (BOOL)isBetaBuild
{
  v2 = objc_opt_class();

  return [v2 isUserMatchingType:@"Beta"];
}

+ (BOOL)isInternalBuild
{
  v2 = objc_opt_class();

  return [v2 isUserMatchingType:@"Internal"];
}

+ (BOOL)isUserMatchingType:(id)type
{
  v3 = MEMORY[0x277D71740];
  typeCopy = type;
  releaseType = [v3 releaseType];
  v6 = releaseType;
  if (releaseType)
  {
    v7 = releaseType;
  }

  else
  {
    v7 = MGCopyAnswer();
  }

  v8 = v7;

  v9 = [v8 isEqualToString:typeCopy];
  return v9;
}

- (TPSUserTypesValidation)initWithTargetUserTypes:(id)types excludeUserTypes:(id)userTypes
{
  userTypesCopy = userTypes;
  v7 = [types valueForKeyPath:@"lowercaseString"];
  v8 = [userTypesCopy valueForKeyPath:@"lowercaseString"];

  v11.receiver = self;
  v11.super_class = TPSUserTypesValidation;
  v9 = [(TPSInclusivityValidation *)&v11 initWithTargetValues:v7 excludeValues:v8];

  return v9;
}

- (void)validateWithCompletion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  targetUserTypes = [(TPSUserTypesValidation *)self targetUserTypes];
  if ([targetUserTypes count])
  {

LABEL_4:
    mEMORY[0x277D716E8] = [MEMORY[0x277D716E8] sharedInstance];
    userType = [mEMORY[0x277D716E8] userType];

    if (userType > 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = off_2789B1150[userType];
    }

    lowercaseString = [(__CFString *)v10 lowercaseString];
    targetUserTypes2 = [(TPSUserTypesValidation *)self targetUserTypes];
    if ([targetUserTypes2 count])
    {
      targetUserTypes3 = [(TPSUserTypesValidation *)self targetUserTypes];
      v14 = [targetUserTypes3 containsObject:lowercaseString];
    }

    else
    {
      v14 = 1;
    }

    excludeUserTypes = [(TPSUserTypesValidation *)self excludeUserTypes];
    v16 = [excludeUserTypes containsObject:lowercaseString];

    v17 = v14 & (v16 ^ 1u);
    targeting = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_opt_class();
      v21 = v20;
      targetUserTypes4 = [(TPSUserTypesValidation *)self targetUserTypes];
      v23 = [targetUserTypes4 componentsJoinedByString:{@", "}];
      excludeUserTypes2 = [(TPSUserTypesValidation *)self excludeUserTypes];
      v25 = [excludeUserTypes2 componentsJoinedByString:{@", "}];
      v26 = 138413314;
      v27 = v20;
      v28 = 2112;
      v29 = lowercaseString;
      v30 = 2112;
      v31 = v23;
      v32 = 2112;
      v33 = v25;
      v34 = 1024;
      v35 = v17;
      _os_log_debug_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_DEBUG, "%@ - checking user type: %@, target user types: %@, exclude user types: %@. Valid: %d", &v26, 0x30u);
    }

    goto LABEL_13;
  }

  excludeUserTypes3 = [(TPSUserTypesValidation *)self excludeUserTypes];
  v7 = [excludeUserTypes3 count];

  if (v7)
  {
    goto LABEL_4;
  }

  lowercaseString = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_DEBUG))
  {
    [(TPSUserTypesValidation *)self validateWithCompletion:lowercaseString];
  }

  v17 = 1;
LABEL_13:

  completionCopy[2](completionCopy, v17, 0);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)validateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 138412290;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "%@ - neither target nor exclude user type(s) is specified.", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end