@interface STRestrictions
- (BOOL)isEqual:(id)a3;
- (STRestrictions)init;
- (STRestrictions)initWithCoder:(id)a3;
- (STRestrictions)new;
- (id)_initWithCopyOf:(id)a3;
- (id)_initWithIsEnabled:(BOOL)a3;
- (id)description;
- (id)restrictionsMutableCopy;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STRestrictions

- (STRestrictions)init
{
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[STRestrictions init]"];
  [v3 handleFailureInFunction:v4 file:@"STRestrictions.m" lineNumber:59 description:@"cannot directly allocate STRestrictions"];

  return 0;
}

- (STRestrictions)new
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[STRestrictions new]"];
  [v2 handleFailureInFunction:v3 file:@"STRestrictions.m" lineNumber:64 description:@"cannot directly allocate STRestrictions"];

  return 0;
}

- (id)_initWithIsEnabled:(BOOL)a3
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
  v7->_isEnabled = a3;
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

- (id)_initWithCopyOf:(id)a3
{
  v4 = a3;
  v5 = -[STRestrictions _initWithIsEnabled:](self, "_initWithIsEnabled:", [v4 isEnabled]);
  v5[2] = [v4 allowInstallingApps];
  v5[3] = [v4 allowDeletingApps];
  v5[4] = [v4 allowInAppPurchases];
  v5[5] = [v4 allowMusicVideos];
  v5[6] = [v4 allowMusicProfiles];
  v6 = [v4 tvShowsRating];
  v7 = [v6 copy];
  v8 = v5[7];
  v5[7] = v7;

  v9 = [v4 moviesRating];
  v10 = [v9 copy];
  v11 = v5[8];
  v5[8] = v10;

  v12 = [v4 appsRating];
  v13 = [v12 copy];
  v14 = v5[9];
  v5[9] = v13;

  v5[10] = [v4 allowExplicitBooks];
  v5[11] = [v4 allowExplicitMediaContent];
  v5[12] = [v4 webFilterState];
  v5[13] = [v4 allowPrivateMessaging];
  v5[14] = [v4 allowAvatarAndNicknameChanges];
  v5[15] = [v4 allowProfilePrivacyChanges];
  v5[16] = [v4 allowWebContentSearchInSiri];
  v5[17] = [v4 allowExplicitLanguageInSiri];
  v5[18] = [v4 allowExternalIntelligenceIntegrations];
  v5[19] = [v4 allowWritingTools];
  v15 = [v4 allowImageCreation];

  v5[20] = v15;
  return v5;
}

- (STRestrictions)initWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = STRestrictions;
  v3 = a3;
  v4 = [(STRestrictions *)&v13 init];
  v4->_isEnabled = [v3 decodeIntegerForKey:{@"IsEnabled", v13.receiver, v13.super_class}] != 0;
  v4->_allowInstallingApps = [v3 decodeIntegerForKey:@"AllowInstallingApps"];
  v4->_allowDeletingApps = [v3 decodeIntegerForKey:@"AllowDeletingApps"];
  v4->_allowInAppPurchases = [v3 decodeIntegerForKey:@"AllowInAppPurchases"];
  v4->_allowMusicVideos = [v3 decodeIntegerForKey:@"AllowMusicVideos"];
  v4->_allowMusicProfiles = [v3 decodeIntegerForKey:@"AllowMusicProfiles"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"TVShowsRating"];
  tvShowsRating = v4->_tvShowsRating;
  v4->_tvShowsRating = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"MoviesRating"];
  moviesRating = v4->_moviesRating;
  v4->_moviesRating = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AppsRating"];
  appsRating = v4->_appsRating;
  v4->_appsRating = v9;

  v4->_allowExplicitBooks = [v3 decodeIntegerForKey:@"AllowExplicitBooks"];
  v4->_allowExplicitMediaContent = [v3 decodeIntegerForKey:@"AllowExplicitMediaContent"];
  v4->_webFilterState = [v3 decodeInt64ForKey:@"WebFilterState"];
  v4->_allowPrivateMessaging = [v3 decodeIntegerForKey:@"AllowPrivateMessaging"];
  v4->_allowAvatarAndNicknameChanges = [v3 decodeIntegerForKey:@"AllowAvatarAndNicknameChanges"];
  v4->_allowProfilePrivacyChanges = [v3 decodeIntegerForKey:@"AllowProfilePrivacyChanges"];
  v4->_allowWebContentSearchInSiri = [v3 decodeIntegerForKey:@"AllowWebContentSearchInSiri"];
  v4->_allowExplicitLanguageInSiri = [v3 decodeIntegerForKey:@"AllowExplicitLanguageInSiri"];
  v4->_allowExternalIntelligenceIntegrations = [v3 decodeIntegerForKey:@"AllowExternalIntelligenceIntegrations"];
  v4->_allowWritingTools = [v3 decodeIntegerForKey:@"AllowWritingTools"];
  v11 = [v3 decodeIntegerForKey:@"AllowImageCreation"];

  v4->_allowImageCreation = v11;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  isEnabled = self->_isEnabled;
  v5 = a3;
  [v5 encodeInteger:isEnabled forKey:@"IsEnabled"];
  [v5 encodeInteger:self->_allowInstallingApps forKey:@"AllowInstallingApps"];
  [v5 encodeInteger:self->_allowDeletingApps forKey:@"AllowDeletingApps"];
  [v5 encodeInteger:self->_allowInAppPurchases forKey:@"AllowInAppPurchases"];
  [v5 encodeInteger:self->_allowMusicVideos forKey:@"AllowMusicVideos"];
  [v5 encodeInteger:self->_allowMusicProfiles forKey:@"AllowMusicProfiles"];
  [v5 encodeObject:self->_tvShowsRating forKey:@"TVShowsRating"];
  [v5 encodeObject:self->_moviesRating forKey:@"MoviesRating"];
  [v5 encodeObject:self->_appsRating forKey:@"AppsRating"];
  [v5 encodeInteger:self->_allowExplicitBooks forKey:@"AllowExplicitBooks"];
  [v5 encodeInteger:self->_allowExplicitMediaContent forKey:@"AllowExplicitMediaContent"];
  [v5 encodeInt64:self->_webFilterState forKey:@"WebFilterState"];
  [v5 encodeInteger:self->_allowPrivateMessaging forKey:@"AllowPrivateMessaging"];
  [v5 encodeInteger:self->_allowAvatarAndNicknameChanges forKey:@"AllowAvatarAndNicknameChanges"];
  [v5 encodeInteger:self->_allowProfilePrivacyChanges forKey:@"AllowProfilePrivacyChanges"];
  [v5 encodeInteger:self->_allowWebContentSearchInSiri forKey:@"AllowWebContentSearchInSiri"];
  [v5 encodeInteger:self->_allowExplicitLanguageInSiri forKey:@"AllowExplicitLanguageInSiri"];
  [v5 encodeInteger:self->_allowExternalIntelligenceIntegrations forKey:@"AllowExternalIntelligenceIntegrations"];
  [v5 encodeInteger:self->_allowWritingTools forKey:@"AllowWritingTools"];
  [v5 encodeInteger:self->_allowImageCreation forKey:@"AllowImageCreation"];
}

- (id)restrictionsMutableCopy
{
  v2 = [(STRestrictions *)[STMutableRestrictions alloc] _initWithCopyOf:self];

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = [(STRestrictions *)self isEnabled];
      if (v10 != [(STRestrictions *)v9 isEnabled]|| (v11 = [(STRestrictions *)self allowInstallingApps], v11 != [(STRestrictions *)v9 allowInstallingApps]) || (v12 = [(STRestrictions *)self allowDeletingApps], v12 != [(STRestrictions *)v9 allowDeletingApps]) || (v13 = [(STRestrictions *)self allowInAppPurchases], v13 != [(STRestrictions *)v9 allowInAppPurchases]) || (v14 = [(STRestrictions *)self allowMusicVideos], v14 != [(STRestrictions *)v9 allowMusicVideos]) || (v15 = [(STRestrictions *)self allowMusicProfiles], v15 != [(STRestrictions *)v9 allowMusicProfiles]))
      {
        v18 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v16 = [(STRestrictions *)self tvShowsRating];
      if (v16 || ([(STRestrictions *)v9 tvShowsRating], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v3 = [(STRestrictions *)self tvShowsRating];
        v4 = [(STRestrictions *)v9 tvShowsRating];
        if (![v3 isEqual:v4])
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

      v20 = [(STRestrictions *)self moviesRating];
      if (v20 || ([(STRestrictions *)v9 moviesRating], (v40 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v5 = [(STRestrictions *)self moviesRating];
        v44 = [(STRestrictions *)v9 moviesRating];
        v45 = v5;
        if (![v5 isEqual:v44])
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

      v21 = [(STRestrictions *)self appsRating];
      if (v21 || ([(STRestrictions *)v9 appsRating], (v36 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v22 = [(STRestrictions *)self appsRating];
        v23 = [(STRestrictions *)v9 appsRating];
        v41 = v22;
        v24 = v22;
        v5 = v23;
        if (![v24 isEqual:v23])
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

      v25 = [(STRestrictions *)self allowExplicitBooks];
      if (v25 != [(STRestrictions *)v9 allowExplicitBooks])
      {
        goto LABEL_44;
      }

      v26 = [(STRestrictions *)self allowExplicitMediaContent];
      if (v26 != [(STRestrictions *)v9 allowExplicitMediaContent])
      {
        goto LABEL_44;
      }

      v27 = [(STRestrictions *)self webFilterState];
      if (v27 != [(STRestrictions *)v9 webFilterState])
      {
        goto LABEL_44;
      }

      v28 = [(STRestrictions *)self allowPrivateMessaging];
      if (v28 == [(STRestrictions *)v9 allowPrivateMessaging]&& (v29 = [(STRestrictions *)self allowAvatarAndNicknameChanges], v29 == [(STRestrictions *)v9 allowAvatarAndNicknameChanges]) && (v30 = [(STRestrictions *)self allowProfilePrivacyChanges], v30 == [(STRestrictions *)v9 allowProfilePrivacyChanges]) && (v31 = [(STRestrictions *)self allowWebContentSearchInSiri], v31 == [(STRestrictions *)v9 allowWebContentSearchInSiri]) && (v32 = [(STRestrictions *)self allowExplicitLanguageInSiri], v32 == [(STRestrictions *)v9 allowExplicitLanguageInSiri]) && (v33 = [(STRestrictions *)self allowExternalIntelligenceIntegrations], v33 == [(STRestrictions *)v9 allowExternalIntelligenceIntegrations]) && (v34 = [(STRestrictions *)self allowWritingTools], v34 == [(STRestrictions *)v9 allowWritingTools]))
      {
        v35 = [(STRestrictions *)self allowImageCreation];
        v18 = v35 == [(STRestrictions *)v9 allowImageCreation];
        if ((v38 & 1) == 0)
        {
          v6 = v39;
          if (v21)
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
            if (v20)
            {

              if (!v17)
              {
LABEL_56:
                if (!v16)
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
      if (v21)
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
  v3 = [(STRestrictions *)self isEnabled];
  v4 = v3 | (2 * [(STRestrictions *)self allowInstallingApps]);
  v5 = v4 ^ (4 * [(STRestrictions *)self allowDeletingApps]);
  v6 = v5 ^ (8 * [(STRestrictions *)self allowInAppPurchases]);
  v7 = v6 ^ (16 * [(STRestrictions *)self allowMusicVideos]);
  v8 = [(STRestrictions *)self tvShowsRating];
  v9 = v7 ^ (32 * [v8 hash]);

  v10 = [(STRestrictions *)self appsRating];
  v11 = v9 ^ ([v10 hash] << 6);

  v12 = v11 ^ ([(STRestrictions *)self allowExplicitBooks]<< 7);
  v13 = v12 ^ ([(STRestrictions *)self webFilterState]<< 8);
  v14 = v13 ^ ([(STRestrictions *)self allowPrivateMessaging]<< 10);
  v15 = v14 ^ ([(STRestrictions *)self allowAvatarAndNicknameChanges]<< 11);
  v16 = v15 ^ ([(STRestrictions *)self allowProfilePrivacyChanges]<< 12);
  v17 = v16 ^ ([(STRestrictions *)self allowWebContentSearchInSiri]<< 13);
  v18 = v17 ^ ([(STRestrictions *)self allowExternalIntelligenceIntegrations]<< 14);
  v19 = v18 ^ ([(STRestrictions *)self allowWritingTools]<< 15);
  v20 = [(STRestrictions *)self moviesRating];
  v21 = v19 ^ ([v20 hash] << 16);

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
  v14 = [(STRestrictions *)self isEnabled];
  v13 = [(STRestrictions *)self allowInstallingApps];
  v12 = [(STRestrictions *)self allowDeletingApps];
  v11 = [(STRestrictions *)self allowInAppPurchases];
  v10 = [(STRestrictions *)self allowMusicVideos];
  v9 = [(STRestrictions *)self allowMusicProfiles];
  v8 = [(STRestrictions *)self tvShowsRating];
  v7 = [(STRestrictions *)self moviesRating];
  v4 = [(STRestrictions *)self appsRating];
  v5 = [v16 stringWithFormat:@"<%@: %p\nIsEnabled: %d\nAllowInstallingApps: %ld\nAllowDeletingApps: %ld, \nAllowInAppPurchases: %ld, \nAllowMusicVideos: %ld, \nAllowMusicProfiles: %ld, \nTVShowsRating: %@, \nMoviesRating: %@, \nAppsRating: %@, \nAllowExplicitBooks: %ld, \nAllowExplicitMediaContent: %ld, \nWebFilterState: %ld, \nAllowAvatarAndNicknameChanges: %ld>, \nAllowPrivateMessaging: %ld, \nAllowProfilePrivacyChanges: %ld, \nAllowWebContentSearchInSiri: %ld, \nAllowExplicitLanguageInSiri: %ld, \nAllowExternalIntelligenceIntegrations: %ld, \nAllowWritingTools: %ld, \nAllowImageCreation: %ld>\n", v15, self, v14, v13, v12, v11, v10, v9, v8, v7, v4, -[STRestrictions allowExplicitBooks](self, "allowExplicitBooks"), -[STRestrictions allowExplicitMediaContent](self, "allowExplicitMediaContent"), -[STRestrictions webFilterState](self, "webFilterState"), -[STRestrictions allowAvatarAndNicknameChanges](self, "allowAvatarAndNicknameChanges"), -[STRestrictions allowPrivateMessaging](self, "allowPrivateMessaging"), -[STRestrictions allowProfilePrivacyChanges](self, "allowProfilePrivacyChanges"), -[STRestrictions allowWebContentSearchInSiri](self, "allowWebContentSearchInSiri"), -[STRestrictions allowExplicitLanguageInSiri](self, "allowExplicitLanguageInSiri"), -[STRestrictions allowExternalIntelligenceIntegrations](self, "allowExternalIntelligenceIntegrations"), -[STRestrictions allowWritingTools](self, "allowWritingTools"), -[STRestrictions allowImageCreation](self, "allowImageCreation")];

  return v5;
}

- (void)_initWithIsEnabled:.cold.1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[STRestrictions _initWithIsEnabled:]"];
  [v1 handleFailureInFunction:v0 file:@"STRestrictions.m" lineNumber:69 description:@"STRestrictions can not be subclassed"];
}

@end