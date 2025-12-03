@interface STRestrictions
- (BOOL)isEqual:(id)equal;
- (STRestrictions)init;
- (STRestrictions)initWithCoder:(id)coder;
- (STRestrictions)new;
- (id)_initWithCopyOf:(id)of;
- (id)_initWithIsEnabled:(BOOL)enabled;
- (id)description;
- (id)restrictionsMutableCopy;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STRestrictions

- (STRestrictions)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[STRestrictions init]"];
  [currentHandler handleFailureInFunction:v4 file:@"STRestrictions.m" lineNumber:59 description:@"cannot directly allocate STRestrictions"];

  return 0;
}

- (STRestrictions)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[STRestrictions new]"];
  [currentHandler handleFailureInFunction:v3 file:@"STRestrictions.m" lineNumber:64 description:@"cannot directly allocate STRestrictions"];

  return 0;
}

- (id)_initWithIsEnabled:(BOOL)enabled
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    v6 = objc_opt_class();
    if (v6 != objc_opt_class())
    {
      [STRestrictions _initWithIsEnabled:];
    }
  }

  v12.receiver = self;
  v12.super_class = STRestrictions;
  v7 = [(STRestrictions *)&v12 init];
  v7->_isEnabled = enabled;
  *&v7->_allowInstallingApps = 0u;
  *&v7->_allowInAppPurchases = 0u;
  tvShowsRating = v7->_tvShowsRating;
  v7->_allowMusicProfiles = 0;
  v7->_tvShowsRating = 0;

  moviesRating = v7->_moviesRating;
  v7->_moviesRating = 0;

  appsRating = v7->_appsRating;
  v7->_appsRating = 0;

  v7->_allowImageCreation = 0;
  *&v7->_allowWebContentSearchInSiri = 0u;
  *&v7->_allowExternalIntelligenceIntegrations = 0u;
  *&v7->_webFilterState = 0u;
  *&v7->_allowAvatarAndNicknameChanges = 0u;
  *&v7->_allowExplicitBooks = 0u;
  return v7;
}

- (id)_initWithCopyOf:(id)of
{
  ofCopy = of;
  v5 = -[STRestrictions _initWithIsEnabled:](self, "_initWithIsEnabled:", [ofCopy isEnabled]);
  v5[2] = [ofCopy allowInstallingApps];
  v5[3] = [ofCopy allowDeletingApps];
  v5[4] = [ofCopy allowInAppPurchases];
  v5[5] = [ofCopy allowMusicVideos];
  v5[6] = [ofCopy allowMusicProfiles];
  tvShowsRating = [ofCopy tvShowsRating];
  v7 = [tvShowsRating copy];
  v8 = v5[7];
  v5[7] = v7;

  moviesRating = [ofCopy moviesRating];
  v10 = [moviesRating copy];
  v11 = v5[8];
  v5[8] = v10;

  appsRating = [ofCopy appsRating];
  v13 = [appsRating copy];
  v14 = v5[9];
  v5[9] = v13;

  v5[10] = [ofCopy allowExplicitBooks];
  v5[11] = [ofCopy allowExplicitMediaContent];
  v5[12] = [ofCopy webFilterState];
  v5[13] = [ofCopy allowPrivateMessaging];
  v5[14] = [ofCopy allowAvatarAndNicknameChanges];
  v5[15] = [ofCopy allowProfilePrivacyChanges];
  v5[16] = [ofCopy allowWebContentSearchInSiri];
  v5[17] = [ofCopy allowExplicitLanguageInSiri];
  v5[18] = [ofCopy allowExternalIntelligenceIntegrations];
  v5[19] = [ofCopy allowWritingTools];
  allowImageCreation = [ofCopy allowImageCreation];

  v5[20] = allowImageCreation;
  return v5;
}

- (STRestrictions)initWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = STRestrictions;
  coderCopy = coder;
  v4 = [(STRestrictions *)&v13 init];
  v4->_isEnabled = [coderCopy decodeIntegerForKey:{@"IsEnabled", v13.receiver, v13.super_class}] != 0;
  v4->_allowInstallingApps = [coderCopy decodeIntegerForKey:@"AllowInstallingApps"];
  v4->_allowDeletingApps = [coderCopy decodeIntegerForKey:@"AllowDeletingApps"];
  v4->_allowInAppPurchases = [coderCopy decodeIntegerForKey:@"AllowInAppPurchases"];
  v4->_allowMusicVideos = [coderCopy decodeIntegerForKey:@"AllowMusicVideos"];
  v4->_allowMusicProfiles = [coderCopy decodeIntegerForKey:@"AllowMusicProfiles"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TVShowsRating"];
  tvShowsRating = v4->_tvShowsRating;
  v4->_tvShowsRating = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MoviesRating"];
  moviesRating = v4->_moviesRating;
  v4->_moviesRating = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AppsRating"];
  appsRating = v4->_appsRating;
  v4->_appsRating = v9;

  v4->_allowExplicitBooks = [coderCopy decodeIntegerForKey:@"AllowExplicitBooks"];
  v4->_allowExplicitMediaContent = [coderCopy decodeIntegerForKey:@"AllowExplicitMediaContent"];
  v4->_webFilterState = [coderCopy decodeInt64ForKey:@"WebFilterState"];
  v4->_allowPrivateMessaging = [coderCopy decodeIntegerForKey:@"AllowPrivateMessaging"];
  v4->_allowAvatarAndNicknameChanges = [coderCopy decodeIntegerForKey:@"AllowAvatarAndNicknameChanges"];
  v4->_allowProfilePrivacyChanges = [coderCopy decodeIntegerForKey:@"AllowProfilePrivacyChanges"];
  v4->_allowWebContentSearchInSiri = [coderCopy decodeIntegerForKey:@"AllowWebContentSearchInSiri"];
  v4->_allowExplicitLanguageInSiri = [coderCopy decodeIntegerForKey:@"AllowExplicitLanguageInSiri"];
  v4->_allowExternalIntelligenceIntegrations = [coderCopy decodeIntegerForKey:@"AllowExternalIntelligenceIntegrations"];
  v4->_allowWritingTools = [coderCopy decodeIntegerForKey:@"AllowWritingTools"];
  v11 = [coderCopy decodeIntegerForKey:@"AllowImageCreation"];

  v4->_allowImageCreation = v11;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  isEnabled = self->_isEnabled;
  coderCopy = coder;
  [coderCopy encodeInteger:isEnabled forKey:@"IsEnabled"];
  [coderCopy encodeInteger:self->_allowInstallingApps forKey:@"AllowInstallingApps"];
  [coderCopy encodeInteger:self->_allowDeletingApps forKey:@"AllowDeletingApps"];
  [coderCopy encodeInteger:self->_allowInAppPurchases forKey:@"AllowInAppPurchases"];
  [coderCopy encodeInteger:self->_allowMusicVideos forKey:@"AllowMusicVideos"];
  [coderCopy encodeInteger:self->_allowMusicProfiles forKey:@"AllowMusicProfiles"];
  [coderCopy encodeObject:self->_tvShowsRating forKey:@"TVShowsRating"];
  [coderCopy encodeObject:self->_moviesRating forKey:@"MoviesRating"];
  [coderCopy encodeObject:self->_appsRating forKey:@"AppsRating"];
  [coderCopy encodeInteger:self->_allowExplicitBooks forKey:@"AllowExplicitBooks"];
  [coderCopy encodeInteger:self->_allowExplicitMediaContent forKey:@"AllowExplicitMediaContent"];
  [coderCopy encodeInt64:self->_webFilterState forKey:@"WebFilterState"];
  [coderCopy encodeInteger:self->_allowPrivateMessaging forKey:@"AllowPrivateMessaging"];
  [coderCopy encodeInteger:self->_allowAvatarAndNicknameChanges forKey:@"AllowAvatarAndNicknameChanges"];
  [coderCopy encodeInteger:self->_allowProfilePrivacyChanges forKey:@"AllowProfilePrivacyChanges"];
  [coderCopy encodeInteger:self->_allowWebContentSearchInSiri forKey:@"AllowWebContentSearchInSiri"];
  [coderCopy encodeInteger:self->_allowExplicitLanguageInSiri forKey:@"AllowExplicitLanguageInSiri"];
  [coderCopy encodeInteger:self->_allowExternalIntelligenceIntegrations forKey:@"AllowExternalIntelligenceIntegrations"];
  [coderCopy encodeInteger:self->_allowWritingTools forKey:@"AllowWritingTools"];
  [coderCopy encodeInteger:self->_allowImageCreation forKey:@"AllowImageCreation"];
}

- (id)restrictionsMutableCopy
{
  v2 = [(STRestrictions *)[STMutableRestrictions alloc] _initWithCopyOf:self];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = equalCopy;
      isEnabled = [(STRestrictions *)self isEnabled];
      if (isEnabled != [(STRestrictions *)v9 isEnabled]|| (v11 = [(STRestrictions *)self allowInstallingApps], v11 != [(STRestrictions *)v9 allowInstallingApps]) || (v12 = [(STRestrictions *)self allowDeletingApps], v12 != [(STRestrictions *)v9 allowDeletingApps]) || (v13 = [(STRestrictions *)self allowInAppPurchases], v13 != [(STRestrictions *)v9 allowInAppPurchases]) || (v14 = [(STRestrictions *)self allowMusicVideos], v14 != [(STRestrictions *)v9 allowMusicVideos]) || (v15 = [(STRestrictions *)self allowMusicProfiles], v15 != [(STRestrictions *)v9 allowMusicProfiles]))
      {
        v18 = 0;
LABEL_16:

        goto LABEL_17;
      }

      tvShowsRating = [(STRestrictions *)self tvShowsRating];
      if (tvShowsRating || ([(STRestrictions *)v9 tvShowsRating], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        tvShowsRating2 = [(STRestrictions *)self tvShowsRating];
        tvShowsRating3 = [(STRestrictions *)v9 tvShowsRating];
        if (![tvShowsRating2 isEqual:tvShowsRating3])
        {
          v18 = 0;
          goto LABEL_55;
        }

        v17 = 1;
      }

      else
      {
        v17 = 0;
      }

      moviesRating = [(STRestrictions *)self moviesRating];
      if (moviesRating || ([(STRestrictions *)v9 moviesRating], (v40 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        moviesRating2 = [(STRestrictions *)self moviesRating];
        moviesRating3 = [(STRestrictions *)v9 moviesRating];
        v45 = moviesRating2;
        if (![moviesRating2 isEqual:moviesRating3])
        {
          v18 = 0;
LABEL_49:

          goto LABEL_53;
        }

        v42 = 1;
        v43 = v17;
      }

      else
      {
        v42 = 0;
        v43 = v17;
        v40 = 0;
      }

      appsRating = [(STRestrictions *)self appsRating];
      if (appsRating || ([(STRestrictions *)v9 appsRating], (v36 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        appsRating2 = [(STRestrictions *)self appsRating];
        appsRating3 = [(STRestrictions *)v9 appsRating];
        v41 = appsRating2;
        v24 = appsRating2;
        moviesRating2 = appsRating3;
        if (![v24 isEqual:appsRating3])
        {
          v18 = 0;
          goto LABEL_45;
        }

        v39 = v6;
        v38 = 1;
      }

      else
      {
        v39 = v6;
        v37 = 0;
        v38 = 0;
      }

      allowExplicitBooks = [(STRestrictions *)self allowExplicitBooks];
      if (allowExplicitBooks != [(STRestrictions *)v9 allowExplicitBooks])
      {
        goto LABEL_44;
      }

      allowExplicitMediaContent = [(STRestrictions *)self allowExplicitMediaContent];
      if (allowExplicitMediaContent != [(STRestrictions *)v9 allowExplicitMediaContent])
      {
        goto LABEL_44;
      }

      webFilterState = [(STRestrictions *)self webFilterState];
      if (webFilterState != [(STRestrictions *)v9 webFilterState])
      {
        goto LABEL_44;
      }

      allowPrivateMessaging = [(STRestrictions *)self allowPrivateMessaging];
      if (allowPrivateMessaging == [(STRestrictions *)v9 allowPrivateMessaging]&& (v29 = [(STRestrictions *)self allowAvatarAndNicknameChanges], v29 == [(STRestrictions *)v9 allowAvatarAndNicknameChanges]) && (v30 = [(STRestrictions *)self allowProfilePrivacyChanges], v30 == [(STRestrictions *)v9 allowProfilePrivacyChanges]) && (v31 = [(STRestrictions *)self allowWebContentSearchInSiri], v31 == [(STRestrictions *)v9 allowWebContentSearchInSiri]) && (v32 = [(STRestrictions *)self allowExplicitLanguageInSiri], v32 == [(STRestrictions *)v9 allowExplicitLanguageInSiri]) && (v33 = [(STRestrictions *)self allowExternalIntelligenceIntegrations], v33 == [(STRestrictions *)v9 allowExternalIntelligenceIntegrations]) && (v34 = [(STRestrictions *)self allowWritingTools], v34 == [(STRestrictions *)v9 allowWritingTools]))
      {
        allowImageCreation = [(STRestrictions *)self allowImageCreation];
        v18 = allowImageCreation == [(STRestrictions *)v9 allowImageCreation];
        if ((v38 & 1) == 0)
        {
          v6 = v39;
          if (appsRating)
          {
LABEL_47:

            if (v42)
            {
LABEL_48:
              v17 = v43;
              goto LABEL_49;
            }

LABEL_52:
            v17 = v43;
LABEL_53:
            if (moviesRating)
            {

              if (!v17)
              {
LABEL_56:
                if (!tvShowsRating)
                {
                }

                goto LABEL_16;
              }
            }

            else
            {

              if ((v17 & 1) == 0)
              {
                goto LABEL_56;
              }
            }

LABEL_55:

            goto LABEL_56;
          }

LABEL_51:

          if (v42)
          {
            goto LABEL_48;
          }

          goto LABEL_52;
        }

        v6 = v39;
      }

      else
      {
LABEL_44:
        v18 = 0;
        v6 = v39;
        if (!v38)
        {
          goto LABEL_46;
        }
      }

LABEL_45:

LABEL_46:
      if (appsRating)
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    }

    v18 = 0;
  }

LABEL_17:

  return v18;
}

- (unint64_t)hash
{
  isEnabled = [(STRestrictions *)self isEnabled];
  v4 = isEnabled | (2 * [(STRestrictions *)self allowInstallingApps]);
  v5 = v4 ^ (4 * [(STRestrictions *)self allowDeletingApps]);
  v6 = v5 ^ (8 * [(STRestrictions *)self allowInAppPurchases]);
  v7 = v6 ^ (16 * [(STRestrictions *)self allowMusicVideos]);
  tvShowsRating = [(STRestrictions *)self tvShowsRating];
  v9 = v7 ^ (32 * [tvShowsRating hash]);

  appsRating = [(STRestrictions *)self appsRating];
  v11 = v9 ^ ([appsRating hash] << 6);

  v12 = v11 ^ ([(STRestrictions *)self allowExplicitBooks]<< 7);
  v13 = v12 ^ ([(STRestrictions *)self webFilterState]<< 8);
  v14 = v13 ^ ([(STRestrictions *)self allowPrivateMessaging]<< 10);
  v15 = v14 ^ ([(STRestrictions *)self allowAvatarAndNicknameChanges]<< 11);
  v16 = v15 ^ ([(STRestrictions *)self allowProfilePrivacyChanges]<< 12);
  v17 = v16 ^ ([(STRestrictions *)self allowWebContentSearchInSiri]<< 13);
  v18 = v17 ^ ([(STRestrictions *)self allowExternalIntelligenceIntegrations]<< 14);
  v19 = v18 ^ ([(STRestrictions *)self allowWritingTools]<< 15);
  moviesRating = [(STRestrictions *)self moviesRating];
  v21 = v19 ^ ([moviesRating hash] << 16);

  v22 = v21 ^ ([(STRestrictions *)self allowExplicitMediaContent]<< 17);
  v23 = v22 ^ ([(STRestrictions *)self allowMusicProfiles]<< 18);
  v24 = v23 ^ ([(STRestrictions *)self allowImageCreation]<< 19);
  return v24 ^ ([(STRestrictions *)self allowExplicitLanguageInSiri]<< 20);
}

- (id)description
{
  v16 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  isEnabled = [(STRestrictions *)self isEnabled];
  allowInstallingApps = [(STRestrictions *)self allowInstallingApps];
  allowDeletingApps = [(STRestrictions *)self allowDeletingApps];
  allowInAppPurchases = [(STRestrictions *)self allowInAppPurchases];
  allowMusicVideos = [(STRestrictions *)self allowMusicVideos];
  allowMusicProfiles = [(STRestrictions *)self allowMusicProfiles];
  tvShowsRating = [(STRestrictions *)self tvShowsRating];
  moviesRating = [(STRestrictions *)self moviesRating];
  appsRating = [(STRestrictions *)self appsRating];
  v5 = [v16 stringWithFormat:@"<%@: %p\nIsEnabled: %d\nAllowInstallingApps: %ld\nAllowDeletingApps: %ld, \nAllowInAppPurchases: %ld, \nAllowMusicVideos: %ld, \nAllowMusicProfiles: %ld, \nTVShowsRating: %@, \nMoviesRating: %@, \nAppsRating: %@, \nAllowExplicitBooks: %ld, \nAllowExplicitMediaContent: %ld, \nWebFilterState: %ld, \nAllowAvatarAndNicknameChanges: %ld>, \nAllowPrivateMessaging: %ld, \nAllowProfilePrivacyChanges: %ld, \nAllowWebContentSearchInSiri: %ld, \nAllowExplicitLanguageInSiri: %ld, \nAllowExternalIntelligenceIntegrations: %ld, \nAllowWritingTools: %ld, \nAllowImageCreation: %ld>\n", v15, self, isEnabled, allowInstallingApps, allowDeletingApps, allowInAppPurchases, allowMusicVideos, allowMusicProfiles, tvShowsRating, moviesRating, appsRating, -[STRestrictions allowExplicitBooks](self, "allowExplicitBooks"), -[STRestrictions allowExplicitMediaContent](self, "allowExplicitMediaContent"), -[STRestrictions webFilterState](self, "webFilterState"), -[STRestrictions allowAvatarAndNicknameChanges](self, "allowAvatarAndNicknameChanges"), -[STRestrictions allowPrivateMessaging](self, "allowPrivateMessaging"), -[STRestrictions allowProfilePrivacyChanges](self, "allowProfilePrivacyChanges"), -[STRestrictions allowWebContentSearchInSiri](self, "allowWebContentSearchInSiri"), -[STRestrictions allowExplicitLanguageInSiri](self, "allowExplicitLanguageInSiri"), -[STRestrictions allowExternalIntelligenceIntegrations](self, "allowExternalIntelligenceIntegrations"), -[STRestrictions allowWritingTools](self, "allowWritingTools"), -[STRestrictions allowImageCreation](self, "allowImageCreation")];

  return v5;
}

- (void)_initWithIsEnabled:.cold.1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[STRestrictions _initWithIsEnabled:]"];
  [v1 handleFailureInFunction:v0 file:@"STRestrictions.m" lineNumber:69 description:@"STRestrictions can not be subclassed"];
}

@end