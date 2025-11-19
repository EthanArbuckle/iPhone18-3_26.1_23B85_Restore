@interface UNCNotificationTopicRecord
- (BOOL)isEqual:(id)a3;
- (UNCNotificationTopicRecord)initWithCoder:(id)a3;
- (UNCNotificationTopicRecord)initWithDictionaryRepresentation:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UNCNotificationTopicRecord

- (UNCNotificationTopicRecord)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = UNCNotificationTopicRecord;
  v5 = [(UNCNotificationTopicRecord *)&v30 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"Identifier"];
    [(UNCNotificationTopicRecord *)v5 setIdentifier:v6];

    v7 = [v4 objectForKey:@"DisplayName"];
    [(UNCNotificationTopicRecord *)v5 setDisplayName:v7];

    v8 = [v4 objectForKey:@"DisplayNameLocalizationKey"];
    [(UNCNotificationTopicRecord *)v5 setDisplayNameLocalizationKey:v8];

    v9 = [v4 objectForKey:@"Priority"];
    -[UNCNotificationTopicRecord setPriority:](v5, "setPriority:", [v9 intValue]);

    v10 = [v4 objectForKey:@"SortIdentifier"];
    [(UNCNotificationTopicRecord *)v5 setSortIdentifier:v10];

    v11 = [v4 objectForKey:@"Alert"];
    -[UNCNotificationTopicRecord setSupportsAlerts:](v5, "setSupportsAlerts:", [v11 un_safeBoolValue]);

    v12 = [v4 objectForKey:@"Badge"];
    -[UNCNotificationTopicRecord setSupportsBadges:](v5, "setSupportsBadges:", [v12 un_safeBoolValue]);

    v13 = [v4 objectForKey:@"LockScreen"];
    -[UNCNotificationTopicRecord setSupportsLockScreen:](v5, "setSupportsLockScreen:", [v13 un_safeBoolValue]);

    v14 = [v4 objectForKey:@"NotificationCenter"];
    -[UNCNotificationTopicRecord setSupportsNotificationCenter:](v5, "setSupportsNotificationCenter:", [v14 un_safeBoolValue]);

    v15 = [v4 objectForKey:@"CarPlay"];
    -[UNCNotificationTopicRecord setSupportsCarPlay:](v5, "setSupportsCarPlay:", [v15 un_safeBoolValue]);

    v16 = [v4 objectForKey:@"Spoken"];
    -[UNCNotificationTopicRecord setSupportsSpoken:](v5, "setSupportsSpoken:", [v16 un_safeBoolValue]);

    v17 = [v4 objectForKey:@"CriticalAlert"];
    -[UNCNotificationTopicRecord setSupportsCriticalAlerts:](v5, "setSupportsCriticalAlerts:", [v17 un_safeBoolValue]);

    v18 = [v4 objectForKey:@"TimeSensitive"];
    -[UNCNotificationTopicRecord setSupportsTimeSensitive:](v5, "setSupportsTimeSensitive:", [v18 un_safeBoolValue]);

    v19 = [v4 objectForKey:@"Sound"];
    -[UNCNotificationTopicRecord setSupportsSounds:](v5, "setSupportsSounds:", [v19 un_safeBoolValue]);

    v20 = [v4 objectForKey:@"EnablesAlert"];
    -[UNCNotificationTopicRecord setEnablesAlerts:](v5, "setEnablesAlerts:", [v20 un_safeBoolValue]);

    v21 = [v4 objectForKey:@"EnablesBadge"];
    -[UNCNotificationTopicRecord setEnablesBadges:](v5, "setEnablesBadges:", [v21 un_safeBoolValue]);

    v22 = [v4 objectForKey:@"EnablesLockScreen"];
    -[UNCNotificationTopicRecord setEnablesLockScreen:](v5, "setEnablesLockScreen:", [v22 un_safeBoolValue]);

    v23 = [v4 objectForKey:@"EnablesNotificationCenter"];
    -[UNCNotificationTopicRecord setEnablesNotificationCenter:](v5, "setEnablesNotificationCenter:", [v23 un_safeBoolValue]);

    v24 = [v4 objectForKey:@"EnablesCarPlay"];
    -[UNCNotificationTopicRecord setEnablesCarPlay:](v5, "setEnablesCarPlay:", [v24 un_safeBoolValue]);

    v25 = [v4 objectForKey:@"EnablesSpoken"];
    -[UNCNotificationTopicRecord setEnablesSpoken:](v5, "setEnablesSpoken:", [v25 un_safeBoolValue]);

    v26 = [v4 objectForKey:@"EnablesCriticalAlert"];
    -[UNCNotificationTopicRecord setEnablesCriticalAlerts:](v5, "setEnablesCriticalAlerts:", [v26 un_safeBoolValue]);

    v27 = [v4 objectForKey:@"EnablesSound"];
    -[UNCNotificationTopicRecord setEnablesSounds:](v5, "setEnablesSounds:", [v27 un_safeBoolValue]);

    v28 = [v4 objectForKey:@"Modal"];
    -[UNCNotificationTopicRecord setModalAlertStyle:](v5, "setModalAlertStyle:", [v28 un_safeBoolValue]);
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(UNCNotificationTopicRecord *)self identifier];
  [v3 unc_safeSetObject:v4 forKey:@"Identifier"];

  v5 = [(UNCNotificationTopicRecord *)self displayName];
  [v3 unc_safeSetObject:v5 forKey:@"DisplayName"];

  v6 = [(UNCNotificationTopicRecord *)self displayNameLocalizationKey];
  [v3 unc_safeSetObject:v6 forKey:@"DisplayNameLocalizationKey"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[UNCNotificationTopicRecord priority](self, "priority")}];
  [v3 unc_safeSetObject:v7 forKey:@"Priority"];

  v8 = [(UNCNotificationTopicRecord *)self sortIdentifier];
  [v3 unc_safeSetObject:v8 forKey:@"SortIdentifier"];

  if ([(UNCNotificationTopicRecord *)self supportsAlerts])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"Alert"];
  }

  if ([(UNCNotificationTopicRecord *)self supportsBadges])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"Badge"];
  }

  if ([(UNCNotificationTopicRecord *)self supportsLockScreen])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"LockScreen"];
  }

  if ([(UNCNotificationTopicRecord *)self supportsNotificationCenter])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"NotificationCenter"];
  }

  if ([(UNCNotificationTopicRecord *)self supportsCarPlay])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"CarPlay"];
  }

  if ([(UNCNotificationTopicRecord *)self supportsSpoken])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"Spoken"];
  }

  if ([(UNCNotificationTopicRecord *)self supportsCriticalAlerts])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"CriticalAlert"];
  }

  if ([(UNCNotificationTopicRecord *)self supportsTimeSensitive])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"TimeSensitive"];
  }

  if ([(UNCNotificationTopicRecord *)self supportsSounds])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"Sound"];
  }

  if ([(UNCNotificationTopicRecord *)self enablesAlerts])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"EnablesAlert"];
  }

  if ([(UNCNotificationTopicRecord *)self enablesBadges])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"EnablesBadge"];
  }

  if ([(UNCNotificationTopicRecord *)self enablesLockScreen])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"EnablesLockScreen"];
  }

  if ([(UNCNotificationTopicRecord *)self enablesNotificationCenter])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"EnablesNotificationCenter"];
  }

  if ([(UNCNotificationTopicRecord *)self enablesCarPlay])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"EnablesCarPlay"];
  }

  if ([(UNCNotificationTopicRecord *)self enablesSpoken])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"EnablesSpoken"];
  }

  if ([(UNCNotificationTopicRecord *)self enablesCriticalAlerts])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"EnablesCriticalAlert"];
  }

  if ([(UNCNotificationTopicRecord *)self enablesSounds])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"EnablesSound"];
  }

  if ([(UNCNotificationTopicRecord *)self modalAlertStyle])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:@"Modal"];
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(UNCNotificationTopicRecord *)self identifier];
  v5 = [v3 appendObject:v4 withName:@"Identifier"];

  v6 = [(UNCNotificationTopicRecord *)self displayName];
  v7 = [v3 appendObject:v6 withName:@"DisplayName"];

  v8 = [(UNCNotificationTopicRecord *)self displayNameLocalizationKey];
  v9 = [v3 appendObject:v8 withName:@"DisplayNameLocalizationKey"];

  v10 = [v3 appendInteger:-[UNCNotificationTopicRecord priority](self withName:{"priority"), @"Priority"}];
  v11 = [(UNCNotificationTopicRecord *)self sortIdentifier];
  v12 = [v3 appendObject:v11 withName:@"SortIdentifier"];

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
  v31 = [v3 build];

  return v31;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_25;
  }

  v6 = [(UNCNotificationTopicRecord *)self identifier];
  v7 = [v4 identifier];
  v8 = UNSimilarStrings();

  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = [(UNCNotificationTopicRecord *)self displayName];
  v10 = [v4 displayName];
  v11 = UNSimilarStrings();

  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = [(UNCNotificationTopicRecord *)self displayNameLocalizationKey];
  v13 = [v4 displayNameLocalizationKey];
  v14 = UNSimilarStrings();

  if (!v14)
  {
    goto LABEL_25;
  }

  v15 = [(UNCNotificationTopicRecord *)self priority];
  if (v15 != [v4 priority])
  {
    goto LABEL_25;
  }

  v16 = [(UNCNotificationTopicRecord *)self sortIdentifier];
  v17 = [v4 sortIdentifier];
  v18 = UNSimilarStrings();

  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = [(UNCNotificationTopicRecord *)self supportsAlerts];
  if (v19 != [v4 supportsAlerts])
  {
    goto LABEL_25;
  }

  v20 = [(UNCNotificationTopicRecord *)self supportsBadges];
  if (v20 != [v4 supportsBadges])
  {
    goto LABEL_25;
  }

  v21 = [(UNCNotificationTopicRecord *)self supportsLockScreen];
  if (v21 != [v4 supportsLockScreen])
  {
    goto LABEL_25;
  }

  v22 = [(UNCNotificationTopicRecord *)self supportsNotificationCenter];
  if (v22 != [v4 supportsNotificationCenter])
  {
    goto LABEL_25;
  }

  v23 = [(UNCNotificationTopicRecord *)self supportsCarPlay];
  if (v23 != [v4 supportsCarPlay])
  {
    goto LABEL_25;
  }

  v24 = [(UNCNotificationTopicRecord *)self supportsCriticalAlerts];
  if (v24 != [v4 supportsCriticalAlerts])
  {
    goto LABEL_25;
  }

  v25 = [(UNCNotificationTopicRecord *)self supportsTimeSensitive];
  if (v25 != [v4 supportsTimeSensitive])
  {
    goto LABEL_25;
  }

  v26 = [(UNCNotificationTopicRecord *)self supportsSounds];
  if (v26 != [v4 supportsSounds])
  {
    goto LABEL_25;
  }

  v27 = [(UNCNotificationTopicRecord *)self supportsSpoken];
  if (v27 != [v4 supportsSpoken])
  {
    goto LABEL_25;
  }

  v28 = [(UNCNotificationTopicRecord *)self enablesAlerts];
  if (v28 != [v4 enablesAlerts])
  {
    goto LABEL_25;
  }

  v29 = [(UNCNotificationTopicRecord *)self enablesBadges];
  if (v29 == [v4 enablesBadges] && (v30 = -[UNCNotificationTopicRecord enablesLockScreen](self, "enablesLockScreen"), v30 == objc_msgSend(v4, "enablesLockScreen")) && (v31 = -[UNCNotificationTopicRecord enablesNotificationCenter](self, "enablesNotificationCenter"), v31 == objc_msgSend(v4, "enablesNotificationCenter")) && (v32 = -[UNCNotificationTopicRecord enablesCarPlay](self, "enablesCarPlay"), v32 == objc_msgSend(v4, "enablesCarPlay")) && (v33 = -[UNCNotificationTopicRecord enablesCriticalAlerts](self, "enablesCriticalAlerts"), v33 == objc_msgSend(v4, "enablesCriticalAlerts")) && (v34 = -[UNCNotificationTopicRecord enablesSounds](self, "enablesSounds"), v34 == objc_msgSend(v4, "enablesSounds")) && (v35 = -[UNCNotificationTopicRecord enablesSpoken](self, "enablesSpoken"), v35 == objc_msgSend(v4, "enablesSpoken")))
  {
    v38 = [(UNCNotificationTopicRecord *)self modalAlertStyle];
    v36 = v38 ^ [v4 modalAlertStyle] ^ 1;
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(UNCNotificationTopicRecord *)self identifier];
  v5 = [v3 appendObject:v4];

  v6 = [(UNCNotificationTopicRecord *)self displayName];
  v7 = [v3 appendObject:v6];

  v8 = [(UNCNotificationTopicRecord *)self displayNameLocalizationKey];
  v9 = [v3 appendObject:v8];

  v10 = [v3 appendInteger:{-[UNCNotificationTopicRecord priority](self, "priority")}];
  v11 = [(UNCNotificationTopicRecord *)self sortIdentifier];
  v12 = [v3 appendObject:v11];

  v13 = [v3 appendBool:{-[UNCNotificationTopicRecord supportsAlerts](self, "supportsAlerts")}];
  v14 = [v3 appendBool:{-[UNCNotificationTopicRecord supportsBadges](self, "supportsBadges")}];
  v15 = [v3 appendBool:{-[UNCNotificationTopicRecord supportsLockScreen](self, "supportsLockScreen")}];
  v16 = [v3 appendBool:{-[UNCNotificationTopicRecord supportsNotificationCenter](self, "supportsNotificationCenter")}];
  v17 = [v3 appendBool:{-[UNCNotificationTopicRecord supportsCarPlay](self, "supportsCarPlay")}];
  v18 = [v3 appendBool:{-[UNCNotificationTopicRecord supportsCriticalAlerts](self, "supportsCriticalAlerts")}];
  v19 = [v3 appendBool:{-[UNCNotificationTopicRecord supportsTimeSensitive](self, "supportsTimeSensitive")}];
  v20 = [v3 appendBool:{-[UNCNotificationTopicRecord supportsSounds](self, "supportsSounds")}];
  v21 = [v3 appendBool:{-[UNCNotificationTopicRecord supportsSpoken](self, "supportsSpoken")}];
  v22 = [v3 appendBool:{-[UNCNotificationTopicRecord enablesAlerts](self, "enablesAlerts")}];
  v23 = [v3 appendBool:{-[UNCNotificationTopicRecord enablesBadges](self, "enablesBadges")}];
  v24 = [v3 appendBool:{-[UNCNotificationTopicRecord enablesLockScreen](self, "enablesLockScreen")}];
  v25 = [v3 appendBool:{-[UNCNotificationTopicRecord enablesNotificationCenter](self, "enablesNotificationCenter")}];
  v26 = [v3 appendBool:{-[UNCNotificationTopicRecord enablesCarPlay](self, "enablesCarPlay")}];
  v27 = [v3 appendBool:{-[UNCNotificationTopicRecord enablesCriticalAlerts](self, "enablesCriticalAlerts")}];
  v28 = [v3 appendBool:{-[UNCNotificationTopicRecord enablesSounds](self, "enablesSounds")}];
  v29 = [v3 appendBool:{-[UNCNotificationTopicRecord enablesSpoken](self, "enablesSpoken")}];
  v30 = [v3 appendBool:{-[UNCNotificationTopicRecord modalAlertStyle](self, "modalAlertStyle")}];
  v31 = [v3 hash];

  return v31;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UNCNotificationTopicRecord *)self dictionaryRepresentation];
  [v4 encodeObject:v5 forKey:@"dictionary"];
}

- (UNCNotificationTopicRecord)initWithCoder:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:7];
  v7 = [v4 setWithArray:{v6, v12, v13, v14, v15, v16, v17}];

  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"dictionary"];

  v9 = [[UNCNotificationTopicRecord alloc] initWithDictionaryRepresentation:v8];
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end