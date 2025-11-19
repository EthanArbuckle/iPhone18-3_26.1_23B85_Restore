@interface ICAgeVerificationState
+ (id)_stateFromDictionaryRepresentation:(id)a3 DSID:(id)a4;
+ (id)ageVerificationStateNotRequiredForUserIdentity:(id)a3;
+ (id)ageVerificationStateNotRequiredForUserIdentity:(id)a3 withError:(id)a4;
+ (id)ageVerificationStateNotRequiredForUserIdentity:(id)a3 withTreatment:(int64_t)a4;
+ (id)ageVerificationStateNotRequiredForUserIdentity:(id)a3 withTreatment:(int64_t)a4 verificationURL:(id)a5;
+ (id)cachedStateForDSID:(id)a3;
- (BOOL)isDynamic;
- (BOOL)isEqual:(id)a3;
- (ICAgeVerificationState)initWithUserIdentity:(id)a3 ageVerifier:(id)a4 treatment:(int64_t)a5 verificationURL:(id)a6;
- (id)_dictionaryRepresentationWithDSID:(id)a3;
- (id)_initWithUserIdentity:(id)a3 status:(int64_t)a4 treatment:(int64_t)a5 verificationURL:(id)a6 error:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)status;
- (void)saveToUserDefaults;
@end

@implementation ICAgeVerificationState

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ICAgeVerificationState *)self isExplicitContentAllowed];
  v5 = [(ICAgeVerificationState *)self status]- 1;
  if (v5 > 2)
  {
    v6 = @"Age verification status unknown";
  }

  else
  {
    v6 = off_1E7BF5C98[v5];
  }

  v7 = [(ICAgeVerificationState *)self treatment];
  v8 = [(ICAgeVerificationState *)self verificationURL];
  v9 = [(ICAgeVerificationState *)self ageVerifier];
  v10 = [(ICAgeVerificationState *)self error];
  v11 = [v3 stringWithFormat:@"ICAgeVerificationState %p - explicit content allowed: %u - status: %@ - treatment: %ld - url: %@ - verifier: %@ - error: %@", self, v4, v6, v7, v8, v9, v10];

  return v11;
}

- (int64_t)status
{
  v3 = [(ICAgeVerificationState *)self ageVerifier];

  if (v3)
  {
    v4 = [(ICAgeVerificationState *)self ageVerifier];
    [v4 runAgeVerification];

    v5 = [(ICAgeVerificationState *)self ageVerifier];
    self->_status = [v5 status];
    p_status = &self->_status;
  }

  else
  {
    p_status = &self->_status;
  }

  return *p_status;
}

- (void)saveToUserDefaults
{
  v3 = [(ICAgeVerificationState *)self userIdentity];
  v4 = [v3 DSID];
  v20 = [v4 stringValue];

  if (!v20)
  {
    v5 = +[ICUserIdentityStore defaultIdentityStore];
    v6 = [(ICAgeVerificationState *)self userIdentity];
    v7 = [v5 DSIDForUserIdentity:v6 outError:0];
    v8 = [v7 stringValue];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [@"NoDSID" copy];
    }

    v20 = v10;
  }

  v11 = +[ICDefaults standardDefaults];
  v12 = [v11 lastKnownUserAgeVerificationState];
  v13 = [v12 mutableCopy];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v16 = v15;

  v17 = [(ICAgeVerificationState *)self _dictionaryRepresentationWithDSID:v20];
  [v16 setObject:v17 forKeyedSubscript:v20];

  v18 = [v16 copy];
  v19 = +[ICDefaults standardDefaults];
  [v19 setLastKnownUserAgeVerificationState:v18];
}

- (id)_dictionaryRepresentationWithDSID:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setObject:v5 forKeyedSubscript:@"ICAgeVerificationStateKeyDSID"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ICAgeVerificationState status](self, "status")}];
  [v6 setObject:v7 forKeyedSubscript:@"ICAgeVerificationStateKeyStatus"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ICAgeVerificationState treatment](self, "treatment")}];
  [v6 setObject:v8 forKeyedSubscript:@"ICAgeVerificationStateKeyTreatment"];

  v9 = [(ICAgeVerificationState *)self verificationURL];
  v10 = [v9 absoluteString];

  if (v10)
  {
    v11 = [(ICAgeVerificationState *)self verificationURL];
    v12 = [v11 absoluteString];
    [v6 setObject:v12 forKeyedSubscript:@"ICAgeVerificationStateKeyVerificationURL"];
  }

  v13 = [(ICAgeVerificationState *)self ageVerifier];
  v14 = [v13 verificationExpirationDate];

  if (v14)
  {
    v15 = [(ICAgeVerificationState *)self ageVerifier];
    v16 = [v15 verificationExpirationDate];
    [v6 setObject:v16 forKeyedSubscript:@"ICAgeVerificationStateKeyAgeVerifierExpirationDate"];
  }

  v17 = [v6 copy];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(ICAgeVerificationState *)v6 ageVerifier];
      if (v7 && (v8 = v7, [(ICAgeVerificationState *)self ageVerifier], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
      {
        v10 = [(ICAgeVerificationState *)v6 treatment];
        if (v10 == [(ICAgeVerificationState *)self treatment])
        {
          v11 = [(ICAgeVerificationState *)v6 ageVerifier];
          v12 = [(ICAgeVerificationState *)self ageVerifier];
          if (![v11 isEqual:v12])
          {
            v16 = 0;
LABEL_29:

            goto LABEL_30;
          }

          v13 = [(ICAgeVerificationState *)v6 verificationURL];
          v3 = [(ICAgeVerificationState *)self verificationURL];
          if (v13 != v3)
          {
            v14 = [(ICAgeVerificationState *)v6 verificationURL];
            v15 = [(ICAgeVerificationState *)self verificationURL];
            if (![v14 isEqual:v15])
            {
              v16 = 0;
LABEL_27:

LABEL_28:
              goto LABEL_29;
            }

            v36 = v15;
            v37 = v14;
          }

          v21 = [(ICAgeVerificationState *)v6 error];
          v22 = [(ICAgeVerificationState *)self error];
          v23 = v22;
          if (v21 == v22)
          {

            v16 = 1;
            v27 = v13 == v3;
          }

          else
          {
            [(ICAgeVerificationState *)v6 error];
            v24 = v35 = v3;
            [(ICAgeVerificationState *)self error];
            v26 = v25 = v13;
            v16 = [v24 isEqual:v26];

            v13 = v25;
            v3 = v35;

            v27 = v25 == v35;
          }

          v15 = v36;
          v14 = v37;
          if (v27)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      else
      {
        v17 = [(ICAgeVerificationState *)v6 ageVerifier];
        if (v17)
        {
          v11 = v17;
          v16 = 0;
LABEL_30:

          goto LABEL_31;
        }

        v18 = [(ICAgeVerificationState *)self ageVerifier];

        if (!v18)
        {
          v19 = [(ICAgeVerificationState *)v6 status];
          if (v19 == [(ICAgeVerificationState *)self status])
          {
            v20 = [(ICAgeVerificationState *)v6 treatment];
            if (v20 == [(ICAgeVerificationState *)self treatment])
            {
              v11 = [(ICAgeVerificationState *)v6 verificationURL];
              v12 = [(ICAgeVerificationState *)self verificationURL];
              if (v11 != v12)
              {
                v13 = [(ICAgeVerificationState *)v6 verificationURL];
                v3 = [(ICAgeVerificationState *)self verificationURL];
                if (![v13 isEqual:v3])
                {
                  v16 = 0;
                  goto LABEL_28;
                }

                v37 = v13;
              }

              v29 = [(ICAgeVerificationState *)v6 error];
              v30 = [(ICAgeVerificationState *)self error];
              v31 = v30;
              if (v29 == v30)
              {

                v16 = 1;
              }

              else
              {
                [(ICAgeVerificationState *)v6 error];
                v33 = v32 = v3;
                v34 = [(ICAgeVerificationState *)self error];
                v16 = [v33 isEqual:v34];

                v3 = v32;
              }

              v13 = v37;
              if (v11 == v12)
              {
                goto LABEL_29;
              }

              goto LABEL_28;
            }
          }
        }
      }

      v16 = 0;
LABEL_31:

      goto LABEL_32;
    }

    v16 = 0;
  }

LABEL_32:

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v5[3] = [(ICAgeVerificationState *)self treatment];
    v6 = [(ICAgeVerificationState *)self verificationURL];
    v7 = [v6 copyWithZone:a3];
    v8 = v5[4];
    v5[4] = v7;

    v9 = [(ICAgeVerificationState *)self error];
    v10 = [v9 copyWithZone:a3];
    v11 = v5[5];
    v5[5] = v10;

    v12 = [(ICAgeVerificationState *)self ageVerifier];
    v13 = [v12 copyWithZone:a3];
    v14 = v5[6];
    v5[6] = v13;

    v15 = [(ICAgeVerificationState *)self ageVerifier];

    if (!v15)
    {
      v5[1] = [(ICAgeVerificationState *)self status];
    }
  }

  return v5;
}

- (BOOL)isDynamic
{
  v2 = [(ICAgeVerificationState *)self ageVerifier];
  v3 = v2 != 0;

  return v3;
}

- (ICAgeVerificationState)initWithUserIdentity:(id)a3 ageVerifier:(id)a4 treatment:(int64_t)a5 verificationURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = ICAgeVerificationState;
  v13 = [(ICAgeVerificationState *)&v19 init];
  if (v13)
  {
    v14 = [v10 copy];
    userIdentity = v13->_userIdentity;
    v13->_userIdentity = v14;

    v13->_status = 0;
    objc_storeStrong(&v13->_ageVerifier, a4);
    v13->_treatment = a5;
    v16 = [v12 copy];
    verificationURL = v13->_verificationURL;
    v13->_verificationURL = v16;
  }

  return v13;
}

- (id)_initWithUserIdentity:(id)a3 status:(int64_t)a4 treatment:(int64_t)a5 verificationURL:(id)a6 error:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = ICAgeVerificationState;
  v16 = [(ICAgeVerificationState *)&v26 init];
  if (v16)
  {
    if (!a4)
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:a2 object:v16 file:@"ICAgeVerificationState.m" lineNumber:71 description:@"Must provide a valid status when creating user state object"];
    }

    v17 = [v13 copy];
    userIdentity = v16->_userIdentity;
    v16->_userIdentity = v17;

    v16->_status = a4;
    ageVerifier = v16->_ageVerifier;
    v16->_ageVerifier = 0;

    v16->_treatment = a5;
    v20 = [v14 copy];
    verificationURL = v16->_verificationURL;
    v16->_verificationURL = v20;

    v22 = [v15 copy];
    error = v16->_error;
    v16->_error = v22;
  }

  return v16;
}

+ (id)_stateFromDictionaryRepresentation:(id)a3 DSID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 objectForKeyedSubscript:@"ICAgeVerificationStateKeyDSID"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:a1 file:@"ICAgeVerificationState.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"[dictionaryRepresentation[ICAgeVerificationStateKeyDSID] isKindOfClass:[NSString class]]"}];
  }

  v11 = [v7 objectForKeyedSubscript:@"ICAgeVerificationStateKeyStatus"];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if ((v12 & 1) == 0)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:a1 file:@"ICAgeVerificationState.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"[dictionaryRepresentation[ICAgeVerificationStateKeyStatus] isKindOfClass:[NSNumber class]]"}];
  }

  v13 = [v7 objectForKeyedSubscript:@"ICAgeVerificationStateKeyTreatment"];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  if ((v14 & 1) == 0)
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:a1 file:@"ICAgeVerificationState.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"[dictionaryRepresentation[ICAgeVerificationStateKeyTreatment] isKindOfClass:[NSNumber class]]"}];
  }

  v15 = [v7 objectForKeyedSubscript:@"ICAgeVerificationStateKeyVerificationURL"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [v7 objectForKeyedSubscript:@"ICAgeVerificationStateKeyVerificationURL"];

    if (!v16)
    {
      goto LABEL_11;
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"ICAgeVerificationState.m" lineNumber:202 description:{@"Invalid parameter not satisfying: %@", @"[dictionaryRepresentation[ICAgeVerificationStateKeyVerificationURL] isKindOfClass:[NSString class]] || !dictionaryRepresentation[ICAgeVerificationStateKeyVerificationURL]"}];
  }

LABEL_11:
  v17 = [v7 objectForKeyedSubscript:@"ICAgeVerificationStateKeyAgeVerifierExpirationDate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [v7 objectForKeyedSubscript:@"ICAgeVerificationStateKeyAgeVerifierExpirationDate"];

    if (!v18)
    {
      goto LABEL_15;
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"ICAgeVerificationState.m" lineNumber:203 description:{@"Invalid parameter not satisfying: %@", @"[dictionaryRepresentation[ICAgeVerificationStateKeyAgeVerifierExpirationDate] isKindOfClass:[NSDate class]] || !dictionaryRepresentation[ICAgeVerificationStateKeyAgeVerifierExpirationDate]"}];
  }

LABEL_15:
  v19 = [v7 objectForKeyedSubscript:@"ICAgeVerificationStateKeyTreatment"];
  v20 = [v19 integerValue];

  v21 = [v7 objectForKeyedSubscript:@"ICAgeVerificationStateKeyVerificationURL"];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    v23 = [v7 objectForKeyedSubscript:@"ICAgeVerificationStateKeyVerificationURL"];
    v24 = [MEMORY[0x1E695DFF8] URLWithString:v23];
  }

  else
  {
    v24 = 0;
  }

  v25 = [v7 objectForKeyedSubscript:@"ICAgeVerificationStateKeyAgeVerifierExpirationDate"];
  objc_opt_class();
  v26 = objc_opt_isKindOfClass();

  if (v26)
  {
    v27 = [ICAgeVerifier alloc];
    v28 = [v7 objectForKeyedSubscript:@"ICAgeVerificationStateKeyAgeVerifierExpirationDate"];
    v29 = [(ICAgeVerifier *)v27 initWithExpirationDate:v28];
  }

  else
  {
    v29 = 0;
  }

  v30 = [@"NoDSID" copy];
  if ([v8 isEqualToString:v30])
  {
    v31 = 0;
  }

  else
  {
    v32 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "integerValue")}];
    v31 = [ICUserIdentity specificAccountWithDSID:v32];
  }

  if (v29)
  {
    v33 = [[a1 alloc] initWithUserIdentity:v31 ageVerifier:v29 treatment:v20 verificationURL:v24];
  }

  else
  {
    v34 = [v7 objectForKeyedSubscript:@"ICAgeVerificationStateKeyStatus"];
    v35 = [v34 integerValue];

    v33 = [[a1 alloc] _initWithUserIdentity:v31 status:v35 treatment:v20 verificationURL:v24 error:0];
  }

  v36 = v33;

  return v36;
}

+ (id)cachedStateForDSID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[ICDefaults standardDefaults];
  v6 = [v5 lastKnownUserAgeVerificationState];
  v7 = v6;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = @"NoDSID";
  }

  v9 = [v6 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v4;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "ICAgeVerificationState - cachedStateForDSID: - Reading state from disk - DSID=%@", &v17, 0xCu);
    }

    v11 = [a1 _stateFromDictionaryRepresentation:v9 DSID:v4];
  }

  else if (v4 && [(__CFString *)v4 integerValue]>= 1)
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v4;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "ICAgeVerificationState - cachedStateForDSID: - Creating default state [No cache found] - DSID=%@", &v17, 0xCu);
    }

    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[__CFString integerValue](v4, "integerValue")}];
    v14 = [ICUserIdentity specificAccountWithDSID:v13];
    v11 = [a1 ageVerificationStateNotRequiredForUserIdentity:v14];
  }

  else
  {
    v15 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v4;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "ICAgeVerificationState - cachedStateForDSID: - No cached state [Unactionable DSID] - DSID=%@", &v17, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)ageVerificationStateNotRequiredForUserIdentity:(id)a3 withTreatment:(int64_t)a4 verificationURL:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[ICAgeVerificationState alloc] _initWithUserIdentity:v8 status:1 treatment:a4 verificationURL:v7 error:0];

  return v9;
}

+ (id)ageVerificationStateNotRequiredForUserIdentity:(id)a3 withTreatment:(int64_t)a4
{
  v5 = a3;
  v6 = [objc_opt_class() ageVerificationStateNotRequiredForUserIdentity:v5 withTreatment:a4 verificationURL:0];

  return v6;
}

+ (id)ageVerificationStateNotRequiredForUserIdentity:(id)a3 withError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ICAgeVerificationState alloc] _initWithUserIdentity:v6 status:1 treatment:0 verificationURL:0 error:v5];

  return v7;
}

+ (id)ageVerificationStateNotRequiredForUserIdentity:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() ageVerificationStateNotRequiredForUserIdentity:v3 withTreatment:0];

  return v4;
}

@end