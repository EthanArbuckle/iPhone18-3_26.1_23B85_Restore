@interface PLSearchEntity
+ (BOOL)enumerateAssetSearchEntitiesForLibrary:(id)library error:(id *)error withBlock:(id)block;
+ (id)_fetchEdgesForNodes:(id)nodes toMoment:(id)moment;
+ (id)_fetchEdgesForPersonRelationsOnPerson:(id)person;
+ (id)_fetchEdgesForPersonRelationsOnSearchEntityForPerson:(id)person;
+ (id)_fetchGraphNodesForOIDs:(id)ds inContext:(id)context;
+ (id)_fetchMeOrSelfEdgeForPerson:(id)person;
+ (id)_fetchMeOrSelfSearchEntityForPerson:(id)person;
+ (id)_fetchSearchEntityEdgesForMoment:(id)moment;
+ (id)_fetchSearchEntityNodesForMoment:(id)moment;
+ (id)_fetchSearchEntityWithLabel:(id)label type:(unint64_t)type identifier:(id)identifier inContext:(id)context;
+ (id)_groupAndRemoveMatchingDictionariesInSearchEntityDictionaries:(id)dictionaries byNodeOIDFromValuesByNodeOID:(id)d;
+ (id)_labelIDWithCode:(int)code inContext:(id)context;
+ (id)_labelWithCode:(int)code inContext:(id)context;
+ (id)_newNodeContainerWithManagedObjectContext:(id)context dictionary:(id)dictionary;
+ (id)_personRelationLabelIDsInContext:(id)context;
+ (id)_predicateForSearchEntityEdgesToMoment:(id)moment;
+ (id)dateIntervalForMomentEdge:(id)edge;
+ (id)decodeIdentifierString:(id)string intoLabel:(id *)label type:(unint64_t *)type outIdentifier:(id *)identifier;
+ (id)fetchSearchEntityWithEncodedIdentifierString:(id)string inLibrary:(id)library;
+ (id)keyFromSearchEntityNameCode:(int)code;
+ (id)newNodeContainerWithManagedObjectContext:(id)context;
+ (id)personRelationDictionaryForRelationWithType:(signed __int16)type label:(id)label confidence:(double)confidence relatedPersonUUID:(id)d;
+ (int)searchEntityNameCodeFromKey:(id)key;
+ (void)_cleanUpStaleSearchRankingsNotIn:(id)in inLibrary:(id)library;
+ (void)_collectLabels:(id *)labels identifiers:(id *)identifiers types:(id *)types fromDictionaries:(id)dictionaries;
+ (void)_disconnectNodes:(id)nodes fromMoment:(id)moment;
+ (void)_findMatchingNodes:(id *)nodes andSearchEntityDictionariesByOID:(id *)d inSearchEntityDictionaries:(id)dictionaries inContext:(id)context;
+ (void)_nodeValuesByNode:(id)node into:(id)into;
+ (void)_removeAllEdgesWithPredicate:(id)predicate inContext:(id)context;
+ (void)_removeAllPersonRelationEdgesFromNode:(id)node;
+ (void)_removeAllPersonRelationEdgesFromPerson:(id)person;
+ (void)_removeAllSearchEntityEdgesFromMoment:(id)moment;
+ (void)_setConfidence:(double)confidence onEdge:(id)edge;
+ (void)_setDateIntervalStart:(id)start end:(id)end onEdge:(id)edge;
+ (void)enumerateAssetSearchEntitiesForMoment:(id)moment withBlock:(id)block;
+ (void)enumerateAssetSearchEntityPersonRelationsForPerson:(id)person withBlock:(id)block;
+ (void)enumeratePersonRelationsForPerson:(id)person withBlock:(id)block;
+ (void)prepareForDeletingOutgoingEdge:(id)edge;
+ (void)prepareForDeletionWithNode:(id)node;
+ (void)removePersonRelationsMatchingDictionaries:(id)dictionaries onPerson:(id)person;
+ (void)setAssetSearchEntitiesFromDictionaries:(id)dictionaries onMoment:(id)moment;
+ (void)setPersonRelationsFromDictionaries:(id)dictionaries onPerson:(id)person;
+ (void)setSearchRankingsFromDictionaries:(id)dictionaries inLibrary:(id)library;
+ (void)willInsertOutgoingEdge:(id)edge;
+ (void)willSaveWithNode:(id)node;
- (BOOL)_matchesLabel:(id)label type:(unint64_t)type identifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (NSArray)synonyms;
- (NSString)identifier;
- (NSString)label;
- (NSString)localeIdentifier;
- (NSString)synonymsString;
- (double)confidenceForMoment:(id)moment;
- (double)rankingScore;
- (id)_fetchSearchEntityEdgeToMoment:(id)moment;
- (id)_insertMomentEdgeForMoment:(id)moment confidence:(double)confidence startDate:(id)date endDate:(id)endDate;
- (id)_insertRelationEdgeForPerson:(id)person relationType:(signed __int16)type confidence:(double)confidence;
- (id)_predicateForSearchEntityEdgeToMoment:(id)moment;
- (id)dateIntervalForMoment:(id)moment;
- (id)description;
- (id)descriptionForMoment:(id)moment;
- (id)encodedIdentifierString;
- (id)fetchAllMomentsWithError:(id *)error;
- (unint64_t)hash;
- (unint64_t)type;
- (void)_updateChangeFlagForMoments;
- (void)_updateChangeFlagForProperties;
- (void)_updateChangeFlagForRelations;
- (void)setIdentifier:(id)identifier;
- (void)setLabel:(id)label;
- (void)setLocaleIdentifier:(id)identifier;
- (void)setRankingScore:(double)score;
- (void)setSynonyms:(id)synonyms;
- (void)setSynonymsString:(id)string;
- (void)setType:(unint64_t)type;
@end

@implementation PLSearchEntity

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v23 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ([v5 isEqual:objc_opt_class()])
    {
      v6 = equalCopy;
      label = [(PLSearchEntity *)self label];
      label2 = [(PLSearchEntity *)v6 label];
      v9 = [label isEqualToString:label2];

      if (v9 && (-[PLSearchEntity identifier](self, "identifier"), v10 = objc_claimAutoreleasedReturnValue(), -[PLSearchEntity identifier](v6, "identifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqualToString:v11], v11, v10, v12) && (v13 = -[PLSearchEntity type](self, "type"), v13 == -[PLSearchEntity type](v6, "type")) && (-[PLSearchEntity rankingScore](self, "rankingScore"), v15 = v14, -[PLSearchEntity rankingScore](v6, "rankingScore"), vabdd_f64(v15, v16) <= 0.00000011920929) && (-[PLSearchEntity synonymsString](self, "synonymsString"), v17 = objc_claimAutoreleasedReturnValue(), -[PLSearchEntity synonymsString](v6, "synonymsString"), v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 == 0, v18, v17, (v17 != 0) != v19))
      {
        synonymsString = [(PLSearchEntity *)self synonymsString];

        if (synonymsString)
        {
          synonymsString2 = [(PLSearchEntity *)self synonymsString];
          synonymsString3 = [(PLSearchEntity *)v6 synonymsString];
          v23 = [synonymsString2 isEqualToString:synonymsString3];
        }

        else
        {
          v23 = 1;
        }
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (unint64_t)hash
{
  label = [(PLSearchEntity *)self label];
  v4 = [label hash];
  identifier = [(PLSearchEntity *)self identifier];
  v6 = [identifier hash] + v4;
  type = [(PLSearchEntity *)self type];

  return v6 + type;
}

- (id)descriptionForMoment:(id)moment
{
  v4 = MEMORY[0x1E696AEC0];
  momentCopy = moment;
  label = [(PLSearchEntity *)self label];
  type = [(PLSearchEntity *)self type];
  [(PLSearchEntity *)self confidenceForMoment:momentCopy];
  v9 = v8;

  identifier = [(PLSearchEntity *)self identifier];
  [(PLSearchEntity *)self rankingScore];
  v12 = v11;
  synonymsString = [(PLSearchEntity *)self synonymsString];
  v14 = [v4 stringWithFormat:@"\nlabel: %@\ntype: %lld\nconfidence: %g\nidentifier: %@\nrankingScore: %g\nsynonyms: %@", label, type, v9, identifier, v12, synonymsString];

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  label = [(PLSearchEntity *)self label];
  type = [(PLSearchEntity *)self type];
  identifier = [(PLSearchEntity *)self identifier];
  [(PLSearchEntity *)self rankingScore];
  v8 = v7;
  synonymsString = [(PLSearchEntity *)self synonymsString];
  v10 = [v3 stringWithFormat:@"\nlabel: %@\ntype: %llu\nidentifier: %@\nrankingScore: %g\nsynonyms: %@", label, type, identifier, v8, synonymsString];

  return v10;
}

- (void)_updateChangeFlagForRelations
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  [sourceNode setChangeFlag2:{objc_msgSend(sourceNode, "changeFlag2") + 1}];
}

- (void)_updateChangeFlagForMoments
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  [sourceNode setChangeFlag1:{objc_msgSend(sourceNode, "changeFlag1") + 1}];
}

- (void)_updateChangeFlagForProperties
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  [sourceNode setChangeFlag0:{objc_msgSend(sourceNode, "changeFlag0") + 1}];
}

- (id)encodedIdentifierString
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PLSearchEntity type](self, "type")}];
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  label = [(PLSearchEntity *)self label];
  [v3 setObject:label forKeyedSubscript:@"label"];

  identifier = [(PLSearchEntity *)self identifier];
  [v3 setObject:identifier forKeyedSubscript:@"identifier"];

  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:0];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];

  return v8;
}

- (id)fetchAllMomentsWithError:(id *)error
{
  v32[3] = *MEMORY[0x1E69E9840];
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  managedObjectContext = [sourceNode managedObjectContext];

  v6 = [PLSearchEntity _labelIDWithCode:1100 inContext:managedObjectContext];
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLGraphEdge entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  [v9 setIncludesPendingChanges:0];
  v10 = MEMORY[0x1E696AB28];
  v11 = MEMORY[0x1E696AE18];
  sourceNode2 = [(PLGraphNodeContainer *)self sourceNode];
  v13 = [v11 predicateWithFormat:@"%K = %@", @"sourceNode", sourceNode2];
  v32[0] = v13;
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"primaryLabel", v6];
  v32[1] = v14;
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"targetMoment"];
  v32[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
  v17 = [v10 andPredicateWithSubpredicates:v16];
  [v9 setPredicate:v17];

  v31 = @"targetMoment";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v18];

  v26 = 0;
  v19 = [managedObjectContext executeFetchRequest:v9 error:&v26];
  v20 = v26;
  if (v19)
  {
    v21 = [v19 _pl_map:&__block_literal_global_95952];
  }

  else
  {
    v22 = PLBackendGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Failed to find graph edge from search entity (%@) to moments (%@)", buf, 0x16u);
    }

    if (error)
    {
      v23 = v20;
      v21 = 0;
      *error = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (id)dateIntervalForMoment:(id)moment
{
  v3 = [(PLSearchEntity *)self _fetchSearchEntityEdgeToMoment:moment];
  v4 = [objc_opt_class() dateIntervalForMomentEdge:v3];

  return v4;
}

- (double)confidenceForMoment:(id)moment
{
  v3 = [(PLSearchEntity *)self _fetchSearchEntityEdgeToMoment:moment];
  v4 = [v3 valueWithCode:3500];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (id)_fetchSearchEntityEdgeToMoment:(id)moment
{
  v22 = *MEMORY[0x1E69E9840];
  momentCopy = moment;
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLGraphEdge entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = [(PLSearchEntity *)self _predicateForSearchEntityEdgeToMoment:momentCopy];
  [v7 setPredicate:v8];

  [v7 setFetchLimit:1];
  managedObjectContext = [momentCopy managedObjectContext];
  v15 = 0;
  v10 = [managedObjectContext executeFetchRequest:v7 error:&v15];
  v11 = v15;

  if (!v10)
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy = self;
      v18 = 2112;
      v19 = momentCopy;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Failed to find graph edge from search entity (%@) to moment (%@) (%@)", buf, 0x20u);
    }
  }

  firstObject = [v10 firstObject];

  return firstObject;
}

- (void)setSynonymsString:(id)string
{
  stringCopy = string;
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  if (stringCopy)
  {
    v5 = [sourceNode valueWithCode:3001 createIfMissing:1];

    stringValue = [v5 stringValue];
    IsEqual = PLObjectIsEqual();

    if (IsEqual)
    {
      goto LABEL_7;
    }

    [v5 setStringValue:stringCopy];
  }

  else
  {
    v5 = [sourceNode valueWithCode:3001];

    if (!v5)
    {
      goto LABEL_7;
    }

    sourceNode2 = [(PLGraphNodeContainer *)self sourceNode];
    [sourceNode2 removeValue:v5];

    sourceNode3 = [(PLGraphNodeContainer *)self sourceNode];
    managedObjectContext = [sourceNode3 managedObjectContext];
    [managedObjectContext deleteObject:v5];
  }

  [(PLSearchEntity *)self _updateChangeFlagForProperties];
LABEL_7:
}

- (NSString)synonymsString
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [sourceNode valueWithCode:3001];

  stringValue = [v3 stringValue];

  return stringValue;
}

- (void)setSynonyms:(id)synonyms
{
  synonymsCopy = synonyms;
  if ([synonymsCopy count])
  {
    v4 = [PLSearchEntity synonymsStringFromSynonyms:synonymsCopy];
  }

  else
  {
    v4 = 0;
  }

  [(PLSearchEntity *)self setSynonymsString:v4];
}

- (NSArray)synonyms
{
  synonymsString = [(PLSearchEntity *)self synonymsString];
  if (synonymsString)
  {
    synonymsString2 = [(PLSearchEntity *)self synonymsString];
    v5 = [PLSearchEntity synonymsFromSynonymsString:synonymsString2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  if (identifierCopy)
  {
    v5 = [sourceNode valueWithCode:3005 createIfMissing:1];

    stringValue = [v5 stringValue];
    if (([stringValue isEqualToString:identifierCopy] & 1) == 0)
    {
      [v5 setStringValue:identifierCopy];
      [(PLSearchEntity *)self _updateChangeFlagForProperties];
    }
  }

  else
  {
    v5 = [sourceNode valueWithCode:3005];

    if (v5)
    {
      sourceNode2 = [(PLGraphNodeContainer *)self sourceNode];
      managedObjectContext = [sourceNode2 managedObjectContext];
      [managedObjectContext deleteObject:v5];

      [(PLSearchEntity *)self _updateChangeFlagForProperties];
    }
  }
}

- (NSString)localeIdentifier
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [sourceNode valueWithCode:3005];

  stringValue = [v3 stringValue];

  return stringValue;
}

- (void)setRankingScore:(double)score
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  v6 = sourceNode;
  if (score == 0.0)
  {
    v11 = [sourceNode valueWithCode:3004];

    v7 = v11;
    if (!v11)
    {
      goto LABEL_8;
    }

    sourceNode2 = [(PLGraphNodeContainer *)self sourceNode];
    managedObjectContext = [sourceNode2 managedObjectContext];
    [managedObjectContext deleteObject:v11];

    goto LABEL_6;
  }

  v11 = [sourceNode valueWithCode:3004 createIfMissing:1];

  [v11 doubleValue];
  if (vabdd_f64(v10, score) >= 2.22044605e-16)
  {
    [v11 setDoubleValue:score];
LABEL_6:
    [(PLSearchEntity *)self _updateChangeFlagForProperties];
  }

  v7 = v11;
LABEL_8:
}

- (double)rankingScore
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [sourceNode valueWithCode:3004];

  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setType:(unint64_t)type
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  v6 = [sourceNode valueWithCode:3003 createIfMissing:1];

  [v6 setIntegerValue:type];
  [(PLSearchEntity *)self _updateChangeFlagForProperties];
}

- (unint64_t)type
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [sourceNode valueWithCode:3003];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  v6 = [sourceNode valueWithCode:3002 createIfMissing:1];

  [v6 setStringValue:identifierCopy];
  [(PLSearchEntity *)self _updateChangeFlagForProperties];
}

- (NSString)identifier
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [sourceNode valueWithCode:3002];

  stringValue = [v3 stringValue];

  return stringValue;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  v6 = [sourceNode valueWithCode:3000 createIfMissing:1];

  [v6 setStringValue:labelCopy];
  [(PLSearchEntity *)self _updateChangeFlagForProperties];
}

- (NSString)label
{
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  v3 = [sourceNode valueWithCode:3000];

  stringValue = [v3 stringValue];

  return stringValue;
}

- (id)_insertMomentEdgeForMoment:(id)moment confidence:(double)confidence startDate:(id)date endDate:(id)endDate
{
  momentCopy = moment;
  dateCopy = date;
  endDateCopy = endDate;
  if (!momentCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchEntity.m" lineNumber:346 description:{@"Invalid parameter not satisfying: %@", @"moment"}];
  }

  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  managedObjectContext = [sourceNode managedObjectContext];

  v16 = [PLSearchEntity _labelWithCode:1100 inContext:managedObjectContext];
  v17 = [PLGraphEdge insertGraphEdgeInContext:managedObjectContext withPrimaryLabel:v16];
  sourceNode2 = [(PLGraphNodeContainer *)self sourceNode];
  [v17 setSourceNode:sourceNode2];

  [v17 setTargetMoment:momentCopy];
  [PLSearchEntity _setConfidence:v17 onEdge:confidence];
  [PLSearchEntity _setDateIntervalStart:dateCopy end:endDateCopy onEdge:v17];
  [(PLSearchEntity *)self _updateChangeFlagForMoments];

  return v17;
}

- (id)_predicateForSearchEntityEdgeToMoment:(id)moment
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = [PLSearchEntity _predicateForSearchEntityEdgesToMoment:moment];
  v5 = MEMORY[0x1E696AB28];
  v12[0] = v4;
  v6 = MEMORY[0x1E696AE18];
  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  v8 = [v6 predicateWithFormat:@"%K = %@", @"sourceNode", sourceNode];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v10 = [v5 andPredicateWithSubpredicates:v9];

  return v10;
}

- (BOOL)_matchesLabel:(id)label type:(unint64_t)type identifier:(id)identifier
{
  labelCopy = label;
  identifierCopy = identifier;
  label = [(PLSearchEntity *)self label];
  if (label)
  {
  }

  else
  {
    identifier = [(PLSearchEntity *)self identifier];

    if (!identifier)
    {
LABEL_9:
      v16 = 0;
      goto LABEL_14;
    }
  }

  if ([(PLSearchEntity *)self type]!= type)
  {
    goto LABEL_9;
  }

  label2 = [(PLSearchEntity *)self label];
  v13 = label2;
  if (label2 == labelCopy || [label2 isEqualToString:labelCopy])
  {
    identifier2 = [(PLSearchEntity *)self identifier];
    v15 = identifier2;
    if (identifier2 == identifierCopy)
    {
      v16 = 1;
    }

    else
    {
      v16 = [identifier2 isEqualToString:identifierCopy];
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_14:
  return v16;
}

- (id)_insertRelationEdgeForPerson:(id)person relationType:(signed __int16)type confidence:(double)confidence
{
  typeCopy = type;
  personCopy = person;
  if (!personCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchEntity.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  sourceNode = [(PLGraphNodeContainer *)self sourceNode];
  managedObjectContext = [sourceNode managedObjectContext];

  if (typeCopy == 1)
  {
    v12 = 1102;
  }

  else if (typeCopy == 2)
  {
    v12 = 1103;
  }

  else
  {
    v12 = 1101;
  }

  v13 = [PLSearchEntity _labelWithCode:v12 inContext:managedObjectContext];
  v14 = [PLGraphEdge insertGraphEdgeInContext:managedObjectContext withPrimaryLabel:v13];
  sourceNode2 = [(PLGraphNodeContainer *)self sourceNode];
  [v14 setSourceNode:sourceNode2];

  [v14 setTargetPerson:personCopy];
  v16 = [v14 valueWithCode:objc_msgSend(objc_opt_class() createIfMissing:{"searchEntityNameCodeFromKey:", @"RelationType", 1}];
  [v16 setIntegerValue:typeCopy];
  [v14 addValue:v16];
  v17 = [v14 valueWithCode:objc_msgSend(objc_opt_class() createIfMissing:{"searchEntityNameCodeFromKey:", @"RelationTypeConfidence", 1}];

  [v17 setDoubleValue:confidence];
  [v14 addValue:v17];
  if (typeCopy == 1)
  {
    [personCopy setMeConfidence:confidence];
  }

  [(PLSearchEntity *)self _updateChangeFlagForRelations];

  return v14;
}

+ (id)personRelationDictionaryForRelationWithType:(signed __int16)type label:(id)label confidence:(double)confidence relatedPersonUUID:(id)d
{
  typeCopy = type;
  labelCopy = label;
  v10 = MEMORY[0x1E695DF90];
  dCopy = d;
  dictionary = [v10 dictionary];
  [dictionary setObject:&unk_1F0FBE050 forKeyedSubscript:@"type"];
  v13 = [MEMORY[0x1E696AD98] numberWithShort:typeCopy];
  [dictionary setObject:v13 forKeyedSubscript:@"PLSearchEntityPersonRelationTypeKey"];

  v14 = [MEMORY[0x1E696AD98] numberWithDouble:confidence];
  [dictionary setObject:v14 forKeyedSubscript:@"RelationTypeConfidence"];

  [dictionary setObject:dCopy forKeyedSubscript:@"identifier"];
  if (labelCopy)
  {
    [dictionary setObject:labelCopy forKeyedSubscript:@"label"];
  }

  return dictionary;
}

+ (void)enumeratePersonRelationsForPerson:(id)person withBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  personCopy = person;
  blockCopy = block;
  if (!personCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchEntity.m" lineNumber:1220 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  [self _fetchEdgesForPersonRelationsOnPerson:personCopy];
  v26 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v9 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v23 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v22 + 1) + 8 * v12);
      v14 = [PLSearchEntityRelationToPerson alloc];
      targetPerson = [v13 targetPerson];
      v16 = [v13 valueWithCode:3501];
      integerValue = [v16 integerValue];
      v18 = [v13 valueWithCode:3502];
      [v18 doubleValue];
      v19 = [(PLSearchEntityRelationToPerson *)v14 initWithPerson:targetPerson relationType:integerValue relationTypeConfidence:?];

      blockCopy[2](blockCopy, v19, &v26);
      LOBYTE(v18) = v26;

      if (v18)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

+ (void)enumerateAssetSearchEntityPersonRelationsForPerson:(id)person withBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  personCopy = person;
  blockCopy = block;
  if (!personCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchEntity.m" lineNumber:1207 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  [self _fetchEdgesForPersonRelationsOnSearchEntityForPerson:personCopy];
  v26 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v25 = 0u;
  v9 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
LABEL_5:
    v12 = 0;
    while (1)
    {
      if (*v23 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v22 + 1) + 8 * v12);
      v14 = [PLSearchEntityRelationToPerson alloc];
      targetPerson = [v13 targetPerson];
      v16 = [v13 valueWithCode:3501];
      integerValue = [v16 integerValue];
      v18 = [v13 valueWithCode:3502];
      [v18 doubleValue];
      v19 = [(PLSearchEntityRelationToPerson *)v14 initWithPerson:targetPerson relationType:integerValue relationTypeConfidence:?];

      blockCopy[2](blockCopy, v19, &v26);
      LOBYTE(v18) = v26;

      if (v18)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v10)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

+ (void)removePersonRelationsMatchingDictionaries:(id)dictionaries onPerson:(id)person
{
  v108 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  personCopy = person;
  managedObjectContext = [personCopy managedObjectContext];
  v9 = [PLSearchEntity _fetchMeOrSelfSearchEntityForPerson:personCopy];
  if (!v9)
  {
    array = PLBackendGetLog();
    if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v104 = personCopy;
      _os_log_impl(&dword_19BF1F000, array, OS_LOG_TYPE_ERROR, "Couldn't find ME/SELF search entity for person %@", buf, 0xCu);
    }

    goto LABEL_52;
  }

  selfCopy = self;
  v73 = personCopy;
  array = [MEMORY[0x1E695DF70] array];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v74 = dictionariesCopy;
  v11 = dictionariesCopy;
  v12 = [v11 countByEnumeratingWithState:&v95 objects:v107 count:16];
  v77 = managedObjectContext;
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v12;
  v14 = *v96;
  v75 = v9;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v96 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v95 + 1) + 8 * i);
      v17 = [v16 objectForKeyedSubscript:@"PLSearchEntityPersonRelationTypeKey"];
      integerValue = [v17 integerValue];

      if (integerValue == 1)
      {

        [selfCopy _removeAllPersonRelationEdgesFromPerson:personCopy];
        [personCopy setMeConfidence:0.0];
        v9 = v75;
        [v75 rankingScore];
        if (v64 == 0.0)
        {
          sourceNode = [v75 sourceNode];
          managedObjectContext = v77;
          [v77 deleteObject:sourceNode];
          goto LABEL_51;
        }

LABEL_43:
        managedObjectContext = v77;
        goto LABEL_52;
      }

      v19 = [v16 objectForKeyedSubscript:@"PLSearchEntityPersonRelationTypeKey"];
      integerValue2 = [v19 integerValue];

      if (integerValue2 == 2)
      {

        v9 = v75;
        sourceNode2 = [v75 sourceNode];
        [selfCopy _removeAllPersonRelationEdgesFromNode:sourceNode2];

        [v75 rankingScore];
        if (v66 == 0.0)
        {
          sourceNode = [v75 sourceNode];
          managedObjectContext = v77;
          [v77 deleteObject:sourceNode];
          personCopy = v73;
          goto LABEL_51;
        }

        personCopy = v73;
        goto LABEL_43;
      }

      v21 = [v16 objectForKeyedSubscript:@"identifier"];
      [array addObject:v21];
    }

    v13 = [v11 countByEnumeratingWithState:&v95 objects:v107 count:16];
    v9 = v75;
    managedObjectContext = v77;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_11:

  v22 = MEMORY[0x1E695D5E0];
  v23 = +[PLPerson entityName];
  sourceNode = [v22 fetchRequestWithEntityName:v23];

  v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"personUUID", array];
  [sourceNode setPredicate:v25];

  v94 = 0;
  v26 = [managedObjectContext executeFetchRequest:sourceNode error:&v94];
  v27 = v94;
  v28 = v27;
  if (!v26)
  {
    v42 = PLBackendGetLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v104 = array;
      v105 = 2112;
      v106 = v28;
      _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "Couldn't fetch persons for uuids %@ (%@)", buf, 0x16u);
    }

    v45 = v28;
    personCopy = v73;
    dictionariesCopy = v74;
    goto LABEL_50;
  }

  v71 = sourceNode;
  v72 = array;
  v81 = v27;
  v29 = MEMORY[0x1E695D5E0];
  v30 = +[PLGraphEdge entityName];
  v31 = [v29 fetchRequestWithEntityName:v30];

  v32 = MEMORY[0x1E696AB28];
  v33 = MEMORY[0x1E696AE18];
  v76 = v9;
  sourceNode3 = [v9 sourceNode];
  v35 = [v33 predicateWithFormat:@"%K = %@", @"sourceNode", sourceNode3];
  v102[0] = v35;
  v70 = v26;
  v36 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"targetPerson", v26];
  v102[1] = v36;
  v37 = MEMORY[0x1E696AE18];
  v38 = [selfCopy _personRelationLabelIDsInContext:managedObjectContext];
  v39 = [v37 predicateWithFormat:@"%K IN %@", @"primaryLabel", v38];
  v102[2] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:3];
  v41 = [v32 andPredicateWithSubpredicates:v40];
  [v31 setPredicate:v41];

  v42 = v31;
  managedObjectContext = v77;

  v101[0] = @"targetPerson";
  v101[1] = @"sourceNode";
  v101[2] = @"values";
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:3];
  [v31 setRelationshipKeyPathsForPrefetching:v43];

  v93 = v81;
  v44 = [v77 executeFetchRequest:v31 error:&v93];
  v45 = v93;

  v80 = v44;
  if (!v44)
  {
    v46 = PLBackendGetLog();
    dictionariesCopy = v74;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v9 = v76;
      sourceNode4 = [v76 sourceNode];
      *buf = 138412546;
      v104 = sourceNode4;
      v105 = 2112;
      v106 = v45;
      _os_log_impl(&dword_19BF1F000, v46, OS_LOG_TYPE_ERROR, "Couldn't fetch edges for node %@ (%@)", buf, 0x16u);

      personCopy = v73;
LABEL_48:
      sourceNode = v71;
      array = v72;
      goto LABEL_49;
    }

LABEL_47:
    personCopy = v73;
    v9 = v76;
    goto LABEL_48;
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v46 = v11;
  v82 = [v46 countByEnumeratingWithState:&v89 objects:v100 count:16];
  if (!v82)
  {
    dictionariesCopy = v74;
    goto LABEL_47;
  }

  v68 = v45;
  v69 = v31;
  v78 = *v90;
  v79 = v46;
  do
  {
    v47 = 0;
    do
    {
      if (*v90 != v78)
      {
        objc_enumerationMutation(v46);
      }

      v84 = v47;
      v48 = *(*(&v89 + 1) + 8 * v47);
      v49 = [v48 objectForKeyedSubscript:@"PLSearchEntityPersonRelationTypeKey"];
      integerValue3 = [v49 integerValue];

      v51 = [v48 objectForKeyedSubscript:@"identifier"];
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v52 = v80;
      v53 = [v52 countByEnumeratingWithState:&v85 objects:v99 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v86;
        while (2)
        {
          for (j = 0; j != v54; ++j)
          {
            if (*v86 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = *(*(&v85 + 1) + 8 * j);
            v58 = [v57 valueWithCode:3501];
            integerValue4 = [v58 integerValue];

            targetPerson = [v57 targetPerson];
            v61 = targetPerson;
            if (integerValue4 == integerValue3)
            {
              personUUID = [targetPerson personUUID];
              v63 = [personUUID isEqualToString:v51];

              if (v63)
              {
                [v77 deleteObject:v57];

                goto LABEL_29;
              }
            }
          }

          v54 = [v52 countByEnumeratingWithState:&v85 objects:v99 count:16];
          if (v54)
          {
            continue;
          }

          break;
        }
      }

LABEL_29:

      v47 = v84 + 1;
      v46 = v79;
    }

    while (v84 + 1 != v82);
    v82 = [v79 countByEnumeratingWithState:&v89 objects:v100 count:16];
  }

  while (v82);
  personCopy = v73;
  dictionariesCopy = v74;
  v9 = v76;
  managedObjectContext = v77;
  sourceNode = v71;
  array = v72;
  v42 = v69;
  v26 = v70;
  v45 = v68;
LABEL_49:

LABEL_50:
LABEL_51:

LABEL_52:
}

+ (void)setPersonRelationsFromDictionaries:(id)dictionaries onPerson:(id)person
{
  v80 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  personCopy = person;
  managedObjectContext = [personCopy managedObjectContext];
  v9 = [dictionariesCopy mutableCopy];
  v62 = personCopy;
  v10 = [self _fetchMeOrSelfSearchEntityForPerson:personCopy];
  if (!v10)
  {
    v56 = v9;
    v58 = managedObjectContext;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v60 = dictionariesCopy;
    v35 = dictionariesCopy;
    v36 = [v35 countByEnumeratingWithState:&v70 objects:v79 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v71;
LABEL_18:
      v39 = 0;
      while (1)
      {
        if (*v71 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v70 + 1) + 8 * v39);
        v41 = [v40 objectForKeyedSubscript:@"PLSearchEntityPersonRelationTypeKey"];
        unsignedIntegerValue = [v41 unsignedIntegerValue];

        if ((unsignedIntegerValue - 3) >= 0xFFFEu)
        {
          break;
        }

        if (v37 == ++v39)
        {
          v37 = [v35 countByEnumeratingWithState:&v70 objects:v79 count:16];
          if (v37)
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }
      }

      v43 = unsignedIntegerValue;
      v44 = [v40 objectForKeyedSubscript:@"label"];
      v45 = [v40 objectForKeyedSubscript:@"type"];
      integerValue = [v45 integerValue];
      v47 = [v40 objectForKeyedSubscript:@"identifier"];
      v48 = integerValue;
      managedObjectContext = v58;
      v49 = [PLSearchEntity _fetchSearchEntityWithLabel:v44 type:v48 identifier:v47 inContext:v58];

      v11 = v49;
      if (!v49)
      {
        v11 = [self _newNodeContainerWithManagedObjectContext:v58 dictionary:v40];
      }

      v50 = [v40 objectForKeyedSubscript:@"RelationTypeConfidence"];
      [v50 doubleValue];
      v51 = [v11 _insertRelationEdgeForPerson:v62 relationType:v43 confidence:?];

      v9 = v56;
      [v56 removeObject:v40];

      dictionariesCopy = v60;
      if (v11)
      {
        goto LABEL_3;
      }
    }

    else
    {
LABEL_24:

      managedObjectContext = v58;
      v9 = v56;
    }

    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      personUUID = [v62 personUUID];
      *buf = 138412290;
      v76 = personUUID;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "ERROR: Failed to find or create a person search entity to add relations to for person(%@.", buf, 0xCu);
    }

    v11 = 0;
    goto LABEL_34;
  }

  v11 = v10;
  sourceNode = [v10 sourceNode];
  [PLSearchEntity _removeAllPersonRelationEdgesFromNode:sourceNode];

LABEL_3:
  if ([v9 count])
  {
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __62__PLSearchEntity_setPersonRelationsFromDictionaries_onPerson___block_invoke;
    v69[3] = &__block_descriptor_40_e22__16__0__NSDictionary_8l;
    v69[4] = self;
    v13 = [dictionariesCopy _pl_map:v69];
    v14 = MEMORY[0x1E695D5E0];
    v15 = +[PLPerson entityName];
    v16 = [v14 fetchRequestWithEntityName:v15];

    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"personUUID", v13];
    [v16 setPredicate:v17];

    v68 = 0;
    v18 = [managedObjectContext executeFetchRequest:v16 error:&v68];
    v19 = v68;
    v20 = v19;
    if (v18)
    {
      v53 = v19;
      v54 = v18;
      v55 = v13;
      v57 = managedObjectContext;
      v59 = dictionariesCopy;
      v61 = [v18 _pl_indexBy:&__block_literal_global_222_96105];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = v9;
      v21 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v65;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            v25 = v11;
            if (*v65 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v64 + 1) + 8 * i);
            v27 = [v26 objectForKeyedSubscript:@"PLSearchEntityPersonRelationTypeKey"];
            unsignedIntegerValue2 = [v27 unsignedIntegerValue];

            if ((unsignedIntegerValue2 - 1) > 1u)
            {
              v30 = [v26 objectForKeyedSubscript:@"identifier"];
              v29 = [v61 objectForKeyedSubscript:v30];
            }

            else
            {
              v29 = v62;
            }

            v31 = unsignedIntegerValue2;
            v32 = [v26 objectForKeyedSubscript:@"RelationTypeConfidence"];
            [v32 doubleValue];
            v11 = v25;
            v33 = [v25 _insertRelationEdgeForPerson:v29 relationType:v31 confidence:?];
          }

          v22 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
        }

        while (v22);
      }

      managedObjectContext = v57;
      dictionariesCopy = v59;
      v13 = v55;
      v18 = v54;
      v20 = v53;
      v34 = v61;
    }

    else
    {
      v34 = PLBackendGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v76 = v13;
        v77 = 2112;
        v78 = v20;
        _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Failed to load PLPersons for personUUIDs: %@ (%@)", buf, 0x16u);
      }
    }

LABEL_34:
  }
}

+ (void)setSearchRankingsFromDictionaries:(id)dictionaries inLibrary:(id)library
{
  v51 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  libraryCopy = library;
  managedObjectContext = [libraryCopy managedObjectContext];
  v37 = dictionariesCopy;
  v47 = 0;
  v48 = 0;
  v33 = [dictionariesCopy mutableCopy];
  v35 = managedObjectContext;
  [PLSearchEntity _findMatchingNodes:"_findMatchingNodes:andSearchEntityDictionariesByOID:inSearchEntityDictionaries:inContext:" andSearchEntityDictionariesByOID:&v48 inSearchEntityDictionaries:&v47 inContext:?];
  v7 = v48;
  v8 = v47;
  array = [MEMORY[0x1E695DF70] array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v44;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v43 + 1) + 8 * i);
        objectID = [v14 objectID];
        v16 = [(PLGraphNodeContainer *)PLSearchEntity newNodeContainerWithNode:v14];
        v17 = [v8 objectForKeyedSubscript:objectID];
        v18 = [v17 objectForKeyedSubscript:@"rankingScore"];
        [v18 doubleValue];
        [v16 setRankingScore:?];

        v19 = [v8 objectForKeyedSubscript:objectID];
        v20 = [v19 objectForKeyedSubscript:@"synonyms"];

        if (v20)
        {
          [v16 setSynonyms:v20];
        }

        v21 = [v8 objectForKeyedSubscript:objectID];
        v22 = [v21 objectForKeyedSubscript:@"localeIdentifier"];
        [v16 setLocaleIdentifier:v22];

        [array addObject:objectID];
      }

      v11 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v11);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v23 = v33;
  v24 = [v23 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v40;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v40 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v39 + 1) + 8 * j);
        managedObjectContext2 = [libraryCopy managedObjectContext];
        v30 = [PLSearchEntity _newNodeContainerWithManagedObjectContext:managedObjectContext2 dictionary:v28];

        if (v30)
        {
          sourceNode = [v30 sourceNode];
          objectID2 = [sourceNode objectID];
          [array addObject:objectID2];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v25);
  }

  [self _cleanUpStaleSearchRankingsNotIn:array inLibrary:libraryCopy];
}

+ (id)decodeIdentifierString:(id)string intoLabel:(id *)label type:(unint64_t *)type outIdentifier:(id *)identifier
{
  v9 = [string dataUsingEncoding:4];
  v17 = 0;
  v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:&v17];
  v11 = v17;
  if (v10)
  {
    if (label)
    {
      *label = [v10 objectForKeyedSubscript:@"label"];
    }

    if (type)
    {
      v12 = [v10 objectForKeyedSubscript:@"type"];
      *type = [v12 integerValue];
    }

    if (identifier)
    {
      *identifier = [v10 objectForKeyedSubscript:@"identifier"];
    }

    v13 = MEMORY[0x1E69BF2D0];
    null = [MEMORY[0x1E695DFB0] null];
    v15 = [v13 successWithResult:null];
  }

  else
  {
    v15 = [MEMORY[0x1E69BF2D0] failureWithError:v11];
  }

  return v15;
}

+ (id)fetchSearchEntityWithEncodedIdentifierString:(id)string inLibrary:(id)library
{
  v39 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v7 = [string dataUsingEncoding:4];
  v31 = 0;
  v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v31];
  v30 = v31;
  v9 = [v8 objectForKeyedSubscript:@"label"];
  v10 = [v8 objectForKeyedSubscript:@"identifier"];
  v11 = [v8 objectForKeyedSubscript:@"type"];
  v12 = v11;
  if (v11)
  {
    v13 = (v9 | v10) == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v29 = v7;
    v14 = libraryCopy;
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = @"N";
      if (v12)
      {
        v17 = @"N";
      }

      else
      {
        v17 = @"Y";
      }

      if (!(v9 | v10))
      {
        v16 = @"Y";
      }

      *buf = 138543618;
      v36 = v17;
      v37 = 2114;
      v38 = v16;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Invalid encoded identifier string for fetching search entity, missing type: %{public}@, missing label/identifier: %{public}@", buf, 0x16u);
    }

    v18 = MEMORY[0x1E69BF2D0];
    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E69BFF48];
    v33 = *MEMORY[0x1E696A278];
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid encoded identifier string for fetching search entity, type: %@, label: %@, identifier: %@", v12, v9, v10];
    v34 = v26;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v22 = [v19 errorWithDomain:v20 code:46514 userInfo:v21];
    v23 = [v18 failureWithError:v22];

    goto LABEL_16;
  }

  integerValue = [v11 integerValue];
  managedObjectContext = [libraryCopy managedObjectContext];
  v26 = [self _fetchSearchEntityWithLabel:v9 type:integerValue identifier:v10 inContext:managedObjectContext];

  v27 = MEMORY[0x1E69BF2D0];
  if (v26)
  {
    v29 = v7;
    v14 = libraryCopy;
    v32 = v26;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
    v23 = [v27 successWithResult:v21];
LABEL_16:

    libraryCopy = v14;
    v7 = v29;
    goto LABEL_17;
  }

  v23 = [MEMORY[0x1E69BF2D0] successWithResult:MEMORY[0x1E695E0F0]];
LABEL_17:

  return v23;
}

+ (id)_fetchSearchEntityWithLabel:(id)label type:(unint64_t)type identifier:(id)identifier inContext:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  identifierCopy = identifier;
  v11 = MEMORY[0x1E695DF90];
  v12 = MEMORY[0x1E696AD98];
  contextCopy = context;
  v14 = [v12 numberWithUnsignedInteger:type];
  v15 = [v11 dictionaryWithObject:v14 forKey:@"type"];

  [v15 setObject:labelCopy forKeyedSubscript:@"label"];
  [v15 setObject:identifierCopy forKeyedSubscript:@"identifier"];
  v16 = [MEMORY[0x1E695DF70] arrayWithObject:v15];
  v24 = 0;
  v25 = 0;
  [PLSearchEntity _findMatchingNodes:&v25 andSearchEntityDictionariesByOID:&v24 inSearchEntityDictionaries:v16 inContext:contextCopy];

  v17 = v25;
  v18 = v24;
  if ([v17 count] >= 2)
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v17 count];
      *buf = 138413058;
      v27 = labelCopy;
      v28 = 2114;
      v29 = identifierCopy;
      v30 = 2048;
      typeCopy = type;
      v32 = 2048;
      v33 = v20;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Expected to get 1 or less matches for [label: %@, identifier: %{public}@, type: %lu], got %tu", buf, 0x2Au);
    }
  }

  firstObject = [v17 firstObject];
  if (firstObject)
  {
    v22 = [(PLGraphNodeContainer *)PLSearchEntity newNodeContainerWithNode:firstObject];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (BOOL)enumerateAssetSearchEntitiesForLibrary:(id)library error:(id *)error withBlock:(id)block
{
  libraryCopy = library;
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchEntity.m" lineNumber:947 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__PLSearchEntity_enumerateAssetSearchEntitiesForLibrary_error_withBlock___block_invoke;
  v15[3] = &unk_1E7575338;
  v16 = libraryCopy;
  v17 = blockCopy;
  errorCopy = error;
  v11 = blockCopy;
  v12 = libraryCopy;
  [v12 performBlockAndWait:v15];

  return 1;
}

void __73__PLSearchEntity_enumerateAssetSearchEntitiesForLibrary_error_withBlock___block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [PLSearchEntity _labelIDWithCode:1100 inContext:v2];
  if (v3)
  {
    v4 = MEMORY[0x1E695D5E0];
    v5 = +[PLGraphNode entityName];
    v6 = [v4 fetchRequestWithEntityName:v5];

    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"primaryLabel", v3];
    [v6 setPredicate:v7];

    v20[0] = @"values";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [v6 setRelationshipKeyPathsForPrefetching:v8];

    [v6 setReturnsObjectsAsFaults:0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __73__PLSearchEntity_enumerateAssetSearchEntitiesForLibrary_error_withBlock___block_invoke_2;
    v14[3] = &unk_1E75749F8;
    v15 = *(a1 + 40);
    v9 = [v2 enumerateObjectsFromFetchRequest:v6 usingDefaultBatchSizeWithBlock:v14];
    v10 = v9;
    if (*(a1 + 48) && v9)
    {
      v11 = v9;
      **(a1 + 48) = v10;
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        *buf = 138412546;
        v17 = v13;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Enumeration of asset search entities failed for library %@ (ERROR: %@)", buf, 0x16u);
      }
    }
  }
}

void __73__PLSearchEntity_enumerateAssetSearchEntitiesForLibrary_error_withBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [(PLGraphNodeContainer *)PLSearchEntity newNodeContainerWithNode:a2];
  (*(*(a1 + 32) + 16))();
}

+ (void)enumerateAssetSearchEntitiesForMoment:(id)moment withBlock:(id)block
{
  v25 = *MEMORY[0x1E69E9840];
  momentCopy = moment;
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchEntity.m" lineNumber:934 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v18 = momentCopy;
  [PLSearchEntity _fetchSearchEntityEdgesForMoment:momentCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v23 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
LABEL_5:
    v13 = 0;
    while (1)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v20 + 1) + 8 * v13);
      sourceNode = [v14 sourceNode];
      v16 = [self newNodeContainerWithNode:sourceNode];

      v19 = 0;
      blockCopy[2](blockCopy, v16, v14, &v19);
      LOBYTE(v14) = v19;

      if (v14)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

+ (id)dateIntervalForMomentEdge:(id)edge
{
  edgeCopy = edge;
  v4 = [edgeCopy valueWithCode:3503];
  dateValue = [v4 dateValue];

  v6 = [edgeCopy valueWithCode:3504];

  dateValue2 = [v6 dateValue];

  v8 = 0;
  if (dateValue && dateValue2)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:dateValue endDate:dateValue2];
  }

  return v8;
}

+ (void)setAssetSearchEntitiesFromDictionaries:(id)dictionaries onMoment:(id)moment
{
  v109 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  momentCopy = moment;
  v7 = PLBackendGetLog();
  v8 = os_signpost_id_generate(v7);
  info = 0;
  mach_timebase_info(&info);
  v9 = v7;
  v10 = v9;
  v75 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PLSearchEntityDonationToMoment", "", buf, 2u);
  }

  spid = v8;
  v74 = v10;

  v71 = mach_absolute_time();
  selfCopy = self;
  v11 = MEMORY[0x1E695DFA8];
  v12 = [self _fetchSearchEntityNodesForMoment:momentCopy];
  v80 = [v11 setWithArray:v12];

  photoLibrary = [momentCopy photoLibrary];
  managedObjectContext = [photoLibrary managedObjectContext];

  v77 = dictionariesCopy;
  v99 = 0;
  v100 = 0;
  v83 = [dictionariesCopy mutableCopy];
  v76 = managedObjectContext;
  [PLSearchEntity _findMatchingNodes:"_findMatchingNodes:andSearchEntityDictionariesByOID:inSearchEntityDictionaries:inContext:" andSearchEntityDictionariesByOID:&v100 inSearchEntityDictionaries:&v99 inContext:?];
  v15 = v100;
  v79 = v99;
  v16 = [PLSearchEntity _fetchEdgesForNodes:v15 toMoment:momentCopy];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v95 objects:v108 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v96;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v96 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v95 + 1) + 8 * i);
        sourceNode = [v23 sourceNode];
        objectID = [sourceNode objectID];
        [dictionary setObject:v23 forKeyedSubscript:objectID];
      }

      v20 = [v18 countByEnumeratingWithState:&v95 objects:v108 count:16];
    }

    while (v20);
  }

  v78 = dictionary;
  v73 = v18;

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v15;
  v27 = v79;
  v26 = v80;
  v84 = [obj countByEnumeratingWithState:&v91 objects:v107 count:16];
  if (v84)
  {
    v82 = *v92;
    do
    {
      for (j = 0; j != v84; j = j + 1)
      {
        if (*v92 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v91 + 1) + 8 * j);
        objectID2 = [v29 objectID];
        if ([v26 containsObject:v29])
        {
          v31 = [v78 objectForKeyedSubscript:objectID2];
          v32 = [v27 objectForKeyedSubscript:objectID2];
          v33 = [v32 objectForKeyedSubscript:@"Confidence"];
          [v33 doubleValue];
          v35 = v34;

          [PLSearchEntity _setConfidence:v31 onEdge:v35];
          v36 = [v27 objectForKeyedSubscript:objectID2];
          v37 = [v36 objectForKeyedSubscript:@"DateIntervalStart"];

          v38 = [v27 objectForKeyedSubscript:objectID2];
          v39 = [v38 objectForKeyedSubscript:@"DateIntervalEnd"];

          [PLSearchEntity _setDateIntervalStart:v37 end:v39 onEdge:v31];
          v40 = [(PLGraphNodeContainer *)PLSearchEntity newNodeContainerWithNode:v29];
        }

        else
        {
          v40 = [(PLGraphNodeContainer *)PLSearchEntity newNodeContainerWithNode:v29];
          v31 = [v27 objectForKeyedSubscript:objectID2];
          v37 = [v31 objectForKeyedSubscript:@"Confidence"];
          [v37 doubleValue];
          v42 = v41;
          v39 = [v27 objectForKeyedSubscript:objectID2];
          v43 = [v39 objectForKeyedSubscript:@"DateIntervalStart"];
          v44 = [v27 objectForKeyedSubscript:objectID2];
          v45 = [v44 objectForKeyedSubscript:@"DateIntervalEnd"];
          v46 = [v40 _insertMomentEdgeForMoment:momentCopy confidence:v43 startDate:v45 endDate:v42];

          v27 = v79;
          v26 = v80;
        }

        v47 = [v27 objectForKeyedSubscript:objectID2];
        v48 = [v47 objectForKeyedSubscript:@"synonyms"];
        [v40 setSynonyms:v48];

        v49 = [v27 objectForKeyedSubscript:objectID2];
        v50 = [v49 objectForKeyedSubscript:@"localeIdentifier"];
        [v40 setLocaleIdentifier:v50];

        [v26 removeObject:v29];
        v51 = [v27 objectForKeyedSubscript:objectID2];
        [v83 removeObject:v51];
      }

      v84 = [obj countByEnumeratingWithState:&v91 objects:v107 count:16];
    }

    while (v84);
  }

  [selfCopy _disconnectNodes:v26 fromMoment:momentCopy];
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = v83;
  v52 = [v85 countByEnumeratingWithState:&v87 objects:v106 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v88;
    do
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v88 != v54)
        {
          objc_enumerationMutation(v85);
        }

        v56 = *(*(&v87 + 1) + 8 * k);
        managedObjectContext2 = [momentCopy managedObjectContext];
        v58 = [PLSearchEntity _newNodeContainerWithManagedObjectContext:managedObjectContext2 dictionary:v56];

        v59 = [v56 objectForKeyedSubscript:@"Confidence"];
        [v59 doubleValue];
        v61 = v60;
        v62 = [v56 objectForKeyedSubscript:@"DateIntervalStart"];
        v63 = [v56 objectForKeyedSubscript:@"DateIntervalEnd"];
        v64 = [v58 _insertMomentEdgeForMoment:momentCopy confidence:v62 startDate:v63 endDate:v61];
      }

      v53 = [v85 countByEnumeratingWithState:&v87 objects:v106 count:16];
    }

    while (v53);
  }

  v65 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v68 = v74;
  v69 = v68;
  if (v75 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v68))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v69, OS_SIGNPOST_INTERVAL_END, spid, "PLSearchEntityDonationToMoment", "", buf, 2u);
  }

  if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v103 = "PLSearchEntityDonationToMoment";
    v104 = 2048;
    v105 = ((((v65 - v71) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v69, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

+ (id)keyFromSearchEntityNameCode:(int)code
{
  v3 = *&code;
  if (code <= 3499)
  {
    if (code <= 3001)
    {
      if (code == 3000)
      {
        return @"searchEntityLabel";
      }

      if (code == 3001)
      {
        return @"synonymsString";
      }
    }

    else
    {
      switch(code)
      {
        case 3002:
          return @"searchEntityIdentifier";
        case 3003:
          return @"searchEntityType";
        case 3004:
          return @"rankingScore";
      }
    }

LABEL_23:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchEntity.m" lineNumber:819 description:{@"Unsupported searchEntity nameCode: %u", v3}];

    return 0;
  }

  if (code > 3501)
  {
    switch(code)
    {
      case 3502:
        return @"RelationTypeConfidence";
      case 3503:
        return @"DateIntervalStart";
      case 3504:
        return @"DateIntervalEnd";
    }

    goto LABEL_23;
  }

  if (code == 3500)
  {
    return @"Confidence";
  }

  else
  {
    return @"RelationType";
  }
}

+ (int)searchEntityNameCodeFromKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"synonymsString"])
  {
    v6 = 3001;
  }

  else if ([keyCopy isEqualToString:@"searchEntityLabel"])
  {
    v6 = 3000;
  }

  else if ([keyCopy isEqualToString:@"searchEntityIdentifier"])
  {
    v6 = 3002;
  }

  else if ([keyCopy isEqualToString:@"searchEntityType"])
  {
    v6 = 3003;
  }

  else if ([keyCopy isEqualToString:@"rankingScore"])
  {
    v6 = 3004;
  }

  else if ([keyCopy isEqualToString:@"Confidence"])
  {
    v6 = 3500;
  }

  else if ([keyCopy isEqualToString:@"RelationType"])
  {
    v6 = 3501;
  }

  else if ([keyCopy isEqualToString:@"RelationTypeConfidence"])
  {
    v6 = 3502;
  }

  else if ([keyCopy isEqualToString:@"DateIntervalStart"])
  {
    v6 = 3503;
  }

  else if ([keyCopy isEqualToString:@"DateIntervalEnd"])
  {
    v6 = 3504;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchEntity.m" lineNumber:791 description:{@"Unsupported searchEntity value key: %@", keyCopy}];

    v6 = 0;
  }

  return v6;
}

+ (id)_labelWithCode:(int)code inContext:(id)context
{
  v4 = *&code;
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  pl_graphCache = [contextCopy pl_graphCache];
  v7 = [pl_graphCache labelWithCode:v4 inContext:contextCopy];

  if (!v7)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E69BFF48];
      v14 = *MEMORY[0x1E696A278];
      v15 = @"No search search entities found";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v12 = [v9 errorWithDomain:v10 code:41004 userInfo:v11];
      *buf = 67109378;
      v17 = 1100;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Failed to find label for code %u (Error: %@)", buf, 0x12u);
    }
  }

  return v7;
}

+ (id)_labelIDWithCode:(int)code inContext:(id)context
{
  v4 = *&code;
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  pl_graphCache = [contextCopy pl_graphCache];
  v7 = [pl_graphCache objectIDForLabelWithCode:v4 inContext:contextCopy];

  if (!v7)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E69BFF48];
      v14 = *MEMORY[0x1E696A278];
      v15 = @"No search search entities found";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v12 = [v9 errorWithDomain:v10 code:41004 userInfo:v11];
      *buf = 67109378;
      v17 = 1100;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Failed to find label for code %u (Error: %@)", buf, 0x12u);
    }
  }

  return v7;
}

+ (void)prepareForDeletingOutgoingEdge:(id)edge
{
  edgeCopy = edge;
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___PLSearchEntity;
  objc_msgSendSuper2(&v15, sel_prepareForDeletingOutgoingEdge_, edgeCopy);
  objc_opt_class();
  managedObjectContext = [edgeCopy managedObjectContext];
  if (objc_opt_isKindOfClass())
  {
    v6 = managedObjectContext;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    targetMoment = [edgeCopy targetMoment];
    uuid = [targetMoment uuid];
    v10 = [uuid length];

    if (v10)
    {
      targetMoment2 = [edgeCopy targetMoment];
      uuid2 = [targetMoment2 uuid];
      photoLibrary = [v7 photoLibrary];
      v14 = [PLBackgroundJobWorkItem addSearchIndexWorkItemIfNeededWithIdentifier:uuid2 flags:2048 inLibrary:photoLibrary];
    }
  }
}

+ (void)willInsertOutgoingEdge:(id)edge
{
  edgeCopy = edge;
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___PLSearchEntity;
  objc_msgSendSuper2(&v15, sel_willInsertOutgoingEdge_, edgeCopy);
  objc_opt_class();
  managedObjectContext = [edgeCopy managedObjectContext];
  if (objc_opt_isKindOfClass())
  {
    v6 = managedObjectContext;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    targetMoment = [edgeCopy targetMoment];
    if (targetMoment)
    {
      v9 = targetMoment;
      isInserted = [edgeCopy isInserted];

      if (isInserted)
      {
        targetMoment2 = [edgeCopy targetMoment];
        uuid = [targetMoment2 uuid];
        photoLibrary = [v7 photoLibrary];
        v14 = [PLBackgroundJobWorkItem addSearchIndexWorkItemIfNeededWithIdentifier:uuid flags:2048 inLibrary:photoLibrary];
      }
    }
  }
}

+ (void)prepareForDeletionWithNode:(id)node
{
  v37 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  objc_opt_class();
  managedObjectContext = [nodeCopy managedObjectContext];
  if (objc_opt_isKindOfClass())
  {
    v5 = managedObjectContext;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    goto LABEL_24;
  }

  v7 = [(PLGraphNodeContainer *)PLSearchEntity newNodeContainerWithNode:nodeCopy];
  if ([v7 type])
  {
    label = [v7 label];
    if (label)
    {

LABEL_9:
      encodedIdentifierString = [v7 encodedIdentifierString];
      photoLibrary = [v6 photoLibrary];
      v12 = [PLBackgroundJobWorkItem addSearchIndexWorkItemIfNeededWithIdentifier:encodedIdentifierString flags:512 inLibrary:photoLibrary];

      goto LABEL_10;
    }

    identifier = [v7 identifier];

    if (identifier)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v31 = 0;
  v13 = [v7 fetchAllMomentsWithError:&v31];
  v14 = v31;
  if (!v13)
  {
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v34 = v7;
      v35 = 2112;
      v36 = v14;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Fetch failed for all moment associated with search entity %@ (%@)", buf, 0x16u);
    }
  }

  v25 = v14;
  v26 = nodeCopy;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = v13;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v27 + 1) + 8 * i);
        if (([v21 isDeleted] & 1) == 0)
        {
          uuid = [v21 uuid];
          photoLibrary2 = [v6 photoLibrary];
          v24 = [PLBackgroundJobWorkItem addSearchIndexWorkItemIfNeededWithIdentifier:uuid flags:2048 inLibrary:photoLibrary2];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v18);
  }

  nodeCopy = v26;
LABEL_24:
}

+ (void)willSaveWithNode:(id)node
{
  nodeCopy = node;
  v18.receiver = self;
  v18.super_class = &OBJC_METACLASS___PLSearchEntity;
  objc_msgSendSuper2(&v18, sel_willSaveWithNode_, nodeCopy);
  managedObjectContext = [nodeCopy managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([nodeCopy isDeleted] & 1) == 0)
  {
    v6 = [(PLGraphNodeContainer *)PLSearchEntity newNodeContainerWithNode:nodeCopy];
    if ([v6 type])
    {
      label = [v6 label];
      if (label)
      {

LABEL_7:
        if ([nodeCopy isInserted])
        {
          [v6 rankingScore];
          if (v9 == 0.0)
          {
            v10 = 1026;
          }

          else
          {
            v10 = 1538;
          }

          encodedIdentifierString = [v6 encodedIdentifierString];
          photoLibrary = [managedObjectContext photoLibrary];
          v13 = [PLBackgroundJobWorkItem addSearchIndexWorkItemIfNeededWithIdentifier:encodedIdentifierString flags:v10 inLibrary:photoLibrary];
        }

        else
        {
          encodedIdentifierString = [nodeCopy valueWithCode:{objc_msgSend(objc_opt_class(), "searchEntityNameCodeFromKey:", @"rankingScore"}];
          if ([encodedIdentifierString isInsertedDeletedOrChanged])
          {
            v14 = 512;
          }

          else
          {
            v14 = 0;
          }

          photoLibrary = [nodeCopy valueWithCode:{objc_msgSend(objc_opt_class(), "searchEntityNameCodeFromKey:", @"synonymsString"}];
          if ([photoLibrary isInsertedDeletedOrChanged])
          {
            v14 |= 0x400uLL;
          }

          if (v14)
          {
            encodedIdentifierString2 = [v6 encodedIdentifierString];
            photoLibrary2 = [managedObjectContext photoLibrary];
            v17 = [PLBackgroundJobWorkItem addSearchIndexWorkItemIfNeededWithIdentifier:encodedIdentifierString2 flags:v14 inLibrary:photoLibrary2];
          }
        }

        goto LABEL_20;
      }

      identifier = [v6 identifier];

      if (identifier)
      {
        goto LABEL_7;
      }
    }

LABEL_20:
  }
}

+ (id)newNodeContainerWithManagedObjectContext:(id)context
{
  contextCopy = context;
  v5 = [PLSearchEntity _labelWithCode:1100 inContext:contextCopy];
  v6 = [PLGraphNode insertGraphNodeInContext:contextCopy withPrimaryLabel:v5];

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___PLSearchEntity;
  v7 = [objc_msgSendSuper2(&v9 alloc)];

  return v7;
}

+ (id)_newNodeContainerWithManagedObjectContext:(id)context dictionary:(id)dictionary
{
  v28 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dictionaryCopy = dictionary;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"label"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  integerValue = [v10 integerValue];

  if (!integerValue)
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v24) = 0;
      v20 = "Attempting to set an unknown type";
      v21 = v19;
      v22 = 2;
LABEL_8:
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_FAULT, v20, &v24, v22);
    }

LABEL_9:

    v12 = 0;
    goto LABEL_10;
  }

  if (!(v8 | v9))
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      v24 = 134218240;
      v25 = 0;
      v26 = 2048;
      v27 = 0;
      v20 = "Attempting to set nil label (%p) or identifier (%p)";
      v21 = v19;
      v22 = 22;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v12 = [self newNodeContainerWithManagedObjectContext:contextCopy];
  v13 = [dictionaryCopy objectForKeyedSubscript:@"label"];
  [v12 setLabel:v13];

  v14 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  [v12 setIdentifier:v14];

  v15 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  [v12 setType:{objc_msgSend(v15, "integerValue")}];

  v16 = [dictionaryCopy objectForKeyedSubscript:@"rankingScore"];
  [v16 doubleValue];
  [v12 setRankingScore:?];

  v17 = [dictionaryCopy objectForKeyedSubscript:@"localeIdentifier"];
  [v12 setLocaleIdentifier:v17];

  v18 = [dictionaryCopy objectForKeyedSubscript:@"synonyms"];
  [v12 setSynonyms:v18];

LABEL_10:
  return v12;
}

+ (id)_fetchEdgesForPersonRelationsOnPerson:(id)person
{
  v24[2] = *MEMORY[0x1E69E9840];
  personCopy = person;
  managedObjectContext = [personCopy managedObjectContext];
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLGraphEdge entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = MEMORY[0x1E696AB28];
  personCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"targetPerson", personCopy];
  v24[0] = personCopy;
  v10 = MEMORY[0x1E696AE18];
  v11 = [PLSearchEntity _personRelationLabelIDsInContext:managedObjectContext];
  v12 = [v10 predicateWithFormat:@"%K IN %@", @"primaryLabel", v11];
  v24[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v14 = [v8 andPredicateWithSubpredicates:v13];
  [v7 setPredicate:v14];

  v19 = 0;
  v15 = [managedObjectContext executeFetchRequest:v7 error:&v19];
  v16 = v19;
  if (!v15)
  {
    v17 = PLBackendGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = personCopy;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Fetch for person relation edges failed for person %@, (%@)", buf, 0x16u);
    }
  }

  return v15;
}

+ (id)_fetchEdgesForPersonRelationsOnSearchEntityForPerson:(id)person
{
  v29[2] = *MEMORY[0x1E69E9840];
  personCopy = person;
  managedObjectContext = [personCopy managedObjectContext];
  v5 = [PLSearchEntity _fetchMeOrSelfEdgeForPerson:personCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695D5E0];
    v7 = +[PLGraphEdge entityName];
    v8 = [v6 fetchRequestWithEntityName:v7];

    v9 = MEMORY[0x1E696AB28];
    v10 = MEMORY[0x1E696AE18];
    sourceNode = [v5 sourceNode];
    v12 = [v10 predicateWithFormat:@"%K = %@", @"sourceNode", sourceNode];
    v29[0] = v12;
    v13 = MEMORY[0x1E696AE18];
    v14 = [PLSearchEntity _personRelationLabelIDsInContext:managedObjectContext];
    v15 = [v13 predicateWithFormat:@"%K IN %@", @"primaryLabel", v14];
    v29[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    v17 = [v9 andPredicateWithSubpredicates:v16];
    [v8 setPredicate:v17];

    v28[0] = @"targetPerson";
    v28[1] = @"values";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    [v8 setRelationshipKeyPathsForPrefetching:v18];

    v23 = 0;
    v19 = [managedObjectContext executeFetchRequest:v8 error:&v23];
    v20 = v23;
    if (!v19)
    {
      v21 = PLBackendGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v25 = personCopy;
        v26 = 2112;
        v27 = v20;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Fetch for person relation edges failed for person %@, (%@)", buf, 0x16u);
      }
    }
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  return v19;
}

+ (id)_fetchMeOrSelfSearchEntityForPerson:(id)person
{
  v3 = [PLSearchEntity _fetchMeOrSelfEdgeForPerson:person];
  sourceNode = [v3 sourceNode];

  if (sourceNode)
  {
    v5 = [(PLGraphNodeContainer *)PLSearchEntity newNodeContainerWithNode:sourceNode];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_fetchMeOrSelfEdgeForPerson:(id)person
{
  v33[2] = *MEMORY[0x1E69E9840];
  personCopy = person;
  managedObjectContext = [personCopy managedObjectContext];
  v6 = [self _labelIDWithCode:1102 inContext:managedObjectContext];
  v7 = [self _labelIDWithCode:1103 inContext:managedObjectContext];
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLGraphEdge entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = MEMORY[0x1E696AB28];
  v12 = MEMORY[0x1E696AE18];
  v32[0] = v6;
  v32[1] = v7;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v14 = [v12 predicateWithFormat:@"%K IN %@", @"primaryLabel", v13];
  v33[0] = v14;
  personCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) = %@", @"targetPerson", personCopy];
  v33[1] = personCopy;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v17 = [v11 andPredicateWithSubpredicates:v16];
  [v10 setPredicate:v17];

  v31 = @"sourceNode";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  [v10 setRelationshipKeyPathsForPrefetching:v18];

  v24 = 0;
  v19 = [managedObjectContext executeFetchRequest:v10 error:&v24];
  v20 = v24;
  if (v19)
  {
    firstObject = [v19 firstObject];
  }

  else
  {
    v22 = PLBackendGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v26 = personCopy;
      v27 = 2112;
      v28 = managedObjectContext;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Failed to fetch me/self graph edge for person %@ in context %@ (%@)", buf, 0x20u);
    }

    firstObject = 0;
  }

  return firstObject;
}

+ (void)_removeAllPersonRelationEdgesFromPerson:(id)person
{
  v36[2] = *MEMORY[0x1E69E9840];
  personCopy = person;
  managedObjectContext = [personCopy managedObjectContext];
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLGraphEdge entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = MEMORY[0x1E696AB28];
  personCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"targetPerson", personCopy];
  v36[0] = personCopy;
  v10 = MEMORY[0x1E696AE18];
  v11 = [PLSearchEntity _personRelationLabelIDsInContext:managedObjectContext];
  v12 = [v10 predicateWithFormat:@"%K IN %@", @"primaryLabel", v11];
  v36[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v14 = [v8 andPredicateWithSubpredicates:v13];
  [v7 setPredicate:v14];

  v35[0] = @"targetPerson";
  v35[1] = @"sourceNode";
  v35[2] = @"values";
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
  [v7 setRelationshipKeyPathsForPrefetching:v15];

  v29 = 0;
  v16 = [managedObjectContext executeFetchRequest:v7 error:&v29];
  v17 = v29;
  if (v16)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v16;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [managedObjectContext deleteObject:*(*(&v25 + 1) + 8 * i)];
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v18 = [PLSearchEntity _fetchMeOrSelfSearchEntityForPerson:personCopy];
    v23 = PLBackendGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sourceNode = [v18 sourceNode];
      *buf = 138412546;
      v32 = sourceNode;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Couldn't fetch edges for node %@ (%@)", buf, 0x16u);
    }
  }
}

+ (void)_removeAllPersonRelationEdgesFromNode:(id)node
{
  v13[2] = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  managedObjectContext = [nodeCopy managedObjectContext];
  v6 = MEMORY[0x1E696AB28];
  nodeCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"sourceNode", nodeCopy];

  v13[0] = nodeCopy;
  v8 = MEMORY[0x1E696AE18];
  v9 = [self _personRelationLabelIDsInContext:managedObjectContext];
  v10 = [v8 predicateWithFormat:@"%K IN %@", @"primaryLabel", v9];
  v13[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v12 = [v6 andPredicateWithSubpredicates:v11];

  [PLSearchEntity _removeAllEdgesWithPredicate:v12 inContext:managedObjectContext];
}

+ (id)_personRelationLabelIDsInContext:(id)context
{
  v10[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = [self _labelIDWithCode:1101 inContext:contextCopy];
  v6 = [self _labelIDWithCode:1102 inContext:{contextCopy, v5}];
  v10[1] = v6;
  v7 = [self _labelIDWithCode:1103 inContext:contextCopy];

  v10[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];

  return v8;
}

+ (void)_cleanUpStaleSearchRankingsNotIn:(id)in inLibrary:(id)library
{
  v74[3] = *MEMORY[0x1E69E9840];
  inCopy = in;
  libraryCopy = library;
  managedObjectContext = [libraryCopy managedObjectContext];
  v7 = [PLSearchEntity _labelIDWithCode:1100 inContext:managedObjectContext];
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLGraphNode entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = MEMORY[0x1E696AB28];
  v56 = v7;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"primaryLabel", v7];
  v74[0] = v12;
  inCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT self IN %@", inCopy];
  v74[1] = inCopy;
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K.%K = %d", @"values", @"nameCode", objc_msgSend(objc_opt_class(), "searchEntityNameCodeFromKey:", @"rankingScore"];
  v74[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:3];
  v16 = [v11 andPredicateWithSubpredicates:v15];
  [v10 setPredicate:v16];

  [v10 setResultType:1];
  [v10 setFetchBatchSize:100];
  v68 = 0;
  v17 = [managedObjectContext executeFetchRequest:v10 error:&v68];
  v18 = v68;
  if (!v17)
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v73 = v18;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Failed to execute fetch to find nodes delete or un-rank (%@)", buf, 0xCu);
    }
  }

  if ([v17 count])
  {
    v20 = MEMORY[0x1E695D5E0];
    v21 = +[PLGraphEdge entityName];
    v22 = [v20 fetchRequestWithEntityName:v21];

    v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"sourceNode", v17];
    [v22 setPredicate:v23];

    v71 = @"sourceNode";
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
    [v22 setRelationshipKeyPathsForPrefetching:v24];

    [v22 setFetchBatchSize:100];
    v67 = v18;
    v55 = v22;
    v25 = [managedObjectContext executeFetchRequest:v22 error:&v67];
    v26 = v67;

    if (v25)
    {
      v51 = v26;
      v53 = inCopy;
      v54 = v17;
      v27 = [MEMORY[0x1E695DFA8] set];
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v52 = v25;
      v28 = v25;
      v29 = [v28 countByEnumeratingWithState:&v63 objects:v70 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v64;
        do
        {
          v32 = 0;
          do
          {
            if (*v64 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v63 + 1) + 8 * v32);
            v34 = objc_autoreleasePoolPush();
            sourceNode = [v33 sourceNode];
            v36 = [(PLGraphNodeContainer *)PLSearchEntity newNodeContainerWithNode:sourceNode];
            [v36 setRankingScore:0.0];
            objectID = [sourceNode objectID];
            [v27 addObject:objectID];

            objc_autoreleasePoolPop(v34);
            ++v32;
          }

          while (v30 != v32);
          v30 = [v28 countByEnumeratingWithState:&v63 objects:v70 count:16];
        }

        while (v30);
      }

      v38 = [MEMORY[0x1E695DFA8] setWithArray:v54];
      [v38 minusSet:v27];
      v39 = MEMORY[0x1E695D5E0];
      v40 = +[PLGraphNode entityName];
      v10 = [v39 fetchRequestWithEntityName:v40];

      v41 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v38];
      [v10 setPredicate:v41];

      [v10 setFetchBatchSize:100];
      v62 = v51;
      v42 = [managedObjectContext executeFetchRequest:v10 error:&v62];
      v43 = v62;

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v44 = v42;
      v45 = [v44 countByEnumeratingWithState:&v58 objects:v69 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v59;
        do
        {
          v48 = 0;
          do
          {
            if (*v59 != v47)
            {
              objc_enumerationMutation(v44);
            }

            [managedObjectContext deleteObject:*(*(&v58 + 1) + 8 * v48++)];
          }

          while (v46 != v48);
          v46 = [v44 countByEnumeratingWithState:&v58 objects:v69 count:16];
        }

        while (v46);
      }

      v26 = v43;
      inCopy = v53;
      v17 = v54;
      v50 = v56;
      v49 = libraryCopy;
      v25 = v52;
    }

    else
    {
      v27 = PLBackendGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v73 = v26;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Failed to execute fetch to find edges to nodes un-rank (%@)", buf, 0xCu);
      }

      v50 = v56;
      v49 = libraryCopy;
      v10 = v55;
    }

    v18 = v26;
  }

  else
  {
    v50 = v56;
    v49 = libraryCopy;
  }
}

+ (void)_setDateIntervalStart:(id)start end:(id)end onEdge:(id)edge
{
  startCopy = start;
  endCopy = end;
  edgeCopy = edge;
  v9 = [edgeCopy valueWithCode:objc_msgSend(objc_opt_class() createIfMissing:{"searchEntityNameCodeFromKey:", @"DateIntervalStart", 1}];
  v10 = [edgeCopy valueWithCode:objc_msgSend(objc_opt_class() createIfMissing:{"searchEntityNameCodeFromKey:", @"DateIntervalEnd", 1}];

  dateValue = [v9 dateValue];
  v12 = [dateValue isEqualToDate:startCopy];

  if ((v12 & 1) == 0)
  {
    [v9 setDateValue:startCopy];
  }

  dateValue2 = [v10 dateValue];
  v14 = [dateValue2 isEqualToDate:endCopy];

  if ((v14 & 1) == 0)
  {
    [v10 setDateValue:endCopy];
  }
}

+ (void)_setConfidence:(double)confidence onEdge:(id)edge
{
  edgeCopy = edge;
  v7 = [edgeCopy valueWithCode:objc_msgSend(objc_opt_class() createIfMissing:{"searchEntityNameCodeFromKey:", @"Confidence", 1}];

  [v7 doubleValue];
  if (vabdd_f64(v6, confidence) >= 2.22044605e-16)
  {
    [v7 setDoubleValue:confidence];
  }
}

+ (id)_fetchEdgesForNodes:(id)nodes toMoment:(id)moment
{
  v26[3] = *MEMORY[0x1E69E9840];
  momentCopy = moment;
  nodesCopy = nodes;
  managedObjectContext = [momentCopy managedObjectContext];
  v8 = [PLSearchEntity _labelIDWithCode:1100 inContext:managedObjectContext];

  v9 = MEMORY[0x1E695D5E0];
  v10 = +[PLGraphEdge entityName];
  v11 = [v9 fetchRequestWithEntityName:v10];

  v12 = MEMORY[0x1E696AB28];
  momentCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"targetMoment", momentCopy];
  v26[0] = momentCopy;
  nodesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"sourceNode", nodesCopy];

  v26[1] = nodesCopy;
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"primaryLabel", v8];
  v26[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  v17 = [v12 andPredicateWithSubpredicates:v16];
  [v11 setPredicate:v17];

  managedObjectContext2 = [momentCopy managedObjectContext];

  v23 = 0;
  v19 = [managedObjectContext2 executeFetchRequest:v11 error:&v23];
  v20 = v23;

  if (!v19)
  {
    v21 = PLBackendGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v20;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Failed to execute fetch to find nodes delete or un-rank (%@)", buf, 0xCu);
    }
  }

  return v19;
}

+ (id)_fetchSearchEntityNodesForMoment:(id)moment
{
  v3 = [self _fetchSearchEntityEdgesForMoment:moment];
  v4 = [v3 valueForKey:@"sourceNode"];

  return v4;
}

+ (id)_fetchSearchEntityEdgesForMoment:(id)moment
{
  v26[3] = *MEMORY[0x1E69E9840];
  momentCopy = moment;
  managedObjectContext = [momentCopy managedObjectContext];
  v5 = [PLSearchEntity _labelIDWithCode:1100 inContext:managedObjectContext];
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLGraphEdge entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v26[0] = @"values";
  v26[1] = @"sourceNode";
  v26[2] = @"sourceNode.values";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  [v8 setRelationshipKeyPathsForPrefetching:v9];

  v10 = MEMORY[0x1E696AB28];
  momentCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"targetMoment", momentCopy];
  v25[0] = momentCopy;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) = %@", @"primaryLabel", v5];
  v25[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];
  [v8 setPredicate:v14];

  v20 = 0;
  v15 = [managedObjectContext executeFetchRequest:v8 error:&v20];
  v16 = v20;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = momentCopy;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to fetch edges to moment %@ (%@)", buf, 0x16u);
    }
  }

  return v15;
}

+ (void)_disconnectNodes:(id)nodes fromMoment:(id)moment
{
  v81[2] = *MEMORY[0x1E69E9840];
  nodesCopy = nodes;
  momentCopy = moment;
  managedObjectContext = [momentCopy managedObjectContext];
  v8 = [PLSearchEntity _labelIDWithCode:1100 inContext:managedObjectContext];
  v9 = MEMORY[0x1E695D5E0];
  v10 = +[PLGraphEdge entityName];
  v11 = [v9 fetchRequestWithEntityName:v10];

  v12 = MEMORY[0x1E696AB28];
  v51 = v8;
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"primaryLabel", v8];
  v81[0] = v13;
  nodesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"sourceNode", nodesCopy];
  v81[1] = nodesCopy;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
  v16 = [v12 andPredicateWithSubpredicates:v15];
  [v11 setPredicate:v16];

  v80 = @"sourceNode";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
  [v11 setRelationshipKeyPathsForPrefetching:v17];

  v70 = 0;
  v57 = managedObjectContext;
  v50 = v11;
  v18 = [managedObjectContext executeFetchRequest:v11 error:&v70];
  v19 = v70;
  v20 = v19;
  if (v18)
  {
    v47 = v19;
    v49 = nodesCopy;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v48 = v18;
    v22 = v18;
    v23 = [v22 countByEnumeratingWithState:&v66 objects:v73 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v67;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v67 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v66 + 1) + 8 * i);
          sourceNode = [v27 sourceNode];
          objectID = [sourceNode objectID];

          array = [dictionary objectForKeyedSubscript:objectID];
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
            [dictionary setObject:array forKeyedSubscript:objectID];
          }

          [array addObject:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v66 objects:v73 count:16];
      }

      while (v24);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v31 = dictionary;
    v54 = [v31 countByEnumeratingWithState:&v62 objects:v72 count:16];
    if (v54)
    {
      v52 = *v63;
      v53 = v31;
      do
      {
        v32 = 0;
        do
        {
          if (*v63 != v52)
          {
            objc_enumerationMutation(v31);
          }

          v56 = v32;
          v33 = [v31 objectForKeyedSubscript:*(*(&v62 + 1) + 8 * v32)];
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v34 = [v33 countByEnumeratingWithState:&v58 objects:v71 count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v59;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v59 != v36)
                {
                  objc_enumerationMutation(v33);
                }

                v38 = *(*(&v58 + 1) + 8 * j);
                targetMoment = [v38 targetMoment];
                objectID2 = [targetMoment objectID];
                objectID3 = [momentCopy objectID];
                v42 = [objectID2 isEqual:objectID3];

                if (v42)
                {
                  [v57 deleteObject:v38];
                  if ([v33 count] == 1)
                  {
                    sourceNode2 = [v38 sourceNode];
                    v44 = [(PLGraphNodeContainer *)PLSearchEntity newNodeContainerWithNode:sourceNode2];

                    [v44 rankingScore];
                    if (v45 == 0.0)
                    {
                      sourceNode3 = [v38 sourceNode];
                      [v57 deleteObject:sourceNode3];
                    }
                  }
                }
              }

              v35 = [v33 countByEnumeratingWithState:&v58 objects:v71 count:16];
            }

            while (v35);
          }

          v32 = v56 + 1;
          v31 = v53;
        }

        while (v56 + 1 != v54);
        v54 = [v53 countByEnumeratingWithState:&v62 objects:v72 count:16];
      }

      while (v54);
    }

    v18 = v48;
    nodesCopy = v49;
    v20 = v47;
  }

  else
  {
    v31 = PLBackendGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy = self;
      v76 = 2112;
      v77 = momentCopy;
      v78 = 2112;
      v79 = v20;
      _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Failed to find graph edge from search entity (%@) to moment (%@) (%@)", buf, 0x20u);
    }
  }
}

+ (void)_removeAllSearchEntityEdgesFromMoment:(id)moment
{
  momentCopy = moment;
  v5 = [PLSearchEntity _predicateForSearchEntityEdgesToMoment:momentCopy];
  managedObjectContext = [momentCopy managedObjectContext];

  [PLSearchEntity _removeAllEdgesWithPredicate:v5 inContext:managedObjectContext];
}

+ (id)_predicateForSearchEntityEdgesToMoment:(id)moment
{
  v12[2] = *MEMORY[0x1E69E9840];
  momentCopy = moment;
  managedObjectContext = [momentCopy managedObjectContext];
  v5 = [PLSearchEntity _labelIDWithCode:1100 inContext:managedObjectContext];

  v6 = MEMORY[0x1E696AB28];
  momentCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"targetMoment", momentCopy];

  v12[0] = momentCopy;
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"primaryLabel", v5];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v10 = [v6 andPredicateWithSubpredicates:v9];

  return v10;
}

+ (void)_findMatchingNodes:(id *)nodes andSearchEntityDictionariesByOID:(id *)d inSearchEntityDictionaries:(id)dictionaries inContext:(id)context
{
  dictionariesCopy = dictionaries;
  contextCopy = context;
  if (!nodes)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchEntity.m" lineNumber:194 description:{@"Invalid parameter not satisfying: %@", @"outMatchingNodes"}];
  }

  if (!d)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLSearchEntity.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"outMatchingSearchEntityDictionariesByOID"}];
  }

  v28 = 0;
  v29 = 0;
  v27 = 0;
  [PLSearchEntity _collectLabels:&v29 identifiers:&v28 types:&v27 fromDictionaries:dictionariesCopy];
  v26 = v29;
  v13 = v28;
  v14 = v27;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v25 = dictionariesCopy;
  v16 = +[PLGraphNodeValue fetchGraphNodeValuesWithCode:andValues:forValueType:inContext:prefetchNode:](PLGraphNodeValue, "fetchGraphNodeValuesWithCode:andValues:forValueType:inContext:prefetchNode:", [objc_opt_class() searchEntityNameCodeFromKey:@"searchEntityLabel"], v26, @"stringValue", contextCopy, 0);
  [PLSearchEntity _nodeValuesByNode:v16 into:dictionary];
  v17 = +[PLGraphNodeValue fetchGraphNodeValuesWithCode:andValues:forValueType:inContext:prefetchNode:](PLGraphNodeValue, "fetchGraphNodeValuesWithCode:andValues:forValueType:inContext:prefetchNode:", [objc_opt_class() searchEntityNameCodeFromKey:@"searchEntityIdentifier"], v13, @"stringValue", contextCopy, 0);

  [PLSearchEntity _nodeValuesByNode:v17 into:dictionary];
  v18 = +[PLGraphNodeValue fetchGraphNodeValuesWithCode:andValues:forValueType:inContext:prefetchNode:](PLGraphNodeValue, "fetchGraphNodeValuesWithCode:andValues:forValueType:inContext:prefetchNode:", [objc_opt_class() searchEntityNameCodeFromKey:@"searchEntityType"], v14, @"integerValue", contextCopy, 0);

  [PLSearchEntity _nodeValuesByNode:v18 into:dictionary];
  v19 = [PLSearchEntity _groupAndRemoveMatchingDictionariesInSearchEntityDictionaries:v25 byNodeOIDFromValuesByNodeOID:dictionary];
  *d = v19;
  allKeys = [v19 allKeys];
  v21 = [PLSearchEntity _fetchGraphNodesForOIDs:allKeys inContext:contextCopy];
  v22 = v21;

  *nodes = v21;
}

+ (id)_fetchGraphNodesForOIDs:(id)ds inContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = MEMORY[0x1E695D5E0];
  dsCopy = ds;
  v8 = +[PLGraphNode entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF in %@", dsCopy];

  [v9 setPredicate:dsCopy];
  v16 = 0;
  v11 = [contextCopy executeFetchRequest:v9 error:&v16];
  v12 = v16;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = contextCopy;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch graph nodes for context %@ (ERROR: %@)", buf, 0x16u);
    }
  }

  return v11;
}

+ (id)_groupAndRemoveMatchingDictionariesInSearchEntityDictionaries:(id)dictionaries byNodeOIDFromValuesByNodeOID:(id)d
{
  v43 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  dCopy = d;
  v24 = dictionariesCopy;
  v6 = [dictionariesCopy mutableCopy];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v6;
  v27 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v27)
  {
    v25 = *v38;
    do
    {
      v7 = 0;
      do
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v7;
        v8 = *(*(&v37 + 1) + 8 * v7);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v9 = dCopy;
        v32 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (!v32)
        {
          goto LABEL_25;
        }

        v10 = *v34;
        v29 = v9;
        while (2)
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v34 != v10)
            {
              objc_enumerationMutation(v9);
            }

            v12 = *(*(&v33 + 1) + 8 * i);
            v13 = [v9 objectForKeyedSubscript:v12];
            v14 = [v8 objectForKeyedSubscript:@"label"];
            v15 = [v13 objectForKeyedSubscript:@"searchEntityLabel"];
            if (v14 != v15 && ![v14 isEqualToString:v15])
            {
              goto LABEL_19;
            }

            v30 = v12;
            v16 = [v8 objectForKeyedSubscript:@"identifier"];
            v17 = [v13 objectForKeyedSubscript:@"searchEntityIdentifier"];
            if (v16 != v17 && ![v16 isEqualToString:v17])
            {

LABEL_19:
              goto LABEL_20;
            }

            v18 = [v8 objectForKeyedSubscript:@"type"];
            v19 = [v13 objectForKeyedSubscript:@"searchEntityType"];
            v20 = v19;
            if (v18 == v19)
            {

              v9 = v29;
LABEL_24:
              [dictionary setObject:v8 forKeyedSubscript:v30];
              [v24 removeObject:v8];

              goto LABEL_25;
            }

            v31 = [v18 isEqual:v19];

            v9 = v29;
            if (v31)
            {
              goto LABEL_24;
            }

LABEL_20:
          }

          v32 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v32)
          {
            continue;
          }

          break;
        }

LABEL_25:

        v7 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v27);
  }

  return dictionary;
}

+ (void)_nodeValuesByNode:(id)node into:(id)into
{
  v26 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  intoCopy = into;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = nodeCopy;
  v8 = [nodeCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        owningObject = [v12 owningObject];
        objectID = [owningObject objectID];

        dictionary = [intoCopy objectForKeyedSubscript:objectID];
        if (!dictionary)
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          [intoCopy setObject:dictionary forKeyedSubscript:objectID];
        }

        stringValue = [v12 stringValue];
        v17 = stringValue;
        if (!stringValue)
        {
          v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "integerValue")}];
          v17 = v4;
        }

        v18 = [self keyFromSearchEntityNameCode:{objc_msgSend(v12, "nameCode")}];
        [dictionary setObject:v17 forKeyedSubscript:v18];

        if (!stringValue)
        {
        }
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }
}

+ (void)_collectLabels:(id *)labels identifiers:(id *)identifiers types:(id *)types fromDictionaries:(id)dictionaries
{
  v32 = *MEMORY[0x1E69E9840];
  dictionariesCopy = dictionaries;
  labelsCopy = labels;
  if (labels)
  {
    if (identifiers)
    {
      goto LABEL_3;
    }

LABEL_19:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchEntity.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"outIdentifiers"}];

    if (types)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLSearchEntity.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"outLabels"}];

  if (!identifiers)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (types)
  {
    goto LABEL_4;
  }

LABEL_20:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLSearchEntity.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"outTypes"}];

LABEL_4:
  *labelsCopy = [MEMORY[0x1E695DFA8] set];
  [MEMORY[0x1E695DFA8] set];
  *identifiers = v25 = identifiers;
  [MEMORY[0x1E695DFA8] set];
  *types = v12 = types;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = dictionariesCopy;
  v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        v18 = [v17 objectForKeyedSubscript:@"label"];
        if (v18)
        {
          [*labelsCopy addObject:v18];
        }

        v19 = [v17 objectForKeyedSubscript:@"identifier"];
        if (v19)
        {
          [*v25 addObject:v19];
        }

        v20 = [v17 objectForKeyedSubscript:@"type"];
        if (v20)
        {
          [*v12 addObject:v20];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }
}

+ (void)_removeAllEdgesWithPredicate:(id)predicate inContext:(id)context
{
  v35 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  contextCopy = context;
  if (!predicateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchEntity.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"predicate"}];
  }

  v9 = MEMORY[0x1E695D5E0];
  v10 = +[PLGraphEdge entityName];
  v11 = [v9 fetchRequestWithEntityName:v10];

  [v11 setPredicate:predicateCopy];
  v29 = 0;
  v12 = [contextCopy executeFetchRequest:v11 error:&v29];
  v13 = v29;
  if (!v12)
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v33 = 2112;
      v34 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to fetch relation edges for node %@ (%@)", buf, 0x16u);
    }
  }

  v24 = v13;
  v15 = [self _labelWithCode:1102 inContext:contextCopy];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v25 + 1) + 8 * i);
        if ([v21 hasLabel:v15])
        {
          targetPerson = [v21 targetPerson];
          [targetPerson setMeConfidence:0.0];
        }

        [contextCopy deleteObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v18);
  }
}

@end