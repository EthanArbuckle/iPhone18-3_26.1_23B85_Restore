@interface USDeviceActivityEvent
- (BOOL)includesAllActivity;
- (BOOL)isEqual:(id)equal;
- (USDeviceActivityEvent)initWithApplicationTokens:(id)tokens exemptApplicationTokens:(id)applicationTokens categoryTokens:(id)categoryTokens webDomainTokens:(id)domainTokens threshold:(id)threshold includesPastActivity:(BOOL)activity;
- (USDeviceActivityEvent)initWithBundleIdentifiers:(id)identifiers exemptBundleIdentifiers:(id)bundleIdentifiers categoryIdentifiers:(id)categoryIdentifiers webDomains:(id)domains threshold:(id)threshold includesPastActivity:(BOOL)activity;
- (USDeviceActivityEvent)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation USDeviceActivityEvent

- (USDeviceActivityEvent)initWithApplicationTokens:(id)tokens exemptApplicationTokens:(id)applicationTokens categoryTokens:(id)categoryTokens webDomainTokens:(id)domainTokens threshold:(id)threshold includesPastActivity:(BOOL)activity
{
  v38.receiver = self;
  v38.super_class = USDeviceActivityEvent;
  thresholdCopy = threshold;
  domainTokensCopy = domainTokens;
  categoryTokensCopy = categoryTokens;
  applicationTokensCopy = applicationTokens;
  tokensCopy = tokens;
  v18 = [(USDeviceActivityEvent *)&v38 init];
  v19 = [tokensCopy copy];

  applicationTokens = v18->_applicationTokens;
  v18->_applicationTokens = v19;

  v21 = [applicationTokensCopy copy];
  exemptApplicationTokens = v18->_exemptApplicationTokens;
  v18->_exemptApplicationTokens = v21;

  v23 = [categoryTokensCopy copy];
  categoryTokens = v18->_categoryTokens;
  v18->_categoryTokens = v23;

  v25 = [domainTokensCopy copy];
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

  v35 = [thresholdCopy copy];
  threshold = v18->_threshold;
  v18->_threshold = v35;

  v18->_isUntokenized = 0;
  v18->_includesPastActivity = activity;
  return v18;
}

- (USDeviceActivityEvent)initWithBundleIdentifiers:(id)identifiers exemptBundleIdentifiers:(id)bundleIdentifiers categoryIdentifiers:(id)categoryIdentifiers webDomains:(id)domains threshold:(id)threshold includesPastActivity:(BOOL)activity
{
  v38.receiver = self;
  v38.super_class = USDeviceActivityEvent;
  thresholdCopy = threshold;
  domainsCopy = domains;
  categoryIdentifiersCopy = categoryIdentifiers;
  bundleIdentifiersCopy = bundleIdentifiers;
  identifiersCopy = identifiers;
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

  v27 = [identifiersCopy copy];
  bundleIdentifiers = v18->_bundleIdentifiers;
  v18->_bundleIdentifiers = v27;

  v29 = [bundleIdentifiersCopy copy];
  exemptBundleIdentifiers = v18->_exemptBundleIdentifiers;
  v18->_exemptBundleIdentifiers = v29;

  v31 = [categoryIdentifiersCopy copy];
  categoryIdentifiers = v18->_categoryIdentifiers;
  v18->_categoryIdentifiers = v31;

  v33 = [domainsCopy copy];
  webDomains = v18->_webDomains;
  v18->_webDomains = v33;

  v35 = [thresholdCopy copy];
  threshold = v18->_threshold;
  v18->_threshold = v35;

  v18->_isUntokenized = 1;
  v18->_includesPastActivity = activity;
  return v18;
}

- (USDeviceActivityEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v5 = objc_opt_class();
  v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"ApplicationTokens"];
  v48 = [coderCopy decodeObjectOfClasses:v6 forKey:@"ExemptApplicationTokens"];
  v8 = [coderCopy decodeObjectOfClasses:v6 forKey:@"CategoryTokens"];
  v49 = [coderCopy decodeObjectOfClasses:v6 forKey:@"WebDomainTokens"];
  v9 = objc_alloc(MEMORY[0x277CBEB98]);
  v10 = objc_opt_class();
  v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"BundleIdentifiers"];
  v47 = [coderCopy decodeObjectOfClasses:v11 forKey:@"ExemptBundleIdentifiers"];
  v13 = [coderCopy decodeObjectOfClasses:v11 forKey:@"CategoryIdentifiers"];
  v14 = [coderCopy decodeObjectOfClasses:v11 forKey:@"WebDomains"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Threshold"];
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

    v19->_isUntokenized = [coderCopy decodeBoolForKey:@"IsUntokenized"];
    v19->_includesPastActivity = [coderCopy decodeBoolForKey:@"IncludesPastActivity"];
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

- (void)encodeWithCoder:(id)coder
{
  applicationTokens = self->_applicationTokens;
  coderCopy = coder;
  [coderCopy encodeObject:applicationTokens forKey:@"ApplicationTokens"];
  [coderCopy encodeObject:self->_exemptApplicationTokens forKey:@"ExemptApplicationTokens"];
  [coderCopy encodeObject:self->_categoryTokens forKey:@"CategoryTokens"];
  [coderCopy encodeObject:self->_webDomainTokens forKey:@"WebDomainTokens"];
  [coderCopy encodeObject:self->_bundleIdentifiers forKey:@"BundleIdentifiers"];
  [coderCopy encodeObject:self->_exemptBundleIdentifiers forKey:@"ExemptBundleIdentifiers"];
  [coderCopy encodeObject:self->_categoryIdentifiers forKey:@"CategoryIdentifiers"];
  [coderCopy encodeObject:self->_webDomains forKey:@"WebDomains"];
  [coderCopy encodeObject:self->_threshold forKey:@"Threshold"];
  [coderCopy encodeBool:self->_isUntokenized forKey:@"IsUntokenized"];
  [coderCopy encodeBool:self->_includesPastActivity forKey:@"IncludesPastActivity"];
}

- (BOOL)includesAllActivity
{
  if ([(USDeviceActivityEvent *)self isUntokenized])
  {
    bundleIdentifiers = [(USDeviceActivityEvent *)self bundleIdentifiers];
    if (![bundleIdentifiers count])
    {
      categoryIdentifiers = [(USDeviceActivityEvent *)self categoryIdentifiers];
      if (![categoryIdentifiers count])
      {
        webDomains = [(USDeviceActivityEvent *)self webDomains];
LABEL_10:
        v7 = webDomains;
        v6 = [webDomains count] == 0;

        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  else
  {
    bundleIdentifiers = [(USDeviceActivityEvent *)self applicationTokens];
    if (![bundleIdentifiers count])
    {
      categoryIdentifiers = [(USDeviceActivityEvent *)self categoryTokens];
      if (![categoryIdentifiers count])
      {
        webDomains = [(USDeviceActivityEvent *)self webDomainTokens];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    applicationTokens = [(USDeviceActivityEvent *)self applicationTokens];
    applicationTokens2 = [v5 applicationTokens];
    if ([applicationTokens isEqual:applicationTokens2])
    {
      exemptApplicationTokens = [(USDeviceActivityEvent *)self exemptApplicationTokens];
      exemptApplicationTokens2 = [v5 exemptApplicationTokens];
      if ([exemptApplicationTokens isEqual:exemptApplicationTokens2])
      {
        categoryTokens = [(USDeviceActivityEvent *)self categoryTokens];
        categoryTokens2 = [v5 categoryTokens];
        if ([categoryTokens isEqual:categoryTokens2])
        {
          webDomainTokens = [(USDeviceActivityEvent *)self webDomainTokens];
          webDomainTokens2 = [v5 webDomainTokens];
          v35 = webDomainTokens;
          if ([webDomainTokens isEqual:webDomainTokens2])
          {
            bundleIdentifiers = [(USDeviceActivityEvent *)self bundleIdentifiers];
            bundleIdentifiers2 = [v5 bundleIdentifiers];
            v33 = bundleIdentifiers;
            if ([bundleIdentifiers isEqual:bundleIdentifiers2])
            {
              exemptBundleIdentifiers = [(USDeviceActivityEvent *)self exemptBundleIdentifiers];
              exemptBundleIdentifiers2 = [v5 exemptBundleIdentifiers];
              v31 = exemptBundleIdentifiers;
              if ([exemptBundleIdentifiers isEqual:exemptBundleIdentifiers2])
              {
                categoryIdentifiers = [(USDeviceActivityEvent *)self categoryIdentifiers];
                categoryIdentifiers2 = [v5 categoryIdentifiers];
                v29 = categoryIdentifiers;
                if ([categoryIdentifiers isEqual:categoryIdentifiers2])
                {
                  webDomains = [(USDeviceActivityEvent *)self webDomains];
                  webDomains2 = [v5 webDomains];
                  v27 = webDomains;
                  if ([webDomains isEqual:webDomains2])
                  {
                    threshold = [(USDeviceActivityEvent *)self threshold];
                    threshold2 = [v5 threshold];
                    v25 = threshold;
                    v19 = threshold;
                    v20 = threshold2;
                    if ([v19 isEqual:threshold2] && (v24 = -[USDeviceActivityEvent isUntokenized](self, "isUntokenized"), v24 == objc_msgSend(v5, "isUntokenized")))
                    {
                      includesPastActivity = [(USDeviceActivityEvent *)self includesPastActivity];
                      v21 = includesPastActivity ^ [v5 includesPastActivity] ^ 1;
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
  applicationTokens = [(USDeviceActivityEvent *)self applicationTokens];
  v3 = [applicationTokens hash];
  exemptApplicationTokens = [(USDeviceActivityEvent *)self exemptApplicationTokens];
  v4 = [exemptApplicationTokens hash] ^ v3;
  categoryTokens = [(USDeviceActivityEvent *)self categoryTokens];
  v6 = [categoryTokens hash];
  webDomainTokens = [(USDeviceActivityEvent *)self webDomainTokens];
  v8 = v4 ^ v6 ^ [webDomainTokens hash];
  bundleIdentifiers = [(USDeviceActivityEvent *)self bundleIdentifiers];
  v10 = [bundleIdentifiers hash];
  exemptBundleIdentifiers = [(USDeviceActivityEvent *)self exemptBundleIdentifiers];
  v12 = v10 ^ [exemptBundleIdentifiers hash];
  categoryIdentifiers = [(USDeviceActivityEvent *)self categoryIdentifiers];
  v14 = v8 ^ v12 ^ [categoryIdentifiers hash];
  webDomains = [(USDeviceActivityEvent *)self webDomains];
  v16 = [webDomains hash];
  threshold = [(USDeviceActivityEvent *)self threshold];
  v18 = v16 ^ [threshold hash];
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
  threshold = [(USDeviceActivityEvent *)self threshold];
  v6 = [v3 stringWithFormat:@"%@\nThreshold: %@", v4, threshold];

  return v6;
}

@end