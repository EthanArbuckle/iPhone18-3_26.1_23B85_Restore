@interface ICMusicUserState
+ (int64_t)groupSessionCapableStatus;
- (BOOL)isEqual:(id)a3;
- (ICMusicUserState)initWithBlock:(id)a3;
- (ICMusicUserState)initWithCoder:(id)a3;
- (NSString)description;
- (id)copyWithBlock:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCarrierBundleDeviceID:(id)a3;
- (void)setCloudLibrarySyncStatus:(int64_t)a3;
- (void)setCookies:(id)a3;
- (void)setLibraryAuthTokenStatus:(id)a3;
- (void)setLightweightSubscriptionStatus:(id)a3;
- (void)setSubscriptionStatus:(id)a3;
- (void)setUserProfile:(id)a3;
- (void)setUsesListeningHistory:(BOOL)a3;
@end

@implementation ICMusicUserState

+ (int64_t)groupSessionCapableStatus
{
  v2 = +[ICDefaults standardDefaults];
  v3 = [v2 cachedSharedControlsCapability];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(ICMusicUserState *)self carrierBundleDeviceID];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"nil";
  }

  [v3 setObject:v6 forKeyedSubscript:@"carrierBundleDeviceID"];

  v7 = [(ICMusicUserState *)self libraryAuthTokenStatus];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"nil";
  }

  [v3 setObject:v9 forKeyedSubscript:@"libraryAuthTokenStatus"];

  v10 = [(ICMusicUserState *)self subscriptionStatus];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"nil";
  }

  [v3 setObject:v12 forKeyedSubscript:@"subscriptionStatus"];

  v13 = [(ICMusicUserState *)self lightweightSubscriptionStatus];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"nil";
  }

  [v3 setObject:v15 forKeyedSubscript:@"lightweightSubscriptionStatus"];

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ICMusicUserState cloudLibrarySyncStatus](self, "cloudLibrarySyncStatus")}];
  [v3 setObject:v16 forKeyedSubscript:@"cloudLibrarySyncStatus"];

  if ([(ICMusicUserState *)self usesListeningHistory])
  {
    v17 = MEMORY[0x1E695E118];
  }

  else
  {
    v17 = MEMORY[0x1E695E110];
  }

  [v3 setObject:v17 forKeyedSubscript:@"usesListeningHistory"];
  v18 = [(ICMusicUserState *)self userProfile];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = @"nil";
  }

  [v3 setObject:v20 forKeyedSubscript:@"userProfile"];

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p [%@]>", objc_opt_class(), self, v3];

  return v21;
}

- (void)setUserProfile:(id)a3
{
  v5 = a3;
  if (self->_frozen)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"ICMusicUserState.m" lineNumber:180 description:@"Attempt to mutate after being initialized."];
  }

  userProfile = self->_userProfile;
  self->_userProfile = v5;
}

- (void)setLightweightSubscriptionStatus:(id)a3
{
  v5 = a3;
  if (self->_frozen)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"ICMusicUserState.m" lineNumber:175 description:@"Attempt to mutate after being initialized."];
  }

  lightweightSubscriptionStatus = self->_lightweightSubscriptionStatus;
  self->_lightweightSubscriptionStatus = v5;
}

- (void)setCookies:(id)a3
{
  v5 = a3;
  if (self->_frozen)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"ICMusicUserState.m" lineNumber:170 description:@"Attempt to mutate after being initialized."];
  }

  cookies = self->_cookies;
  self->_cookies = v5;
}

- (void)setUsesListeningHistory:(BOOL)a3
{
  if (self->_frozen)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"ICMusicUserState.m" lineNumber:165 description:@"Attempt to mutate after being initialized."];
  }

  self->_usesListeningHistory = a3;
}

- (void)setCloudLibrarySyncStatus:(int64_t)a3
{
  if (self->_frozen)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"ICMusicUserState.m" lineNumber:160 description:@"Attempt to mutate after being initialized."];
  }

  self->_cloudLibrarySyncStatus = a3;
}

- (void)setSubscriptionStatus:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMusicUserState.m" lineNumber:155 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  subscriptionStatus = self->_subscriptionStatus;
  self->_subscriptionStatus = v6;
}

- (void)setLibraryAuthTokenStatus:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMusicUserState.m" lineNumber:150 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  libraryAuthTokenStatus = self->_libraryAuthTokenStatus;
  self->_libraryAuthTokenStatus = v6;
}

- (void)setCarrierBundleDeviceID:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMusicUserState.m" lineNumber:145 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  carrierBundleDeviceID = self->_carrierBundleDeviceID;
  self->_carrierBundleDeviceID = v6;
}

- (ICMusicUserState)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ICMusicUserState;
  v5 = [(ICMusicUserState *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"carrierBundleDeviceID"];
    carrierBundleDeviceID = v5->_carrierBundleDeviceID;
    v5->_carrierBundleDeviceID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"libraryAuthTokenStatus"];
    libraryAuthTokenStatus = v5->_libraryAuthTokenStatus;
    v5->_libraryAuthTokenStatus = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionStatus"];
    subscriptionStatus = v5->_subscriptionStatus;
    v5->_subscriptionStatus = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lightweightSubscriptionStatus"];
    lightweightSubscriptionStatus = v5->_lightweightSubscriptionStatus;
    v5->_lightweightSubscriptionStatus = v12;

    v5->_cloudLibrarySyncStatus = [v4 decodeIntegerForKey:@"cloudLibrarySyncStatus"];
    v5->_usesListeningHistory = [v4 decodeBoolForKey:@"usesListeningHistory"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cookies"];
    cookies = v5->_cookies;
    v5->_cookies = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userProfile"];
    userProfile = v5->_userProfile;
    v5->_userProfile = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  carrierBundleDeviceID = self->_carrierBundleDeviceID;
  v5 = a3;
  [v5 encodeObject:carrierBundleDeviceID forKey:@"carrierBundleDeviceID"];
  [v5 encodeObject:self->_libraryAuthTokenStatus forKey:@"libraryAuthTokenStatus"];
  [v5 encodeObject:self->_subscriptionStatus forKey:@"subscriptionStatus"];
  [v5 encodeObject:self->_lightweightSubscriptionStatus forKey:@"lightweightSubscriptionStatus"];
  [v5 encodeInteger:self->_cloudLibrarySyncStatus forKey:@"cloudLibrarySyncStatus"];
  [v5 encodeBool:self->_usesListeningHistory forKey:@"usesListeningHistory"];
  [v5 encodeObject:self->_cookies forKey:@"cookies"];
  [v5 encodeObject:self->_userProfile forKey:@"userProfile"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v24) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ICMusicUserState *)self carrierBundleDeviceID];
      v7 = [(ICMusicUserState *)v5 carrierBundleDeviceID];
      if (v6 == v7 || [v6 isEqual:v7])
      {
        v8 = [(ICMusicUserState *)self libraryAuthTokenStatus];
        v41 = [v8 token];
        v9 = [v41 token];
        v10 = [(ICMusicUserState *)v5 libraryAuthTokenStatus];
        v11 = [v10 token];
        v12 = [v11 token];
        if (v9 == v12 || [v9 isEqual:v12])
        {
          v39 = v10;
          v40 = v8;
          v13 = [(ICMusicUserState *)self subscriptionStatus];
          v14 = [(ICMusicUserState *)v5 subscriptionStatus];
          if (v13 == v14 || [v13 isEqual:v14])
          {
            v37 = v11;
            v38 = v14;
            v15 = [(ICMusicUserState *)self lightweightSubscriptionStatus];
            v16 = [(ICMusicUserState *)v5 lightweightSubscriptionStatus];
            if (v15 == v16 || [v15 isEqual:v16])
            {
              v33 = v9;
              v36 = v16;
              v35 = [(ICMusicUserState *)self cookies];
              v17 = [v35 xpab];
              v34 = [(ICMusicUserState *)v5 cookies];
              v18 = [v34 xpab];
              v32 = v17;
              if (v17 == v18 || [v17 isEqual:v18])
              {
                v28 = v12;
                v31 = v18;
                v30 = [(ICMusicUserState *)self cookies];
                v19 = [v30 itfe];
                v29 = [(ICMusicUserState *)v5 cookies];
                v20 = [v29 itfe];
                if (v19 == v20 || [v19 isEqual:v20])
                {
                  v27 = v20;
                  v21 = [(ICMusicUserState *)self userProfile];
                  v22 = [(ICMusicUserState *)v5 userProfile];
                  if ((v21 == v22 || [v21 isEqual:v22]) && (v26 = -[ICMusicUserState cloudLibrarySyncStatus](self, "cloudLibrarySyncStatus"), v26 == -[ICMusicUserState cloudLibrarySyncStatus](v5, "cloudLibrarySyncStatus")))
                  {
                    v23 = [(ICMusicUserState *)self usesListeningHistory];
                    v24 = v23 ^ [(ICMusicUserState *)v5 usesListeningHistory]^ 1;
                  }

                  else
                  {
                    LOBYTE(v24) = 0;
                  }

                  v20 = v27;
                }

                else
                {
                  LOBYTE(v24) = 0;
                }

                v18 = v31;
                v12 = v28;
              }

              else
              {
                LOBYTE(v24) = 0;
              }

              v16 = v36;
              v9 = v33;
            }

            else
            {
              LOBYTE(v24) = 0;
            }

            v11 = v37;
            v14 = v38;
          }

          else
          {
            LOBYTE(v24) = 0;
          }

          v8 = v40;
          v10 = v39;
        }

        else
        {
          LOBYTE(v24) = 0;
        }
      }

      else
      {
        LOBYTE(v24) = 0;
      }
    }

    else
    {
      LOBYTE(v24) = 0;
    }
  }

  return v24;
}

- (id)copyWithBlock:(id)a3
{
  v4 = a3;
  v5 = [ICMusicUserState alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__ICMusicUserState_copyWithBlock___block_invoke;
  v9[3] = &unk_1E7BF67B8;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [(ICMusicUserState *)v5 initWithBlock:v9];

  return v7;
}

void __34__ICMusicUserState_copyWithBlock___block_invoke(uint64_t a1, id *a2)
{
  objc_storeStrong(a2 + 3, *(*(a1 + 32) + 24));
  v4 = a2;
  objc_storeStrong(v4 + 4, *(*(a1 + 32) + 32));
  objc_storeStrong(v4 + 5, *(*(a1 + 32) + 40));
  objc_storeStrong(v4 + 6, *(*(a1 + 32) + 48));
  v4[7] = *(*(a1 + 32) + 56);
  *(v4 + 9) = *(*(a1 + 32) + 9);
  objc_storeStrong(v4 + 8, *(*(a1 + 32) + 64));
  objc_storeStrong(v4 + 9, *(*(a1 + 32) + 72));
  (*(*(a1 + 40) + 16))();
}

- (ICMusicUserState)initWithBlock:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ICMusicUserState;
  v5 = [(ICMusicUserState *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
    v5->_frozen = 1;
  }

  return v5;
}

@end