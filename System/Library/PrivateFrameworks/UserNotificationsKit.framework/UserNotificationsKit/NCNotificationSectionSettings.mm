@interface NCNotificationSectionSettings
- (BOOL)isEqual:(id)equal;
- (NCNotificationSectionSettings)initWithNotificationSectionSettings:(id)settings;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation NCNotificationSectionSettings

- (NCNotificationSectionSettings)initWithNotificationSectionSettings:(id)settings
{
  settingsCopy = settings;
  v27.receiver = self;
  v27.super_class = NCNotificationSectionSettings;
  v5 = [(NCNotificationSectionSettings *)&v27 init];
  if (v5)
  {
    sectionIdentifier = [settingsCopy sectionIdentifier];
    v7 = [sectionIdentifier copy];
    sectionIdentifier = v5->_sectionIdentifier;
    v5->_sectionIdentifier = v7;

    subSectionIdentifier = [settingsCopy subSectionIdentifier];
    v10 = [subSectionIdentifier copy];
    subSectionIdentifier = v5->_subSectionIdentifier;
    v5->_subSectionIdentifier = v10;

    displayName = [settingsCopy displayName];
    v13 = [displayName copy];
    displayName = v5->_displayName;
    v5->_displayName = v13;

    settings = [settingsCopy settings];
    v16 = [settings copy];
    settings = v5->_settings;
    v5->_settings = v16;

    subSectionSettings = [settingsCopy subSectionSettings];
    v19 = [subSectionSettings copy];
    subSectionSettings = v5->_subSectionSettings;
    v5->_subSectionSettings = v19;

    v5->_userConfigurable = [settingsCopy isUserConfigurable];
    settingsIcon = [settingsCopy settingsIcon];
    settingsIcon = v5->_settingsIcon;
    v5->_settingsIcon = settingsIcon;

    v5->_showsCustomSettingsLink = [settingsCopy showsCustomSettingsLink];
    v5->_isDeliveredQuietly = [settingsCopy isDeliveredQuietly];
    v5->_hasProvisialAuthorization = [settingsCopy hasProvisionalAuthorization];
    v5->_isAppClip = [settingsCopy isAppClip];
    muteAssertion = [settingsCopy muteAssertion];
    v24 = [muteAssertion copyWithZone:0];
    muteAssertion = v5->_muteAssertion;
    v5->_muteAssertion = v24;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (-[NCNotificationSectionSettings sectionIdentifier](self, "sectionIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), [v6 sectionIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = NCIsEqual(v7, v8), v8, v7, v9) && (-[NCNotificationSectionSettings subSectionIdentifier](self, "subSectionIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "subSectionIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = NCIsEqual(v10, v11), v11, v10, v12) && (-[NCNotificationSectionSettings displayName](self, "displayName"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "displayName"), v14 = objc_claimAutoreleasedReturnValue(), v15 = NCIsEqual(v13, v14), v14, v13, v15) && (-[NCNotificationSectionSettings settings](self, "settings"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "settings"), v17 = objc_claimAutoreleasedReturnValue(), v18 = NCIsEqualToDictionary(v16, v17), v17, v16, v18) && (-[NCNotificationSectionSettings subSectionSettings](self, "subSectionSettings"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "subSectionSettings"), v20 = objc_claimAutoreleasedReturnValue(), v21 = NCIsEqualToSet(v19, v20), v20, v19, v21) && (v22 = -[NCNotificationSectionSettings isUserConfigurable](self, "isUserConfigurable"), v22 == objc_msgSend(v6, "isUserConfigurable")) && (-[NCNotificationSectionSettings settingsIcon](self, "settingsIcon"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "settingsIcon"), v24 = objc_claimAutoreleasedReturnValue(), v25 = NCIsEqual(v23, v24), v24, v23, v25) && (v26 = -[NCNotificationSectionSettings showsCustomSettingsLink](self, "showsCustomSettingsLink"), v26 == objc_msgSend(v6, "showsCustomSettingsLink")) && (v27 = -[NCNotificationSectionSettings isDeliveredQuietly](self, "isDeliveredQuietly"), v27 == objc_msgSend(v6, "isDeliveredQuietly")) && (v28 = -[NCNotificationSectionSettings hasProvisionalAuthorization](self, "hasProvisionalAuthorization"), v28 == objc_msgSend(v6, "hasProvisionalAuthorization")) && (v29 = -[NCNotificationSectionSettings isAppClip](self, "isAppClip"), v29 == objc_msgSend(v6, "isAppClip")))
  {
    muteAssertion = [(NCNotificationSectionSettings *)self muteAssertion];
    muteAssertion2 = [v6 muteAssertion];
    v30 = NCIsEqual(muteAssertion, muteAssertion2);
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sectionIdentifier hash];
  v4 = [(NSString *)self->_subSectionIdentifier hash]+ v3;
  v5 = [(NSString *)self->_displayName hash];
  v6 = v4 + v5 + [(NSDictionary *)self->_settings hash];
  v7 = [(NSSet *)self->_subSectionSettings hash]+ self->_userConfigurable;
  v8 = v6 + v7 + [(UIImage *)self->_settingsIcon hash];
  v9 = self->_showsCustomSettingsLink + self->_isDeliveredQuietly + self->_hasProvisialAuthorization + self->_isAppClip;
  return v8 + v9 + [(NCNotificationMuteAssertion *)self->_muteAssertion hash];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [NCMutableNotificationSectionSettings alloc];

  return [(NCNotificationSectionSettings *)v4 initWithNotificationSectionSettings:self];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(NCNotificationSectionSettings *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__NCNotificationSectionSettings_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_279E0D9F0;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [v7 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v8 = v7;
  return v7;
}

void __71__NCNotificationSectionSettings_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) sectionIdentifier];
  v4 = [v2 appendObject:v3 withName:@"sectionId"];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) subSectionIdentifier];
  v7 = [v5 appendObject:v6 withName:@"subSectionId" skipIfNil:1];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) displayName];
  v10 = [v8 appendObject:v9 withName:@"displayName"];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) settings];
  [v11 appendDictionarySection:v12 withName:@"settings" skipIfEmpty:0];

  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) subSectionSettings];
  v15 = [v14 allObjects];
  [v13 appendArraySection:v15 withName:@"subSectionSettings" skipIfEmpty:1];

  v16 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isUserConfigurable"), @"userConfigurable"}];
  v17 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"showsCustomSettingsLink"), @"customSettingsLink"}];
  v18 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isDeliveredQuietly"), @"deliveredQuietly"}];
  v19 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"hasProvisionalAuthorization"), @"provisionalAuthorization"}];
  v20 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isAppClip"), @"appClip"}];
  v21 = *(a1 + 32);
  v23 = [*(a1 + 40) muteAssertion];
  v22 = [v21 appendObject:v23 withName:@"muteAssertion"];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(NCNotificationSectionSettings *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  sectionIdentifier = [(NCNotificationSectionSettings *)self sectionIdentifier];
  v5 = [v3 appendObject:sectionIdentifier withName:@"sectionId"];

  subSectionIdentifier = [(NCNotificationSectionSettings *)self subSectionIdentifier];
  v7 = [v3 appendObject:subSectionIdentifier withName:@"subSectionId" skipIfNil:1];

  return v3;
}

@end