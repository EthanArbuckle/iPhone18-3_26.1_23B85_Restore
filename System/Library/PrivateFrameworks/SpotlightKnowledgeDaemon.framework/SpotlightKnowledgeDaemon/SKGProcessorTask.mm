@interface SKGProcessorTask
- (BOOL)allowed;
- (BOOL)enabled;
- (BOOL)supportsBundleID:(id)d;
- (BOOL)supportsEvent:(int64_t)event;
- (BOOL)supportsEvent:(int64_t)event bundleID:(id)d;
- (BOOL)supportsEvent:(int64_t)event record:(id)record bundleID:(id)d;
- (SKGProcessorTask)initWithName:(id)name;
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
- (id)processorAttributesForEvent:(int64_t)event failed:(BOOL)failed;
- (id)queryForEvent:(int64_t)event;
- (void)commonInitWithName:(id)name;
- (void)setRequiredAttributes:(id)attributes;
- (void)setSupportedEvent:(int64_t)event;
- (void)setTrackingAttributes:(id)attributes;
@end

@implementation SKGProcessorTask

- (SKGProcessorTask)initWithName:(id)name
{
  nameCopy = name;
  v8.receiver = self;
  v8.super_class = SKGProcessorTask;
  v5 = [(SKGProcessorTask *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SKGProcessorTask *)v5 commonInitWithName:nameCopy];
  }

  return v6;
}

- (void)commonInitWithName:(id)name
{
  v26 = *MEMORY[0x277D85DE8];
  objc_storeStrong(&self->_name, name);
  nameCopy = name;
  *&self->_flags = xmmword_231C225C0;
  *&self->_ignoreInternalBundles = 0;
  bgstOptions = self->_bgstOptions;
  self->_bgstOptions = MEMORY[0x277CBEC10];

  if (nameCopy)
  {
    v7 = nameCopy;
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
  beginGroup = [(SKGQueryStringBuilder *)v22 beginGroup];
  withAttribute = [beginGroup withAttribute];
  versionAttributeKey = [(SKGProcessorTask *)self versionAttributeKey];
  v20 = withAttribute;
  v18 = (*(withAttribute + 16))(withAttribute, versionAttributeKey, @"!=", @"*");
  v17 = [v18 or];
  beginGroup2 = [v17 beginGroup];
  withAttribute2 = [beginGroup2 withAttribute];
  versionAttributeKey2 = [(SKGProcessorTask *)self versionAttributeKey];
  v6 = (withAttribute2)[2](withAttribute2, versionAttributeKey2, @"=", @"*");
  v7 = [v6 and];
  withAttribute3 = [v7 withAttribute];
  versionAttributeKey3 = [(SKGProcessorTask *)self versionAttributeKey];
  versionValue = [(SKGProcessorTask *)self versionValue];
  v11 = (withAttribute3)[2](withAttribute3, versionAttributeKey3, @"!=", versionValue);
  endGroup = [v11 endGroup];
  v12EndGroup = [endGroup endGroup];

  build = [v12EndGroup build];

  return build;
}

- (id)_invalidVersionQuery
{
  v15 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v15 beginGroup];
  withAttribute = [beginGroup withAttribute];
  versionAttributeKey = [(SKGProcessorTask *)self versionAttributeKey];
  v6 = (withAttribute)[2](withAttribute, versionAttributeKey, @"=", @"*");
  v7 = [v6 and];
  withAttribute2 = [v7 withAttribute];
  versionAttributeKey2 = [(SKGProcessorTask *)self versionAttributeKey];
  versionValue = [(SKGProcessorTask *)self versionValue];
  v11 = (withAttribute2)[2](withAttribute2, versionAttributeKey2, @"!=", versionValue);
  endGroup = [v11 endGroup];

  build = [endGroup build];

  return build;
}

- (id)_journalQuery
{
  v22 = objc_alloc_init(SKGQueryStringBuilder);
  beginGroup = [(SKGQueryStringBuilder *)v22 beginGroup];
  withAttribute = [beginGroup withAttribute];
  versionAttributeKey = [(SKGProcessorTask *)self versionAttributeKey];
  v20 = withAttribute;
  v18 = (*(withAttribute + 16))(withAttribute, versionAttributeKey, @"!=", @"*");
  v17 = [v18 or];
  beginGroup2 = [v17 beginGroup];
  withAttribute2 = [beginGroup2 withAttribute];
  versionAttributeKey2 = [(SKGProcessorTask *)self versionAttributeKey];
  v6 = (withAttribute2)[2](withAttribute2, versionAttributeKey2, @"=", @"*");
  v7 = [v6 and];
  withAttribute3 = [v7 withAttribute];
  versionAttributeKey3 = [(SKGProcessorTask *)self versionAttributeKey];
  versionValue = [(SKGProcessorTask *)self versionValue];
  v11 = (withAttribute3)[2](withAttribute3, versionAttributeKey3, @"!=", versionValue);
  endGroup = [v11 endGroup];
  v12EndGroup = [endGroup endGroup];

  build = [v12EndGroup build];

  return build;
}

- (id)_excludedQuery
{
  excludeBundles = [(SKGProcessorTask *)self excludeBundles];
  v4 = [excludeBundles count];

  if (v4)
  {
    v5 = objc_alloc_init(SKGQueryStringBuilder);
    beginGroup = [(SKGQueryStringBuilder *)v5 beginGroup];
    withFieldMatch = [beginGroup withFieldMatch];
    excludeBundles2 = [(SKGProcessorTask *)self excludeBundles];
    v9 = (withFieldMatch)[2](withFieldMatch, @"_kMDItemBundleID", excludeBundles2);
    endGroup = [v9 endGroup];

    build = [endGroup build];
  }

  else
  {
    build = @"false";
  }

  return build;
}

- (id)_notExcludedQuery
{
  excludeBundles = [(SKGProcessorTask *)self excludeBundles];
  v4 = [excludeBundles count];

  if (v4)
  {
    v5 = objc_alloc_init(SKGQueryStringBuilder);
    beginGroup = [(SKGQueryStringBuilder *)v5 beginGroup];
    v7 = [beginGroup not];
    withFieldMatch = [v7 withFieldMatch];
    excludeBundles2 = [(SKGProcessorTask *)self excludeBundles];
    v10 = (withFieldMatch)[2](withFieldMatch, @"_kMDItemBundleID", excludeBundles2);
    endGroup = [v10 endGroup];

    build = [endGroup build];
  }

  else
  {
    build = @"true";
  }

  return build;
}

- (id)_includedQuery
{
  includeBundles = [(SKGProcessorTask *)self includeBundles];
  v4 = [includeBundles count];

  if (v4)
  {
    v5 = objc_alloc_init(SKGQueryStringBuilder);
    beginGroup = [(SKGQueryStringBuilder *)v5 beginGroup];
    withFieldMatch = [beginGroup withFieldMatch];
    includeBundles2 = [(SKGProcessorTask *)self includeBundles];
    v9 = (withFieldMatch)[2](withFieldMatch, @"_kMDItemBundleID", includeBundles2);
    endGroup = [v9 endGroup];

    build = [endGroup build];
  }

  else
  {
    build = @"true";
  }

  return build;
}

- (id)_notIncludedQuery
{
  includeBundles = [(SKGProcessorTask *)self includeBundles];
  v4 = [includeBundles count];

  if (v4)
  {
    v5 = objc_alloc_init(SKGQueryStringBuilder);
    beginGroup = [(SKGQueryStringBuilder *)v5 beginGroup];
    v7 = [beginGroup not];
    withFieldMatch = [v7 withFieldMatch];
    includeBundles2 = [(SKGProcessorTask *)self includeBundles];
    v10 = (withFieldMatch)[2](withFieldMatch, @"_kMDItemBundleID", includeBundles2);
    endGroup = [v10 endGroup];

    build = [endGroup build];
  }

  else
  {
    build = @"false";
  }

  return build;
}

- (id)_backgroundQuery
{
  if ([(SKGProcessorTask *)self allowed]&& [(SKGProcessorTask *)self supportsEvent:4])
  {
    v36 = objc_alloc_init(SKGQueryStringBuilder);
    beginGroup = [(SKGQueryStringBuilder *)v36 beginGroup];
    withQuery = [beginGroup withQuery];
    _notExcludedQuery = [(SKGProcessorTask *)self _notExcludedQuery];
    v34 = withQuery;
    v32 = (*(withQuery + 16))(withQuery, _notExcludedQuery);
    v31 = [v32 and];
    withQuery2 = [v31 withQuery];
    _includedQuery = [(SKGProcessorTask *)self _includedQuery];
    v30 = withQuery2;
    v28 = (*(withQuery2 + 16))(withQuery2, _includedQuery);
    v27 = [v28 and];
    beginGroup2 = [v27 beginGroup];
    withAttribute = [beginGroup2 withAttribute];
    v24 = (withAttribute)[2](withAttribute, @"kMDItemTextContent", @"!=", @"*");
    endGroup = [v24 endGroup];
    v22 = [endGroup and];
    withQuery3 = [v22 withQuery];
    _versionQuery = [(SKGProcessorTask *)self _versionQuery];
    v19 = (withQuery3)[2](withQuery3, _versionQuery);
    v18 = [v19 and];
    beginGroup3 = [v18 beginGroup];
    withQuery4 = [beginGroup3 withQuery];
    _additionalQuery = [(SKGProcessorTask *)self _additionalQuery];
    v8 = (withQuery4)[2](withQuery4, _additionalQuery);
    v9 = [v8 or];
    withQuery5 = [v9 withQuery];
    requiredAttributes = [(SKGProcessorTask *)self requiredAttributes];
    v12 = [SKGQueryStringBuilder queryForAttributesExist:requiredAttributes];
    v13 = (withQuery5)[2](withQuery5, v12);
    endGroup2 = [v13 endGroup];
    v14EndGroup = [endGroup2 endGroup];

    build = [v14EndGroup build];
  }

  else
  {
    build = 0;
  }

  return build;
}

- (id)_updatesQuery
{
  if ([(SKGProcessorTask *)self allowed]&& [(SKGProcessorTask *)self supportsEvent:2])
  {
    v36 = objc_alloc_init(SKGQueryStringBuilder);
    beginGroup = [(SKGQueryStringBuilder *)v36 beginGroup];
    withQuery = [beginGroup withQuery];
    _notExcludedQuery = [(SKGProcessorTask *)self _notExcludedQuery];
    v34 = withQuery;
    v32 = (*(withQuery + 16))(withQuery, _notExcludedQuery);
    v31 = [v32 and];
    withQuery2 = [v31 withQuery];
    _includedQuery = [(SKGProcessorTask *)self _includedQuery];
    v30 = withQuery2;
    v28 = (*(withQuery2 + 16))(withQuery2, _includedQuery);
    v27 = [v28 and];
    beginGroup2 = [v27 beginGroup];
    withAttribute = [beginGroup2 withAttribute];
    v24 = (withAttribute)[2](withAttribute, @"kMDItemTextContent", @"=", @"*");
    endGroup = [v24 endGroup];
    v22 = [endGroup and];
    withQuery3 = [v22 withQuery];
    _versionQuery = [(SKGProcessorTask *)self _versionQuery];
    v19 = (withQuery3)[2](withQuery3, _versionQuery);
    v18 = [v19 and];
    beginGroup3 = [v18 beginGroup];
    withQuery4 = [beginGroup3 withQuery];
    _additionalQuery = [(SKGProcessorTask *)self _additionalQuery];
    v8 = (withQuery4)[2](withQuery4, _additionalQuery);
    v9 = [v8 or];
    withQuery5 = [v9 withQuery];
    requiredAttributes = [(SKGProcessorTask *)self requiredAttributes];
    v12 = [SKGQueryStringBuilder queryForAttributesExist:requiredAttributes];
    v13 = (withQuery5)[2](withQuery5, v12);
    endGroup2 = [v13 endGroup];
    v14EndGroup = [endGroup2 endGroup];

    build = [v14EndGroup build];
  }

  else
  {
    build = 0;
  }

  return build;
}

- (id)_cleanupQuery
{
  v3 = objc_alloc_init(SKGQueryStringBuilder);
  if ([(SKGProcessorTask *)self enabled])
  {
    beginGroup = [(SKGQueryStringBuilder *)v3 beginGroup];
    v29BeginGroup = [beginGroup beginGroup];
    v26BeginGroup = [v29BeginGroup beginGroup];
    withQuery = [v26BeginGroup withQuery];
    _excludedQuery = [(SKGProcessorTask *)self _excludedQuery];
    v32 = withQuery;
    v30 = (*(withQuery + 16))(withQuery, _excludedQuery);
    v28 = [v30 or];
    withQuery2 = [v28 withQuery];
    _notIncludedQuery = [(SKGProcessorTask *)self _notIncludedQuery];
    v27 = withQuery2;
    v23 = (*(withQuery2 + 16))(withQuery2, _notIncludedQuery);
    endGroup = [v23 endGroup];
    v21 = [endGroup and];
    withQuery3 = [v21 withQuery];
    donationAttributes = [(SKGProcessorTask *)self donationAttributes];
    v7 = [SKGQueryStringBuilder queryForAttributesExist:donationAttributes];
    v8 = (withQuery3)[2](withQuery3, v7);
    endGroup2 = [v8 endGroup];
    v10 = [endGroup2 or];
    withQuery4 = [v10 withQuery];
    _invalidVersionQuery = [(SKGProcessorTask *)self _invalidVersionQuery];
    v13 = (withQuery4)[2](withQuery4, _invalidVersionQuery);
    endGroup3 = [v13 endGroup];

    v15 = v26BeginGroup;
    donationAttributes2 = v29BeginGroup;

    withQuery5 = beginGroup;
    v3 = v32;
  }

  else
  {
    withQuery5 = [(SKGQueryStringBuilder *)v3 withQuery];
    donationAttributes2 = [(SKGProcessorTask *)self donationAttributes];
    v15 = [SKGQueryStringBuilder queryForAttributesExist:donationAttributes2];
    endGroup3 = (withQuery5)[2](withQuery5, v15);
  }

  build = [endGroup3 build];

  return build;
}

- (id)_additionalQuery
{
  if ([(SKGProcessorTask *)self allowed])
  {
    additionalQueries = [(SKGProcessorTask *)self additionalQueries];
    v4 = [additionalQueries count];

    if (v4)
    {
      v5 = objc_alloc_init(SKGQueryStringBuilder);
      withQueries = [(SKGQueryStringBuilder *)v5 withQueries];
      additionalQueries2 = [(SKGProcessorTask *)self additionalQueries];
      v8 = (withQueries)[2](withQueries, additionalQueries2, @"||");

      build = [v8 build];
    }

    else
    {
      build = @"(true)";
    }
  }

  else
  {
    build = @"(false)";
  }

  return build;
}

- (void)setSupportedEvent:(int64_t)event
{
  if ((event - 1) <= 3)
  {
    self->_events |= qword_231C22720[event - 1];
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

- (void)setRequiredAttributes:(id)attributes
{
  objc_storeStrong(&self->_requiredAttributes, attributes);
  attributesCopy = attributes;
  [(NSMutableSet *)self->_fetchAttributes addObjectsFromArray:attributesCopy];
}

- (void)setTrackingAttributes:(id)attributes
{
  objc_storeStrong(&self->_trackingAttributes, attributes);
  attributesCopy = attributes;
  [(NSMutableSet *)self->_fetchAttributes addObjectsFromArray:attributesCopy];
}

- (BOOL)allowed
{
  canRun = [(SKGProcessorTask *)self canRun];
  if (canRun)
  {

    LOBYTE(canRun) = [(SKGProcessorTask *)self enabled];
  }

  return canRun;
}

- (BOOL)supportsBundleID:(id)d
{
  dCopy = d;
  if (![(SKGProcessorTask *)self enabled])
  {
    goto LABEL_13;
  }

  if ([dCopy length])
  {
    includeBundles = [(SKGProcessorTask *)self includeBundles];
    if ([includeBundles count])
    {
      includeBundles2 = [(SKGProcessorTask *)self includeBundles];
      v7 = [includeBundles2 containsObject:dCopy];

      if (v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    excludeBundles = [(SKGProcessorTask *)self excludeBundles];
    if ([excludeBundles count])
    {
      excludeBundles2 = [(SKGProcessorTask *)self excludeBundles];
      v11 = [excludeBundles2 containsObject:dCopy];

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

    v12 = [dCopy hasPrefix:@"com.apple."];
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

- (BOOL)supportsEvent:(int64_t)event
{
  allowed = [(SKGProcessorTask *)self allowed];
  if (allowed)
  {
    if ((event - 1) > 3)
    {
      LOBYTE(allowed) = 0;
    }

    else
    {
      v6 = qword_231C22720[event - 1];
      LOBYTE(allowed) = ([(SKGProcessorTask *)self events]& v6) != 0;
    }
  }

  return allowed;
}

- (BOOL)supportsEvent:(int64_t)event bundleID:(id)d
{
  dCopy = d;
  if ([(SKGProcessorTask *)self supportsEvent:event])
  {
    v7 = [(SKGProcessorTask *)self supportsBundleID:dCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)supportsEvent:(int64_t)event record:(id)record bundleID:(id)d
{
  recordCopy = record;
  if (![(SKGProcessorTask *)self supportsBundleID:d])
  {
    goto LABEL_13;
  }

  requiredAttributes = [(SKGProcessorTask *)self requiredAttributes];
  if ([requiredAttributes count])
  {
    requiredAttributes2 = [(SKGProcessorTask *)self requiredAttributes];
    v10 = [recordCopy queryRecordIncludesAttributes:requiredAttributes2];

    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  trackingAttributes = [(SKGProcessorTask *)self trackingAttributes];
  if ([trackingAttributes count])
  {
    trackingAttributes2 = [(SKGProcessorTask *)self trackingAttributes];
    v13 = [recordCopy queryRecordIncludesAttributes:trackingAttributes2];

    if (!v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  versionAttributeKey = [(SKGProcessorTask *)self versionAttributeKey];

  if (!versionAttributeKey)
  {
    goto LABEL_15;
  }

  versionAttributeKey2 = [(SKGProcessorTask *)self versionAttributeKey];
  v16 = [recordCopy queryRecordNumberValueForKey:versionAttributeKey2];

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

- (id)queryForEvent:(int64_t)event
{
  switch(event)
  {
    case 2:
      _updatesQuery = [(SKGProcessorTask *)self _updatesQuery];
      break;
    case 4:
      _updatesQuery = [(SKGProcessorTask *)self _backgroundQuery];
      break;
    case 3:
      _updatesQuery = [(SKGProcessorTask *)self _cleanupQuery];
      break;
    default:
      _updatesQuery = 0;
      break;
  }

  return _updatesQuery;
}

- (id)processorAttributesForEvent:(int64_t)event failed:(BOOL)failed
{
  failedCopy = failed;
  if (![(SKGProcessorTask *)self supportsEvent:?])
  {
    goto LABEL_6;
  }

  if (event == 4)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (failedCopy)
    {
      v13 = MEMORY[0x277CCACA8];
      errorAttributeKey = [(SKGProcessorTask *)self errorAttributeKey];
      versionValue = [v13 stringWithFormat:@":INC:%@", errorAttributeKey];

      [v7 setObject:&unk_2846E7E78 forKey:versionValue];
      v16 = *MEMORY[0x277CBEEE8];
      versionAttributeKey = [(SKGProcessorTask *)self versionAttributeKey];
      v18 = v7;
      v19 = v16;
    }

    else
    {
      versionValue = [(SKGProcessorTask *)self versionValue];
      versionAttributeKey = [(SKGProcessorTask *)self versionAttributeKey];
      v18 = v7;
      v19 = versionValue;
    }

    [v18 setObject:v19 forKey:versionAttributeKey];

    goto LABEL_13;
  }

  if (event != 1)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_14;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (failedCopy)
  {
    v8 = MEMORY[0x277CCACA8];
    errorAttributeKey2 = [(SKGProcessorTask *)self errorAttributeKey];
    v10 = [v8 stringWithFormat:@":INC:%@", errorAttributeKey2];

    [v7 setObject:&unk_2846E7E78 forKey:v10];
    v11 = *MEMORY[0x277CBEEE8];
    versionAttributeKey2 = [(SKGProcessorTask *)self versionAttributeKey];
    [v7 setObject:v11 forKey:versionAttributeKey2];
  }

  else
  {
    versionValue2 = [(SKGProcessorTask *)self versionValue];
    versionAttributeKey3 = [(SKGProcessorTask *)self versionAttributeKey];
    [v7 setObject:versionValue2 forKey:versionAttributeKey3];

    v11 = *MEMORY[0x277CBEEE8];
  }

  versionValue = [(SKGProcessorTask *)self journalAttributeKey];
  [v7 setObject:v11 forKey:versionValue];
LABEL_13:

LABEL_14:

  return v7;
}

@end