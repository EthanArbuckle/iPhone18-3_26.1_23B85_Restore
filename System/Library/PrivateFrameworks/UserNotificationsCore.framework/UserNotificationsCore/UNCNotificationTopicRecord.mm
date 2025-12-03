@interface UNCNotificationTopicRecord
- (BOOL)isEqual:(id)equal;
- (UNCNotificationTopicRecord)initWithCoder:(id)coder;
- (UNCNotificationTopicRecord)initWithDictionaryRepresentation:(id)representation;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UNCNotificationTopicRecord

- (UNCNotificationTopicRecord)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v30.receiver = self;
  v30.super_class = UNCNotificationTopicRecord;
  v5 = [(UNCNotificationTopicRecord *)&v30 init];
  if (v5)
  {
    v6 = [representationCopy objectForKey:@"Identifier"];
    [(UNCNotificationTopicRecord *)v5 setIdentifier:v6];

    v7 = [representationCopy objectForKey:@"DisplayName"];
    [(UNCNotificationTopicRecord *)v5 setDisplayName:v7];

    v8 = [representationCopy objectForKey:@"DisplayNameLocalizationKey"];
    [(UNCNotificationTopicRecord *)v5 setDisplayNameLocalizationKey:v8];

    v9 = [representationCopy objectForKey:@"Priority"];
    -[UNCNotificationTopicRecord setPriority:](v5, "setPriority:", [v9 intValue]);

    v10 = [representationCopy objectForKey:@"SortIdentifier"];
    [(UNCNotificationTopicRecord *)v5 setSortIdentifier:v10];

    v11 = [representationCopy objectForKey:@"Alert"];
    -[UNCNotificationTopicRecord setSupportsAlerts:](v5, "setSupportsAlerts:", [v11 un_safeBoolValue]);

    v12 = [representationCopy objectForKey:@"Badge"];
    -[UNCNotificationTopicRecord setSupportsBadges:](v5, "setSupportsBadges:", [v12 un_safeBoolValue]);

    v13 = [representationCopy objectForKey:@"LockScreen"];
    -[UNCNotificationTopicRecord setSupportsLockScreen:](v5, "setSupportsLockScreen:", [v13 un_safeBoolValue]);

    v14 = [representationCopy objectForKey:@"NotificationCenter"];
    -[UNCNotificationTopicRecord setSupportsNotificationCenter:](v5, "setSupportsNotificationCenter:", [v14 un_safeBoolValue]);

    v15 = [representationCopy objectForKey:@"CarPlay"];
    -[UNCNotificationTopicRecord setSupportsCarPlay:](v5, "setSupportsCarPlay:", [v15 un_safeBoolValue]);

    v16 = [representationCopy objectForKey:@"Spoken"];
    -[UNCNotificationTopicRecord setSupportsSpoken:](v5, "setSupportsSpoken:", [v16 un_safeBoolValue]);

    v17 = [representationCopy objectForKey:@"CriticalAlert"];
    -[UNCNotificationTopicRecord setSupportsCriticalAlerts:](v5, "setSupportsCriticalAlerts:", [v17 un_safeBoolValue]);

    v18 = [representationCopy objectForKey:@"TimeSensitive"];
    -[UNCNotificationTopicRecord setSupportsTimeSensitive:](v5, "setSupportsTimeSensitive:", [v18 un_safeBoolValue]);

    v19 = [representationCopy objectForKey:@"Sound"];
    -[UNCNotificationTopicRecord setSupportsSounds:](v5, "setSupportsSounds:", [v19 un_safeBoolValue]);

    v20 = [representationCopy objectForKey:@"EnablesAlert"];
    -[UNCNotificationTopicRecord setEnablesAlerts:](v5, "setEnablesAlerts:", [v20 un_safeBoolValue]);

    v21 = [representationCopy objectForKey:@"EnablesBadge"];
    -[UNCNotificationTopicRecord setEnablesBadges:](v5, "setEnablesBadges:", [v21 un_safeBoolValue]);

    v22 = [representationCopy objectForKey:@"EnablesLockScreen"];
    -[UNCNotificationTopicRecord setEnablesLockScreen:](v5, "setEnablesLockScreen:", [v22 un_safeBoolValue]);

    v23 = [representationCopy objectForKey:@"EnablesNotificationCenter"];
    -[UNCNotificationTopicRecord setEnablesNotificationCenter:](v5, "setEnablesNotificationCenter:", [v23 un_safeBoolValue]);

    v24 = [representationCopy objectForKey:@"EnablesCarPlay"];
    -[UNCNotificationTopicRecord setEnablesCarPlay:](v5, "setEnablesCarPlay:", [v24 un_safeBoolValue]);

    v25 = [representationCopy objectForKey:@"EnablesSpoken"];
    -[UNCNotificationTopicRecord setEnablesSpoken:](v5, "setEnablesSpoken:", [v25 un_safeBoolValue]);

    v26 = [representationCopy objectForKey:@"EnablesCriticalAlert"];
    -[UNCNotificationTopicRecord setEnablesCriticalAlerts:](v5, "setEnablesCriticalAlerts:", [v26 un_safeBoolValue]);

    v27 = [representationCopy objectForKey:@"EnablesSound"];
    -[UNCNotificationTopicRecord setEnablesSounds:](v5, "setEnablesSounds:", [v27 un_safeBoolValue]);

    v28 = [representationCopy objectForKey:@"Modal"];
    -[UNCNotificationTopicRecord setModalAlertStyle:](v5, "setModalAlertStyle:", [v28 un_safeBoolValue]);
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  identifier = [(UNCNotificationTopicRecord *)self identifier];
  [dictionary unc_safeSetObject:identifier forKey:@"Identifier"];

  displayName = [(UNCNotificationTopicRecord *)self displayName];
  [dictionary unc_safeSetObject:displayName forKey:@"DisplayName"];

  displayNameLocalizationKey = [(UNCNotificationTopicRecord *)self displayNameLocalizationKey];
  [dictionary unc_safeSetObject:displayNameLocalizationKey forKey:@"DisplayNameLocalizationKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNCNotificationTopicRecord priority](self, "priority")}];
  [dictionary unc_safeSetObject:v7 forKey:@"Priority"];

  sortIdentifier = [(UNCNotificationTopicRecord *)self sortIdentifier];
  [dictionary unc_safeSetObject:sortIdentifier forKey:@"SortIdentifier"];

  if ([(UNCNotificationTopicRecord *)self supportsAlerts])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"Alert"];
  }

  if ([(UNCNotificationTopicRecord *)self supportsBadges])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"Badge"];
  }

  if ([(UNCNotificationTopicRecord *)self supportsLockScreen])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"LockScreen"];
  }

  if ([(UNCNotificationTopicRecord *)self supportsNotificationCenter])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"NotificationCenter"];
  }

  if ([(UNCNotificationTopicRecord *)self supportsCarPlay])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"CarPlay"];
  }

  if ([(UNCNotificationTopicRecord *)self supportsSpoken])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"Spoken"];
  }

  if ([(UNCNotificationTopicRecord *)self supportsCriticalAlerts])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"CriticalAlert"];
  }

  if ([(UNCNotificationTopicRecord *)self supportsTimeSensitive])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"TimeSensitive"];
  }

  if ([(UNCNotificationTopicRecord *)self supportsSounds])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"Sound"];
  }

  if ([(UNCNotificationTopicRecord *)self enablesAlerts])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"EnablesAlert"];
  }

  if ([(UNCNotificationTopicRecord *)self enablesBadges])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"EnablesBadge"];
  }

  if ([(UNCNotificationTopicRecord *)self enablesLockScreen])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"EnablesLockScreen"];
  }

  if ([(UNCNotificationTopicRecord *)self enablesNotificationCenter])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"EnablesNotificationCenter"];
  }

  if ([(UNCNotificationTopicRecord *)self enablesCarPlay])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"EnablesCarPlay"];
  }

  if ([(UNCNotificationTopicRecord *)self enablesSpoken])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"EnablesSpoken"];
  }

  if ([(UNCNotificationTopicRecord *)self enablesCriticalAlerts])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"EnablesCriticalAlert"];
  }

  if ([(UNCNotificationTopicRecord *)self enablesSounds])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"EnablesSound"];
  }

  if ([(UNCNotificationTopicRecord *)self modalAlertStyle])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKey:@"Modal"];
  }

  return dictionary;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  identifier = [(UNCNotificationTopicRecord *)self identifier];
  v5 = [v3 appendObject:identifier withName:@"Identifier"];

  displayName = [(UNCNotificationTopicRecord *)self displayName];
  v7 = [v3 appendObject:displayName withName:@"DisplayName"];

  displayNameLocalizationKey = [(UNCNotificationTopicRecord *)self displayNameLocalizationKey];
  v9 = [v3 appendObject:displayNameLocalizationKey withName:@"DisplayNameLocalizationKey"];

  v10 = [v3 appendInteger:-[UNCNotificationTopicRecord priority](self withName:{"priority"), @"Priority"}];
  sortIdentifier = [(UNCNotificationTopicRecord *)self sortIdentifier];
  v12 = [v3 appendObject:sortIdentifier withName:@"SortIdentifier"];

  v13 = [v3 appendBool:-[UNCNotificationTopicRecord supportsAlerts](self withName:{"supportsAlerts"), @"SupportsAlert"}];
  v14 = [v3 appendBool:-[UNCNotificationTopicRecord supportsBadges](self withName:{"supportsBadges"), @"SupportsBadge"}];
  v15 = [v3 appendBool:-[UNCNotificationTopicRecord supportsLockScreen](self withName:{"supportsLockScreen"), @"SupportsLockScreen"}];
  v16 = [v3 appendBool:-[UNCNotificationTopicRecord supportsNotificationCenter](self withName:{"supportsNotificationCenter"), @"SupportsNotificationCenter"}];
  v17 = [v3 appendBool:-[UNCNotificationTopicRecord supportsCarPlay](self withName:{"supportsCarPlay"), @"SupportsCarPlay"}];
  v18 = [v3 appendBool:-[UNCNotificationTopicRecord supportsCriticalAlerts](self withName:{"supportsCriticalAlerts"), @"SupportsCriticalAlert"}];
  v19 = [v3 appendBool:-[UNCNotificationTopicRecord supportsTimeSensitive](self withName:{"supportsTimeSensitive"), @"SupportsTimeSensitive"}];
  v20 = [v3 appendBool:-[UNCNotificationTopicRecord supportsSounds](self withName:{"supportsSounds"), @"SupportsSound"}];
  v21 = [v3 appendBool:-[UNCNotificationTopicRecord supportsSpoken](self withName:{"supportsSpoken"), @"SupportsSpoken"}];
  v22 = [v3 appendBool:-[UNCNotificationTopicRecord enablesAlerts](self withName:{"enablesAlerts"), @"EnablesAlert"}];
  v23 = [v3 appendBool:-[UNCNotificationTopicRecord enablesBadges](self withName:{"enablesBadges"), @"EnablesBadge"}];
  v24 = [v3 appendBool:-[UNCNotificationTopicRecord enablesLockScreen](self withName:{"enablesLockScreen"), @"EnablesLockScreen"}];
  v25 = [v3 appendBool:-[UNCNotificationTopicRecord enablesNotificationCenter](self withName:{"enablesNotificationCenter"), @"EnablesNotificationCenter"}];
  v26 = [v3 appendBool:-[UNCNotificationTopicRecord enablesCarPlay](self withName:{"enablesCarPlay"), @"EnablesCarPlay"}];
  v27 = [v3 appendBool:-[UNCNotificationTopicRecord enablesCriticalAlerts](self withName:{"enablesCriticalAlerts"), @"EnablesCriticalAlert"}];
  v28 = [v3 appendBool:-[UNCNotificationTopicRecord enablesSounds](self withName:{"enablesSounds"), @"EnablesSound"}];
  v29 = [v3 appendBool:-[UNCNotificationTopicRecord enablesSpoken](self withName:{"enablesSpoken"), @"EnablesSpoken"}];
  v30 = [v3 appendBool:-[UNCNotificationTopicRecord modalAlertStyle](self withName:{"modalAlertStyle"), @"ModalAlertStyle"}];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (!equalCopy)
  {
    goto LABEL_25;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_25;
  }

  identifier = [(UNCNotificationTopicRecord *)self identifier];
  identifier2 = [equalCopy identifier];
  v8 = UNSimilarStrings();

  if (!v8)
  {
    goto LABEL_25;
  }

  displayName = [(UNCNotificationTopicRecord *)self displayName];
  displayName2 = [equalCopy displayName];
  v11 = UNSimilarStrings();

  if (!v11)
  {
    goto LABEL_25;
  }

  displayNameLocalizationKey = [(UNCNotificationTopicRecord *)self displayNameLocalizationKey];
  displayNameLocalizationKey2 = [equalCopy displayNameLocalizationKey];
  v14 = UNSimilarStrings();

  if (!v14)
  {
    goto LABEL_25;
  }

  priority = [(UNCNotificationTopicRecord *)self priority];
  if (priority != [equalCopy priority])
  {
    goto LABEL_25;
  }

  sortIdentifier = [(UNCNotificationTopicRecord *)self sortIdentifier];
  sortIdentifier2 = [equalCopy sortIdentifier];
  v18 = UNSimilarStrings();

  if (!v18)
  {
    goto LABEL_25;
  }

  supportsAlerts = [(UNCNotificationTopicRecord *)self supportsAlerts];
  if (supportsAlerts != [equalCopy supportsAlerts])
  {
    goto LABEL_25;
  }

  supportsBadges = [(UNCNotificationTopicRecord *)self supportsBadges];
  if (supportsBadges != [equalCopy supportsBadges])
  {
    goto LABEL_25;
  }

  supportsLockScreen = [(UNCNotificationTopicRecord *)self supportsLockScreen];
  if (supportsLockScreen != [equalCopy supportsLockScreen])
  {
    goto LABEL_25;
  }

  supportsNotificationCenter = [(UNCNotificationTopicRecord *)self supportsNotificationCenter];
  if (supportsNotificationCenter != [equalCopy supportsNotificationCenter])
  {
    goto LABEL_25;
  }

  supportsCarPlay = [(UNCNotificationTopicRecord *)self supportsCarPlay];
  if (supportsCarPlay != [equalCopy supportsCarPlay])
  {
    goto LABEL_25;
  }

  supportsCriticalAlerts = [(UNCNotificationTopicRecord *)self supportsCriticalAlerts];
  if (supportsCriticalAlerts != [equalCopy supportsCriticalAlerts])
  {
    goto LABEL_25;
  }

  supportsTimeSensitive = [(UNCNotificationTopicRecord *)self supportsTimeSensitive];
  if (supportsTimeSensitive != [equalCopy supportsTimeSensitive])
  {
    goto LABEL_25;
  }

  supportsSounds = [(UNCNotificationTopicRecord *)self supportsSounds];
  if (supportsSounds != [equalCopy supportsSounds])
  {
    goto LABEL_25;
  }

  supportsSpoken = [(UNCNotificationTopicRecord *)self supportsSpoken];
  if (supportsSpoken != [equalCopy supportsSpoken])
  {
    goto LABEL_25;
  }

  enablesAlerts = [(UNCNotificationTopicRecord *)self enablesAlerts];
  if (enablesAlerts != [equalCopy enablesAlerts])
  {
    goto LABEL_25;
  }

  enablesBadges = [(UNCNotificationTopicRecord *)self enablesBadges];
  if (enablesBadges == [equalCopy enablesBadges] && (v30 = -[UNCNotificationTopicRecord enablesLockScreen](self, "enablesLockScreen"), v30 == objc_msgSend(equalCopy, "enablesLockScreen")) && (v31 = -[UNCNotificationTopicRecord enablesNotificationCenter](self, "enablesNotificationCenter"), v31 == objc_msgSend(equalCopy, "enablesNotificationCenter")) && (v32 = -[UNCNotificationTopicRecord enablesCarPlay](self, "enablesCarPlay"), v32 == objc_msgSend(equalCopy, "enablesCarPlay")) && (v33 = -[UNCNotificationTopicRecord enablesCriticalAlerts](self, "enablesCriticalAlerts"), v33 == objc_msgSend(equalCopy, "enablesCriticalAlerts")) && (v34 = -[UNCNotificationTopicRecord enablesSounds](self, "enablesSounds"), v34 == objc_msgSend(equalCopy, "enablesSounds")) && (v35 = -[UNCNotificationTopicRecord enablesSpoken](self, "enablesSpoken"), v35 == objc_msgSend(equalCopy, "enablesSpoken")))
  {
    modalAlertStyle = [(UNCNotificationTopicRecord *)self modalAlertStyle];
    v36 = modalAlertStyle ^ [equalCopy modalAlertStyle] ^ 1;
  }

  else
  {
LABEL_25:
    LOBYTE(v36) = 0;
  }

  return v36;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  identifier = [(UNCNotificationTopicRecord *)self identifier];
  v5 = [builder appendObject:identifier];

  displayName = [(UNCNotificationTopicRecord *)self displayName];
  v7 = [builder appendObject:displayName];

  displayNameLocalizationKey = [(UNCNotificationTopicRecord *)self displayNameLocalizationKey];
  v9 = [builder appendObject:displayNameLocalizationKey];

  v10 = [builder appendInteger:{-[UNCNotificationTopicRecord priority](self, "priority")}];
  sortIdentifier = [(UNCNotificationTopicRecord *)self sortIdentifier];
  v12 = [builder appendObject:sortIdentifier];

  v13 = [builder appendBool:{-[UNCNotificationTopicRecord supportsAlerts](self, "supportsAlerts")}];
  v14 = [builder appendBool:{-[UNCNotificationTopicRecord supportsBadges](self, "supportsBadges")}];
  v15 = [builder appendBool:{-[UNCNotificationTopicRecord supportsLockScreen](self, "supportsLockScreen")}];
  v16 = [builder appendBool:{-[UNCNotificationTopicRecord supportsNotificationCenter](self, "supportsNotificationCenter")}];
  v17 = [builder appendBool:{-[UNCNotificationTopicRecord supportsCarPlay](self, "supportsCarPlay")}];
  v18 = [builder appendBool:{-[UNCNotificationTopicRecord supportsCriticalAlerts](self, "supportsCriticalAlerts")}];
  v19 = [builder appendBool:{-[UNCNotificationTopicRecord supportsTimeSensitive](self, "supportsTimeSensitive")}];
  v20 = [builder appendBool:{-[UNCNotificationTopicRecord supportsSounds](self, "supportsSounds")}];
  v21 = [builder appendBool:{-[UNCNotificationTopicRecord supportsSpoken](self, "supportsSpoken")}];
  v22 = [builder appendBool:{-[UNCNotificationTopicRecord enablesAlerts](self, "enablesAlerts")}];
  v23 = [builder appendBool:{-[UNCNotificationTopicRecord enablesBadges](self, "enablesBadges")}];
  v24 = [builder appendBool:{-[UNCNotificationTopicRecord enablesLockScreen](self, "enablesLockScreen")}];
  v25 = [builder appendBool:{-[UNCNotificationTopicRecord enablesNotificationCenter](self, "enablesNotificationCenter")}];
  v26 = [builder appendBool:{-[UNCNotificationTopicRecord enablesCarPlay](self, "enablesCarPlay")}];
  v27 = [builder appendBool:{-[UNCNotificationTopicRecord enablesCriticalAlerts](self, "enablesCriticalAlerts")}];
  v28 = [builder appendBool:{-[UNCNotificationTopicRecord enablesSounds](self, "enablesSounds")}];
  v29 = [builder appendBool:{-[UNCNotificationTopicRecord enablesSpoken](self, "enablesSpoken")}];
  v30 = [builder appendBool:{-[UNCNotificationTopicRecord modalAlertStyle](self, "modalAlertStyle")}];
  v31 = [builder hash];

  return v31;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dictionaryRepresentation = [(UNCNotificationTopicRecord *)self dictionaryRepresentation];
  [coderCopy encodeObject:dictionaryRepresentation forKey:@"dictionary"];
}

- (UNCNotificationTopicRecord)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:7];
  v7 = [v4 setWithArray:{v6, v12, v13, v14, v15, v16, v17}];

  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"dictionary"];

  v9 = [[UNCNotificationTopicRecord alloc] initWithDictionaryRepresentation:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end