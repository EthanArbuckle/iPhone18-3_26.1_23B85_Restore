@interface PLSharedAssetsContainerIncrementalChange
- (BOOL)hasChanges;
- (BOOL)hasChangesAffectingSharingComposition;
- (BOOL)hasSharingChanges;
- (BOOL)isEqual:(id)a3;
- (PLSharedAssetsContainerIncrementalChange)init;
- (PLSharedAssetsContainerIncrementalChange)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)addHighlightContainerChange:(id)a3 sourceHighlightID:(id)a4 destinationHighlightID:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)mergeChangesFrom:(id)a3;
@end

@implementation PLSharedAssetsContainerIncrementalChange

- (void)mergeChangesFrom:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 collectionChangeType])
    {
      -[PLSharedAssetsContainerIncrementalChange setCollectionChangeType:](self, "setCollectionChangeType:", [v5 collectionChangeType]);
    }

    if ([v5 sharingChange])
    {
      if (-[PLSharedAssetsContainerIncrementalChange sharingChange](self, "sharingChange") == 1 && [v5 sharingChange] == 2 || -[PLSharedAssetsContainerIncrementalChange sharingChange](self, "sharingChange") == 2 && objc_msgSend(v5, "sharingChange") == 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = [v5 sharingChange];
      }

      [(PLSharedAssetsContainerIncrementalChange *)self setSharingChange:v6];
    }

    if ([v5 suggestionStateChange])
    {
      if (-[PLSharedAssetsContainerIncrementalChange suggestionStateChange](self, "suggestionStateChange") == 1 && [v5 suggestionStateChange] == 2 || -[PLSharedAssetsContainerIncrementalChange suggestionStateChange](self, "suggestionStateChange") == 2 && objc_msgSend(v5, "suggestionStateChange") == 1)
      {
        v7 = 0;
      }

      else
      {
        v7 = [v5 suggestionStateChange];
      }

      [(PLSharedAssetsContainerIncrementalChange *)self setSuggestionStateChange:v7];
    }

    -[PLSharedAssetsContainerIncrementalChange setMediaType:](self, "setMediaType:", [v5 mediaType]);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v5 highlightContainerChanges];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          v14 = [(PLSharedAssetsContainerIncrementalChange *)self highlightContainerChanges];
          v15 = [v14 containsObject:v13];

          if ((v15 & 1) == 0)
          {
            v16 = [(PLSharedAssetsContainerIncrementalChange *)self highlightContainerChanges];
            v17 = [v16 arrayByAddingObject:v13];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }
}

- (void)addHighlightContainerChange:(id)a3 sourceHighlightID:(id)a4 destinationHighlightID:(id)a5
{
  v18 = a3;
  v9 = a4;
  v10 = a5;
  if (!v18)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PLSharedAssetsContainer.m" lineNumber:294 description:{@"Invalid parameter not satisfying: %@", @"relationshipKey"}];
  }

  if (!(v9 | v10))
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PLSharedAssetsContainer.m" lineNumber:295 description:{@"Invalid parameter not satisfying: %@", @"sourceHighlightID != nil || destinationHighlightID != nil"}];
  }

  v11 = objc_alloc_init(PLSharedAssetsContainerIncrementalChangeHighlightContainerChange);
  [(PLSharedAssetsContainerIncrementalChangeHighlightContainerChange *)v11 setRelationshipKey:v18];
  v12 = [v9 URIRepresentation];
  [(PLSharedAssetsContainerIncrementalChangeHighlightContainerChange *)v11 setSourceHighlightURI:v12];

  v13 = [v10 URIRepresentation];
  [(PLSharedAssetsContainerIncrementalChangeHighlightContainerChange *)v11 setDestinationHighlightURI:v13];

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
    v5 = [(PLSharedAssetsContainerIncrementalChange *)self highlightContainerChanges];
    v3 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v3)
    {
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = [*(*(&v11 + 1) + 8 * i) relationshipKey];
          v9 = [v4 containsObject:v8];

          if (v9)
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

  v5 = [(PLSharedAssetsContainerIncrementalChange *)self highlightContainerChanges];
  v3 = [v5 count] != 0;

  return v3;
}

- (BOOL)hasSharingChanges
{
  if ([(PLSharedAssetsContainerIncrementalChange *)self collectionChangeType])
  {
    return 0;
  }

  v4 = [(PLSharedAssetsContainerIncrementalChange *)self highlightContainerChanges];
  if ([v4 count])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(PLSharedAssetsContainerIncrementalChange *)self sharingChange]!= 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v5 = [(PLSharedAssetsContainerIncrementalChange *)self collectionChangeType];
  v6 = [(PLSharedAssetsContainerIncrementalChange *)self sharingChange];
  v7 = [(PLSharedAssetsContainerIncrementalChange *)self suggestionStateChange];
  v8 = [(PLSharedAssetsContainerIncrementalChange *)self mediaType];
  v9 = [(PLSharedAssetsContainerIncrementalChange *)self hasNoOtherAssetChangesRequiringMomentGeneration];
  v10 = [(PLSharedAssetsContainerIncrementalChange *)self highlightContainerChanges];
  if ([v10 count])
  {
    v11 = [(PLSharedAssetsContainerIncrementalChange *)self highlightContainerChanges];
    v12 = [v11 debugDescription];
    v13 = v3;
    v14 = v12;
    v15 = [v13 stringWithFormat:@"<%@: %p collectionChangeType = %d, sharingChange = %d, suggestionStateChange = %d, mediaType = %d, hasNoOtherAssetChangesRequiringMomentGeneration = %d, highlightContainerChanges = %@>", v4, self, v5, v6, v7, v8, v9, v12];;
  }

  else
  {
    v15 = [v3 stringWithFormat:@"<%@: %p collectionChangeType = %d, sharingChange = %d, suggestionStateChange = %d, mediaType = %d, hasNoOtherAssetChangesRequiringMomentGeneration = %d, highlightContainerChanges = %@>", v4, self, v5, v6, v7, v8, v9, &stru_1F0F06D80];;
  }

  return v15;
}

- (unint64_t)hash
{
  v2 = self->_sharingChange ^ self->_collectionChangeType ^ self->_suggestionStateChange ^ self->_mediaType;
  hasNoOtherAssetChangesRequiringMomentGeneration = self->_hasNoOtherAssetChangesRequiringMomentGeneration;
  return v2 ^ hasNoOtherAssetChangesRequiringMomentGeneration ^ [(NSArray *)self->_highlightContainerChanges hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    IsEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PLSharedAssetsContainerIncrementalChange *)self collectionChangeType];
      if (v6 == [(PLSharedAssetsContainerIncrementalChange *)v5 collectionChangeType]&& (v7 = [(PLSharedAssetsContainerIncrementalChange *)self sharingChange], v7 == [(PLSharedAssetsContainerIncrementalChange *)v5 sharingChange]) && (v8 = [(PLSharedAssetsContainerIncrementalChange *)self suggestionStateChange], v8 == [(PLSharedAssetsContainerIncrementalChange *)v5 suggestionStateChange]) && (v9 = [(PLSharedAssetsContainerIncrementalChange *)self mediaType], v9 == [(PLSharedAssetsContainerIncrementalChange *)v5 mediaType]) && (v10 = [(PLSharedAssetsContainerIncrementalChange *)self hasNoOtherAssetChangesRequiringMomentGeneration], v10 == [(PLSharedAssetsContainerIncrementalChange *)v5 hasNoOtherAssetChangesRequiringMomentGeneration]))
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

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[PLSharedAssetsContainerIncrementalChange collectionChangeType](self forKey:{"collectionChangeType"), @"collectionChangeType"}];
  [v5 encodeInteger:-[PLSharedAssetsContainerIncrementalChange sharingChange](self forKey:{"sharingChange"), @"sharingChange"}];
  [v5 encodeInteger:-[PLSharedAssetsContainerIncrementalChange suggestionStateChange](self forKey:{"suggestionStateChange"), @"suggestionStateChange"}];
  [v5 encodeInteger:-[PLSharedAssetsContainerIncrementalChange mediaType](self forKey:{"mediaType"), @"mediaType"}];
  v4 = [(PLSharedAssetsContainerIncrementalChange *)self highlightContainerChanges];
  [v5 encodeObject:v4 forKey:@"highlightContainerChanges"];

  [v5 encodeBool:-[PLSharedAssetsContainerIncrementalChange hasNoOtherAssetChangesRequiringMomentGeneration](self forKey:{"hasNoOtherAssetChangesRequiringMomentGeneration"), @"hasNoOtherAssetChangesRequiringMomentGeneration"}];
}

- (PLSharedAssetsContainerIncrementalChange)initWithCoder:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PLSharedAssetsContainerIncrementalChange;
  v5 = [(PLSharedAssetsContainerIncrementalChange *)&v11 init];
  if (v5)
  {
    v5->_collectionChangeType = [v4 decodeIntegerForKey:@"collectionChangeType"];
    v5->_sharingChange = [v4 decodeIntegerForKey:@"sharingChange"];
    v5->_suggestionStateChange = [v4 decodeIntegerForKey:@"suggestionStateChange"];
    v5->_mediaType = [v4 decodeIntegerForKey:@"mediaType"];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:v12 count:2];
    for (i = 1; i != -1; --i)
    {
    }

    v8 = [v4 decodeObjectOfClasses:v6 forKey:@"highlightContainerChanges"];
    highlightContainerChanges = v5->_highlightContainerChanges;
    v5->_highlightContainerChanges = v8;

    v5->_hasNoOtherAssetChangesRequiringMomentGeneration = [v4 decodeBoolForKey:@"hasNoOtherAssetChangesRequiringMomentGeneration"];
    if (!v5->_highlightContainerChanges)
    {
      v5->_highlightContainerChanges = MEMORY[0x1E695E0F0];
    }
  }

  return v5;
}

@end