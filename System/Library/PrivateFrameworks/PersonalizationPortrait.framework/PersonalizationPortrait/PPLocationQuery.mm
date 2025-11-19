@interface PPLocationQuery
+ (id)_algorithmsDescription:(id)a3;
+ (id)_matchingCategoriesDescription:(id)a3;
+ (id)queryForMapsWithLimit:(unint64_t)a3 fromDate:(id)a4 consumerType:(unint64_t)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLocationQuery:(id)a3;
- (PPLocationQuery)init;
- (PPLocationQuery)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)customizedDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPLocationQuery

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

  if (self->_deviceFilter)
  {
    v18 = objc_alloc(MEMORY[0x1E696AEC0]);
    v19 = [PPEnumTypes stringForDeviceFilter:self->_deviceFilter];
    v20 = [v18 initWithFormat:@"deviceFilter:%@", v19];
    [v3 addObject:v20];
  }

  if (self->_perRecordDecayRate != -1.0)
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"perRecordDecayRate:%f", *&self->_perRecordDecayRate];
    [v3 addObject:v21];
  }

  if (self->_decayRate != -1.0)
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"decayRate:%f", *&self->_decayRate];
    [v3 addObject:v22];
  }

  if (self->_fuzzyMatchingString)
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"fuzzyMatchingString.length:%tu", -[NSString length](self->_fuzzyMatchingString, "length")];
    [v3 addObject:v23];
  }

  if (self->_matchingContactHandle)
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"matchingContactHandle.length:%tu", -[NSString length](self->_matchingContactHandle, "length")];
    [v3 addObject:v24];
  }

  matchingCategories = self->_matchingCategories;
  if (matchingCategories)
  {
    v26 = [(NSSet *)matchingCategories count];
    v27 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v26 < 0xB)
    {
      v28 = [objc_opt_class() _matchingCategoriesDescription:self->_matchingCategories];
      v29 = [v27 initWithFormat:@"matchingCategories:%@", v28];
      [v3 addObject:v29];
    }

    else
    {
      v28 = [v27 initWithFormat:@"matchingCategories.count:%tu", -[NSSet count](self->_matchingCategories, "count")];
      [v3 addObject:v28];
    }
  }

  matchingAlgorithms = self->_matchingAlgorithms;
  if (matchingAlgorithms)
  {
    v31 = [(NSSet *)matchingAlgorithms count];
    v32 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v31 < 0xB)
    {
      v33 = [objc_opt_class() _algorithmsDescription:self->_matchingAlgorithms];
      v34 = [v32 initWithFormat:@"matchingAlgorithms:%@", v33];
      [v3 addObject:v34];
    }

    else
    {
      v33 = [v32 initWithFormat:@"matchingAlgorithms.count:%tu", -[NSSet count](self->_matchingAlgorithms, "count")];
      [v3 addObject:v33];
    }
  }

  excludingAlgorithms = self->_excludingAlgorithms;
  if (excludingAlgorithms)
  {
    v36 = [(NSSet *)excludingAlgorithms count];
    v37 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v36 < 0xB)
    {
      v38 = [objc_opt_class() _algorithmsDescription:self->_excludingAlgorithms];
      v39 = [v37 initWithFormat:@"excludingAlgorithms:%@", v38];
      [v3 addObject:v39];
    }

    else
    {
      v38 = [v37 initWithFormat:@"excludingAlgorithms.count:%tu", -[NSSet count](self->_excludingAlgorithms, "count")];
      [v3 addObject:v38];
    }
  }

  if (self->_excludingWithoutSentiment)
  {
    [v3 addObject:@"excludingWithoutSentiment:YES"];
  }

  if (self->_consumer)
  {
    v40 = [PPLocationStore describeLocationConsumer:?];
    [v3 addObject:v40];
  }

  if (self->_filterByRelevanceDate)
  {
    [v3 addObject:@"filterByRelevanceDate:YES"];
  }

  v41 = [v3 _pas_componentsJoinedByString:@" "];

  return v41;
}

- (id)description
{
  v19 = [objc_opt_class() _matchingCategoriesDescription:self->_matchingCategories];
  v18 = [objc_opt_class() _algorithmsDescription:self->_matchingAlgorithms];
  v3 = [objc_opt_class() _algorithmsDescription:self->_excludingAlgorithms];
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = *&self->_limit;
  v15 = *&self->_toDate;
  matchingSourceBundleIds = self->_matchingSourceBundleIds;
  excludingSourceBundleIds = self->_excludingSourceBundleIds;
  v6 = [PPEnumTypes stringForDeviceFilter:self->_deviceFilter];
  v7 = [(NSString *)self->_fuzzyMatchingString length];
  if (self->_excludingWithoutSentiment)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [PPLocationStore describeLocationConsumer:self->_consumer];
  v10 = v9;
  matchingContactHandle = self->_matchingContactHandle;
  if (self->_filterByRelevanceDate)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [v17 initWithFormat:@"<PPLocationQuery l:%tu d:%@-%@ sd:%@ mid:%@ eid:%@ df:%@ fms:%tu c:%@ ma:%@ ea:%@ ens:%@> cons:%@ mch:%@ fbrd:%@", v16, v15, matchingSourceBundleIds, excludingSourceBundleIds, v6, v7, v19, v18, v3, v8, v9, self->_matchingContactHandle, v12];

  return v13;
}

- (unint64_t)hash
{
  limit = self->_limit;
  v4 = [(NSDate *)self->_fromDate hash]- limit + 32 * limit;
  v5 = [(NSDate *)self->_toDate hash]- v4 + 32 * v4;
  v6 = [(NSDate *)self->_scoringDate hash]- v5 + 32 * v5;
  v7 = [(NSSet *)self->_matchingSourceBundleIds hash]- v6 + 32 * v6;
  v8 = [(NSSet *)self->_excludingSourceBundleIds hash];
  v9 = self->_deviceFilter - (v8 - v7 + 32 * v7) + 32 * (v8 - v7 + 32 * v7);
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_perRecordDecayRate];
  v11 = [v10 hash] - v9 + 32 * v9;

  v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_decayRate];
  v13 = [v12 hash] - v11 + 32 * v11;

  v14 = [(NSString *)self->_fuzzyMatchingString hash]- v13 + 32 * v13;
  v15 = [(NSSet *)self->_matchingCategories hash]- v14 + 32 * v14;
  v16 = [(NSSet *)self->_matchingAlgorithms hash]- v15 + 32 * v15;
  v17 = [(NSSet *)self->_excludingAlgorithms hash];
  v18 = self->_excludingWithoutSentiment - (v17 - v16 + 32 * v16) + 32 * (v17 - v16 + 32 * v16);
  v19 = self->_consumer - v18 + 32 * v18;
  return self->_filterByRelevanceDate - v19 + 32 * v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPLocationQuery *)self isEqualToLocationQuery:v5];
  }

  return v6;
}

- (BOOL)isEqualToLocationQuery:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_limit != v4[2])
  {
    goto LABEL_60;
  }

  v6 = self->_fromDate;
  v7 = v5[3];
  if (v6 | v7)
  {
    v19 = v7;
    if (!v6 || !v7)
    {
      goto LABEL_59;
    }

    v20 = [(NSSet *)v6 isEqualToDate:v7];

    if (!v20)
    {
      goto LABEL_60;
    }
  }

  v6 = self->_toDate;
  v8 = v5[4];
  if (v6 | v8)
  {
    v19 = v8;
    if (!v6 || !v8)
    {
      goto LABEL_59;
    }

    v21 = [(NSSet *)v6 isEqualToDate:v8];

    if (!v21)
    {
      goto LABEL_60;
    }
  }

  v6 = self->_scoringDate;
  v9 = v5[5];
  if (v6 | v9)
  {
    v19 = v9;
    if (!v6 || !v9)
    {
      goto LABEL_59;
    }

    v22 = [(NSSet *)v6 isEqualToDate:v9];

    if (!v22)
    {
      goto LABEL_60;
    }
  }

  v6 = self->_matchingSourceBundleIds;
  v10 = v5[6];
  if (v6 | v10)
  {
    v19 = v10;
    if (!v6 || !v10)
    {
      goto LABEL_59;
    }

    v23 = [(NSSet *)v6 isEqualToSet:v10];

    if (!v23)
    {
      goto LABEL_60;
    }
  }

  v6 = self->_excludingSourceBundleIds;
  v11 = v5[7];
  if (v6 | v11)
  {
    v19 = v11;
    if (!v6 || !v11)
    {
      goto LABEL_59;
    }

    v24 = [(NSSet *)v6 isEqualToSet:v11];

    if (!v24)
    {
      goto LABEL_60;
    }
  }

  if (self->_deviceFilter != v5[8] || self->_perRecordDecayRate != *(v5 + 9) || self->_decayRate != *(v5 + 10))
  {
    goto LABEL_60;
  }

  v6 = self->_fuzzyMatchingString;
  v12 = v5[11];
  if (v6 | v12)
  {
    v19 = v12;
    if (!v6 || !v12)
    {
      goto LABEL_59;
    }

    v25 = [(NSSet *)v6 isEqualToString:v12];

    if (!v25)
    {
      goto LABEL_60;
    }
  }

  v6 = self->_matchingContactHandle;
  v13 = [v5 matchingContactHandle];
  if (v6 | v13)
  {
    v19 = v13;
    if (!v6 || !v13)
    {
      goto LABEL_59;
    }

    v26 = [(NSSet *)v6 isEqualToString:v13];

    if (!v26)
    {
      goto LABEL_60;
    }
  }

  v6 = self->_matchingCategories;
  v14 = v5[12];
  if (v6 | v14)
  {
    v19 = v14;
    if (!v6 || !v14)
    {
      goto LABEL_59;
    }

    v27 = [(NSSet *)v6 isEqualToSet:v14];

    if (!v27)
    {
      goto LABEL_60;
    }
  }

  v6 = self->_matchingAlgorithms;
  v15 = v5[13];
  if (v6 | v15)
  {
    v19 = v15;
    if (!v6 || !v15)
    {
      goto LABEL_59;
    }

    v28 = [(NSSet *)v6 isEqualToSet:v15];

    if (!v28)
    {
      goto LABEL_60;
    }
  }

  v6 = self->_excludingAlgorithms;
  v16 = v5[14];
  if (v6 | v16)
  {
    v19 = v16;
    if (v6 && v16)
    {
      v29 = [(NSSet *)v6 isEqualToSet:v16];

      if (v29)
      {
        goto LABEL_16;
      }

LABEL_60:
      v18 = 0;
      goto LABEL_61;
    }

LABEL_59:

    goto LABEL_60;
  }

LABEL_16:
  if (self->_excludingWithoutSentiment != *(v5 + 8) || self->_consumer != v5[16])
  {
    goto LABEL_60;
  }

  filterByRelevanceDate = self->_filterByRelevanceDate;
  v18 = filterByRelevanceDate == [v5 filterByRelevanceDate];
LABEL_61:

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PPLocationQuery allocWithZone:](PPLocationQuery init];
  v5->_limit = self->_limit;
  v6 = [(NSDate *)self->_fromDate copyWithZone:a3];
  fromDate = v5->_fromDate;
  v5->_fromDate = v6;

  v8 = [(NSDate *)self->_toDate copyWithZone:a3];
  toDate = v5->_toDate;
  v5->_toDate = v8;

  v10 = [(NSDate *)self->_scoringDate copyWithZone:a3];
  scoringDate = v5->_scoringDate;
  v5->_scoringDate = v10;

  v12 = [(NSSet *)self->_matchingSourceBundleIds copyWithZone:a3];
  matchingSourceBundleIds = v5->_matchingSourceBundleIds;
  v5->_matchingSourceBundleIds = v12;

  v14 = [(NSSet *)self->_excludingSourceBundleIds copyWithZone:a3];
  excludingSourceBundleIds = v5->_excludingSourceBundleIds;
  v5->_excludingSourceBundleIds = v14;

  v5->_deviceFilter = self->_deviceFilter;
  v5->_perRecordDecayRate = self->_perRecordDecayRate;
  v5->_decayRate = self->_decayRate;
  v16 = [(NSString *)self->_fuzzyMatchingString copyWithZone:a3];
  fuzzyMatchingString = v5->_fuzzyMatchingString;
  v5->_fuzzyMatchingString = v16;

  v18 = [(NSSet *)self->_matchingCategories copyWithZone:a3];
  matchingCategories = v5->_matchingCategories;
  v5->_matchingCategories = v18;

  v20 = [(NSSet *)self->_matchingAlgorithms copyWithZone:a3];
  matchingAlgorithms = v5->_matchingAlgorithms;
  v5->_matchingAlgorithms = v20;

  v22 = [(NSSet *)self->_excludingAlgorithms copyWithZone:a3];
  excludingAlgorithms = v5->_excludingAlgorithms;
  v5->_excludingAlgorithms = v22;

  v5->_excludingWithoutSentiment = self->_excludingWithoutSentiment;
  v5->_consumer = self->_consumer;
  v24 = [(NSString *)self->_matchingContactHandle copyWithZone:a3];
  matchingContactHandle = v5->_matchingContactHandle;
  v5->_matchingContactHandle = v24;

  v5->_filterByRelevanceDate = self->_filterByRelevanceDate;
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  limit = self->_limit;
  v5 = a3;
  [v5 encodeInteger:limit forKey:@"lim"];
  [v5 encodeObject:self->_fromDate forKey:@"fd"];
  [v5 encodeObject:self->_toDate forKey:@"td"];
  [v5 encodeObject:self->_scoringDate forKey:@"sd"];
  [v5 encodeObject:self->_matchingSourceBundleIds forKey:@"mbi"];
  [v5 encodeObject:self->_excludingSourceBundleIds forKey:@"ebi"];
  [v5 encodeInt32:LODWORD(self->_deviceFilter) forKey:@"devf"];
  [v5 encodeDouble:@"prd" forKey:self->_perRecordDecayRate];
  [v5 encodeDouble:@"dr" forKey:self->_decayRate];
  [v5 encodeObject:self->_fuzzyMatchingString forKey:@"ms"];
  [v5 encodeObject:self->_matchingCategories forKey:@"mc"];
  [v5 encodeObject:self->_matchingAlgorithms forKey:@"ma"];
  [v5 encodeObject:self->_excludingAlgorithms forKey:@"ea"];
  [v5 encodeBool:self->_excludingWithoutSentiment forKey:@"ews"];
  [v5 encodeInteger:self->_consumer forKey:@"cons"];
  [v5 encodeObject:self->_matchingContactHandle forKey:@"mch"];
  [v5 encodeBool:self->_filterByRelevanceDate forKey:@"fbrd"];
}

- (PPLocationQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PPLocationQuery *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = objc_autoreleasePoolPush();
    v8 = objc_alloc(MEMORY[0x1E695DFD8]);
    v9 = objc_opt_class();
    v10 = [v8 initWithObjects:{v9, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v7);
    v11 = objc_autoreleasePoolPush();
    v12 = objc_alloc(MEMORY[0x1E695DFD8]);
    v13 = objc_opt_class();
    v14 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v11);
    v5->_limit = [v4 decodeIntegerForKey:@"lim"];
    v15 = [v4 decodeObjectOfClass:v6 forKey:@"fd"];
    fromDate = v5->_fromDate;
    v5->_fromDate = v15;

    v17 = [v4 decodeObjectOfClass:v6 forKey:@"td"];
    toDate = v5->_toDate;
    v5->_toDate = v17;

    v19 = [v4 decodeObjectOfClass:v6 forKey:@"sd"];
    scoringDate = v5->_scoringDate;
    v5->_scoringDate = v19;

    v21 = [v4 decodeObjectOfClasses:v10 forKey:@"mbi"];
    matchingSourceBundleIds = v5->_matchingSourceBundleIds;
    v5->_matchingSourceBundleIds = v21;

    v23 = [v4 decodeObjectOfClasses:v10 forKey:@"ebi"];
    excludingSourceBundleIds = v5->_excludingSourceBundleIds;
    v5->_excludingSourceBundleIds = v23;

    v5->_deviceFilter = [v4 decodeInt32ForKey:@"devf"];
    [v4 decodeDoubleForKey:@"prd"];
    v5->_perRecordDecayRate = v25;
    [v4 decodeDoubleForKey:@"dr"];
    v5->_decayRate = v26;
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ms"];
    fuzzyMatchingString = v5->_fuzzyMatchingString;
    v5->_fuzzyMatchingString = v27;

    v29 = [v4 decodeObjectOfClasses:v14 forKey:@"mc"];
    matchingCategories = v5->_matchingCategories;
    v5->_matchingCategories = v29;

    v31 = [v4 decodeObjectOfClasses:v14 forKey:@"ma"];
    matchingAlgorithms = v5->_matchingAlgorithms;
    v5->_matchingAlgorithms = v31;

    v33 = [v4 decodeObjectOfClasses:v14 forKey:@"ea"];
    excludingAlgorithms = v5->_excludingAlgorithms;
    v5->_excludingAlgorithms = v33;

    v5->_excludingWithoutSentiment = [v4 decodeBoolForKey:@"ews"];
    v5->_consumer = [v4 decodeIntegerForKey:@"cons"];
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mch"];
    matchingContactHandle = v5->_matchingContactHandle;
    v5->_matchingContactHandle = v35;

    v5->_filterByRelevanceDate = [v4 decodeBoolForKey:@"fbrd"];
    v37 = v5;
  }

  return v5;
}

- (PPLocationQuery)init
{
  v8.receiver = self;
  v8.super_class = PPLocationQuery;
  result = [(PPLocationQuery *)&v8 init];
  if (result)
  {
    result->_limit = -1;
    __asm { FMOV            V0.2D, #-1.0 }

    *&result->_perRecordDecayRate = _Q0;
    result->_consumer = 0;
  }

  return result;
}

+ (id)queryForMapsWithLimit:(unint64_t)a3 fromDate:(id)a4 consumerType:(unint64_t)a5
{
  v18[3] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = objc_opt_new();
  v9 = v8;
  if (a5 == 3)
  {
    [v8 setExcludingAlgorithms:0];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F1B45EF8, 0}];
    objc_autoreleasePoolPop(v10);
    [v9 setExcludingAlgorithms:v11];
  }

  [v9 setFromDate:v7];
  [v9 setPerRecordDecayRate:0.000385];
  [v9 setConsumer:a5];
  v12 = objc_autoreleasePoolPush();
  v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.apple.Maps", @"com.apple.CoreRoutine", @"com.apple.mobilecal", @"com.apple.iCal", @"com.apple.Passbook", 0}];
  objc_autoreleasePoolPop(v12);
  if (a5 == 3)
  {
    [v9 setExcludingSourceBundleIds:v13];
  }

  else
  {
    v18[0] = @"com.apple.mobileslideshow";
    v18[1] = @"com.apple.Photos";
    v18[2] = @"com.apple.camera";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
    v15 = [v13 setByAddingObjectsFromArray:v14];
    [v9 setExcludingSourceBundleIds:v15];
  }

  [v9 setLimit:a3];

  v16 = *MEMORY[0x1E69E9840];

  return v9;
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

        v12 = +[PPLocationRecord describeAlgorithm:](PPLocationRecord, "describeAlgorithm:", [*(*(&v15 + 1) + 8 * v10) unsignedIntegerValue]);
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

        v12 = +[PPLocation describeCategory:](PPLocation, "describeCategory:", [*(*(&v15 + 1) + 8 * v10) unsignedIntegerValue]);
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