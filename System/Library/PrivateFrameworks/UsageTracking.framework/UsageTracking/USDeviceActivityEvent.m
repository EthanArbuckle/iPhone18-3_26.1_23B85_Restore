@interface USDeviceActivityEvent
- (BOOL)includesAllActivity;
- (BOOL)isEqual:(id)a3;
- (USDeviceActivityEvent)initWithApplicationTokens:(id)a3 exemptApplicationTokens:(id)a4 categoryTokens:(id)a5 webDomainTokens:(id)a6 threshold:(id)a7 includesPastActivity:(BOOL)a8;
- (USDeviceActivityEvent)initWithBundleIdentifiers:(id)a3 exemptBundleIdentifiers:(id)a4 categoryIdentifiers:(id)a5 webDomains:(id)a6 threshold:(id)a7 includesPastActivity:(BOOL)a8;
- (USDeviceActivityEvent)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation USDeviceActivityEvent

- (USDeviceActivityEvent)initWithApplicationTokens:(id)a3 exemptApplicationTokens:(id)a4 categoryTokens:(id)a5 webDomainTokens:(id)a6 threshold:(id)a7 includesPastActivity:(BOOL)a8
{
  v38.receiver = self;
  v38.super_class = USDeviceActivityEvent;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(USDeviceActivityEvent *)&v38 init];
  v19 = [v17 copy];

  applicationTokens = v18->_applicationTokens;
  v18->_applicationTokens = v19;

  v21 = [v16 copy];
  exemptApplicationTokens = v18->_exemptApplicationTokens;
  v18->_exemptApplicationTokens = v21;

  v23 = [v15 copy];
  categoryTokens = v18->_categoryTokens;
  v18->_categoryTokens = v23;

  v25 = [v14 copy];
  webDomainTokens = v18->_webDomainTokens;
  v18->_webDomainTokens = v25;

  v27 = objc_opt_new();
  bundleIdentifiers = v18->_bundleIdentifiers;
  v18->_bundleIdentifiers = v27;

  v29 = objc_opt_new();
  exemptBundleIdentifiers = v18->_exemptBundleIdentifiers;
  v18->_exemptBundleIdentifiers = v29;

  v31 = objc_opt_new();
  categoryIdentifiers = v18->_categoryIdentifiers;
  v18->_categoryIdentifiers = v31;

  v33 = objc_opt_new();
  webDomains = v18->_webDomains;
  v18->_webDomains = v33;

  v35 = [v13 copy];
  threshold = v18->_threshold;
  v18->_threshold = v35;

  v18->_isUntokenized = 0;
  v18->_includesPastActivity = a8;
  return v18;
}

- (USDeviceActivityEvent)initWithBundleIdentifiers:(id)a3 exemptBundleIdentifiers:(id)a4 categoryIdentifiers:(id)a5 webDomains:(id)a6 threshold:(id)a7 includesPastActivity:(BOOL)a8
{
  v38.receiver = self;
  v38.super_class = USDeviceActivityEvent;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(USDeviceActivityEvent *)&v38 init];
  v19 = objc_opt_new();
  applicationTokens = v18->_applicationTokens;
  v18->_applicationTokens = v19;

  v21 = objc_opt_new();
  exemptApplicationTokens = v18->_exemptApplicationTokens;
  v18->_exemptApplicationTokens = v21;

  v23 = objc_opt_new();
  categoryTokens = v18->_categoryTokens;
  v18->_categoryTokens = v23;

  v25 = objc_opt_new();
  webDomainTokens = v18->_webDomainTokens;
  v18->_webDomainTokens = v25;

  v27 = [v17 copy];
  bundleIdentifiers = v18->_bundleIdentifiers;
  v18->_bundleIdentifiers = v27;

  v29 = [v16 copy];
  exemptBundleIdentifiers = v18->_exemptBundleIdentifiers;
  v18->_exemptBundleIdentifiers = v29;

  v31 = [v15 copy];
  categoryIdentifiers = v18->_categoryIdentifiers;
  v18->_categoryIdentifiers = v31;

  v33 = [v14 copy];
  webDomains = v18->_webDomains;
  v18->_webDomains = v33;

  v35 = [v13 copy];
  threshold = v18->_threshold;
  v18->_threshold = v35;

  v18->_isUntokenized = 1;
  v18->_includesPastActivity = a8;
  return v18;
}

- (USDeviceActivityEvent)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = objc_opt_class();
  v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [v3 decodeObjectOfClasses:v6 forKey:@"ApplicationTokens"];
  v48 = [v3 decodeObjectOfClasses:v6 forKey:@"ExemptApplicationTokens"];
  v8 = [v3 decodeObjectOfClasses:v6 forKey:@"CategoryTokens"];
  v49 = [v3 decodeObjectOfClasses:v6 forKey:@"WebDomainTokens"];
  v9 = objc_alloc(MEMORY[0x277CBEB98]);
  v10 = objc_opt_class();
  v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v3 decodeObjectOfClasses:v11 forKey:@"BundleIdentifiers"];
  v47 = [v3 decodeObjectOfClasses:v11 forKey:@"ExemptBundleIdentifiers"];
  v13 = [v3 decodeObjectOfClasses:v11 forKey:@"CategoryIdentifiers"];
  v14 = [v3 decodeObjectOfClasses:v11 forKey:@"WebDomains"];
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"Threshold"];
  v16 = v15;
  v44 = v12;
  v45 = v7;
  if (v7 && v8 && v49 && v12 && v13 && v14 && v15)
  {
    v17 = v7;
    v50.receiver = self;
    v50.super_class = USDeviceActivityEvent;
    v18 = v12;
    v19 = [(USDeviceActivityEvent *)&v50 init];
    v20 = [v17 copy];
    applicationTokens = v19->_applicationTokens;
    v19->_applicationTokens = v20;

    v22 = [v48 copy];
    exemptApplicationTokens = v19->_exemptApplicationTokens;
    v19->_exemptApplicationTokens = v22;

    v24 = v8;
    v25 = [v8 copy];
    categoryTokens = v19->_categoryTokens;
    v19->_categoryTokens = v25;

    v27 = v49;
    v28 = [v49 copy];
    webDomainTokens = v19->_webDomainTokens;
    v19->_webDomainTokens = v28;

    v30 = v18;
    v31 = v24;
    v32 = [v30 copy];
    bundleIdentifiers = v19->_bundleIdentifiers;
    v19->_bundleIdentifiers = v32;

    v34 = v47;
    v35 = [v47 copy];
    exemptBundleIdentifiers = v19->_exemptBundleIdentifiers;
    v19->_exemptBundleIdentifiers = v35;

    v37 = [v13 copy];
    categoryIdentifiers = v19->_categoryIdentifiers;
    v19->_categoryIdentifiers = v37;

    v39 = [v14 copy];
    webDomains = v19->_webDomains;
    v19->_webDomains = v39;

    v41 = [v16 copy];
    threshold = v19->_threshold;
    v19->_threshold = v41;

    v19->_isUntokenized = [v3 decodeBoolForKey:@"IsUntokenized"];
    v19->_includesPastActivity = [v3 decodeBoolForKey:@"IncludesPastActivity"];
  }

  else
  {

    v19 = 0;
    v31 = v8;
    v27 = v49;
    v34 = v47;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  applicationTokens = self->_applicationTokens;
  v5 = a3;
  [v5 encodeObject:applicationTokens forKey:@"ApplicationTokens"];
  [v5 encodeObject:self->_exemptApplicationTokens forKey:@"ExemptApplicationTokens"];
  [v5 encodeObject:self->_categoryTokens forKey:@"CategoryTokens"];
  [v5 encodeObject:self->_webDomainTokens forKey:@"WebDomainTokens"];
  [v5 encodeObject:self->_bundleIdentifiers forKey:@"BundleIdentifiers"];
  [v5 encodeObject:self->_exemptBundleIdentifiers forKey:@"ExemptBundleIdentifiers"];
  [v5 encodeObject:self->_categoryIdentifiers forKey:@"CategoryIdentifiers"];
  [v5 encodeObject:self->_webDomains forKey:@"WebDomains"];
  [v5 encodeObject:self->_threshold forKey:@"Threshold"];
  [v5 encodeBool:self->_isUntokenized forKey:@"IsUntokenized"];
  [v5 encodeBool:self->_includesPastActivity forKey:@"IncludesPastActivity"];
}

- (BOOL)includesAllActivity
{
  if ([(USDeviceActivityEvent *)self isUntokenized])
  {
    v3 = [(USDeviceActivityEvent *)self bundleIdentifiers];
    if (![v3 count])
    {
      v4 = [(USDeviceActivityEvent *)self categoryIdentifiers];
      if (![v4 count])
      {
        v5 = [(USDeviceActivityEvent *)self webDomains];
LABEL_10:
        v7 = v5;
        v6 = [v5 count] == 0;

        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v3 = [(USDeviceActivityEvent *)self applicationTokens];
    if (![v3 count])
    {
      v4 = [(USDeviceActivityEvent *)self categoryTokens];
      if (![v4 count])
      {
        v5 = [(USDeviceActivityEvent *)self webDomainTokens];
        goto LABEL_10;
      }

LABEL_8:
      v6 = 0;
LABEL_11:

      goto LABEL_12;
    }
  }

  v6 = 0;
LABEL_12:

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(USDeviceActivityEvent *)self applicationTokens];
    v7 = [v5 applicationTokens];
    if ([v6 isEqual:v7])
    {
      v8 = [(USDeviceActivityEvent *)self exemptApplicationTokens];
      v9 = [v5 exemptApplicationTokens];
      if ([v8 isEqual:v9])
      {
        v10 = [(USDeviceActivityEvent *)self categoryTokens];
        v11 = [v5 categoryTokens];
        if ([v10 isEqual:v11])
        {
          v12 = [(USDeviceActivityEvent *)self webDomainTokens];
          v34 = [v5 webDomainTokens];
          v35 = v12;
          if ([v12 isEqual:v34])
          {
            v13 = [(USDeviceActivityEvent *)self bundleIdentifiers];
            v32 = [v5 bundleIdentifiers];
            v33 = v13;
            if ([v13 isEqual:v32])
            {
              v14 = [(USDeviceActivityEvent *)self exemptBundleIdentifiers];
              v30 = [v5 exemptBundleIdentifiers];
              v31 = v14;
              if ([v14 isEqual:v30])
              {
                v15 = [(USDeviceActivityEvent *)self categoryIdentifiers];
                v28 = [v5 categoryIdentifiers];
                v29 = v15;
                if ([v15 isEqual:v28])
                {
                  v16 = [(USDeviceActivityEvent *)self webDomains];
                  v26 = [v5 webDomains];
                  v27 = v16;
                  if ([v16 isEqual:v26])
                  {
                    v17 = [(USDeviceActivityEvent *)self threshold];
                    v18 = [v5 threshold];
                    v25 = v17;
                    v19 = v17;
                    v20 = v18;
                    if ([v19 isEqual:v18] && (v24 = -[USDeviceActivityEvent isUntokenized](self, "isUntokenized"), v24 == objc_msgSend(v5, "isUntokenized")))
                    {
                      v22 = [(USDeviceActivityEvent *)self includesPastActivity];
                      v21 = v22 ^ [v5 includesPastActivity] ^ 1;
                    }

                    else
                    {
                      LOBYTE(v21) = 0;
                    }
                  }

                  else
                  {
                    LOBYTE(v21) = 0;
                  }
                }

                else
                {
                  LOBYTE(v21) = 0;
                }
              }

              else
              {
                LOBYTE(v21) = 0;
              }
            }

            else
            {
              LOBYTE(v21) = 0;
            }
          }

          else
          {
            LOBYTE(v21) = 0;
          }
        }

        else
        {
          LOBYTE(v21) = 0;
        }
      }

      else
      {
        LOBYTE(v21) = 0;
      }
    }

    else
    {
      LOBYTE(v21) = 0;
    }
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21;
}

- (unint64_t)hash
{
  v23 = [(USDeviceActivityEvent *)self applicationTokens];
  v3 = [v23 hash];
  v22 = [(USDeviceActivityEvent *)self exemptApplicationTokens];
  v4 = [v22 hash] ^ v3;
  v5 = [(USDeviceActivityEvent *)self categoryTokens];
  v6 = [v5 hash];
  v7 = [(USDeviceActivityEvent *)self webDomainTokens];
  v8 = v4 ^ v6 ^ [v7 hash];
  v9 = [(USDeviceActivityEvent *)self bundleIdentifiers];
  v10 = [v9 hash];
  v11 = [(USDeviceActivityEvent *)self exemptBundleIdentifiers];
  v12 = v10 ^ [v11 hash];
  v13 = [(USDeviceActivityEvent *)self categoryIdentifiers];
  v14 = v8 ^ v12 ^ [v13 hash];
  v15 = [(USDeviceActivityEvent *)self webDomains];
  v16 = [v15 hash];
  v17 = [(USDeviceActivityEvent *)self threshold];
  v18 = v16 ^ [v17 hash];
  v19 = v18 ^ [(USDeviceActivityEvent *)self isUntokenized];
  v20 = v19 ^ [(USDeviceActivityEvent *)self includesPastActivity];

  return v14 ^ v20;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = USDeviceActivityEvent;
  v4 = [(USDeviceActivityEvent *)&v8 description];
  v5 = [(USDeviceActivityEvent *)self threshold];
  v6 = [v3 stringWithFormat:@"%@\nThreshold: %@", v4, v5];

  return v6;
}

@end