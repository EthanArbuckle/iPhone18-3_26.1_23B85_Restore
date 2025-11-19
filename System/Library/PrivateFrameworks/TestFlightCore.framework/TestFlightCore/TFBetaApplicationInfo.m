@interface TFBetaApplicationInfo
- (BOOL)isEqual:(id)a3;
- (TFBetaApplicationInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TFBetaApplicationInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleVersion copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_shortVersionString copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSDictionary *)self->_localizedDisplayNames copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSDictionary *)self->_localizedTestNotes copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSString *)self->_primaryLocaleKey copyWithZone:a3];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(NSString *)self->_testerEmail copyWithZone:a3];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  v18 = [(NSString *)self->_developerName copyWithZone:a3];
  v19 = *(v5 + 64);
  *(v5 + 64) = v18;

  v20 = [(NSDate *)self->_expirationDate copyWithZone:a3];
  v21 = *(v5 + 72);
  *(v5 + 72) = v20;

  v22 = [(NSString *)self->_iconUrlTemplate copyWithZone:a3];
  v23 = *(v5 + 80);
  *(v5 + 80) = v22;

  *(v5 + 8) = self->_iconNeedsMask;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(NSString *)self->_bundleVersion isEqual:v5[2]]&& [(NSString *)self->_shortVersionString isEqual:v5[3]]&& [(NSDictionary *)self->_localizedDisplayNames isEqual:v5[4]]&& [(NSDictionary *)self->_localizedTestNotes isEqual:v5[5]]&& [(NSString *)self->_primaryLocaleKey isEqual:v5[6]]&& [(NSString *)self->_testerEmail isEqual:v5[7]]&& [(NSString *)self->_developerName isEqual:v5[8]]&& [(NSDate *)self->_expirationDate isEqual:v5[9]]&& [(NSString *)self->_iconUrlTemplate isEqual:v5[10]]&& self->_iconNeedsMask == *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleVersion hash];
  v4 = [(NSString *)self->_shortVersionString hash]^ v3;
  v5 = [(NSDictionary *)self->_localizedDisplayNames hash];
  v6 = v4 ^ v5 ^ [(NSDictionary *)self->_localizedTestNotes hash];
  v7 = [(NSString *)self->_primaryLocaleKey hash];
  v8 = v7 ^ [(NSString *)self->_testerEmail hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_developerName hash];
  v10 = [(NSDate *)self->_expirationDate hash];
  v11 = v10 ^ [(NSString *)self->_iconUrlTemplate hash];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_iconNeedsMask];
  v13 = v11 ^ [v12 hash];

  return v9 ^ v13;
}

- (TFBetaApplicationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TFBetaApplicationInfo *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"app_version"];
    bundleVersion = v5->_bundleVersion;
    v5->_bundleVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"app_short_version"];
    shortVersionString = v5->_shortVersionString;
    v5->_shortVersionString = v8;

    v10 = objc_opt_class();
    v11 = [v4 decodeDictionaryWithKeysOfClass:v10 objectsOfClass:objc_opt_class() forKey:@"app_localized_display_names"];
    localizedDisplayNames = v5->_localizedDisplayNames;
    v5->_localizedDisplayNames = v11;

    v13 = objc_opt_class();
    v14 = [v4 decodeDictionaryWithKeysOfClass:v13 objectsOfClass:objc_opt_class() forKey:@"app_localized_test_notes"];
    localizedTestNotes = v5->_localizedTestNotes;
    v5->_localizedTestNotes = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"app_primary_locale"];
    primaryLocaleKey = v5->_primaryLocaleKey;
    v5->_primaryLocaleKey = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"app_tester_email"];
    testerEmail = v5->_testerEmail;
    v5->_testerEmail = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"app_developer_name"];
    developerName = v5->_developerName;
    v5->_developerName = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"app_expiration_date"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"app_icon_url"];
    iconUrlTemplate = v5->_iconUrlTemplate;
    v5->_iconUrlTemplate = v24;

    v5->_iconNeedsMask = [v4 decodeBoolForKey:@"app_icon_needs_mask"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bundleVersion = self->_bundleVersion;
  v5 = a3;
  [v5 encodeObject:bundleVersion forKey:@"app_version"];
  [v5 encodeObject:self->_shortVersionString forKey:@"app_short_version"];
  [v5 encodeObject:self->_localizedDisplayNames forKey:@"app_localized_display_names"];
  [v5 encodeObject:self->_localizedTestNotes forKey:@"app_localized_test_notes"];
  [v5 encodeObject:self->_primaryLocaleKey forKey:@"app_primary_locale"];
  [v5 encodeObject:self->_testerEmail forKey:@"app_tester_email"];
  [v5 encodeObject:self->_developerName forKey:@"app_developer_name"];
  [v5 encodeObject:self->_expirationDate forKey:@"app_expiration_date"];
  [v5 encodeObject:self->_iconUrlTemplate forKey:@"app_icon_url"];
  [v5 encodeBool:self->_iconNeedsMask forKey:@"app_icon_needs_mask"];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v9 = *&self->_localizedDisplayNames;
  v10 = *&self->_bundleVersion;
  v8 = *&self->_primaryLocaleKey;
  v7 = *&self->_developerName;
  iconUrlTemplate = self->_iconUrlTemplate;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_iconNeedsMask];
  v5 = [v2 stringWithFormat:@"bundleVersion = %@ ShortVersion = %@ localizedDisplayNames = %@ localizedTestNotes = %@ primaryLocaleKey = %@ testerEmail = %@ developerName = %@ expirationDate = %@ iconURL = %@ needsMask = %@", v10, v9, v8, v7, iconUrlTemplate, v4];

  return v5;
}

@end