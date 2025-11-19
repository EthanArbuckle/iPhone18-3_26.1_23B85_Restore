@interface PPNamedEntityQuery
+ (id)_excludingAlgorithmsDescription:(id)a3;
+ (id)_matchingCategoriesDescription:(id)a3;
+ (id)locationQueryWithLimit:(unint64_t)a3 fromDate:(id)a4 consumerType:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNamedEntityQuery:(id)a3;
- (PPNamedEntityQuery)init;
- (PPNamedEntityQuery)initWithCoder:(id)a3;
- (id)copyForMonitoring;
- (id)copyWithZone:(_NSZone *)a3;
- (id)customizedDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPNamedEntityQuery

- (PPNamedEntityQuery)init
{
  v3.receiver = self;
  v3.super_class = PPNamedEntityQuery;
  result = [(PPNamedEntityQuery *)&v3 init];
  if (result)
  {
    result->_limit = -1;
    result->_deviceFilter = 0;
    result->_decayRate = -1.0;
  }

  return result;
}

- (id)copyForMonitoring
{
  v2 = [(PPNamedEntityQuery *)self copy];
  [v2 setIsForRecordMonitoring:1];
  return v2;
}

- (id)customizedDescription
{
  v3 = objc_opt_new();
  if (self->_limit != -1)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"limit:%tu", self->_limit];
    [v3 addObject:v4];
  }

  if (self->_fromDate)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fromDate:'%@'", self->_fromDate];
    [v3 addObject:v5];
  }

  if (self->_toDate)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"toDate:'%@'", self->_toDate];
    [v3 addObject:v6];
  }

  if (self->_scoringDate)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"scoringDate:'%@'", self->_scoringDate];
    [v3 addObject:v7];
  }

  matchingSourceBundleIds = self->_matchingSourceBundleIds;
  if (matchingSourceBundleIds)
  {
    v9 = [(NSSet *)matchingSourceBundleIds count];
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v9 < 0xB)
    {
      v11 = [v10 initWithFormat:@"matchingSourceBundleIds:%@", self->_matchingSourceBundleIds];
    }

    else
    {
      v11 = [v10 initWithFormat:@"matchingSourceBundleIds.count:%tu", -[NSSet count](self->_matchingSourceBundleIds, "count")];
    }

    v12 = v11;
    [v3 addObject:v11];
  }

  excludingSourceBundleIds = self->_excludingSourceBundleIds;
  if (excludingSourceBundleIds)
  {
    v14 = [(NSSet *)excludingSourceBundleIds count];
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v14 < 0xB)
    {
      v16 = [v15 initWithFormat:@"excludingSourceBundleIds:%@", self->_excludingSourceBundleIds];
    }

    else
    {
      v16 = [v15 initWithFormat:@"excludingSourceBundleIds.count:%tu", -[NSSet count](self->_excludingSourceBundleIds, "count")];
    }

    v17 = v16;
    [v3 addObject:v16];
  }

  matchingSourceGroupIds = self->_matchingSourceGroupIds;
  if (matchingSourceGroupIds)
  {
    v19 = [(NSSet *)matchingSourceGroupIds count];
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v19 < 0xB)
    {
      v21 = [v20 initWithFormat:@"matchingGroupIds:%@", self->_matchingSourceGroupIds];
    }

    else
    {
      v21 = [v20 initWithFormat:@"matchingGroupIds.count:%tu", -[NSSet count](self->_matchingSourceGroupIds, "count")];
    }

    v22 = v21;
    [v3 addObject:v21];
  }

  if (self->_deviceFilter)
  {
    v23 = objc_alloc(MEMORY[0x1E696AEC0]);
    v24 = [PPEnumTypes stringForDeviceFilter:self->_deviceFilter];
    v25 = [v23 initWithFormat:@"deviceFilter:%@", v24];
    [v3 addObject:v25];
  }

  if (self->_decayRate != -1.0)
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"decayRate:%f", *&self->_decayRate];
    [v3 addObject:v26];
  }

  if (self->_matchingName)
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"matchingName.length:%tu", -[NSString length](self->_matchingName, "length")];
    [v3 addObject:v27];
  }

  if (self->_matchingNames)
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"matchingNames.count:%tu", -[NSSet count](self->_matchingNames, "count")];
    [v3 addObject:v28];
  }

  if (self->_matchingContactHandle)
  {
    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"matchingContactHandle.length:%tu", -[NSString length](self->_matchingContactHandle, "length")];
    [v3 addObject:v29];
  }

  if (self->_matchCategory)
  {
    v30 = [(NSSet *)self->_matchingCategories count];
    v31 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v30 < 0xB)
    {
      v32 = [objc_opt_class() _matchingCategoriesDescription:self->_matchingCategories];
      v33 = [v31 initWithFormat:@"matchingCategories:%@", v32];
      [v3 addObject:v33];
    }

    else
    {
      v32 = [v31 initWithFormat:@"matchingCategories.count:%tu", -[NSSet count](self->_matchingCategories, "count")];
      [v3 addObject:v32];
    }
  }

  if (self->_matchingEntityTrie)
  {
    v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"matchingEntityTrie:'%@'", self->_matchingEntityTrie];
    [v3 addObject:v34];
  }

  excludingAlgorithms = self->_excludingAlgorithms;
  if (excludingAlgorithms)
  {
    v36 = [(NSSet *)excludingAlgorithms count];
    v37 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v36 < 0xB)
    {
      v38 = [objc_opt_class() _excludingAlgorithmsDescription:self->_excludingAlgorithms];
      v39 = [v37 initWithFormat:@"excludingAlgorithms:%@", v38];
      [v3 addObject:v39];
    }

    else
    {
      v38 = [v37 initWithFormat:@"excludingAlgorithms.count:%tu", -[NSSet count](self->_excludingAlgorithms, "count")];
      [v3 addObject:v38];
    }
  }

  if (self->_excludeWithoutSentiment)
  {
    [v3 addObject:@"excludeWithoutSentiment:YES"];
  }

  if (self->_isForRecordMonitoring)
  {
    [v3 addObject:@"isForRecordMonitoring:YES"];
  }

  if (self->_orderByName)
  {
    [v3 addObject:@"orderByName:YES"];
  }

  if (self->_locationConsumer)
  {
    v40 = [PPLocationStore describeLocationConsumer:?];
    [v3 addObject:v40];
  }

  matchingSourceDocumentIds = self->_matchingSourceDocumentIds;
  if (matchingSourceDocumentIds)
  {
    v42 = [(NSSet *)matchingSourceDocumentIds count];
    v43 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v42 < 0xB)
    {
      v44 = [v43 initWithFormat:@"matchingSourceDocumentIds:%@", self->_matchingSourceDocumentIds];
    }

    else
    {
      v44 = [v43 initWithFormat:@"matchingSourceDocumentIds.count:%tu", -[NSSet count](self->_matchingSourceDocumentIds, "count")];
    }

    v45 = v44;
    [v3 addObject:v44];
  }

  if (self->_filterByRelevanceDate)
  {
    [v3 addObject:@"filterByRelevanceDate:YES"];
  }

  v46 = [v3 _pas_componentsJoinedByString:@" "];

  return v46;
}

- (id)description
{
  v21 = [objc_opt_class() _matchingCategoriesDescription:self->_matchingCategories];
  v17 = [objc_opt_class() _excludingAlgorithmsDescription:self->_excludingAlgorithms];
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18 = *&self->_toDate;
  v19 = *&self->_limit;
  v16 = *&self->_matchingSourceBundleIds;
  matchingSourceGroupIds = self->_matchingSourceGroupIds;
  v3 = [PPEnumTypes stringForDeviceFilter:self->_deviceFilter];
  v14 = [(NSString *)self->_matchingName length];
  v4 = [(NSSet *)self->_matchingNames count];
  if (self->_excludeWithoutSentiment)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if (self->_isForRecordMonitoring)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_orderByName)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  matchingEntityTrie = self->_matchingEntityTrie;
  v9 = [PPLocationStore describeLocationConsumer:self->_locationConsumer];
  v10 = v9;
  if (self->_filterByRelevanceDate)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [v20 initWithFormat:@"<PPNamedEntityQuery l:%tu d:%@-%@ sd:%@ mid:%@ eid:%@ gid:%@ df:%@ mn:%tu mns:%tu c:%@ ea:%@ trie:%@ ens:%@ frm:%@ obn:%@ lcon:%@ mch:%@ msdi:%@ fbrd:%@>", v19, v18, v16, matchingSourceGroupIds, v3, v14, v4, v21, v17, matchingEntityTrie, v5, v6, v7, v9, self->_matchingContactHandle, self->_matchingSourceDocumentIds, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPNamedEntityQuery *)self isEqualToNamedEntityQuery:v4];
  }

  return v5;
}

- (BOOL)isEqualToNamedEntityQuery:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v28 = 1;
    goto LABEL_79;
  }

  if (!v4)
  {
    goto LABEL_78;
  }

  limit = self->_limit;
  if (limit != [(PPNamedEntityQuery *)v4 limit])
  {
    goto LABEL_78;
  }

  v7 = self->_fromDate;
  v8 = [(PPNamedEntityQuery *)v5 fromDate];
  if (v7 | v8)
  {
    v29 = v8;
    if (!v7 || !v8)
    {
      goto LABEL_77;
    }

    v30 = [(NSSet *)v7 isEqualToDate:v8];

    if (!v30)
    {
      goto LABEL_78;
    }
  }

  v7 = self->_toDate;
  v9 = [(PPNamedEntityQuery *)v5 toDate];
  if (v7 | v9)
  {
    v29 = v9;
    if (!v7 || !v9)
    {
      goto LABEL_77;
    }

    v31 = [(NSSet *)v7 isEqualToDate:v9];

    if (!v31)
    {
      goto LABEL_78;
    }
  }

  v7 = self->_scoringDate;
  v10 = [(PPNamedEntityQuery *)v5 scoringDate];
  if (v7 | v10)
  {
    v29 = v10;
    if (!v7 || !v10)
    {
      goto LABEL_77;
    }

    v32 = [(NSSet *)v7 isEqualToDate:v10];

    if (!v32)
    {
      goto LABEL_78;
    }
  }

  v7 = self->_matchingSourceBundleIds;
  v11 = [(PPNamedEntityQuery *)v5 matchingSourceBundleIds];
  if (v7 | v11)
  {
    v29 = v11;
    if (!v7 || !v11)
    {
      goto LABEL_77;
    }

    v33 = [(NSSet *)v7 isEqualToSet:v11];

    if (!v33)
    {
      goto LABEL_78;
    }
  }

  v7 = self->_excludingSourceBundleIds;
  v12 = [(PPNamedEntityQuery *)v5 excludingSourceBundleIds];
  if (v7 | v12)
  {
    v29 = v12;
    if (!v7 || !v12)
    {
      goto LABEL_77;
    }

    v34 = [(NSSet *)v7 isEqualToSet:v12];

    if (!v34)
    {
      goto LABEL_78;
    }
  }

  v7 = self->_matchingSourceGroupIds;
  v13 = [(PPNamedEntityQuery *)v5 matchingSourceGroupIds];
  if (v7 | v13)
  {
    v29 = v13;
    if (!v7 || !v13)
    {
      goto LABEL_77;
    }

    v35 = [(NSSet *)v7 isEqualToSet:v13];

    if (!v35)
    {
      goto LABEL_78;
    }
  }

  deviceFilter = self->_deviceFilter;
  if (deviceFilter != [(PPNamedEntityQuery *)v5 deviceFilter])
  {
    goto LABEL_78;
  }

  v7 = self->_matchingName;
  v15 = [(PPNamedEntityQuery *)v5 matchingName];
  if (v7 | v15)
  {
    v29 = v15;
    if (!v7 || !v15)
    {
      goto LABEL_77;
    }

    v36 = [(NSSet *)v7 isEqualToString:v15];

    if (!v36)
    {
      goto LABEL_78;
    }
  }

  v7 = self->_matchingNames;
  v16 = [(PPNamedEntityQuery *)v5 matchingNames];
  if (v7 | v16)
  {
    v29 = v16;
    if (!v7 || !v16)
    {
      goto LABEL_77;
    }

    v37 = [(NSSet *)v7 isEqualToSet:v16];

    if (!v37)
    {
      goto LABEL_78;
    }
  }

  v7 = self->_matchingContactHandle;
  v17 = [(PPNamedEntityQuery *)v5 matchingContactHandle];
  if (v7 | v17)
  {
    v29 = v17;
    if (!v7 || !v17)
    {
      goto LABEL_77;
    }

    v38 = [(NSSet *)v7 isEqualToString:v17];

    if (!v38)
    {
      goto LABEL_78;
    }
  }

  matchCategory = self->_matchCategory;
  if (matchCategory != [(PPNamedEntityQuery *)v5 matchCategory])
  {
    goto LABEL_78;
  }

  v7 = self->_matchingCategories;
  v19 = [(PPNamedEntityQuery *)v5 matchingCategories];
  if (v7 | v19)
  {
    v29 = v19;
    if (!v7 || !v19)
    {
      goto LABEL_77;
    }

    v39 = [(NSSet *)v7 isEqualToSet:v19];

    if (!v39)
    {
      goto LABEL_78;
    }
  }

  v7 = self->_matchingEntityTrie;
  v20 = [(PPNamedEntityQuery *)v5 matchingEntityTrie];
  if (v7 | v20)
  {
    v29 = v20;
    if (!v7 || !v20)
    {
      goto LABEL_77;
    }

    v40 = [(NSSet *)v7 isEqualToString:v20];

    if (!v40)
    {
      goto LABEL_78;
    }
  }

  v7 = self->_excludingAlgorithms;
  v21 = [(PPNamedEntityQuery *)v5 excludingAlgorithms];
  if (v7 | v21)
  {
    v29 = v21;
    if (!v7 || !v21)
    {
      goto LABEL_77;
    }

    v41 = [(NSSet *)v7 isEqualToSet:v21];

    if (!v41)
    {
      goto LABEL_78;
    }
  }

  v7 = self->_matchingSourceDocumentIds;
  v22 = [(PPNamedEntityQuery *)v5 matchingSourceDocumentIds];
  if (v7 | v22)
  {
    v29 = v22;
    if (v7 && v22)
    {
      v42 = [(NSSet *)v7 isEqualToSet:v22];

      if (v42)
      {
        goto LABEL_19;
      }

LABEL_78:
      v28 = 0;
      goto LABEL_79;
    }

LABEL_77:

    goto LABEL_78;
  }

LABEL_19:
  excludeWithoutSentiment = self->_excludeWithoutSentiment;
  if (excludeWithoutSentiment != [(PPNamedEntityQuery *)v5 excludeWithoutSentiment])
  {
    goto LABEL_78;
  }

  isForRecordMonitoring = self->_isForRecordMonitoring;
  if (isForRecordMonitoring != [(PPNamedEntityQuery *)v5 isForRecordMonitoring])
  {
    goto LABEL_78;
  }

  orderByName = self->_orderByName;
  if (orderByName != [(PPNamedEntityQuery *)v5 orderByName])
  {
    goto LABEL_78;
  }

  locationConsumer = self->_locationConsumer;
  if (locationConsumer != [(PPNamedEntityQuery *)v5 locationConsumer])
  {
    goto LABEL_78;
  }

  filterByRelevanceDate = self->_filterByRelevanceDate;
  v28 = filterByRelevanceDate == [(PPNamedEntityQuery *)v5 filterByRelevanceDate];
LABEL_79:

  return v28;
}

- (unint64_t)hash
{
  limit = self->_limit;
  v4 = [(NSDate *)self->_fromDate hash]^ limit;
  v5 = [(NSDate *)self->_toDate hash];
  v6 = v4 ^ v5 ^ [(NSDate *)self->_scoringDate hash];
  v7 = [(NSSet *)self->_matchingSourceBundleIds hash];
  v8 = v7 ^ [(NSSet *)self->_excludingSourceBundleIds hash];
  v9 = v6 ^ v8 ^ [(NSSet *)self->_matchingSourceGroupIds hash];
  deviceFilter = self->_deviceFilter;
  v11 = deviceFilter ^ [(NSString *)self->_matchingName hash];
  v12 = v9 ^ v11 ^ [(NSSet *)self->_matchingNames hash]^ self->_matchCategory;
  v13 = [(NSSet *)self->_matchingCategories hash];
  v14 = v13 ^ [(NSString *)self->_matchingEntityTrie hash];
  return v12 ^ v14 ^ [(NSSet *)self->_excludingAlgorithms hash]^ self->_excludeWithoutSentiment ^ self->_isForRecordMonitoring ^ self->_orderByName ^ self->_locationConsumer ^ self->_filterByRelevanceDate;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    [v4 setLimit:self->_limit];
    [v5 setFromDate:self->_fromDate];
    [v5 setToDate:self->_toDate];
    [v5 setScoringDate:self->_scoringDate];
    [v5 setMatchingSourceBundleIds:self->_matchingSourceBundleIds];
    [v5 setExcludingSourceBundleIds:self->_excludingSourceBundleIds];
    [v5 setMatchingSourceGroupIds:self->_matchingSourceGroupIds];
    [v5 setDeviceFilter:self->_deviceFilter];
    [v5 setMatchingName:self->_matchingName];
    [v5 setMatchingNames:self->_matchingNames];
    [v5 setMatchCategory:self->_matchCategory];
    [v5 setMatchingCategories:self->_matchingCategories];
    [v5 setMatchingEntityTrie:self->_matchingEntityTrie];
    [v5 setExcludingAlgorithms:self->_excludingAlgorithms];
    [v5 setExcludeWithoutSentiment:self->_excludeWithoutSentiment];
    [v5 setIsForRecordMonitoring:self->_isForRecordMonitoring];
    [v5 setOrderByName:self->_orderByName];
    [v5 setLocationConsumer:self->_locationConsumer];
    [v5 setMatchingContactHandle:self->_matchingContactHandle];
    [v5 setMatchingSourceDocumentIds:self->_matchingSourceDocumentIds];
    [v5 setFilterByRelevanceDate:self->_filterByRelevanceDate];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  limit = self->_limit;
  v5 = a3;
  [v5 encodeInteger:limit forKey:@"lmt"];
  [v5 encodeObject:self->_fromDate forKey:@"fdt"];
  [v5 encodeObject:self->_toDate forKey:@"tdt"];
  [v5 encodeObject:self->_scoringDate forKey:@"sdt"];
  [v5 encodeObject:self->_matchingSourceBundleIds forKey:@"mbdl"];
  [v5 encodeObject:self->_excludingSourceBundleIds forKey:@"ebdl"];
  [v5 encodeObject:self->_matchingSourceGroupIds forKey:@"gid"];
  [v5 encodeInt32:LODWORD(self->_deviceFilter) forKey:@"dflt"];
  [v5 encodeObject:self->_matchingName forKey:@"mnam"];
  [v5 encodeObject:self->_matchingNames forKey:@"mnams"];
  [v5 encodeBool:self->_matchCategory forKey:@"bmcat"];
  [v5 encodeObject:self->_matchingCategories forKey:@"mcats"];
  [v5 encodeObject:self->_matchingEntityTrie forKey:@"trie"];
  [v5 encodeObject:self->_excludingAlgorithms forKey:@"exalg"];
  [v5 encodeBool:self->_excludeWithoutSentiment forKey:@"exnonsnt"];
  [v5 encodeBool:self->_isForRecordMonitoring forKey:@"frm"];
  [v5 encodeBool:self->_orderByName forKey:@"obn"];
  [v5 encodeInt32:LODWORD(self->_locationConsumer) forKey:@"lcon"];
  [v5 encodeObject:self->_matchingContactHandle forKey:@"mch"];
  [v5 encodeObject:self->_matchingSourceDocumentIds forKey:@"msdi"];
  [v5 encodeBool:self->_filterByRelevanceDate forKey:@"fbrd"];
}

- (PPNamedEntityQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = PPNamedEntityQuery;
  v5 = [(PPNamedEntityQuery *)&v40 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = objc_alloc(MEMORY[0x1E695DFD8]);
    v10 = objc_opt_class();
    v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
    v5->_limit = [v4 decodeIntegerForKey:@"lmt"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fdt"];
    fromDate = v5->_fromDate;
    v5->_fromDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tdt"];
    toDate = v5->_toDate;
    v5->_toDate = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sdt"];
    scoringDate = v5->_scoringDate;
    v5->_scoringDate = v16;

    v18 = [v4 decodeObjectOfClasses:v8 forKey:@"mbdl"];
    matchingSourceBundleIds = v5->_matchingSourceBundleIds;
    v5->_matchingSourceBundleIds = v18;

    v20 = [v4 decodeObjectOfClasses:v8 forKey:@"ebdl"];
    excludingSourceBundleIds = v5->_excludingSourceBundleIds;
    v5->_excludingSourceBundleIds = v20;

    v22 = [v4 decodeObjectOfClasses:v8 forKey:@"gid"];
    matchingSourceGroupIds = v5->_matchingSourceGroupIds;
    v5->_matchingSourceGroupIds = v22;

    v5->_deviceFilter = [v4 decodeInt32ForKey:@"dflt"];
    [v4 decodeDoubleForKey:@"dr"];
    v5->_decayRate = v24;
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mnam"];
    matchingName = v5->_matchingName;
    v5->_matchingName = v25;

    v27 = [v4 decodeObjectOfClasses:v8 forKey:@"mnams"];
    matchingNames = v5->_matchingNames;
    v5->_matchingNames = v27;

    v5->_matchCategory = [v4 decodeBoolForKey:@"bmcat"];
    v29 = [v4 decodeObjectOfClasses:v11 forKey:@"mcats"];
    matchingCategories = v5->_matchingCategories;
    v5->_matchingCategories = v29;

    v31 = [v4 decodeObjectOfClasses:v8 forKey:@"trie"];
    matchingEntityTrie = v5->_matchingEntityTrie;
    v5->_matchingEntityTrie = v31;

    v33 = [v4 decodeObjectOfClasses:v11 forKey:@"exalg"];
    excludingAlgorithms = v5->_excludingAlgorithms;
    v5->_excludingAlgorithms = v33;

    v5->_excludeWithoutSentiment = [v4 decodeBoolForKey:@"exnonsnt"];
    v5->_isForRecordMonitoring = [v4 decodeBoolForKey:@"frm"];
    v5->_orderByName = [v4 decodeBoolForKey:@"obn"];
    v5->_locationConsumer = [v4 decodeInt32ForKey:@"lcon"];
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mch"];
    matchingContactHandle = v5->_matchingContactHandle;
    v5->_matchingContactHandle = v35;

    v37 = [v4 decodeObjectOfClasses:v8 forKey:@"msdi"];
    matchingSourceDocumentIds = v5->_matchingSourceDocumentIds;
    v5->_matchingSourceDocumentIds = v37;

    v5->_filterByRelevanceDate = [v4 decodeBoolForKey:@"fbrd"];
  }

  return v5;
}

+ (id)locationQueryWithLimit:(unint64_t)a3 fromDate:(id)a4 consumerType:(unint64_t)a5
{
  v26[3] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setLimit:a3];
  [v8 setMatchCategory:1];
  switch(a5)
  {
    case 3uLL:
      v9 = objc_autoreleasePoolPush();
      v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F1B462B8, &unk_1F1B462D0, &unk_1F1B462E8, &unk_1F1B46300, &unk_1F1B462A0, &unk_1F1B46318, &unk_1F1B46330, 0}];
      goto LABEL_7;
    case 2uLL:
      v9 = objc_autoreleasePoolPush();
      v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F1B462B8, &unk_1F1B462D0, &unk_1F1B462E8, 0, v22, v23, v24, v25}];
      goto LABEL_7;
    case 1uLL:
      v9 = objc_autoreleasePoolPush();
      v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F1B462B8, &unk_1F1B462D0, &unk_1F1B462E8, &unk_1F1B46300, 0, v23, v24, v25}];
LABEL_7:
      v11 = v10;
      objc_autoreleasePoolPop(v9);
      goto LABEL_9;
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSSet<NSNumber *> * _Nonnull locationCategoriesForMaps(PPLocationConsumer)"];
  [v12 handleFailureInFunction:v13 file:@"PPNamedEntityStore.m" lineNumber:368 description:{@"Bad location consumer: %tu", a5}];

  v11 = objc_opt_new();
LABEL_9:
  [v8 setMatchingCategories:v11];

  if (a5 == 3)
  {
    [v8 setExcludingAlgorithms:0];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F1B462A0, 0}];
    objc_autoreleasePoolPop(v14);
    [v8 setExcludingAlgorithms:v15];
  }

  [v8 setFromDate:v7];
  v16 = objc_autoreleasePoolPush();
  v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.apple.Maps", @"com.apple.CoreRoutine", @"com.apple.mobilecal", @"com.apple.iCal", @"com.apple.Passbook", 0}];
  objc_autoreleasePoolPop(v16);
  if (a5 == 3)
  {
    [v8 setExcludingSourceBundleIds:v17];
  }

  else
  {
    v26[0] = @"com.apple.mobileslideshow";
    v26[1] = @"com.apple.Photos";
    v26[2] = @"com.apple.camera";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
    v19 = [v17 setByAddingObjectsFromArray:v18];
    [v8 setExcludingSourceBundleIds:v19];
  }

  [v8 setLocationConsumer:a5];

  v20 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_excludingAlgorithmsDescription:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] stringWithString:@"["];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      v10 = 0;
      v11 = v8 + 1;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = +[PPNamedEntityRecord describeAlgorithm:](PPNamedEntityRecord, "describeAlgorithm:", [*(*(&v15 + 1) + 8 * v10) unsignedIntegerValue]);
        [v4 appendString:v12];

        if ([v5 count] > v11)
        {
          [v4 appendString:{@", "}];
        }

        ++v10;
        ++v11;
      }

      while (v7 != v10);
      v8 += v7;
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [v4 appendString:@"]"];
  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)_matchingCategoriesDescription:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AD60] stringWithString:@"["];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      v10 = 0;
      v11 = v8 + 1;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = +[PPNamedEntity describeCategory:](PPNamedEntity, "describeCategory:", [*(*(&v15 + 1) + 8 * v10) unsignedIntegerValue]);
        [v4 appendString:v12];

        if ([v5 count] > v11)
        {
          [v4 appendString:{@", "}];
        }

        ++v10;
        ++v11;
      }

      while (v7 != v10);
      v8 += v7;
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [v4 appendString:@"]"];
  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

@end