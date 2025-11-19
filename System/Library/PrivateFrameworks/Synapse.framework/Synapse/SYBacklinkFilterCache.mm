@interface SYBacklinkFilterCache
- (BOOL)containsMatchingEntriesForItem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SYBacklinkFilterCache)initWithActivityTypes:(id)a3;
- (SYBacklinkFilterCache)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)addEntriesForItem:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)finalize;
@end

@implementation SYBacklinkFilterCache

- (SYBacklinkFilterCache)initWithActivityTypes:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SYBacklinkFilterCache;
  v5 = [(SYBacklinkFilterCache *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    activityTypes = v5->_activityTypes;
    v5->_activityTypes = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSMutableArray *)self->_entries isEqualToArray:v4[2]];
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

- (SYBacklinkFilterCache)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SYBacklinkFilterCache;
  v5 = [(SYBacklinkFilterCache *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"types"];
    activityTypes = v5->_activityTypes;
    v5->_activityTypes = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  activityTypes = self->_activityTypes;
  v5 = a3;
  [v5 encodeObject:activityTypes forKey:@"types"];
  [v5 encodeObject:self->_data forKey:@"data"];
}

- (void)addEntriesForItem:(id)a3
{
  v4 = a3;
  v29 = v4;
  if (!self->_entries)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:150];
    entries = self->_entries;
    self->_entries = v5;

    v4 = v29;
  }

  v7 = [v4 persistentIdentifier];

  if (v7)
  {
    v8 = self->_entries;
    v9 = MEMORY[0x277CCABB0];
    v10 = [v29 persistentIdentifier];
    v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "hash")}];
    [(NSMutableArray *)v8 addObject:v11];
  }

  v12 = [v29 targetContentIdentifier];

  if (v12)
  {
    v13 = self->_entries;
    v14 = MEMORY[0x277CCABB0];
    v15 = [v29 targetContentIdentifier];
    v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "hash")}];
    [(NSMutableArray *)v13 addObject:v16];
  }

  v17 = [v29 canonicalURL];

  if (v17)
  {
    v18 = self->_entries;
    v19 = MEMORY[0x277CCABB0];
    v20 = [v29 canonicalURL];
    v21 = [v20 _lp_simplifiedURLStringForFuzzyMatching];
    v22 = [v19 numberWithUnsignedInteger:{objc_msgSend(v21, "hash")}];
    [(NSMutableArray *)v18 addObject:v22];
  }

  v23 = [v29 webpageURL];

  if (v23)
  {
    v24 = self->_entries;
    v25 = MEMORY[0x277CCABB0];
    v26 = [v29 webpageURL];
    v27 = [v26 _lp_simplifiedURLStringForFuzzyMatching];
    v28 = [v25 numberWithUnsignedInteger:{objc_msgSend(v27, "hash")}];
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
    v7 = [MEMORY[0x277CBEA90] data];
    v8 = self->_data;
    self->_data = v7;

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

- (BOOL)containsMatchingEntriesForItem:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.synapse", "SYBacklinkFilterCache");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SYBacklinkFilterCache *)v4 containsMatchingEntriesForItem:v5];
  }

  v6 = [(SYBacklinkFilterCache *)self activityTypes];
  v7 = [v4 activityType];
  v8 = [v6 containsObject:v7];

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = [(NSData *)self->_data length]>> 1;
  v10 = [v4 persistentIdentifier];

  if (v10)
  {
    v11 = [v4 persistentIdentifier];
    v12 = [v11 hash];

    if ([(NSData *)self->_data _sy_containsUnsignedShort:v12 inRange:0, v9])
    {
      goto LABEL_12;
    }
  }

  v13 = [v4 targetContentIdentifier];

  if (v13)
  {
    v14 = [v4 targetContentIdentifier];
    v15 = [v14 hash];

    if ([(NSData *)self->_data _sy_containsUnsignedShort:v15 inRange:0, v9])
    {
      goto LABEL_12;
    }
  }

  v16 = [v4 canonicalURL];

  if (v16)
  {
    v17 = [v4 canonicalURL];
    v18 = [v17 _lp_simplifiedURLStringForFuzzyMatching];
    v19 = [v18 hash];

    if ([(NSData *)self->_data _sy_containsUnsignedShort:v19 inRange:0, v9])
    {
      goto LABEL_12;
    }
  }

  v20 = [v4 webpageURL];

  if (!v20)
  {
    goto LABEL_13;
  }

  v21 = [v4 webpageURL];
  v22 = [v21 _lp_simplifiedURLStringForFuzzyMatching];
  v23 = [v22 hash];

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