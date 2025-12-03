@interface SYBacklinkFilterCache
- (BOOL)containsMatchingEntriesForItem:(id)item;
- (BOOL)isEqual:(id)equal;
- (SYBacklinkFilterCache)initWithActivityTypes:(id)types;
- (SYBacklinkFilterCache)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)addEntriesForItem:(id)item;
- (void)encodeWithCoder:(id)coder;
- (void)finalize;
@end

@implementation SYBacklinkFilterCache

- (SYBacklinkFilterCache)initWithActivityTypes:(id)types
{
  typesCopy = types;
  v9.receiver = self;
  v9.super_class = SYBacklinkFilterCache;
  v5 = [(SYBacklinkFilterCache *)&v9 init];
  if (v5)
  {
    v6 = [typesCopy copy];
    activityTypes = v5->_activityTypes;
    v5->_activityTypes = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSMutableArray *)self->_entries isEqualToArray:equalCopy[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  data = self->_data;
  if (!data)
  {
    data = self->_entries;
  }

  return [data hash];
}

- (SYBacklinkFilterCache)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SYBacklinkFilterCache;
  v5 = [(SYBacklinkFilterCache *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"types"];
    activityTypes = v5->_activityTypes;
    v5->_activityTypes = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  activityTypes = self->_activityTypes;
  coderCopy = coder;
  [coderCopy encodeObject:activityTypes forKey:@"types"];
  [coderCopy encodeObject:self->_data forKey:@"data"];
}

- (void)addEntriesForItem:(id)item
{
  itemCopy = item;
  v29 = itemCopy;
  if (!self->_entries)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:150];
    entries = self->_entries;
    self->_entries = v5;

    itemCopy = v29;
  }

  persistentIdentifier = [itemCopy persistentIdentifier];

  if (persistentIdentifier)
  {
    v8 = self->_entries;
    v9 = MEMORY[0x277CCABB0];
    persistentIdentifier2 = [v29 persistentIdentifier];
    v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(persistentIdentifier2, "hash")}];
    [(NSMutableArray *)v8 addObject:v11];
  }

  targetContentIdentifier = [v29 targetContentIdentifier];

  if (targetContentIdentifier)
  {
    v13 = self->_entries;
    v14 = MEMORY[0x277CCABB0];
    targetContentIdentifier2 = [v29 targetContentIdentifier];
    v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(targetContentIdentifier2, "hash")}];
    [(NSMutableArray *)v13 addObject:v16];
  }

  canonicalURL = [v29 canonicalURL];

  if (canonicalURL)
  {
    v18 = self->_entries;
    v19 = MEMORY[0x277CCABB0];
    canonicalURL2 = [v29 canonicalURL];
    _lp_simplifiedURLStringForFuzzyMatching = [canonicalURL2 _lp_simplifiedURLStringForFuzzyMatching];
    v22 = [v19 numberWithUnsignedInteger:{objc_msgSend(_lp_simplifiedURLStringForFuzzyMatching, "hash")}];
    [(NSMutableArray *)v18 addObject:v22];
  }

  webpageURL = [v29 webpageURL];

  if (webpageURL)
  {
    v24 = self->_entries;
    v25 = MEMORY[0x277CCABB0];
    webpageURL2 = [v29 webpageURL];
    _lp_simplifiedURLStringForFuzzyMatching2 = [webpageURL2 _lp_simplifiedURLStringForFuzzyMatching];
    v28 = [v25 numberWithUnsignedInteger:{objc_msgSend(_lp_simplifiedURLStringForFuzzyMatching2, "hash")}];
    [(NSMutableArray *)v24 addObject:v28];
  }
}

- (void)finalize
{
  if ([(NSMutableArray *)self->_entries count])
  {
    [(NSMutableArray *)self->_entries sortUsingComparator:&__block_literal_global_11];
    v3 = malloc_type_malloc(2 * [(NSMutableArray *)self->_entries count], 0x1000040BDFB0063uLL);
    entries = self->_entries;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __33__SYBacklinkFilterCache_finalize__block_invoke_2;
    v9[3] = &__block_descriptor_40_e25_v32__0__NSNumber_8Q16_B24l;
    v9[4] = v3;
    [(NSMutableArray *)entries enumerateObjectsUsingBlock:v9];
    v5 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v3 length:2 * -[NSMutableArray count](self->_entries freeWhenDone:{"count"), 1}];
    data = self->_data;
    self->_data = v5;
  }

  else
  {
    data = [MEMORY[0x277CBEA90] data];
    v8 = self->_data;
    self->_data = data;

    MEMORY[0x2821F96F8]();
  }
}

uint64_t __33__SYBacklinkFilterCache_finalize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 unsignedShortValue];
  v6 = [v4 unsignedShortValue];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

uint64_t __33__SYBacklinkFilterCache_finalize__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 unsignedShortValue];
  *(*(a1 + 32) + 2 * a3) = result;
  return result;
}

- (BOOL)containsMatchingEntriesForItem:(id)item
{
  itemCopy = item;
  v5 = os_log_create("com.apple.synapse", "SYBacklinkFilterCache");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SYBacklinkFilterCache *)itemCopy containsMatchingEntriesForItem:v5];
  }

  activityTypes = [(SYBacklinkFilterCache *)self activityTypes];
  activityType = [itemCopy activityType];
  v8 = [activityTypes containsObject:activityType];

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = [(NSData *)self->_data length]>> 1;
  persistentIdentifier = [itemCopy persistentIdentifier];

  if (persistentIdentifier)
  {
    persistentIdentifier2 = [itemCopy persistentIdentifier];
    v12 = [persistentIdentifier2 hash];

    if ([(NSData *)self->_data _sy_containsUnsignedShort:v12 inRange:0, v9])
    {
      goto LABEL_12;
    }
  }

  targetContentIdentifier = [itemCopy targetContentIdentifier];

  if (targetContentIdentifier)
  {
    targetContentIdentifier2 = [itemCopy targetContentIdentifier];
    v15 = [targetContentIdentifier2 hash];

    if ([(NSData *)self->_data _sy_containsUnsignedShort:v15 inRange:0, v9])
    {
      goto LABEL_12;
    }
  }

  canonicalURL = [itemCopy canonicalURL];

  if (canonicalURL)
  {
    canonicalURL2 = [itemCopy canonicalURL];
    _lp_simplifiedURLStringForFuzzyMatching = [canonicalURL2 _lp_simplifiedURLStringForFuzzyMatching];
    v19 = [_lp_simplifiedURLStringForFuzzyMatching hash];

    if ([(NSData *)self->_data _sy_containsUnsignedShort:v19 inRange:0, v9])
    {
      goto LABEL_12;
    }
  }

  webpageURL = [itemCopy webpageURL];

  if (!webpageURL)
  {
    goto LABEL_13;
  }

  webpageURL2 = [itemCopy webpageURL];
  _lp_simplifiedURLStringForFuzzyMatching2 = [webpageURL2 _lp_simplifiedURLStringForFuzzyMatching];
  v23 = [_lp_simplifiedURLStringForFuzzyMatching2 hash];

  if ([(NSData *)self->_data _sy_containsUnsignedShort:v23 inRange:0, v9])
  {
LABEL_12:
    v24 = 1;
  }

  else
  {
LABEL_13:
    v24 = 0;
  }

  return v24;
}

- (void)containsMatchingEntriesForItem:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_225901000, a2, OS_LOG_TYPE_DEBUG, "containsMatchingEntriesForItem: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end