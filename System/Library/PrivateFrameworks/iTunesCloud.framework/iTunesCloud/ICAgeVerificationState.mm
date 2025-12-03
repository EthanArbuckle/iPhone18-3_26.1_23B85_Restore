@interface ICAgeVerificationState
+ (id)_stateFromDictionaryRepresentation:(id)representation DSID:(id)d;
+ (id)ageVerificationStateNotRequiredForUserIdentity:(id)identity;
+ (id)ageVerificationStateNotRequiredForUserIdentity:(id)identity withError:(id)error;
+ (id)ageVerificationStateNotRequiredForUserIdentity:(id)identity withTreatment:(int64_t)treatment;
+ (id)ageVerificationStateNotRequiredForUserIdentity:(id)identity withTreatment:(int64_t)treatment verificationURL:(id)l;
+ (id)cachedStateForDSID:(id)d;
- (BOOL)isDynamic;
- (BOOL)isEqual:(id)equal;
- (ICAgeVerificationState)initWithUserIdentity:(id)identity ageVerifier:(id)verifier treatment:(int64_t)treatment verificationURL:(id)l;
- (id)_dictionaryRepresentationWithDSID:(id)d;
- (id)_initWithUserIdentity:(id)identity status:(int64_t)status treatment:(int64_t)treatment verificationURL:(id)l error:(id)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)status;
- (void)saveToUserDefaults;
@end

@implementation ICAgeVerificationState

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  isExplicitContentAllowed = [(ICAgeVerificationState *)self isExplicitContentAllowed];
  v5 = [(ICAgeVerificationState *)self status]- 1;
  if (v5 > 2)
  {
    v6 = @"Age verification status unknown";
  }

  else
  {
    v6 = off_1E7BF5C98[v5];
  }

  treatment = [(ICAgeVerificationState *)self treatment];
  verificationURL = [(ICAgeVerificationState *)self verificationURL];
  ageVerifier = [(ICAgeVerificationState *)self ageVerifier];
  error = [(ICAgeVerificationState *)self error];
  v11 = [v3 stringWithFormat:@"ICAgeVerificationState %p - explicit content allowed: %u - status: %@ - treatment: %ld - url: %@ - verifier: %@ - error: %@", self, isExplicitContentAllowed, v6, treatment, verificationURL, ageVerifier, error];

  return v11;
}

- (int64_t)status
{
  ageVerifier = [(ICAgeVerificationState *)self ageVerifier];

  if (ageVerifier)
  {
    ageVerifier2 = [(ICAgeVerificationState *)self ageVerifier];
    [ageVerifier2 runAgeVerification];

    ageVerifier3 = [(ICAgeVerificationState *)self ageVerifier];
    self->_status = [ageVerifier3 status];
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
  userIdentity = [(ICAgeVerificationState *)self userIdentity];
  dSID = [userIdentity DSID];
  stringValue = [dSID stringValue];

  if (!stringValue)
  {
    v5 = +[ICUserIdentityStore defaultIdentityStore];
    userIdentity2 = [(ICAgeVerificationState *)self userIdentity];
    v7 = [v5 DSIDForUserIdentity:userIdentity2 outError:0];
    stringValue2 = [v7 stringValue];
    v9 = stringValue2;
    if (stringValue2)
    {
      v10 = stringValue2;
    }

    else
    {
      v10 = [@"NoDSID" copy];
    }

    stringValue = v10;
  }

  v11 = +[ICDefaults standardDefaults];
  lastKnownUserAgeVerificationState = [v11 lastKnownUserAgeVerificationState];
  v13 = [lastKnownUserAgeVerificationState mutableCopy];
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

  v17 = [(ICAgeVerificationState *)self _dictionaryRepresentationWithDSID:stringValue];
  [v16 setObject:v17 forKeyedSubscript:stringValue];

  v18 = [v16 copy];
  v19 = +[ICDefaults standardDefaults];
  [v19 setLastKnownUserAgeVerificationState:v18];
}

- (id)_dictionaryRepresentationWithDSID:(id)d
{
  v4 = MEMORY[0x1E695DF90];
  dCopy = d;
  v6 = objc_alloc_init(v4);
  [v6 setObject:dCopy forKeyedSubscript:@"ICAgeVerificationStateKeyDSID"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ICAgeVerificationState status](self, "status")}];
  [v6 setObject:v7 forKeyedSubscript:@"ICAgeVerificationStateKeyStatus"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ICAgeVerificationState treatment](self, "treatment")}];
  [v6 setObject:v8 forKeyedSubscript:@"ICAgeVerificationStateKeyTreatment"];

  verificationURL = [(ICAgeVerificationState *)self verificationURL];
  absoluteString = [verificationURL absoluteString];

  if (absoluteString)
  {
    verificationURL2 = [(ICAgeVerificationState *)self verificationURL];
    absoluteString2 = [verificationURL2 absoluteString];
    [v6 setObject:absoluteString2 forKeyedSubscript:@"ICAgeVerificationStateKeyVerificationURL"];
  }

  ageVerifier = [(ICAgeVerificationState *)self ageVerifier];
  verificationExpirationDate = [ageVerifier verificationExpirationDate];

  if (verificationExpirationDate)
  {
    ageVerifier2 = [(ICAgeVerificationState *)self ageVerifier];
    verificationExpirationDate2 = [ageVerifier2 verificationExpirationDate];
    [v6 setObject:verificationExpirationDate2 forKeyedSubscript:@"ICAgeVerificationStateKeyAgeVerifierExpirationDate"];
  }

  v17 = [v6 copy];

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      ageVerifier = [(ICAgeVerificationState *)v6 ageVerifier];
      if (ageVerifier && (v8 = ageVerifier, [(ICAgeVerificationState *)self ageVerifier], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
      {
        treatment = [(ICAgeVerificationState *)v6 treatment];
        if (treatment == [(ICAgeVerificationState *)self treatment])
        {
          ageVerifier2 = [(ICAgeVerificationState *)v6 ageVerifier];
          ageVerifier3 = [(ICAgeVerificationState *)self ageVerifier];
          if (![ageVerifier2 isEqual:ageVerifier3])
          {
            v16 = 0;
LABEL_29:

            goto LABEL_30;
          }

          verificationURL = [(ICAgeVerificationState *)v6 verificationURL];
          verificationURL2 = [(ICAgeVerificationState *)self verificationURL];
          if (verificationURL != verificationURL2)
          {
            verificationURL3 = [(ICAgeVerificationState *)v6 verificationURL];
            verificationURL4 = [(ICAgeVerificationState *)self verificationURL];
            if (![verificationURL3 isEqual:verificationURL4])
            {
              v16 = 0;
LABEL_27:

LABEL_28:
              goto LABEL_29;
            }

            v36 = verificationURL4;
            v37 = verificationURL3;
          }

          error = [(ICAgeVerificationState *)v6 error];
          error2 = [(ICAgeVerificationState *)self error];
          v23 = error2;
          if (error == error2)
          {

            v16 = 1;
            v27 = verificationURL == verificationURL2;
          }

          else
          {
            [(ICAgeVerificationState *)v6 error];
            v24 = v35 = verificationURL2;
            [(ICAgeVerificationState *)self error];
            v26 = v25 = verificationURL;
            v16 = [v24 isEqual:v26];

            verificationURL = v25;
            verificationURL2 = v35;

            v27 = v25 == v35;
          }

          verificationURL4 = v36;
          verificationURL3 = v37;
          if (v27)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      else
      {
        ageVerifier4 = [(ICAgeVerificationState *)v6 ageVerifier];
        if (ageVerifier4)
        {
          ageVerifier2 = ageVerifier4;
          v16 = 0;
LABEL_30:

          goto LABEL_31;
        }

        ageVerifier5 = [(ICAgeVerificationState *)self ageVerifier];

        if (!ageVerifier5)
        {
          status = [(ICAgeVerificationState *)v6 status];
          if (status == [(ICAgeVerificationState *)self status])
          {
            treatment2 = [(ICAgeVerificationState *)v6 treatment];
            if (treatment2 == [(ICAgeVerificationState *)self treatment])
            {
              ageVerifier2 = [(ICAgeVerificationState *)v6 verificationURL];
              ageVerifier3 = [(ICAgeVerificationState *)self verificationURL];
              if (ageVerifier2 != ageVerifier3)
              {
                verificationURL = [(ICAgeVerificationState *)v6 verificationURL];
                verificationURL2 = [(ICAgeVerificationState *)self verificationURL];
                if (![verificationURL isEqual:verificationURL2])
                {
                  v16 = 0;
                  goto LABEL_28;
                }

                v37 = verificationURL;
              }

              error3 = [(ICAgeVerificationState *)v6 error];
              error4 = [(ICAgeVerificationState *)self error];
              v31 = error4;
              if (error3 == error4)
              {

                v16 = 1;
              }

              else
              {
                [(ICAgeVerificationState *)v6 error];
                v33 = v32 = verificationURL2;
                error5 = [(ICAgeVerificationState *)self error];
                v16 = [v33 isEqual:error5];

                verificationURL2 = v32;
              }

              verificationURL = v37;
              if (ageVerifier2 == ageVerifier3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v5[3] = [(ICAgeVerificationState *)self treatment];
    verificationURL = [(ICAgeVerificationState *)self verificationURL];
    v7 = [verificationURL copyWithZone:zone];
    v8 = v5[4];
    v5[4] = v7;

    error = [(ICAgeVerificationState *)self error];
    v10 = [error copyWithZone:zone];
    v11 = v5[5];
    v5[5] = v10;

    ageVerifier = [(ICAgeVerificationState *)self ageVerifier];
    v13 = [ageVerifier copyWithZone:zone];
    v14 = v5[6];
    v5[6] = v13;

    ageVerifier2 = [(ICAgeVerificationState *)self ageVerifier];

    if (!ageVerifier2)
    {
      v5[1] = [(ICAgeVerificationState *)self status];
    }
  }

  return v5;
}

- (BOOL)isDynamic
{
  ageVerifier = [(ICAgeVerificationState *)self ageVerifier];
  v3 = ageVerifier != 0;

  return v3;
}

- (ICAgeVerificationState)initWithUserIdentity:(id)identity ageVerifier:(id)verifier treatment:(int64_t)treatment verificationURL:(id)l
{
  identityCopy = identity;
  verifierCopy = verifier;
  lCopy = l;
  v19.receiver = self;
  v19.super_class = ICAgeVerificationState;
  v13 = [(ICAgeVerificationState *)&v19 init];
  if (v13)
  {
    v14 = [identityCopy copy];
    userIdentity = v13->_userIdentity;
    v13->_userIdentity = v14;

    v13->_status = 0;
    objc_storeStrong(&v13->_ageVerifier, verifier);
    v13->_treatment = treatment;
    v16 = [lCopy copy];
    verificationURL = v13->_verificationURL;
    v13->_verificationURL = v16;
  }

  return v13;
}

- (id)_initWithUserIdentity:(id)identity status:(int64_t)status treatment:(int64_t)treatment verificationURL:(id)l error:(id)error
{
  identityCopy = identity;
  lCopy = l;
  errorCopy = error;
  v26.receiver = self;
  v26.super_class = ICAgeVerificationState;
  v16 = [(ICAgeVerificationState *)&v26 init];
  if (v16)
  {
    if (!status)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v16 file:@"ICAgeVerificationState.m" lineNumber:71 description:@"Must provide a valid status when creating user state object"];
    }

    v17 = [identityCopy copy];
    userIdentity = v16->_userIdentity;
    v16->_userIdentity = v17;

    v16->_status = status;
    ageVerifier = v16->_ageVerifier;
    v16->_ageVerifier = 0;

    v16->_treatment = treatment;
    v20 = [lCopy copy];
    verificationURL = v16->_verificationURL;
    v16->_verificationURL = v20;

    v22 = [errorCopy copy];
    error = v16->_error;
    v16->_error = v22;
  }

  return v16;
}

+ (id)_stateFromDictionaryRepresentation:(id)representation DSID:(id)d
{
  representationCopy = representation;
  dCopy = d;
  v9 = [representationCopy objectForKeyedSubscript:@"ICAgeVerificationStateKeyDSID"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICAgeVerificationState.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"[dictionaryRepresentation[ICAgeVerificationStateKeyDSID] isKindOfClass:[NSString class]]"}];
  }

  v11 = [representationCopy objectForKeyedSubscript:@"ICAgeVerificationStateKeyStatus"];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if ((v12 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"ICAgeVerificationState.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"[dictionaryRepresentation[ICAgeVerificationStateKeyStatus] isKindOfClass:[NSNumber class]]"}];
  }

  v13 = [representationCopy objectForKeyedSubscript:@"ICAgeVerificationStateKeyTreatment"];
  objc_opt_class();
  v14 = objc_opt_isKindOfClass();

  if ((v14 & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"ICAgeVerificationState.m" lineNumber:201 description:{@"Invalid parameter not satisfying: %@", @"[dictionaryRepresentation[ICAgeVerificationStateKeyTreatment] isKindOfClass:[NSNumber class]]"}];
  }

  currentHandler4 = [representationCopy objectForKeyedSubscript:@"ICAgeVerificationStateKeyVerificationURL"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [representationCopy objectForKeyedSubscript:@"ICAgeVerificationStateKeyVerificationURL"];

    if (!v16)
    {
      goto LABEL_11;
    }

    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"ICAgeVerificationState.m" lineNumber:202 description:{@"Invalid parameter not satisfying: %@", @"[dictionaryRepresentation[ICAgeVerificationStateKeyVerificationURL] isKindOfClass:[NSString class]] || !dictionaryRepresentation[ICAgeVerificationStateKeyVerificationURL]"}];
  }

LABEL_11:
  currentHandler5 = [representationCopy objectForKeyedSubscript:@"ICAgeVerificationStateKeyAgeVerifierExpirationDate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [representationCopy objectForKeyedSubscript:@"ICAgeVerificationStateKeyAgeVerifierExpirationDate"];

    if (!v18)
    {
      goto LABEL_15;
    }

    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"ICAgeVerificationState.m" lineNumber:203 description:{@"Invalid parameter not satisfying: %@", @"[dictionaryRepresentation[ICAgeVerificationStateKeyAgeVerifierExpirationDate] isKindOfClass:[NSDate class]] || !dictionaryRepresentation[ICAgeVerificationStateKeyAgeVerifierExpirationDate]"}];
  }

LABEL_15:
  v19 = [representationCopy objectForKeyedSubscript:@"ICAgeVerificationStateKeyTreatment"];
  integerValue = [v19 integerValue];

  v21 = [representationCopy objectForKeyedSubscript:@"ICAgeVerificationStateKeyVerificationURL"];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    v23 = [representationCopy objectForKeyedSubscript:@"ICAgeVerificationStateKeyVerificationURL"];
    v24 = [MEMORY[0x1E695DFF8] URLWithString:v23];
  }

  else
  {
    v24 = 0;
  }

  v25 = [representationCopy objectForKeyedSubscript:@"ICAgeVerificationStateKeyAgeVerifierExpirationDate"];
  objc_opt_class();
  v26 = objc_opt_isKindOfClass();

  if (v26)
  {
    v27 = [ICAgeVerifier alloc];
    v28 = [representationCopy objectForKeyedSubscript:@"ICAgeVerificationStateKeyAgeVerifierExpirationDate"];
    v29 = [(ICAgeVerifier *)v27 initWithExpirationDate:v28];
  }

  else
  {
    v29 = 0;
  }

  v30 = [@"NoDSID" copy];
  if ([dCopy isEqualToString:v30])
  {
    v31 = 0;
  }

  else
  {
    v32 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(dCopy, "integerValue")}];
    v31 = [ICUserIdentity specificAccountWithDSID:v32];
  }

  if (v29)
  {
    v33 = [[self alloc] initWithUserIdentity:v31 ageVerifier:v29 treatment:integerValue verificationURL:v24];
  }

  else
  {
    v34 = [representationCopy objectForKeyedSubscript:@"ICAgeVerificationStateKeyStatus"];
    integerValue2 = [v34 integerValue];

    v33 = [[self alloc] _initWithUserIdentity:v31 status:integerValue2 treatment:integerValue verificationURL:v24 error:0];
  }

  v36 = v33;

  return v36;
}

+ (id)cachedStateForDSID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = +[ICDefaults standardDefaults];
  lastKnownUserAgeVerificationState = [v5 lastKnownUserAgeVerificationState];
  v7 = lastKnownUserAgeVerificationState;
  if (dCopy)
  {
    v8 = dCopy;
  }

  else
  {
    v8 = @"NoDSID";
  }

  v9 = [lastKnownUserAgeVerificationState objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = dCopy;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "ICAgeVerificationState - cachedStateForDSID: - Reading state from disk - DSID=%@", &v17, 0xCu);
    }

    v11 = [self _stateFromDictionaryRepresentation:v9 DSID:dCopy];
  }

  else if (dCopy && [(__CFString *)dCopy integerValue]>= 1)
  {
    v12 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = dCopy;
      _os_log_impl(&dword_1B4491000, v12, OS_LOG_TYPE_DEFAULT, "ICAgeVerificationState - cachedStateForDSID: - Creating default state [No cache found] - DSID=%@", &v17, 0xCu);
    }

    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[__CFString integerValue](dCopy, "integerValue")}];
    v14 = [ICUserIdentity specificAccountWithDSID:v13];
    v11 = [self ageVerificationStateNotRequiredForUserIdentity:v14];
  }

  else
  {
    v15 = os_log_create("com.apple.amp.iTunesCloud", "AgeVerification");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = dCopy;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "ICAgeVerificationState - cachedStateForDSID: - No cached state [Unactionable DSID] - DSID=%@", &v17, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)ageVerificationStateNotRequiredForUserIdentity:(id)identity withTreatment:(int64_t)treatment verificationURL:(id)l
{
  lCopy = l;
  identityCopy = identity;
  v9 = [[ICAgeVerificationState alloc] _initWithUserIdentity:identityCopy status:1 treatment:treatment verificationURL:lCopy error:0];

  return v9;
}

+ (id)ageVerificationStateNotRequiredForUserIdentity:(id)identity withTreatment:(int64_t)treatment
{
  identityCopy = identity;
  v6 = [objc_opt_class() ageVerificationStateNotRequiredForUserIdentity:identityCopy withTreatment:treatment verificationURL:0];

  return v6;
}

+ (id)ageVerificationStateNotRequiredForUserIdentity:(id)identity withError:(id)error
{
  errorCopy = error;
  identityCopy = identity;
  v7 = [[ICAgeVerificationState alloc] _initWithUserIdentity:identityCopy status:1 treatment:0 verificationURL:0 error:errorCopy];

  return v7;
}

+ (id)ageVerificationStateNotRequiredForUserIdentity:(id)identity
{
  identityCopy = identity;
  v4 = [objc_opt_class() ageVerificationStateNotRequiredForUserIdentity:identityCopy withTreatment:0];

  return v4;
}

@end