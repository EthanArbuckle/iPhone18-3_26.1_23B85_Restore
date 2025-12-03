@interface ICMusicUserState
+ (int64_t)groupSessionCapableStatus;
- (BOOL)isEqual:(id)equal;
- (ICMusicUserState)initWithBlock:(id)block;
- (ICMusicUserState)initWithCoder:(id)coder;
- (NSString)description;
- (id)copyWithBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
- (void)setCarrierBundleDeviceID:(id)d;
- (void)setCloudLibrarySyncStatus:(int64_t)status;
- (void)setCookies:(id)cookies;
- (void)setLibraryAuthTokenStatus:(id)status;
- (void)setLightweightSubscriptionStatus:(id)status;
- (void)setSubscriptionStatus:(id)status;
- (void)setUserProfile:(id)profile;
- (void)setUsesListeningHistory:(BOOL)history;
@end

@implementation ICMusicUserState

+ (int64_t)groupSessionCapableStatus
{
  v2 = +[ICDefaults standardDefaults];
  cachedSharedControlsCapability = [v2 cachedSharedControlsCapability];

  if (cachedSharedControlsCapability)
  {
    integerValue = [cachedSharedControlsCapability integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

- (NSString)description
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  carrierBundleDeviceID = [(ICMusicUserState *)self carrierBundleDeviceID];
  v5 = carrierBundleDeviceID;
  if (carrierBundleDeviceID)
  {
    v6 = carrierBundleDeviceID;
  }

  else
  {
    v6 = @"nil";
  }

  [dictionary setObject:v6 forKeyedSubscript:@"carrierBundleDeviceID"];

  libraryAuthTokenStatus = [(ICMusicUserState *)self libraryAuthTokenStatus];
  v8 = libraryAuthTokenStatus;
  if (libraryAuthTokenStatus)
  {
    v9 = libraryAuthTokenStatus;
  }

  else
  {
    v9 = @"nil";
  }

  [dictionary setObject:v9 forKeyedSubscript:@"libraryAuthTokenStatus"];

  subscriptionStatus = [(ICMusicUserState *)self subscriptionStatus];
  v11 = subscriptionStatus;
  if (subscriptionStatus)
  {
    v12 = subscriptionStatus;
  }

  else
  {
    v12 = @"nil";
  }

  [dictionary setObject:v12 forKeyedSubscript:@"subscriptionStatus"];

  lightweightSubscriptionStatus = [(ICMusicUserState *)self lightweightSubscriptionStatus];
  v14 = lightweightSubscriptionStatus;
  if (lightweightSubscriptionStatus)
  {
    v15 = lightweightSubscriptionStatus;
  }

  else
  {
    v15 = @"nil";
  }

  [dictionary setObject:v15 forKeyedSubscript:@"lightweightSubscriptionStatus"];

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ICMusicUserState cloudLibrarySyncStatus](self, "cloudLibrarySyncStatus")}];
  [dictionary setObject:v16 forKeyedSubscript:@"cloudLibrarySyncStatus"];

  if ([(ICMusicUserState *)self usesListeningHistory])
  {
    v17 = MEMORY[0x1E695E118];
  }

  else
  {
    v17 = MEMORY[0x1E695E110];
  }

  [dictionary setObject:v17 forKeyedSubscript:@"usesListeningHistory"];
  userProfile = [(ICMusicUserState *)self userProfile];
  v19 = userProfile;
  if (userProfile)
  {
    v20 = userProfile;
  }

  else
  {
    v20 = @"nil";
  }

  [dictionary setObject:v20 forKeyedSubscript:@"userProfile"];

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p [%@]>", objc_opt_class(), self, dictionary];

  return v21;
}

- (void)setUserProfile:(id)profile
{
  profileCopy = profile;
  if (self->_frozen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicUserState.m" lineNumber:180 description:@"Attempt to mutate after being initialized."];
  }

  userProfile = self->_userProfile;
  self->_userProfile = profileCopy;
}

- (void)setLightweightSubscriptionStatus:(id)status
{
  statusCopy = status;
  if (self->_frozen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicUserState.m" lineNumber:175 description:@"Attempt to mutate after being initialized."];
  }

  lightweightSubscriptionStatus = self->_lightweightSubscriptionStatus;
  self->_lightweightSubscriptionStatus = statusCopy;
}

- (void)setCookies:(id)cookies
{
  cookiesCopy = cookies;
  if (self->_frozen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicUserState.m" lineNumber:170 description:@"Attempt to mutate after being initialized."];
  }

  cookies = self->_cookies;
  self->_cookies = cookiesCopy;
}

- (void)setUsesListeningHistory:(BOOL)history
{
  if (self->_frozen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicUserState.m" lineNumber:165 description:@"Attempt to mutate after being initialized."];
  }

  self->_usesListeningHistory = history;
}

- (void)setCloudLibrarySyncStatus:(int64_t)status
{
  if (self->_frozen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicUserState.m" lineNumber:160 description:@"Attempt to mutate after being initialized."];
  }

  self->_cloudLibrarySyncStatus = status;
}

- (void)setSubscriptionStatus:(id)status
{
  statusCopy = status;
  v9 = statusCopy;
  if (self->_frozen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicUserState.m" lineNumber:155 description:@"Attempt to mutate after being initialized."];

    statusCopy = v9;
  }

  v6 = [statusCopy copy];
  subscriptionStatus = self->_subscriptionStatus;
  self->_subscriptionStatus = v6;
}

- (void)setLibraryAuthTokenStatus:(id)status
{
  statusCopy = status;
  v9 = statusCopy;
  if (self->_frozen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicUserState.m" lineNumber:150 description:@"Attempt to mutate after being initialized."];

    statusCopy = v9;
  }

  v6 = [statusCopy copy];
  libraryAuthTokenStatus = self->_libraryAuthTokenStatus;
  self->_libraryAuthTokenStatus = v6;
}

- (void)setCarrierBundleDeviceID:(id)d
{
  dCopy = d;
  v9 = dCopy;
  if (self->_frozen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicUserState.m" lineNumber:145 description:@"Attempt to mutate after being initialized."];

    dCopy = v9;
  }

  v6 = [dCopy copy];
  carrierBundleDeviceID = self->_carrierBundleDeviceID;
  self->_carrierBundleDeviceID = v6;
}

- (ICMusicUserState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = ICMusicUserState;
  v5 = [(ICMusicUserState *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"carrierBundleDeviceID"];
    carrierBundleDeviceID = v5->_carrierBundleDeviceID;
    v5->_carrierBundleDeviceID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryAuthTokenStatus"];
    libraryAuthTokenStatus = v5->_libraryAuthTokenStatus;
    v5->_libraryAuthTokenStatus = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionStatus"];
    subscriptionStatus = v5->_subscriptionStatus;
    v5->_subscriptionStatus = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lightweightSubscriptionStatus"];
    lightweightSubscriptionStatus = v5->_lightweightSubscriptionStatus;
    v5->_lightweightSubscriptionStatus = v12;

    v5->_cloudLibrarySyncStatus = [coderCopy decodeIntegerForKey:@"cloudLibrarySyncStatus"];
    v5->_usesListeningHistory = [coderCopy decodeBoolForKey:@"usesListeningHistory"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cookies"];
    cookies = v5->_cookies;
    v5->_cookies = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userProfile"];
    userProfile = v5->_userProfile;
    v5->_userProfile = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  carrierBundleDeviceID = self->_carrierBundleDeviceID;
  coderCopy = coder;
  [coderCopy encodeObject:carrierBundleDeviceID forKey:@"carrierBundleDeviceID"];
  [coderCopy encodeObject:self->_libraryAuthTokenStatus forKey:@"libraryAuthTokenStatus"];
  [coderCopy encodeObject:self->_subscriptionStatus forKey:@"subscriptionStatus"];
  [coderCopy encodeObject:self->_lightweightSubscriptionStatus forKey:@"lightweightSubscriptionStatus"];
  [coderCopy encodeInteger:self->_cloudLibrarySyncStatus forKey:@"cloudLibrarySyncStatus"];
  [coderCopy encodeBool:self->_usesListeningHistory forKey:@"usesListeningHistory"];
  [coderCopy encodeObject:self->_cookies forKey:@"cookies"];
  [coderCopy encodeObject:self->_userProfile forKey:@"userProfile"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v24) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      carrierBundleDeviceID = [(ICMusicUserState *)self carrierBundleDeviceID];
      carrierBundleDeviceID2 = [(ICMusicUserState *)v5 carrierBundleDeviceID];
      if (carrierBundleDeviceID == carrierBundleDeviceID2 || [carrierBundleDeviceID isEqual:carrierBundleDeviceID2])
      {
        libraryAuthTokenStatus = [(ICMusicUserState *)self libraryAuthTokenStatus];
        token = [libraryAuthTokenStatus token];
        v41Token = [token token];
        libraryAuthTokenStatus2 = [(ICMusicUserState *)v5 libraryAuthTokenStatus];
        token2 = [libraryAuthTokenStatus2 token];
        v11Token = [token2 token];
        if (v41Token == v11Token || [v41Token isEqual:v11Token])
        {
          v39 = libraryAuthTokenStatus2;
          v40 = libraryAuthTokenStatus;
          subscriptionStatus = [(ICMusicUserState *)self subscriptionStatus];
          subscriptionStatus2 = [(ICMusicUserState *)v5 subscriptionStatus];
          if (subscriptionStatus == subscriptionStatus2 || [subscriptionStatus isEqual:subscriptionStatus2])
          {
            v37 = token2;
            v38 = subscriptionStatus2;
            lightweightSubscriptionStatus = [(ICMusicUserState *)self lightweightSubscriptionStatus];
            lightweightSubscriptionStatus2 = [(ICMusicUserState *)v5 lightweightSubscriptionStatus];
            if (lightweightSubscriptionStatus == lightweightSubscriptionStatus2 || [lightweightSubscriptionStatus isEqual:lightweightSubscriptionStatus2])
            {
              v33 = v41Token;
              v36 = lightweightSubscriptionStatus2;
              cookies = [(ICMusicUserState *)self cookies];
              xpab = [cookies xpab];
              cookies2 = [(ICMusicUserState *)v5 cookies];
              xpab2 = [cookies2 xpab];
              v32 = xpab;
              if (xpab == xpab2 || [xpab isEqual:xpab2])
              {
                v28 = v11Token;
                v31 = xpab2;
                cookies3 = [(ICMusicUserState *)self cookies];
                itfe = [cookies3 itfe];
                cookies4 = [(ICMusicUserState *)v5 cookies];
                itfe2 = [cookies4 itfe];
                if (itfe == itfe2 || [itfe isEqual:itfe2])
                {
                  v27 = itfe2;
                  userProfile = [(ICMusicUserState *)self userProfile];
                  userProfile2 = [(ICMusicUserState *)v5 userProfile];
                  if ((userProfile == userProfile2 || [userProfile isEqual:userProfile2]) && (v26 = -[ICMusicUserState cloudLibrarySyncStatus](self, "cloudLibrarySyncStatus"), v26 == -[ICMusicUserState cloudLibrarySyncStatus](v5, "cloudLibrarySyncStatus")))
                  {
                    usesListeningHistory = [(ICMusicUserState *)self usesListeningHistory];
                    v24 = usesListeningHistory ^ [(ICMusicUserState *)v5 usesListeningHistory]^ 1;
                  }

                  else
                  {
                    LOBYTE(v24) = 0;
                  }

                  itfe2 = v27;
                }

                else
                {
                  LOBYTE(v24) = 0;
                }

                xpab2 = v31;
                v11Token = v28;
              }

              else
              {
                LOBYTE(v24) = 0;
              }

              lightweightSubscriptionStatus2 = v36;
              v41Token = v33;
            }

            else
            {
              LOBYTE(v24) = 0;
            }

            token2 = v37;
            subscriptionStatus2 = v38;
          }

          else
          {
            LOBYTE(v24) = 0;
          }

          libraryAuthTokenStatus = v40;
          libraryAuthTokenStatus2 = v39;
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

- (id)copyWithBlock:(id)block
{
  blockCopy = block;
  v5 = [ICMusicUserState alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__ICMusicUserState_copyWithBlock___block_invoke;
  v9[3] = &unk_1E7BF67B8;
  v9[4] = self;
  v10 = blockCopy;
  v6 = blockCopy;
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

- (ICMusicUserState)initWithBlock:(id)block
{
  blockCopy = block;
  v7.receiver = self;
  v7.super_class = ICMusicUserState;
  v5 = [(ICMusicUserState *)&v7 init];
  if (v5)
  {
    blockCopy[2](blockCopy, v5);
    v5->_frozen = 1;
  }

  return v5;
}

@end