@interface PLSearchSuggestionComponent
- (BOOL)isEqual:(id)a3;
- (NSDateComponents)completionSuggestionEndDateComponents;
- (NSDateComponents)completionSuggestionStartDateComponents;
- (PLSearchSuggestionComponent)initWithCoder:(id)a3;
- (PLSearchSuggestionComponent)initWithContentString:(id)a3 groupId:(unint64_t)a4 owningGroupId:(unint64_t)a5 matchedAssetsCount:(unint64_t)a6 matchedCollectionsCount:(unint64_t)a7 indexCategory:(unint64_t)a8 lookupIdentifier:(id)a9 score:(float)a10 suggestionType:(unint64_t)a11 completionSuggestionDateComponents:(id)a12 matchedText:(id)a13 matchRangeOfSearchText:(_NSRange)a14 matchType:(unint64_t)a15;
- (PLSearchSuggestionComponent)initWithGroup:(id)a3 matchedAssetsCount:(unint64_t)a4 matchedCollectionsCount:(unint64_t)a5 suggestionType:(unint64_t)a6 completionSuggestionDateComponents:(id)a7 matchedText:(id)a8 matchRangeOfSearchText:(_NSRange)a9 matchType:(unint64_t)a10;
- (_NSRange)matchRangeOfSearchText;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLSearchSuggestionComponent

- (_NSRange)matchRangeOfSearchText
{
  length = self->_matchRangeOfSearchText.length;
  location = self->_matchRangeOfSearchText.location;
  result.length = length;
  result.location = location;
  return result;
}

- (NSDateComponents)completionSuggestionEndDateComponents
{
  v3 = [(PLSearchSuggestionComponent *)self completionSuggestionDateComponents];
  v4 = [v3 count];

  if (v4 >= 2)
  {
    v6 = [(PLSearchSuggestionComponent *)self completionSuggestionDateComponents];
    v5 = [v6 objectAtIndexedSubscript:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDateComponents)completionSuggestionStartDateComponents
{
  v3 = [(PLSearchSuggestionComponent *)self completionSuggestionDateComponents];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(PLSearchSuggestionComponent *)self completionSuggestionDateComponents];
    v6 = [v5 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  contentString = self->_contentString;
  v5 = a3;
  [v5 encodeObject:contentString forKey:@"PLSearchSuggestionPropertyContentString"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_psiGroupId];
  [v5 encodeObject:v6 forKey:@"PLSearchSuggestionPropertyPSIGroupId"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_psiOwningGroupId];
  [v5 encodeObject:v7 forKey:@"PLSearchSuggestionPropertyPSIOwningGroupId"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_indexCategory];
  [v5 encodeObject:v8 forKey:@"PLSearchSuggestionPropertyIndexCategory"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_suggestionType];
  [v5 encodeObject:v9 forKey:@"PLSearchSuggestionPropertySuggestionType"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_matchedAssetsCount];
  [v5 encodeObject:v10 forKey:@"PLSearchSuggestionPropertyMatchedAssetCount"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_matchedCollectionsCount];
  [v5 encodeObject:v11 forKey:@"PLSearchSuggestionPropertyMatchedCollectionCount"];

  [v5 encodeObject:self->_matchedText forKey:@"PLSearchSuggestionPropertyMatchedText"];
  v12 = [MEMORY[0x1E696B098] valueWithRange:{self->_matchRangeOfSearchText.location, self->_matchRangeOfSearchText.length}];
  [v5 encodeObject:v12 forKey:@"PLSearchSuggestionPropertyMatchRangeOfSearchText"];

  *&v13 = self->_score;
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  [v5 encodeObject:v14 forKey:@"PLSearchSuggestionPropertyScore"];

  [v5 encodeObject:self->_lookupIdentifier forKey:@"PLSearchSuggestionPropertyLookupIdentifier"];
  [v5 encodeObject:self->_completionSuggestionDateComponents forKey:@"PLSearchSuggestionPropertyCompletionSuggestionDateComponents"];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_matchType];
  [v5 encodeObject:v15 forKey:@"PLSearchSuggestionPropertyMatchType"];
}

- (PLSearchSuggestionComponent)initWithCoder:(id)a3
{
  v3 = a3;
  v34 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyContentString"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyPSIGroupId"];
  v33 = [v4 unsignedIntValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyPSIOwningGroupId"];
  v32 = [v5 unsignedIntValue];

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyIndexCategory"];
  v31 = [v6 unsignedIntegerValue];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertySuggestionType"];
  v30 = [v7 unsignedIntegerValue];

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyMatchedAssetCount"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyMatchedCollectionCount"];
  v11 = [v10 unsignedIntegerValue];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyMatchedText"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyMatchRangeOfSearchText"];
  v14 = [v13 rangeValue];
  v16 = v15;

  v17 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyScore"];
  [v17 floatValue];
  v19 = v18;

  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyLookupIdentifier"];
  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [v3 decodeObjectOfClasses:v23 forKey:@"PLSearchSuggestionPropertyCompletionSuggestionDateComponents"];

  v25 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyMatchType"];

  v26 = [v25 unsignedIntegerValue];
  LODWORD(v27) = v19;
  v28 = [(PLSearchSuggestionComponent *)self initWithContentString:v34 groupId:v33 owningGroupId:v32 matchedAssetsCount:v9 matchedCollectionsCount:v11 indexCategory:v31 lookupIdentifier:v27 score:v20 suggestionType:v30 completionSuggestionDateComponents:v24 matchedText:v12 matchRangeOfSearchText:v14 matchType:v16, v26];

  return v28;
}

- (id)description
{
  v22 = PLDebugStringForSearchIndexCategory([(PLSearchSuggestionComponent *)self indexCategory]);
  v3 = [(PLSearchSuggestionComponent *)self suggestionType];
  if (v3 - 1 > 3)
  {
    v4 = @"PLSearchSuggestionTypeNone";
  }

  else
  {
    v4 = off_1E756C590[v3 - 1];
  }

  v20 = v4;
  v24.location = [(PLSearchSuggestionComponent *)self matchRangeOfSearchText];
  v21 = NSStringFromRange(v24);
  v5 = [(PLSearchSuggestionComponent *)self matchType];
  if (v5 - 1 > 2)
  {
    v6 = @"PLSearchSuggestionMatchTypeUndefined";
  }

  else
  {
    v6 = off_1E756C5B0[v5 - 1];
  }

  v19 = MEMORY[0x1E696AEC0];
  v7 = [(PLSearchSuggestionComponent *)self contentString];
  v8 = [(PLSearchSuggestionComponent *)self psiGroupId];
  v9 = [(PLSearchSuggestionComponent *)self psiOwningGroupId];
  v10 = [(PLSearchSuggestionComponent *)self lookupIdentifier];
  [(PLSearchSuggestionComponent *)self score];
  v12 = v11;
  v13 = [(PLSearchSuggestionComponent *)self matchedAssetsCount];
  v14 = [(PLSearchSuggestionComponent *)self matchedCollectionsCount];
  v15 = [(PLSearchSuggestionComponent *)self matchedText];
  v16 = [(PLSearchSuggestionComponent *)self completionSuggestionDateComponents];
  v17 = [v19 stringWithFormat:@"content string: %@, groupId: %llu, owning groupId: %llu, indexCategory: %@, lookupIdentifier: %@, score: %f, suggestion type: %@, matched asset count: %tu, matched collection count: %tu, matched text: %@, match range of search text: %@, completion suggestion dates pair: %@, leading anchored match: %@", v7, v8, v9, v22, v10, *&v12, v20, v13, v14, v15, v21, v16, v6];

  return v17;
}

- (unint64_t)hash
{
  v3 = [(PLSearchSuggestionComponent *)self psiGroupId];
  v4 = [(PLSearchSuggestionComponent *)self matchedText];
  v5 = [v4 hash];
  [(PLSearchSuggestionComponent *)self matchRangeOfSearchText];
  v7 = v5 ^ v3 ^ v6;
  v8 = [(PLSearchSuggestionComponent *)self matchRangeOfSearchText];
  v9 = v8 ^ [(PLSearchSuggestionComponent *)self matchedAssetsCount];
  v10 = v7 ^ v9 ^ [(PLSearchSuggestionComponent *)self matchedCollectionsCount];
  v11 = [(PLSearchSuggestionComponent *)self suggestionType];
  v12 = [(PLSearchSuggestionComponent *)self completionSuggestionDateComponents];
  v13 = v11 ^ [v12 hash];
  v14 = v13 ^ [(PLSearchSuggestionComponent *)self matchType];

  return v10 ^ v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PLSearchSuggestionComponent *)self contentString];
    v7 = [v5 contentString];
    v47 = [v6 isEqualToString:v7];

    v46 = [(PLSearchSuggestionComponent *)self psiGroupId];
    v45 = [v5 psiGroupId];
    v44 = [(PLSearchSuggestionComponent *)self psiOwningGroupId];
    v43 = [v5 psiOwningGroupId];
    v42 = [(PLSearchSuggestionComponent *)self indexCategory];
    v41 = [v5 indexCategory];
    v8 = [(PLSearchSuggestionComponent *)self lookupIdentifier];
    v9 = [v5 lookupIdentifier];
    if (v8 == v9)
    {
      v40 = 0;
    }

    else
    {
      v10 = [(PLSearchSuggestionComponent *)self lookupIdentifier];
      v11 = [v5 lookupIdentifier];
      v12 = [v10 isEqualToString:v11];

      v40 = v12 ^ 1;
    }

    [(PLSearchSuggestionComponent *)self score];
    v15 = v14;
    [v5 score];
    v17 = v16;
    v39 = [(PLSearchSuggestionComponent *)self suggestionType];
    v38 = [v5 suggestionType];
    v37 = [(PLSearchSuggestionComponent *)self matchedAssetsCount];
    v36 = [v5 matchedAssetsCount];
    v35 = [(PLSearchSuggestionComponent *)self matchedCollectionsCount];
    v34 = [v5 matchedCollectionsCount];
    v18 = [(PLSearchSuggestionComponent *)self matchedText];
    v19 = [v5 matchedText];

    v33 = [(PLSearchSuggestionComponent *)self matchRangeOfSearchText];
    v31 = v20;
    v32 = [v5 matchRangeOfSearchText];
    v30 = v21;
    v22 = [(PLSearchSuggestionComponent *)self completionSuggestionDateComponents];
    v23 = [v5 completionSuggestionDateComponents];
    if (v22 == v23)
    {
      v29 = 1;
    }

    else
    {
      v24 = [(PLSearchSuggestionComponent *)self completionSuggestionDateComponents];
      v25 = [v5 completionSuggestionDateComponents];
      v29 = [v24 isEqualToArray:v25];
    }

    v26 = [(PLSearchSuggestionComponent *)self matchType];
    v27 = [v5 matchType];
    v13 = 0;
    if (!((v46 != v45 || (v47 & 1) == 0 || v44 != v43 || v42 != v41) | v40 & 1) && v15 == v17 && v39 == v38 && v37 == v36 && v35 == v34 && v18 == v19 && v33 == v32 && v31 == v30)
    {
      if (v26 == v27)
      {
        v13 = v29;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (PLSearchSuggestionComponent)initWithGroup:(id)a3 matchedAssetsCount:(unint64_t)a4 matchedCollectionsCount:(unint64_t)a5 suggestionType:(unint64_t)a6 completionSuggestionDateComponents:(id)a7 matchedText:(id)a8 matchRangeOfSearchText:(_NSRange)a9 matchType:(unint64_t)a10
{
  v14 = a3;
  v32 = a7;
  v28 = a8;
  if (!v14)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PLSearchSuggestionComponent.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"group"}];
  }

  v15 = [(PSIGroup *)v14 contentString];
  v16 = [v15 length];

  if (!v16)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PLSearchSuggestionComponent.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"group.contentString.length > 0"}];
  }

  v17 = [(PSIGroup *)v14 contentString];
  v18 = [(PSIGroup *)v14 groupId];
  v19 = [(PSIGroup *)v14 owningGroupId];
  v20 = [(PSIGroup *)v14 category];
  v21 = [(PSIGroup *)v14 lookupIdentifier];
  [(PSIGroup *)v14 score];
  *&v22 = v22;
  v23 = [(PLSearchSuggestionComponent *)self initWithContentString:v17 groupId:v18 owningGroupId:v19 matchedAssetsCount:a4 matchedCollectionsCount:a5 indexCategory:v20 lookupIdentifier:v22 score:v21 suggestionType:a6 completionSuggestionDateComponents:v32 matchedText:v28 matchRangeOfSearchText:a9.location matchType:a9.length, a10];

  group = v23->_group;
  v23->_group = v14;

  return v23;
}

- (PLSearchSuggestionComponent)initWithContentString:(id)a3 groupId:(unint64_t)a4 owningGroupId:(unint64_t)a5 matchedAssetsCount:(unint64_t)a6 matchedCollectionsCount:(unint64_t)a7 indexCategory:(unint64_t)a8 lookupIdentifier:(id)a9 score:(float)a10 suggestionType:(unint64_t)a11 completionSuggestionDateComponents:(id)a12 matchedText:(id)a13 matchRangeOfSearchText:(_NSRange)a14 matchType:(unint64_t)a15
{
  v21 = a3;
  v22 = a9;
  v23 = a12;
  v24 = a13;
  if (![v21 length])
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PLSearchSuggestionComponent.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"contentString.length > 0"}];
  }

  v36.receiver = self;
  v36.super_class = PLSearchSuggestionComponent;
  v25 = [(PLSearchSuggestionComponent *)&v36 init];
  if (v25)
  {
    v26 = [v21 copy];
    contentString = v25->_contentString;
    v25->_contentString = v26;

    v25->_psiGroupId = a4;
    v25->_psiOwningGroupId = a5;
    v25->_indexCategory = a8;
    v28 = [v22 copy];
    lookupIdentifier = v25->_lookupIdentifier;
    v25->_lookupIdentifier = v28;

    v25->_score = a10;
    v25->_suggestionType = a11;
    v25->_matchedAssetsCount = a6;
    v25->_matchedCollectionsCount = a7;
    objc_storeStrong(&v25->_matchedText, a13);
    v25->_matchRangeOfSearchText = a14;
    v30 = [v23 copy];
    completionSuggestionDateComponents = v25->_completionSuggestionDateComponents;
    v25->_completionSuggestionDateComponents = v30;

    v25->_matchType = a15;
  }

  return v25;
}

@end