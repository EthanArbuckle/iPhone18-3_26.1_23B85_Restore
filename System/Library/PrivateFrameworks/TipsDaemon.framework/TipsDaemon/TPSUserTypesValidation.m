@interface TPSUserTypesValidation
+ (BOOL)isBetaBuild;
+ (BOOL)isInternalBuild;
+ (BOOL)isUserMatchingType:(id)a3;
- (TPSUserTypesValidation)initWithTargetUserTypes:(id)a3 excludeUserTypes:(id)a4;
- (void)validateWithCompletion:(id)a3;
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

+ (BOOL)isUserMatchingType:(id)a3
{
  v3 = MEMORY[0x277D71740];
  v4 = a3;
  v5 = [v3 releaseType];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MGCopyAnswer();
  }

  v8 = v7;

  v9 = [v8 isEqualToString:v4];
  return v9;
}

- (TPSUserTypesValidation)initWithTargetUserTypes:(id)a3 excludeUserTypes:(id)a4
{
  v6 = a4;
  v7 = [a3 valueForKeyPath:@"lowercaseString"];
  v8 = [v6 valueForKeyPath:@"lowercaseString"];

  v11.receiver = self;
  v11.super_class = TPSUserTypesValidation;
  v9 = [(TPSInclusivityValidation *)&v11 initWithTargetValues:v7 excludeValues:v8];

  return v9;
}

- (void)validateWithCompletion:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TPSUserTypesValidation *)self targetUserTypes];
  if ([v5 count])
  {

LABEL_4:
    v8 = [MEMORY[0x277D716E8] sharedInstance];
    v9 = [v8 userType];

    if (v9 > 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = off_2789B1150[v9];
    }

    v11 = [(__CFString *)v10 lowercaseString];
    v12 = [(TPSUserTypesValidation *)self targetUserTypes];
    if ([v12 count])
    {
      v13 = [(TPSUserTypesValidation *)self targetUserTypes];
      v14 = [v13 containsObject:v11];
    }

    else
    {
      v14 = 1;
    }

    v15 = [(TPSUserTypesValidation *)self excludeUserTypes];
    v16 = [v15 containsObject:v11];

    v17 = v14 & (v16 ^ 1u);
    v18 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = objc_opt_class();
      v21 = v20;
      v22 = [(TPSUserTypesValidation *)self targetUserTypes];
      v23 = [v22 componentsJoinedByString:{@", "}];
      v24 = [(TPSUserTypesValidation *)self excludeUserTypes];
      v25 = [v24 componentsJoinedByString:{@", "}];
      v26 = 138413314;
      v27 = v20;
      v28 = 2112;
      v29 = v11;
      v30 = 2112;
      v31 = v23;
      v32 = 2112;
      v33 = v25;
      v34 = 1024;
      v35 = v17;
      _os_log_debug_impl(&dword_232D6F000, v18, OS_LOG_TYPE_DEBUG, "%@ - checking user type: %@, target user types: %@, exclude user types: %@. Valid: %d", &v26, 0x30u);
    }

    goto LABEL_13;
  }

  v6 = [(TPSUserTypesValidation *)self excludeUserTypes];
  v7 = [v6 count];

  if (v7)
  {
    goto LABEL_4;
  }

  v11 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(TPSUserTypesValidation *)self validateWithCompletion:v11];
  }

  v17 = 1;
LABEL_13:

  v4[2](v4, v17, 0);
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