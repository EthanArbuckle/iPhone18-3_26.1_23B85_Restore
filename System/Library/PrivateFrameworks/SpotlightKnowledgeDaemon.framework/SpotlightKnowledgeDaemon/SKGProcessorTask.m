@interface SKGProcessorTask
- (BOOL)allowed;
- (BOOL)enabled;
- (BOOL)supportsBundleID:(id)a3;
- (BOOL)supportsEvent:(int64_t)a3;
- (BOOL)supportsEvent:(int64_t)a3 bundleID:(id)a4;
- (BOOL)supportsEvent:(int64_t)a3 record:(id)a4 bundleID:(id)a5;
- (SKGProcessorTask)initWithName:(id)a3;
- (id)_additionalQuery;
- (id)_backgroundQuery;
- (id)_cleanupQuery;
- (id)_excludedQuery;
- (id)_includedQuery;
- (id)_invalidVersionQuery;
- (id)_journalQuery;
- (id)_notExcludedQuery;
- (id)_notIncludedQuery;
- (id)_updatesQuery;
- (id)_versionQuery;
- (id)processorAttributesForEvent:(int64_t)a3 failed:(BOOL)a4;
- (id)queryForEvent:(int64_t)a3;
- (void)commonInitWithName:(id)a3;
- (void)setRequiredAttributes:(id)a3;
- (void)setSupportedEvent:(int64_t)a3;
- (void)setTrackingAttributes:(id)a3;
@end

@implementation SKGProcessorTask

- (SKGProcessorTask)initWithName:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SKGProcessorTask;
  v5 = [(SKGProcessorTask *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SKGProcessorTask *)v5 commonInitWithName:v4];
  }

  return v6;
}

- (void)commonInitWithName:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  objc_storeStrong(&self->_name, a3);
  v5 = a3;
  *&self->_flags = xmmword_231C225C0;
  *&self->_ignoreInternalBundles = 0;
  bgstOptions = self->_bgstOptions;
  self->_bgstOptions = MEMORY[0x277CBEC10];

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"Unknown";
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItem%@Version", v7];
  versionAttributeKey = self->_versionAttributeKey;
  self->_versionAttributeKey = v8;

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItemNeeds%@Processing", v7];
  journalAttributeKey = self->_journalAttributeKey;
  self->_journalAttributeKey = v10;

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"_kMDItem%@Error", v7];
  errorAttributeKey = self->_errorAttributeKey;
  self->_errorAttributeKey = v12;

  additionalQueries = self->_additionalQueries;
  v15 = MEMORY[0x277CBEBF8];
  self->_additionalQueries = MEMORY[0x277CBEBF8];

  requiredAttributes = self->_requiredAttributes;
  self->_requiredAttributes = v15;

  trackingAttributes = self->_trackingAttributes;
  self->_trackingAttributes = v15;

  v24 = *&self->_versionAttributeKey;
  v25 = self->_errorAttributeKey;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:3];
  donationAttributes = self->_donationAttributes;
  self->_donationAttributes = v18;

  versionValue = self->_versionValue;
  self->_versionValue = &unk_2846E7E60;

  *&self->_enabled = 257;
  v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
  fetchAttributes = self->_fetchAttributes;
  self->_fetchAttributes = v21;

  [(NSMutableSet *)self->_fetchAttributes addObject:self->_versionAttributeKey];
  [(NSMutableSet *)self->_fetchAttributes addObject:self->_journalAttributeKey];
  [(NSMutableSet *)self->_fetchAttributes addObject:self->_errorAttributeKey];
  [(NSMutableSet *)self->_fetchAttributes addObjectsFromArray:self->_donationAttributes];

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_versionQuery
{
  v22 = objc_alloc_init(SKGQueryStringBuilder);
  v21 = [(SKGQueryStringBuilder *)v22 beginGroup];
  v3 = [v21 withAttribute];
  v19 = [(SKGProcessorTask *)self versionAttributeKey];
  v20 = v3;
  v18 = (*(v3 + 16))(v3, v19, @"!=", @"*");
  v17 = [v18 or];
  v16 = [v17 beginGroup];
  v4 = [v16 withAttribute];
  v5 = [(SKGProcessorTask *)self versionAttributeKey];
  v6 = (v4)[2](v4, v5, @"=", @"*");
  v7 = [v6 and];
  v8 = [v7 withAttribute];
  v9 = [(SKGProcessorTask *)self versionAttributeKey];
  v10 = [(SKGProcessorTask *)self versionValue];
  v11 = (v8)[2](v8, v9, @"!=", v10);
  v12 = [v11 endGroup];
  v13 = [v12 endGroup];

  v14 = [v13 build];

  return v14;
}

- (id)_invalidVersionQuery
{
  v15 = objc_alloc_init(SKGQueryStringBuilder);
  v3 = [(SKGQueryStringBuilder *)v15 beginGroup];
  v4 = [v3 withAttribute];
  v5 = [(SKGProcessorTask *)self versionAttributeKey];
  v6 = (v4)[2](v4, v5, @"=", @"*");
  v7 = [v6 and];
  v8 = [v7 withAttribute];
  v9 = [(SKGProcessorTask *)self versionAttributeKey];
  v10 = [(SKGProcessorTask *)self versionValue];
  v11 = (v8)[2](v8, v9, @"!=", v10);
  v12 = [v11 endGroup];

  v13 = [v12 build];

  return v13;
}

- (id)_journalQuery
{
  v22 = objc_alloc_init(SKGQueryStringBuilder);
  v21 = [(SKGQueryStringBuilder *)v22 beginGroup];
  v3 = [v21 withAttribute];
  v19 = [(SKGProcessorTask *)self versionAttributeKey];
  v20 = v3;
  v18 = (*(v3 + 16))(v3, v19, @"!=", @"*");
  v17 = [v18 or];
  v16 = [v17 beginGroup];
  v4 = [v16 withAttribute];
  v5 = [(SKGProcessorTask *)self versionAttributeKey];
  v6 = (v4)[2](v4, v5, @"=", @"*");
  v7 = [v6 and];
  v8 = [v7 withAttribute];
  v9 = [(SKGProcessorTask *)self versionAttributeKey];
  v10 = [(SKGProcessorTask *)self versionValue];
  v11 = (v8)[2](v8, v9, @"!=", v10);
  v12 = [v11 endGroup];
  v13 = [v12 endGroup];

  v14 = [v13 build];

  return v14;
}

- (id)_excludedQuery
{
  v3 = [(SKGProcessorTask *)self excludeBundles];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_alloc_init(SKGQueryStringBuilder);
    v6 = [(SKGQueryStringBuilder *)v5 beginGroup];
    v7 = [v6 withFieldMatch];
    v8 = [(SKGProcessorTask *)self excludeBundles];
    v9 = (v7)[2](v7, @"_kMDItemBundleID", v8);
    v10 = [v9 endGroup];

    v11 = [v10 build];
  }

  else
  {
    v11 = @"false";
  }

  return v11;
}

- (id)_notExcludedQuery
{
  v3 = [(SKGProcessorTask *)self excludeBundles];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_alloc_init(SKGQueryStringBuilder);
    v6 = [(SKGQueryStringBuilder *)v5 beginGroup];
    v7 = [v6 not];
    v8 = [v7 withFieldMatch];
    v9 = [(SKGProcessorTask *)self excludeBundles];
    v10 = (v8)[2](v8, @"_kMDItemBundleID", v9);
    v11 = [v10 endGroup];

    v12 = [v11 build];
  }

  else
  {
    v12 = @"true";
  }

  return v12;
}

- (id)_includedQuery
{
  v3 = [(SKGProcessorTask *)self includeBundles];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_alloc_init(SKGQueryStringBuilder);
    v6 = [(SKGQueryStringBuilder *)v5 beginGroup];
    v7 = [v6 withFieldMatch];
    v8 = [(SKGProcessorTask *)self includeBundles];
    v9 = (v7)[2](v7, @"_kMDItemBundleID", v8);
    v10 = [v9 endGroup];

    v11 = [v10 build];
  }

  else
  {
    v11 = @"true";
  }

  return v11;
}

- (id)_notIncludedQuery
{
  v3 = [(SKGProcessorTask *)self includeBundles];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_alloc_init(SKGQueryStringBuilder);
    v6 = [(SKGQueryStringBuilder *)v5 beginGroup];
    v7 = [v6 not];
    v8 = [v7 withFieldMatch];
    v9 = [(SKGProcessorTask *)self includeBundles];
    v10 = (v8)[2](v8, @"_kMDItemBundleID", v9);
    v11 = [v10 endGroup];

    v12 = [v11 build];
  }

  else
  {
    v12 = @"false";
  }

  return v12;
}

- (id)_backgroundQuery
{
  if ([(SKGProcessorTask *)self allowed]&& [(SKGProcessorTask *)self supportsEvent:4])
  {
    v36 = objc_alloc_init(SKGQueryStringBuilder);
    v35 = [(SKGQueryStringBuilder *)v36 beginGroup];
    v3 = [v35 withQuery];
    v33 = [(SKGProcessorTask *)self _notExcludedQuery];
    v34 = v3;
    v32 = (*(v3 + 16))(v3, v33);
    v31 = [v32 and];
    v4 = [v31 withQuery];
    v29 = [(SKGProcessorTask *)self _includedQuery];
    v30 = v4;
    v28 = (*(v4 + 16))(v4, v29);
    v27 = [v28 and];
    v26 = [v27 beginGroup];
    v25 = [v26 withAttribute];
    v24 = (v25)[2](v25, @"kMDItemTextContent", @"!=", @"*");
    v23 = [v24 endGroup];
    v22 = [v23 and];
    v5 = [v22 withQuery];
    v21 = [(SKGProcessorTask *)self _versionQuery];
    v19 = (v5)[2](v5, v21);
    v18 = [v19 and];
    v17 = [v18 beginGroup];
    v6 = [v17 withQuery];
    v7 = [(SKGProcessorTask *)self _additionalQuery];
    v8 = (v6)[2](v6, v7);
    v9 = [v8 or];
    v10 = [v9 withQuery];
    v11 = [(SKGProcessorTask *)self requiredAttributes];
    v12 = [SKGQueryStringBuilder queryForAttributesExist:v11];
    v13 = (v10)[2](v10, v12);
    v14 = [v13 endGroup];
    v20 = [v14 endGroup];

    v15 = [v20 build];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_updatesQuery
{
  if ([(SKGProcessorTask *)self allowed]&& [(SKGProcessorTask *)self supportsEvent:2])
  {
    v36 = objc_alloc_init(SKGQueryStringBuilder);
    v35 = [(SKGQueryStringBuilder *)v36 beginGroup];
    v3 = [v35 withQuery];
    v33 = [(SKGProcessorTask *)self _notExcludedQuery];
    v34 = v3;
    v32 = (*(v3 + 16))(v3, v33);
    v31 = [v32 and];
    v4 = [v31 withQuery];
    v29 = [(SKGProcessorTask *)self _includedQuery];
    v30 = v4;
    v28 = (*(v4 + 16))(v4, v29);
    v27 = [v28 and];
    v26 = [v27 beginGroup];
    v25 = [v26 withAttribute];
    v24 = (v25)[2](v25, @"kMDItemTextContent", @"=", @"*");
    v23 = [v24 endGroup];
    v22 = [v23 and];
    v5 = [v22 withQuery];
    v21 = [(SKGProcessorTask *)self _versionQuery];
    v19 = (v5)[2](v5, v21);
    v18 = [v19 and];
    v17 = [v18 beginGroup];
    v6 = [v17 withQuery];
    v7 = [(SKGProcessorTask *)self _additionalQuery];
    v8 = (v6)[2](v6, v7);
    v9 = [v8 or];
    v10 = [v9 withQuery];
    v11 = [(SKGProcessorTask *)self requiredAttributes];
    v12 = [SKGQueryStringBuilder queryForAttributesExist:v11];
    v13 = (v10)[2](v10, v12);
    v14 = [v13 endGroup];
    v20 = [v14 endGroup];

    v15 = [v20 build];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_cleanupQuery
{
  v3 = objc_alloc_init(SKGQueryStringBuilder);
  if ([(SKGProcessorTask *)self enabled])
  {
    v29 = [(SKGQueryStringBuilder *)v3 beginGroup];
    v26 = [v29 beginGroup];
    v24 = [v26 beginGroup];
    v4 = [v24 withQuery];
    v31 = [(SKGProcessorTask *)self _excludedQuery];
    v32 = v4;
    v30 = (*(v4 + 16))(v4, v31);
    v28 = [v30 or];
    v5 = [v28 withQuery];
    v25 = [(SKGProcessorTask *)self _notIncludedQuery];
    v27 = v5;
    v23 = (*(v5 + 16))(v5, v25);
    v22 = [v23 endGroup];
    v21 = [v22 and];
    v6 = [v21 withQuery];
    v20 = [(SKGProcessorTask *)self donationAttributes];
    v7 = [SKGQueryStringBuilder queryForAttributesExist:v20];
    v8 = (v6)[2](v6, v7);
    v9 = [v8 endGroup];
    v10 = [v9 or];
    v11 = [v10 withQuery];
    v12 = [(SKGProcessorTask *)self _invalidVersionQuery];
    v13 = (v11)[2](v11, v12);
    v14 = [v13 endGroup];

    v15 = v24;
    v16 = v26;

    v17 = v29;
    v3 = v32;
  }

  else
  {
    v17 = [(SKGQueryStringBuilder *)v3 withQuery];
    v16 = [(SKGProcessorTask *)self donationAttributes];
    v15 = [SKGQueryStringBuilder queryForAttributesExist:v16];
    v14 = (v17)[2](v17, v15);
  }

  v18 = [v14 build];

  return v18;
}

- (id)_additionalQuery
{
  if ([(SKGProcessorTask *)self allowed])
  {
    v3 = [(SKGProcessorTask *)self additionalQueries];
    v4 = [v3 count];

    if (v4)
    {
      v5 = objc_alloc_init(SKGQueryStringBuilder);
      v6 = [(SKGQueryStringBuilder *)v5 withQueries];
      v7 = [(SKGProcessorTask *)self additionalQueries];
      v8 = (v6)[2](v6, v7, @"||");

      v9 = [v8 build];
    }

    else
    {
      v9 = @"(true)";
    }
  }

  else
  {
    v9 = @"(false)";
  }

  return v9;
}

- (void)setSupportedEvent:(int64_t)a3
{
  if ((a3 - 1) <= 3)
  {
    self->_events |= qword_231C22720[a3 - 1];
  }
}

- (BOOL)enabled
{
  v2 = 146;
  if (self->_overrideEnabled)
  {
    v2 = 144;
  }

  return *(&self->super.isa + v2);
}

- (void)setRequiredAttributes:(id)a3
{
  objc_storeStrong(&self->_requiredAttributes, a3);
  v5 = a3;
  [(NSMutableSet *)self->_fetchAttributes addObjectsFromArray:v5];
}

- (void)setTrackingAttributes:(id)a3
{
  objc_storeStrong(&self->_trackingAttributes, a3);
  v5 = a3;
  [(NSMutableSet *)self->_fetchAttributes addObjectsFromArray:v5];
}

- (BOOL)allowed
{
  v3 = [(SKGProcessorTask *)self canRun];
  if (v3)
  {

    LOBYTE(v3) = [(SKGProcessorTask *)self enabled];
  }

  return v3;
}

- (BOOL)supportsBundleID:(id)a3
{
  v4 = a3;
  if (![(SKGProcessorTask *)self enabled])
  {
    goto LABEL_13;
  }

  if ([v4 length])
  {
    v5 = [(SKGProcessorTask *)self includeBundles];
    if ([v5 count])
    {
      v6 = [(SKGProcessorTask *)self includeBundles];
      v7 = [v6 containsObject:v4];

      if (v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v9 = [(SKGProcessorTask *)self excludeBundles];
    if ([v9 count])
    {
      v10 = [(SKGProcessorTask *)self excludeBundles];
      v11 = [v10 containsObject:v4];

      if (v11)
      {
LABEL_13:
        v8 = 0;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v12 = [v4 hasPrefix:@"com.apple."];
    if (![(SKGProcessorTask *)self ignoreInternalBundles]|| (v12 & 1) == 0)
    {
      v8 = ![(SKGProcessorTask *)self ignoreExternalBundles]| v12;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = 1;
LABEL_14:

  return v8 & 1;
}

- (BOOL)supportsEvent:(int64_t)a3
{
  v5 = [(SKGProcessorTask *)self allowed];
  if (v5)
  {
    if ((a3 - 1) > 3)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v6 = qword_231C22720[a3 - 1];
      LOBYTE(v5) = ([(SKGProcessorTask *)self events]& v6) != 0;
    }
  }

  return v5;
}

- (BOOL)supportsEvent:(int64_t)a3 bundleID:(id)a4
{
  v6 = a4;
  if ([(SKGProcessorTask *)self supportsEvent:a3])
  {
    v7 = [(SKGProcessorTask *)self supportsBundleID:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)supportsEvent:(int64_t)a3 record:(id)a4 bundleID:(id)a5
{
  v7 = a4;
  if (![(SKGProcessorTask *)self supportsBundleID:a5])
  {
    goto LABEL_13;
  }

  v8 = [(SKGProcessorTask *)self requiredAttributes];
  if ([v8 count])
  {
    v9 = [(SKGProcessorTask *)self requiredAttributes];
    v10 = [v7 queryRecordIncludesAttributes:v9];

    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v11 = [(SKGProcessorTask *)self trackingAttributes];
  if ([v11 count])
  {
    v12 = [(SKGProcessorTask *)self trackingAttributes];
    v13 = [v7 queryRecordIncludesAttributes:v12];

    if (!v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v14 = [(SKGProcessorTask *)self versionAttributeKey];

  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = [(SKGProcessorTask *)self versionAttributeKey];
  v16 = [v7 queryRecordNumberValueForKey:v15];

  if (!v16 || (-[SKGProcessorTask versionValue](self, "versionValue"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v16 isEqualToNumber:v17], v17, v16, (v18 & 1) == 0))
  {
LABEL_15:
    v19 = 1;
    goto LABEL_14;
  }

LABEL_13:
  v19 = 0;
LABEL_14:

  return v19;
}

- (id)queryForEvent:(int64_t)a3
{
  switch(a3)
  {
    case 2:
      v3 = [(SKGProcessorTask *)self _updatesQuery];
      break;
    case 4:
      v3 = [(SKGProcessorTask *)self _backgroundQuery];
      break;
    case 3:
      v3 = [(SKGProcessorTask *)self _cleanupQuery];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (id)processorAttributesForEvent:(int64_t)a3 failed:(BOOL)a4
{
  v4 = a4;
  if (![(SKGProcessorTask *)self supportsEvent:?])
  {
    goto LABEL_6;
  }

  if (a3 == 4)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v4)
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = [(SKGProcessorTask *)self errorAttributeKey];
      v15 = [v13 stringWithFormat:@":INC:%@", v14];

      [v7 setObject:&unk_2846E7E78 forKey:v15];
      v16 = *MEMORY[0x277CBEEE8];
      v17 = [(SKGProcessorTask *)self versionAttributeKey];
      v18 = v7;
      v19 = v16;
    }

    else
    {
      v15 = [(SKGProcessorTask *)self versionValue];
      v17 = [(SKGProcessorTask *)self versionAttributeKey];
      v18 = v7;
      v19 = v15;
    }

    [v18 setObject:v19 forKey:v17];

    goto LABEL_13;
  }

  if (a3 != 1)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_14;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v4)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [(SKGProcessorTask *)self errorAttributeKey];
    v10 = [v8 stringWithFormat:@":INC:%@", v9];

    [v7 setObject:&unk_2846E7E78 forKey:v10];
    v11 = *MEMORY[0x277CBEEE8];
    v12 = [(SKGProcessorTask *)self versionAttributeKey];
    [v7 setObject:v11 forKey:v12];
  }

  else
  {
    v20 = [(SKGProcessorTask *)self versionValue];
    v21 = [(SKGProcessorTask *)self versionAttributeKey];
    [v7 setObject:v20 forKey:v21];

    v11 = *MEMORY[0x277CBEEE8];
  }

  v15 = [(SKGProcessorTask *)self journalAttributeKey];
  [v7 setObject:v11 forKey:v15];
LABEL_13:

LABEL_14:

  return v7;
}

@end