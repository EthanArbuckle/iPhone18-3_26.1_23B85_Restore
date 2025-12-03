@interface PLSearchSuggestionComponent
- (BOOL)isEqual:(id)equal;
- (NSDateComponents)completionSuggestionEndDateComponents;
- (NSDateComponents)completionSuggestionStartDateComponents;
- (PLSearchSuggestionComponent)initWithCoder:(id)coder;
- (PLSearchSuggestionComponent)initWithContentString:(id)string groupId:(unint64_t)id owningGroupId:(unint64_t)groupId matchedAssetsCount:(unint64_t)count matchedCollectionsCount:(unint64_t)collectionsCount indexCategory:(unint64_t)category lookupIdentifier:(id)identifier score:(float)self0 suggestionType:(unint64_t)self1 completionSuggestionDateComponents:(id)self2 matchedText:(id)self3 matchRangeOfSearchText:(_NSRange)self4 matchType:(unint64_t)self5;
- (PLSearchSuggestionComponent)initWithGroup:(id)group matchedAssetsCount:(unint64_t)count matchedCollectionsCount:(unint64_t)collectionsCount suggestionType:(unint64_t)type completionSuggestionDateComponents:(id)components matchedText:(id)text matchRangeOfSearchText:(_NSRange)searchText matchType:(unint64_t)self0;
- (_NSRange)matchRangeOfSearchText;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  completionSuggestionDateComponents = [(PLSearchSuggestionComponent *)self completionSuggestionDateComponents];
  v4 = [completionSuggestionDateComponents count];

  if (v4 >= 2)
  {
    completionSuggestionDateComponents2 = [(PLSearchSuggestionComponent *)self completionSuggestionDateComponents];
    v5 = [completionSuggestionDateComponents2 objectAtIndexedSubscript:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSDateComponents)completionSuggestionStartDateComponents
{
  completionSuggestionDateComponents = [(PLSearchSuggestionComponent *)self completionSuggestionDateComponents];
  v4 = [completionSuggestionDateComponents count];

  if (v4)
  {
    completionSuggestionDateComponents2 = [(PLSearchSuggestionComponent *)self completionSuggestionDateComponents];
    v6 = [completionSuggestionDateComponents2 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  contentString = self->_contentString;
  coderCopy = coder;
  [coderCopy encodeObject:contentString forKey:@"PLSearchSuggestionPropertyContentString"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_psiGroupId];
  [coderCopy encodeObject:v6 forKey:@"PLSearchSuggestionPropertyPSIGroupId"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_psiOwningGroupId];
  [coderCopy encodeObject:v7 forKey:@"PLSearchSuggestionPropertyPSIOwningGroupId"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_indexCategory];
  [coderCopy encodeObject:v8 forKey:@"PLSearchSuggestionPropertyIndexCategory"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_suggestionType];
  [coderCopy encodeObject:v9 forKey:@"PLSearchSuggestionPropertySuggestionType"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_matchedAssetsCount];
  [coderCopy encodeObject:v10 forKey:@"PLSearchSuggestionPropertyMatchedAssetCount"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_matchedCollectionsCount];
  [coderCopy encodeObject:v11 forKey:@"PLSearchSuggestionPropertyMatchedCollectionCount"];

  [coderCopy encodeObject:self->_matchedText forKey:@"PLSearchSuggestionPropertyMatchedText"];
  v12 = [MEMORY[0x1E696B098] valueWithRange:{self->_matchRangeOfSearchText.location, self->_matchRangeOfSearchText.length}];
  [coderCopy encodeObject:v12 forKey:@"PLSearchSuggestionPropertyMatchRangeOfSearchText"];

  *&v13 = self->_score;
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  [coderCopy encodeObject:v14 forKey:@"PLSearchSuggestionPropertyScore"];

  [coderCopy encodeObject:self->_lookupIdentifier forKey:@"PLSearchSuggestionPropertyLookupIdentifier"];
  [coderCopy encodeObject:self->_completionSuggestionDateComponents forKey:@"PLSearchSuggestionPropertyCompletionSuggestionDateComponents"];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_matchType];
  [coderCopy encodeObject:v15 forKey:@"PLSearchSuggestionPropertyMatchType"];
}

- (PLSearchSuggestionComponent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyContentString"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyPSIGroupId"];
  unsignedIntValue = [v4 unsignedIntValue];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyPSIOwningGroupId"];
  unsignedIntValue2 = [v5 unsignedIntValue];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyIndexCategory"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertySuggestionType"];
  unsignedIntegerValue2 = [v7 unsignedIntegerValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyMatchedAssetCount"];
  unsignedIntegerValue3 = [v8 unsignedIntegerValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyMatchedCollectionCount"];
  unsignedIntegerValue4 = [v10 unsignedIntegerValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyMatchedText"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyMatchRangeOfSearchText"];
  rangeValue = [v13 rangeValue];
  v16 = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyScore"];
  [v17 floatValue];
  v19 = v18;

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyLookupIdentifier"];
  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"PLSearchSuggestionPropertyCompletionSuggestionDateComponents"];

  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PLSearchSuggestionPropertyMatchType"];

  unsignedIntegerValue5 = [v25 unsignedIntegerValue];
  LODWORD(v27) = v19;
  v28 = [(PLSearchSuggestionComponent *)self initWithContentString:v34 groupId:unsignedIntValue owningGroupId:unsignedIntValue2 matchedAssetsCount:unsignedIntegerValue3 matchedCollectionsCount:unsignedIntegerValue4 indexCategory:unsignedIntegerValue lookupIdentifier:v27 score:v20 suggestionType:unsignedIntegerValue2 completionSuggestionDateComponents:v24 matchedText:v12 matchRangeOfSearchText:rangeValue matchType:v16, unsignedIntegerValue5];

  return v28;
}

- (id)description
{
  v22 = PLDebugStringForSearchIndexCategory([(PLSearchSuggestionComponent *)self indexCategory]);
  suggestionType = [(PLSearchSuggestionComponent *)self suggestionType];
  if (suggestionType - 1 > 3)
  {
    v4 = @"PLSearchSuggestionTypeNone";
  }

  else
  {
    v4 = off_1E756C590[suggestionType - 1];
  }

  v20 = v4;
  v24.location = [(PLSearchSuggestionComponent *)self matchRangeOfSearchText];
  v21 = NSStringFromRange(v24);
  matchType = [(PLSearchSuggestionComponent *)self matchType];
  if (matchType - 1 > 2)
  {
    v6 = @"PLSearchSuggestionMatchTypeUndefined";
  }

  else
  {
    v6 = off_1E756C5B0[matchType - 1];
  }

  v19 = MEMORY[0x1E696AEC0];
  contentString = [(PLSearchSuggestionComponent *)self contentString];
  psiGroupId = [(PLSearchSuggestionComponent *)self psiGroupId];
  psiOwningGroupId = [(PLSearchSuggestionComponent *)self psiOwningGroupId];
  lookupIdentifier = [(PLSearchSuggestionComponent *)self lookupIdentifier];
  [(PLSearchSuggestionComponent *)self score];
  v12 = v11;
  matchedAssetsCount = [(PLSearchSuggestionComponent *)self matchedAssetsCount];
  matchedCollectionsCount = [(PLSearchSuggestionComponent *)self matchedCollectionsCount];
  matchedText = [(PLSearchSuggestionComponent *)self matchedText];
  completionSuggestionDateComponents = [(PLSearchSuggestionComponent *)self completionSuggestionDateComponents];
  v17 = [v19 stringWithFormat:@"content string: %@, groupId: %llu, owning groupId: %llu, indexCategory: %@, lookupIdentifier: %@, score: %f, suggestion type: %@, matched asset count: %tu, matched collection count: %tu, matched text: %@, match range of search text: %@, completion suggestion dates pair: %@, leading anchored match: %@", contentString, psiGroupId, psiOwningGroupId, v22, lookupIdentifier, *&v12, v20, matchedAssetsCount, matchedCollectionsCount, matchedText, v21, completionSuggestionDateComponents, v6];

  return v17;
}

- (unint64_t)hash
{
  psiGroupId = [(PLSearchSuggestionComponent *)self psiGroupId];
  matchedText = [(PLSearchSuggestionComponent *)self matchedText];
  v5 = [matchedText hash];
  [(PLSearchSuggestionComponent *)self matchRangeOfSearchText];
  v7 = v5 ^ psiGroupId ^ v6;
  matchRangeOfSearchText = [(PLSearchSuggestionComponent *)self matchRangeOfSearchText];
  v9 = matchRangeOfSearchText ^ [(PLSearchSuggestionComponent *)self matchedAssetsCount];
  v10 = v7 ^ v9 ^ [(PLSearchSuggestionComponent *)self matchedCollectionsCount];
  suggestionType = [(PLSearchSuggestionComponent *)self suggestionType];
  completionSuggestionDateComponents = [(PLSearchSuggestionComponent *)self completionSuggestionDateComponents];
  v13 = suggestionType ^ [completionSuggestionDateComponents hash];
  v14 = v13 ^ [(PLSearchSuggestionComponent *)self matchType];

  return v10 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    contentString = [(PLSearchSuggestionComponent *)self contentString];
    contentString2 = [v5 contentString];
    v47 = [contentString isEqualToString:contentString2];

    psiGroupId = [(PLSearchSuggestionComponent *)self psiGroupId];
    psiGroupId2 = [v5 psiGroupId];
    psiOwningGroupId = [(PLSearchSuggestionComponent *)self psiOwningGroupId];
    psiOwningGroupId2 = [v5 psiOwningGroupId];
    indexCategory = [(PLSearchSuggestionComponent *)self indexCategory];
    indexCategory2 = [v5 indexCategory];
    lookupIdentifier = [(PLSearchSuggestionComponent *)self lookupIdentifier];
    lookupIdentifier2 = [v5 lookupIdentifier];
    if (lookupIdentifier == lookupIdentifier2)
    {
      v40 = 0;
    }

    else
    {
      lookupIdentifier3 = [(PLSearchSuggestionComponent *)self lookupIdentifier];
      lookupIdentifier4 = [v5 lookupIdentifier];
      v12 = [lookupIdentifier3 isEqualToString:lookupIdentifier4];

      v40 = v12 ^ 1;
    }

    [(PLSearchSuggestionComponent *)self score];
    v15 = v14;
    [v5 score];
    v17 = v16;
    suggestionType = [(PLSearchSuggestionComponent *)self suggestionType];
    suggestionType2 = [v5 suggestionType];
    matchedAssetsCount = [(PLSearchSuggestionComponent *)self matchedAssetsCount];
    matchedAssetsCount2 = [v5 matchedAssetsCount];
    matchedCollectionsCount = [(PLSearchSuggestionComponent *)self matchedCollectionsCount];
    matchedCollectionsCount2 = [v5 matchedCollectionsCount];
    matchedText = [(PLSearchSuggestionComponent *)self matchedText];
    matchedText2 = [v5 matchedText];

    matchRangeOfSearchText = [(PLSearchSuggestionComponent *)self matchRangeOfSearchText];
    v31 = v20;
    matchRangeOfSearchText2 = [v5 matchRangeOfSearchText];
    v30 = v21;
    completionSuggestionDateComponents = [(PLSearchSuggestionComponent *)self completionSuggestionDateComponents];
    completionSuggestionDateComponents2 = [v5 completionSuggestionDateComponents];
    if (completionSuggestionDateComponents == completionSuggestionDateComponents2)
    {
      v29 = 1;
    }

    else
    {
      completionSuggestionDateComponents3 = [(PLSearchSuggestionComponent *)self completionSuggestionDateComponents];
      completionSuggestionDateComponents4 = [v5 completionSuggestionDateComponents];
      v29 = [completionSuggestionDateComponents3 isEqualToArray:completionSuggestionDateComponents4];
    }

    matchType = [(PLSearchSuggestionComponent *)self matchType];
    matchType2 = [v5 matchType];
    v13 = 0;
    if (!((psiGroupId != psiGroupId2 || (v47 & 1) == 0 || psiOwningGroupId != psiOwningGroupId2 || indexCategory != indexCategory2) | v40 & 1) && v15 == v17 && suggestionType == suggestionType2 && matchedAssetsCount == matchedAssetsCount2 && matchedCollectionsCount == matchedCollectionsCount2 && matchedText == matchedText2 && matchRangeOfSearchText == matchRangeOfSearchText2 && v31 == v30)
    {
      if (matchType == matchType2)
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

- (PLSearchSuggestionComponent)initWithGroup:(id)group matchedAssetsCount:(unint64_t)count matchedCollectionsCount:(unint64_t)collectionsCount suggestionType:(unint64_t)type completionSuggestionDateComponents:(id)components matchedText:(id)text matchRangeOfSearchText:(_NSRange)searchText matchType:(unint64_t)self0
{
  groupCopy = group;
  componentsCopy = components;
  textCopy = text;
  if (!groupCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchSuggestionComponent.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"group"}];
  }

  contentString = [(PSIGroup *)groupCopy contentString];
  v16 = [contentString length];

  if (!v16)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLSearchSuggestionComponent.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"group.contentString.length > 0"}];
  }

  contentString2 = [(PSIGroup *)groupCopy contentString];
  groupId = [(PSIGroup *)groupCopy groupId];
  owningGroupId = [(PSIGroup *)groupCopy owningGroupId];
  category = [(PSIGroup *)groupCopy category];
  lookupIdentifier = [(PSIGroup *)groupCopy lookupIdentifier];
  [(PSIGroup *)groupCopy score];
  *&v22 = v22;
  matchType = [(PLSearchSuggestionComponent *)self initWithContentString:contentString2 groupId:groupId owningGroupId:owningGroupId matchedAssetsCount:count matchedCollectionsCount:collectionsCount indexCategory:category lookupIdentifier:v22 score:lookupIdentifier suggestionType:type completionSuggestionDateComponents:componentsCopy matchedText:textCopy matchRangeOfSearchText:searchText.location matchType:searchText.length, matchType];

  group = matchType->_group;
  matchType->_group = groupCopy;

  return matchType;
}

- (PLSearchSuggestionComponent)initWithContentString:(id)string groupId:(unint64_t)id owningGroupId:(unint64_t)groupId matchedAssetsCount:(unint64_t)count matchedCollectionsCount:(unint64_t)collectionsCount indexCategory:(unint64_t)category lookupIdentifier:(id)identifier score:(float)self0 suggestionType:(unint64_t)self1 completionSuggestionDateComponents:(id)self2 matchedText:(id)self3 matchRangeOfSearchText:(_NSRange)self4 matchType:(unint64_t)self5
{
  stringCopy = string;
  identifierCopy = identifier;
  componentsCopy = components;
  textCopy = text;
  if (![stringCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchSuggestionComponent.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"contentString.length > 0"}];
  }

  v36.receiver = self;
  v36.super_class = PLSearchSuggestionComponent;
  v25 = [(PLSearchSuggestionComponent *)&v36 init];
  if (v25)
  {
    v26 = [stringCopy copy];
    contentString = v25->_contentString;
    v25->_contentString = v26;

    v25->_psiGroupId = id;
    v25->_psiOwningGroupId = groupId;
    v25->_indexCategory = category;
    v28 = [identifierCopy copy];
    lookupIdentifier = v25->_lookupIdentifier;
    v25->_lookupIdentifier = v28;

    v25->_score = score;
    v25->_suggestionType = type;
    v25->_matchedAssetsCount = count;
    v25->_matchedCollectionsCount = collectionsCount;
    objc_storeStrong(&v25->_matchedText, text);
    v25->_matchRangeOfSearchText = searchText;
    v30 = [componentsCopy copy];
    completionSuggestionDateComponents = v25->_completionSuggestionDateComponents;
    v25->_completionSuggestionDateComponents = v30;

    v25->_matchType = matchType;
  }

  return v25;
}

@end