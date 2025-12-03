@interface PLSharedAssetsContainerIncrementalChange
- (BOOL)hasChanges;
- (BOOL)hasChangesAffectingSharingComposition;
- (BOOL)hasSharingChanges;
- (BOOL)isEqual:(id)equal;
- (PLSharedAssetsContainerIncrementalChange)init;
- (PLSharedAssetsContainerIncrementalChange)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)addHighlightContainerChange:(id)change sourceHighlightID:(id)d destinationHighlightID:(id)iD;
- (void)encodeWithCoder:(id)coder;
- (void)mergeChangesFrom:(id)from;
@end

@implementation PLSharedAssetsContainerIncrementalChange

- (void)mergeChangesFrom:(id)from
{
  v23 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy)
  {
    if ([fromCopy collectionChangeType])
    {
      -[PLSharedAssetsContainerIncrementalChange setCollectionChangeType:](self, "setCollectionChangeType:", [v5 collectionChangeType]);
    }

    if ([v5 sharingChange])
    {
      if (-[PLSharedAssetsContainerIncrementalChange sharingChange](self, "sharingChange") == 1 && [v5 sharingChange] == 2 || -[PLSharedAssetsContainerIncrementalChange sharingChange](self, "sharingChange") == 2 && objc_msgSend(v5, "sharingChange") == 1)
      {
        sharingChange = 0;
      }

      else
      {
        sharingChange = [v5 sharingChange];
      }

      [(PLSharedAssetsContainerIncrementalChange *)self setSharingChange:sharingChange];
    }

    if ([v5 suggestionStateChange])
    {
      if (-[PLSharedAssetsContainerIncrementalChange suggestionStateChange](self, "suggestionStateChange") == 1 && [v5 suggestionStateChange] == 2 || -[PLSharedAssetsContainerIncrementalChange suggestionStateChange](self, "suggestionStateChange") == 2 && objc_msgSend(v5, "suggestionStateChange") == 1)
      {
        suggestionStateChange = 0;
      }

      else
      {
        suggestionStateChange = [v5 suggestionStateChange];
      }

      [(PLSharedAssetsContainerIncrementalChange *)self setSuggestionStateChange:suggestionStateChange];
    }

    -[PLSharedAssetsContainerIncrementalChange setMediaType:](self, "setMediaType:", [v5 mediaType]);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    highlightContainerChanges = [v5 highlightContainerChanges];
    v9 = [highlightContainerChanges countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(highlightContainerChanges);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          highlightContainerChanges2 = [(PLSharedAssetsContainerIncrementalChange *)self highlightContainerChanges];
          v15 = [highlightContainerChanges2 containsObject:v13];

          if ((v15 & 1) == 0)
          {
            highlightContainerChanges3 = [(PLSharedAssetsContainerIncrementalChange *)self highlightContainerChanges];
            v17 = [highlightContainerChanges3 arrayByAddingObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [highlightContainerChanges countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }
}

- (void)addHighlightContainerChange:(id)change sourceHighlightID:(id)d destinationHighlightID:(id)iD
{
  changeCopy = change;
  dCopy = d;
  iDCopy = iD;
  if (!changeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSharedAssetsContainer.m" lineNumber:294 description:{@"Invalid parameter not satisfying: %@", @"relationshipKey"}];
  }

  if (!(dCopy | iDCopy))
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLSharedAssetsContainer.m" lineNumber:295 description:{@"Invalid parameter not satisfying: %@", @"sourceHighlightID != nil || destinationHighlightID != nil"}];
  }

  v11 = objc_alloc_init(PLSharedAssetsContainerIncrementalChangeHighlightContainerChange);
  [(PLSharedAssetsContainerIncrementalChangeHighlightContainerChange *)v11 setRelationshipKey:changeCopy];
  uRIRepresentation = [dCopy URIRepresentation];
  [(PLSharedAssetsContainerIncrementalChangeHighlightContainerChange *)v11 setSourceHighlightURI:uRIRepresentation];

  uRIRepresentation2 = [iDCopy URIRepresentation];
  [(PLSharedAssetsContainerIncrementalChangeHighlightContainerChange *)v11 setDestinationHighlightURI:uRIRepresentation2];

  v14 = [(NSArray *)self->_highlightContainerChanges arrayByAddingObject:v11];
  highlightContainerChanges = self->_highlightContainerChanges;
  self->_highlightContainerChanges = v14;
}

- (BOOL)hasChangesAffectingSharingComposition
{
  v16[2] = *MEMORY[0x1E69E9840];
  if ([(PLSharedAssetsContainerIncrementalChange *)self hasSharingChanges])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v16[0] = @"highlightBeingAssets";
    v16[1] = @"dayGroupHighlightBeingAssets";
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    highlightContainerChanges = [(PLSharedAssetsContainerIncrementalChange *)self highlightContainerChanges];
    v3 = [highlightContainerChanges countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(highlightContainerChanges);
          }

          relationshipKey = [*(*(&v11 + 1) + 8 * i) relationshipKey];
          v9 = [v4 containsObject:relationshipKey];

          if (v9)
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [highlightContainerChanges countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v3;
}

- (BOOL)hasChanges
{
  if ([(PLSharedAssetsContainerIncrementalChange *)self hasSharingOrSuggestionChanges]|| self->_collectionChangeType)
  {
    return 1;
  }

  highlightContainerChanges = [(PLSharedAssetsContainerIncrementalChange *)self highlightContainerChanges];
  v3 = [highlightContainerChanges count] != 0;

  return v3;
}

- (BOOL)hasSharingChanges
{
  if ([(PLSharedAssetsContainerIncrementalChange *)self collectionChangeType])
  {
    return 0;
  }

  highlightContainerChanges = [(PLSharedAssetsContainerIncrementalChange *)self highlightContainerChanges];
  if ([highlightContainerChanges count])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(PLSharedAssetsContainerIncrementalChange *)self sharingChange]!= 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setSharingChange:self->_sharingChange];
  [v4 setSuggestionStateChange:self->_suggestionStateChange];
  [v4 setMediaType:self->_mediaType];
  [v4 setCollectionChangeType:self->_collectionChangeType];
  v5 = [(NSArray *)self->_highlightContainerChanges copy];
  [v4 setHighlightContainerChanges:v5];

  [v4 setHasNoOtherAssetChangesRequiringMomentGeneration:self->_hasNoOtherAssetChangesRequiringMomentGeneration];
  return v4;
}

- (PLSharedAssetsContainerIncrementalChange)init
{
  v6.receiver = self;
  v6.super_class = PLSharedAssetsContainerIncrementalChange;
  v2 = [(PLSharedAssetsContainerIncrementalChange *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_suggestionStateChange = 0;
    v2->_collectionChangeType = 0;
    v2->_sharingChange = 0;
    highlightContainerChanges = v2->_highlightContainerChanges;
    v2->_highlightContainerChanges = MEMORY[0x1E695E0F0];

    v3->_hasNoOtherAssetChangesRequiringMomentGeneration = 0;
  }

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  collectionChangeType = [(PLSharedAssetsContainerIncrementalChange *)self collectionChangeType];
  sharingChange = [(PLSharedAssetsContainerIncrementalChange *)self sharingChange];
  suggestionStateChange = [(PLSharedAssetsContainerIncrementalChange *)self suggestionStateChange];
  mediaType = [(PLSharedAssetsContainerIncrementalChange *)self mediaType];
  hasNoOtherAssetChangesRequiringMomentGeneration = [(PLSharedAssetsContainerIncrementalChange *)self hasNoOtherAssetChangesRequiringMomentGeneration];
  highlightContainerChanges = [(PLSharedAssetsContainerIncrementalChange *)self highlightContainerChanges];
  if ([highlightContainerChanges count])
  {
    highlightContainerChanges2 = [(PLSharedAssetsContainerIncrementalChange *)self highlightContainerChanges];
    v12 = [highlightContainerChanges2 debugDescription];
    v13 = v3;
    v14 = v12;
    v15 = [v13 stringWithFormat:@"<%@: %p collectionChangeType = %d, sharingChange = %d, suggestionStateChange = %d, mediaType = %d, hasNoOtherAssetChangesRequiringMomentGeneration = %d, highlightContainerChanges = %@>", v4, self, collectionChangeType, sharingChange, suggestionStateChange, mediaType, hasNoOtherAssetChangesRequiringMomentGeneration, v12];;
  }

  else
  {
    v15 = [v3 stringWithFormat:@"<%@: %p collectionChangeType = %d, sharingChange = %d, suggestionStateChange = %d, mediaType = %d, hasNoOtherAssetChangesRequiringMomentGeneration = %d, highlightContainerChanges = %@>", v4, self, collectionChangeType, sharingChange, suggestionStateChange, mediaType, hasNoOtherAssetChangesRequiringMomentGeneration, &stru_1F0F06D80];;
  }

  return v15;
}

- (unint64_t)hash
{
  v2 = self->_sharingChange ^ self->_collectionChangeType ^ self->_suggestionStateChange ^ self->_mediaType;
  hasNoOtherAssetChangesRequiringMomentGeneration = self->_hasNoOtherAssetChangesRequiringMomentGeneration;
  return v2 ^ hasNoOtherAssetChangesRequiringMomentGeneration ^ [(NSArray *)self->_highlightContainerChanges hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      collectionChangeType = [(PLSharedAssetsContainerIncrementalChange *)self collectionChangeType];
      if (collectionChangeType == [(PLSharedAssetsContainerIncrementalChange *)v5 collectionChangeType]&& (v7 = [(PLSharedAssetsContainerIncrementalChange *)self sharingChange], v7 == [(PLSharedAssetsContainerIncrementalChange *)v5 sharingChange]) && (v8 = [(PLSharedAssetsContainerIncrementalChange *)self suggestionStateChange], v8 == [(PLSharedAssetsContainerIncrementalChange *)v5 suggestionStateChange]) && (v9 = [(PLSharedAssetsContainerIncrementalChange *)self mediaType], v9 == [(PLSharedAssetsContainerIncrementalChange *)v5 mediaType]) && (v10 = [(PLSharedAssetsContainerIncrementalChange *)self hasNoOtherAssetChangesRequiringMomentGeneration], v10 == [(PLSharedAssetsContainerIncrementalChange *)v5 hasNoOtherAssetChangesRequiringMomentGeneration]))
      {
        IsEqual = PLObjectIsEqual();
      }

      else
      {
        IsEqual = 0;
      }
    }

    else
    {
      IsEqual = 0;
    }
  }

  return IsEqual;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[PLSharedAssetsContainerIncrementalChange collectionChangeType](self forKey:{"collectionChangeType"), @"collectionChangeType"}];
  [coderCopy encodeInteger:-[PLSharedAssetsContainerIncrementalChange sharingChange](self forKey:{"sharingChange"), @"sharingChange"}];
  [coderCopy encodeInteger:-[PLSharedAssetsContainerIncrementalChange suggestionStateChange](self forKey:{"suggestionStateChange"), @"suggestionStateChange"}];
  [coderCopy encodeInteger:-[PLSharedAssetsContainerIncrementalChange mediaType](self forKey:{"mediaType"), @"mediaType"}];
  highlightContainerChanges = [(PLSharedAssetsContainerIncrementalChange *)self highlightContainerChanges];
  [coderCopy encodeObject:highlightContainerChanges forKey:@"highlightContainerChanges"];

  [coderCopy encodeBool:-[PLSharedAssetsContainerIncrementalChange hasNoOtherAssetChangesRequiringMomentGeneration](self forKey:{"hasNoOtherAssetChangesRequiringMomentGeneration"), @"hasNoOtherAssetChangesRequiringMomentGeneration"}];
}

- (PLSharedAssetsContainerIncrementalChange)initWithCoder:(id)coder
{
  v12[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PLSharedAssetsContainerIncrementalChange;
  v5 = [(PLSharedAssetsContainerIncrementalChange *)&v11 init];
  if (v5)
  {
    v5->_collectionChangeType = [coderCopy decodeIntegerForKey:@"collectionChangeType"];
    v5->_sharingChange = [coderCopy decodeIntegerForKey:@"sharingChange"];
    v5->_suggestionStateChange = [coderCopy decodeIntegerForKey:@"suggestionStateChange"];
    v5->_mediaType = [coderCopy decodeIntegerForKey:@"mediaType"];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:v12 count:2];
    for (i = 1; i != -1; --i)
    {
    }

    v8 = [coderCopy decodeObjectOfClasses:v6 forKey:@"highlightContainerChanges"];
    highlightContainerChanges = v5->_highlightContainerChanges;
    v5->_highlightContainerChanges = v8;

    v5->_hasNoOtherAssetChangesRequiringMomentGeneration = [coderCopy decodeBoolForKey:@"hasNoOtherAssetChangesRequiringMomentGeneration"];
    if (!v5->_highlightContainerChanges)
    {
      v5->_highlightContainerChanges = MEMORY[0x1E695E0F0];
    }
  }

  return v5;
}

@end