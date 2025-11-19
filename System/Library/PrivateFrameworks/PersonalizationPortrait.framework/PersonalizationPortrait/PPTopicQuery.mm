@interface PPTopicQuery
+ (id)_algorithmsDescription:(id)a3;
+ (id)queryForCSSearchableItem:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTopicQuery:(id)a3;
- (PPTopicQuery)init;
- (PPTopicQuery)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)customizedDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPTopicQuery

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

  matchingGroupIds = self->_matchingGroupIds;
  if (matchingGroupIds)
  {
    v19 = [(NSSet *)matchingGroupIds count];
    v20 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v19 < 0xB)
    {
      v21 = [v20 initWithFormat:@"matchingGroupIds:%@", self->_matchingGroupIds];
    }

    else
    {
      v21 = [v20 initWithFormat:@"matchingGroupIds.count:%tu", -[NSSet count](self->_matchingGroupIds, "count")];
    }

    v22 = v21;
    [v3 addObject:v21];
  }

  matchingDocumentIds = self->_matchingDocumentIds;
  if (matchingDocumentIds)
  {
    v24 = [(NSSet *)matchingDocumentIds count];
    v25 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v24 < 0xB)
    {
      v26 = [v25 initWithFormat:@"matchingDocumentIds:%@", self->_matchingDocumentIds];
    }

    else
    {
      v26 = [v25 initWithFormat:@"matchingDocumentIds.count:%tu", -[NSSet count](self->_matchingDocumentIds, "count")];
    }

    v27 = v26;
    [v3 addObject:v26];
  }

  if (self->_deviceFilter)
  {
    v28 = objc_alloc(MEMORY[0x1E696AEC0]);
    v29 = [PPEnumTypes stringForDeviceFilter:self->_deviceFilter];
    v30 = [v28 initWithFormat:@"deviceFilter:%@", v29];
    [v3 addObject:v30];
  }

  if (self->_decayRate != -1.0)
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"decayRate:%f", *&self->_decayRate];
    [v3 addObject:v31];
  }

  if (!self->_scoreWithBiases)
  {
    [v3 addObject:@"scoreWithBiases:NO"];
  }

  if (self->_matchingTopicIds)
  {
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"matchingTopicIds.count:%tu", -[NSSet count](self->_matchingTopicIds, "count")];
    [v3 addObject:v32];
  }

  if (self->_matchingMappedTopicIds)
  {
    v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"matchingMappedTopicIds.count:%tu", -[NSSet count](self->_matchingMappedTopicIds, "count")];
    [v3 addObject:v33];
  }

  if (self->_matchingContactHandle)
  {
    v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"matchingContactHandle.length:%tu", -[NSString length](self->_matchingContactHandle, "length")];
    [v3 addObject:v34];
  }

  if (self->_matchingTopicTrie)
  {
    v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"matchingTopicTrie:%@", self->_matchingTopicTrie];
    [v3 addObject:v35];
  }

  if (self->_minimumComponentCount)
  {
    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"minimumComponentCount:%tu", self->_minimumComponentCount];
    [v3 addObject:v36];
  }

  matchingAlgorithms = self->_matchingAlgorithms;
  if (matchingAlgorithms)
  {
    v38 = [(NSSet *)matchingAlgorithms count];
    v39 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v38 < 0xB)
    {
      v40 = [objc_opt_class() _algorithmsDescription:self->_matchingAlgorithms];
      v41 = [v39 initWithFormat:@"matchingAlgorithms:%@", v40];
      [v3 addObject:v41];
    }

    else
    {
      v40 = [v39 initWithFormat:@"matchingAlgorithms.count:%tu", -[NSSet count](self->_matchingAlgorithms, "count")];
      [v3 addObject:v40];
    }
  }

  excludingAlgorithms = self->_excludingAlgorithms;
  if (excludingAlgorithms)
  {
    v43 = [(NSSet *)excludingAlgorithms count];
    v44 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v43 < 0xB)
    {
      v45 = [objc_opt_class() _algorithmsDescription:self->_excludingAlgorithms];
      v46 = [v44 initWithFormat:@"excludingAlgorithms:%@", v45];
      [v3 addObject:v46];
    }

    else
    {
      v45 = [v44 initWithFormat:@"excludingAlgorithms.count:%tu", -[NSSet count](self->_excludingAlgorithms, "count")];
      [v3 addObject:v45];
    }
  }

  if (self->_scoreWithStrictFiltering)
  {
    [v3 addObject:@"scoreWithStrictFiltering:YES"];
  }

  if (self->_excludeWithoutSentiment)
  {
    [v3 addObject:@"excludeWithoutSentiment:YES"];
  }

  if (self->_orderByIdentifier)
  {
    [v3 addObject:@"orderByIdentifier:YES"];
  }

  if (self->_filterByRelevanceDate)
  {
    [v3 addObject:@"filterByRelevanceDate:YES"];
  }

  v47 = [v3 _pas_componentsJoinedByString:@" "];

  return v47;
}

- (id)description
{
  v3 = [objc_opt_class() _algorithmsDescription:self->_matchingAlgorithms];
  v4 = [objc_opt_class() _algorithmsDescription:self->_excludingAlgorithms];
  v21 = objc_alloc(MEMORY[0x1E696AEC0]);
  v19 = *&self->_toDate;
  v20 = *&self->_limit;
  v18 = *&self->_matchingSourceBundleIds;
  matchingGroupIds = self->_matchingGroupIds;
  matchingDocumentIds = self->_matchingDocumentIds;
  v7 = [PPEnumTypes stringForDeviceFilter:self->_deviceFilter];
  if (self->_scoreWithBiases)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(NSSet *)self->_matchingTopicIds count];
  v10 = [(NSSet *)self->_matchingMappedTopicIds count];
  if (self->_scoreWithCalibration)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_scoreWithStrictFiltering)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->_excludeWithoutSentiment)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (self->_orderByIdentifier)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if (self->_filterByRelevanceDate)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = [v21 initWithFormat:@"<PPTopicQuery l:%tu, d:%@-%@ sd:%@ mid:%@ eid:%@ gid:%@ mdid:%@ df:%@ sb:%@ mti:%tu mmti:%tu tri:%@ sc:%@ mcc:%tu ma:%@ ea:%@ ssf:%@ ews:%@ obi:%@ mch:%@ fbrd:%@>", v20, v19, v18, matchingGroupIds, matchingDocumentIds, v7, v8, v9, v10, self->_matchingTopicTrie, v11, self->_minimumComponentCount, v3, v4, v12, v13, v14, self->_matchingContactHandle, v15];

  return v16;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPTopicQuery *)self isEqualToTopicQuery:v4];
  }

  return v5;
}

- (BOOL)isEqualToTopicQuery:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v25 = 1;
    goto LABEL_63;
  }

  if (!v4)
  {
    goto LABEL_62;
  }

  limit = self->_limit;
  if (limit != [(PPTopicQuery *)v4 limit])
  {
    goto LABEL_62;
  }

  v7 = self->_fromDate;
  v8 = [(PPTopicQuery *)v5 fromDate];
  if (v7 | v8)
  {
    v26 = v8;
    if (!v7 || !v8)
    {
      goto LABEL_61;
    }

    v27 = [(NSSet *)v7 isEqualToDate:v8];

    if (!v27)
    {
      goto LABEL_62;
    }
  }

  v7 = self->_toDate;
  v9 = [(PPTopicQuery *)v5 toDate];
  if (v7 | v9)
  {
    v26 = v9;
    if (!v7 || !v9)
    {
      goto LABEL_61;
    }

    v28 = [(NSSet *)v7 isEqualToDate:v9];

    if (!v28)
    {
      goto LABEL_62;
    }
  }

  v7 = self->_scoringDate;
  v10 = [(PPTopicQuery *)v5 scoringDate];
  if (v7 | v10)
  {
    v26 = v10;
    if (!v7 || !v10)
    {
      goto LABEL_61;
    }

    v29 = [(NSSet *)v7 isEqualToDate:v10];

    if (!v29)
    {
      goto LABEL_62;
    }
  }

  v7 = self->_matchingSourceBundleIds;
  v11 = [(PPTopicQuery *)v5 matchingSourceBundleIds];
  if (v7 | v11)
  {
    v26 = v11;
    if (!v7 || !v11)
    {
      goto LABEL_61;
    }

    v30 = [(NSSet *)v7 isEqualToSet:v11];

    if (!v30)
    {
      goto LABEL_62;
    }
  }

  v7 = self->_excludingSourceBundleIds;
  v12 = [(PPTopicQuery *)v5 excludingSourceBundleIds];
  if (v7 | v12)
  {
    v26 = v12;
    if (!v7 || !v12)
    {
      goto LABEL_61;
    }

    v31 = [(NSSet *)v7 isEqualToSet:v12];

    if (!v31)
    {
      goto LABEL_62;
    }
  }

  v7 = self->_matchingGroupIds;
  v13 = [(PPTopicQuery *)v5 matchingGroupIds];
  if (v7 | v13)
  {
    v26 = v13;
    if (!v7 || !v13)
    {
      goto LABEL_61;
    }

    v32 = [(NSSet *)v7 isEqualToSet:v13];

    if (!v32)
    {
      goto LABEL_62;
    }
  }

  v7 = self->_matchingDocumentIds;
  v14 = [(PPTopicQuery *)v5 matchingDocumentIds];
  if (v7 | v14)
  {
    v26 = v14;
    if (!v7 || !v14)
    {
      goto LABEL_61;
    }

    v33 = [(NSSet *)v7 isEqualToSet:v14];

    if (!v33)
    {
      goto LABEL_62;
    }
  }

  deviceFilter = self->_deviceFilter;
  if (deviceFilter != [(PPTopicQuery *)v5 deviceFilter])
  {
    goto LABEL_62;
  }

  decayRate = self->_decayRate;
  [(PPTopicQuery *)v5 decayRate];
  if (decayRate != v17)
  {
    goto LABEL_62;
  }

  scoreWithBiases = self->_scoreWithBiases;
  if (scoreWithBiases != [(PPTopicQuery *)v5 scoreWithBiases])
  {
    goto LABEL_62;
  }

  v7 = self->_matchingTopicIds;
  v19 = [(PPTopicQuery *)v5 matchingTopicIds];
  if (v7 | v19)
  {
    v26 = v19;
    if (!v7 || !v19)
    {
      goto LABEL_61;
    }

    v34 = [(NSSet *)v7 isEqualToSet:v19];

    if (!v34)
    {
      goto LABEL_62;
    }
  }

  v7 = self->_matchingMappedTopicIds;
  v20 = [(PPTopicQuery *)v5 matchingMappedTopicIds];
  if (v7 | v20)
  {
    v26 = v20;
    if (!v7 || !v20)
    {
      goto LABEL_61;
    }

    v35 = [(NSSet *)v7 isEqualToSet:v20];

    if (!v35)
    {
      goto LABEL_62;
    }
  }

  v7 = self->_matchingContactHandle;
  v21 = [(PPTopicQuery *)v5 matchingContactHandle];
  if (v7 | v21)
  {
    v26 = v21;
    if (v7 && v21)
    {
      v36 = [(NSSet *)v7 isEqualToString:v21];

      if (v36)
      {
        goto LABEL_17;
      }

LABEL_62:
      v25 = 0;
      goto LABEL_63;
    }

LABEL_61:

    goto LABEL_62;
  }

LABEL_17:
  scoreWithStrictFiltering = self->_scoreWithStrictFiltering;
  if (scoreWithStrictFiltering != [(PPTopicQuery *)v5 scoreWithStrictFiltering])
  {
    goto LABEL_62;
  }

  excludeWithoutSentiment = self->_excludeWithoutSentiment;
  if (excludeWithoutSentiment != [(PPTopicQuery *)v5 excludeWithoutSentiment])
  {
    goto LABEL_62;
  }

  filterByRelevanceDate = self->_filterByRelevanceDate;
  v25 = filterByRelevanceDate == [(PPTopicQuery *)v5 filterByRelevanceDate];
LABEL_63:

  return v25;
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
    [v5 setMatchingGroupIds:self->_matchingGroupIds];
    [v5 setMatchingDocumentIds:self->_matchingDocumentIds];
    [v5 setDeviceFilter:self->_deviceFilter];
    [v5 setDecayRate:self->_decayRate];
    [v5 setScoreWithBiases:self->_scoreWithBiases];
    [v5 setMatchingTopicIds:self->_matchingTopicIds];
    [v5 setMatchingMappedTopicIds:self->_matchingMappedTopicIds];
    [v5 setMatchingTopicTrie:self->_matchingTopicTrie];
    [v5 setScoreWithCalibration:self->_scoreWithCalibration];
    [v5 setMinimumComponentCount:self->_minimumComponentCount];
    [v5 setMatchingAlgorithms:self->_matchingAlgorithms];
    [v5 setExcludingAlgorithms:self->_excludingAlgorithms];
    [v5 setScoreWithStrictFiltering:self->_scoreWithStrictFiltering];
    [v5 setExcludeWithoutSentiment:self->_excludeWithoutSentiment];
    [v5 setOrderByIdentifier:self->_orderByIdentifier];
    [v5 setMatchingContactHandle:self->_matchingContactHandle];
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
  [v5 encodeObject:self->_matchingGroupIds forKey:@"gid"];
  [v5 encodeObject:self->_matchingDocumentIds forKey:@"mdid"];
  [v5 encodeInt32:LODWORD(self->_deviceFilter) forKey:@"dflt"];
  [v5 encodeDouble:@"dr" forKey:self->_decayRate];
  [v5 encodeBool:self->_scoreWithBiases forKey:@"sbias"];
  [v5 encodeObject:self->_matchingTopicIds forKey:@"mids"];
  [v5 encodeObject:self->_matchingMappedTopicIds forKey:@"mmids"];
  [v5 encodeObject:self->_matchingTopicTrie forKey:@"trie"];
  [v5 encodeBool:self->_scoreWithCalibration forKey:@"scali"];
  [v5 encodeInteger:self->_minimumComponentCount forKey:@"mcc"];
  [v5 encodeObject:self->_matchingAlgorithms forKey:@"ma"];
  [v5 encodeObject:self->_excludingAlgorithms forKey:@"ea"];
  [v5 encodeBool:self->_scoreWithStrictFiltering forKey:@"ssf"];
  [v5 encodeBool:self->_excludeWithoutSentiment forKey:@"exnonsnt"];
  [v5 encodeBool:self->_orderByIdentifier forKey:@"obi"];
  [v5 encodeObject:self->_matchingContactHandle forKey:@"mch"];
  [v5 encodeBool:self->_filterByRelevanceDate forKey:@"fbrd"];
}

- (PPTopicQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = PPTopicQuery;
  v5 = [(PPTopicQuery *)&v42 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    v10 = objc_autoreleasePoolPush();
    v11 = objc_alloc(MEMORY[0x1E695DFD8]);
    v12 = objc_opt_class();
    v13 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v10);
    v5->_limit = [v4 decodeIntegerForKey:@"lmt"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fdt"];
    fromDate = v5->_fromDate;
    v5->_fromDate = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tdt"];
    toDate = v5->_toDate;
    v5->_toDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sdt"];
    scoringDate = v5->_scoringDate;
    v5->_scoringDate = v18;

    v20 = [v4 decodeObjectOfClasses:v9 forKey:@"mbdl"];
    matchingSourceBundleIds = v5->_matchingSourceBundleIds;
    v5->_matchingSourceBundleIds = v20;

    v22 = [v4 decodeObjectOfClasses:v9 forKey:@"ebdl"];
    excludingSourceBundleIds = v5->_excludingSourceBundleIds;
    v5->_excludingSourceBundleIds = v22;

    v24 = [v4 decodeObjectOfClasses:v9 forKey:@"gid"];
    matchingGroupIds = v5->_matchingGroupIds;
    v5->_matchingGroupIds = v24;

    v26 = [v4 decodeObjectOfClasses:v9 forKey:@"mdid"];
    matchingDocumentIds = v5->_matchingDocumentIds;
    v5->_matchingDocumentIds = v26;

    v5->_deviceFilter = [v4 decodeInt32ForKey:@"dflt"];
    [v4 decodeDoubleForKey:@"dr"];
    v5->_decayRate = v28;
    v5->_scoreWithBiases = [v4 decodeBoolForKey:@"sbias"];
    v29 = [v4 decodeObjectOfClasses:v9 forKey:@"mids"];
    matchingTopicIds = v5->_matchingTopicIds;
    v5->_matchingTopicIds = v29;

    v31 = [v4 decodeObjectOfClasses:v9 forKey:@"mmids"];
    matchingMappedTopicIds = v5->_matchingMappedTopicIds;
    v5->_matchingMappedTopicIds = v31;

    v33 = [v4 decodeObjectOfClasses:v9 forKey:@"trie"];
    matchingTopicTrie = v5->_matchingTopicTrie;
    v5->_matchingTopicTrie = v33;

    v5->_scoreWithCalibration = [v4 decodeBoolForKey:@"scali"];
    v5->_minimumComponentCount = [v4 decodeIntegerForKey:@"mcc"];
    v35 = [v4 decodeObjectOfClasses:v13 forKey:@"ma"];
    matchingAlgorithms = v5->_matchingAlgorithms;
    v5->_matchingAlgorithms = v35;

    v37 = [v4 decodeObjectOfClasses:v13 forKey:@"ea"];
    excludingAlgorithms = v5->_excludingAlgorithms;
    v5->_excludingAlgorithms = v37;

    v5->_scoreWithStrictFiltering = [v4 decodeBoolForKey:@"ssf"];
    v5->_excludeWithoutSentiment = [v4 decodeBoolForKey:@"exnonsnt"];
    v5->_orderByIdentifier = [v4 decodeBoolForKey:@"obi"];
    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mch"];
    matchingContactHandle = v5->_matchingContactHandle;
    v5->_matchingContactHandle = v39;

    v5->_filterByRelevanceDate = [v4 decodeBoolForKey:@"fbrd"];
  }

  return v5;
}

- (PPTopicQuery)init
{
  v3.receiver = self;
  v3.super_class = PPTopicQuery;
  result = [(PPTopicQuery *)&v3 init];
  if (result)
  {
    result->_limit = -1;
    result->_minimumComponentCount = 0;
    *&result->_scoreWithBiases = 1;
    result->_scoreWithCalibration = 0;
    result->_deviceFilter = 0;
    result->_decayRate = -1.0;
  }

  return result;
}

+ (id)_algorithmsDescription:(id)a3
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

        v12 = +[PPTopicRecord describeAlgorithm:](PPTopicRecord, "describeAlgorithm:", [*(*(&v15 + 1) + 8 * v10) unsignedIntegerValue]);
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

+ (id)queryForCSSearchableItem:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = [v3 bundleID];
  v8 = [v6 initWithObjects:{v7, 0}];

  objc_autoreleasePoolPop(v5);
  [v4 setMatchingSourceBundleIds:v8];

  v9 = [v3 domainIdentifier];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = objc_alloc(MEMORY[0x1E695DFD8]);
    v12 = [v3 domainIdentifier];
    v13 = [v11 initWithObjects:{v12, 0}];

    objc_autoreleasePoolPop(v10);
    [v4 setMatchingGroupIds:v13];
  }

  v14 = objc_autoreleasePoolPush();
  v15 = objc_alloc(MEMORY[0x1E695DFD8]);
  v16 = [v3 uniqueIdentifier];
  v17 = [v15 initWithObjects:{v16, 0}];

  objc_autoreleasePoolPop(v14);
  [v4 setMatchingDocumentIds:v17];

  return v4;
}

@end