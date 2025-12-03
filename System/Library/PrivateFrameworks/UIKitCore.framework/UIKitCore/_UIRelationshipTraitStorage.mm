@interface _UIRelationshipTraitStorage
- (_UIRelationshipTraitStorage)initWithCoder:(id)coder;
- (_UIRelationshipTraitStorage)initWithObject:(id)object keyPath:(id)path relationshipCandidates:(id)candidates;
- (id)_propertyDescriptionString;
- (void)addRecordWithTraitCollection:(id)collection addedObjects:(id)objects removedObjects:(id)removedObjects;
- (void)applyRecordsMatchingTraitCollection:(id)collection;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIRelationshipTraitStorage

- (_UIRelationshipTraitStorage)initWithObject:(id)object keyPath:(id)path relationshipCandidates:(id)candidates
{
  candidatesCopy = candidates;
  v13.receiver = self;
  v13.super_class = _UIRelationshipTraitStorage;
  v9 = [(_UITraitStorage *)&v13 initWithObject:object keyPath:path];
  if (v9)
  {
    v10 = [candidatesCopy copy];
    relationshipCandidates = v9->_relationshipCandidates;
    v9->_relationshipCandidates = v10;
  }

  return v9;
}

- (_UIRelationshipTraitStorage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _UIRelationshipTraitStorage;
  v5 = [(_UITraitStorage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UIRelationshipCandidates"];
    relationshipCandidates = v5->_relationshipCandidates;
    v5->_relationshipCandidates = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIRelationshipTraitStorage;
  coderCopy = coder;
  [(_UITraitStorage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_relationshipCandidates forKey:{@"UIRelationshipCandidates", v5.receiver, v5.super_class}];
}

- (void)addRecordWithTraitCollection:(id)collection addedObjects:(id)objects removedObjects:(id)removedObjects
{
  v28 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  objectsCopy = objects;
  removedObjectsCopy = removedObjects;
  v12 = [(NSOrderedSet *)self->_relationshipCandidates set];
  v13 = [objectsCopy isSubsetOfSet:v12];

  if ((v13 & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITraitStorage.m" lineNumber:407 description:@"Can only add known relationship candidates."];
  }

  v14 = [(NSOrderedSet *)self->_relationshipCandidates set];
  v15 = [removedObjectsCopy isSubsetOfSet:v14];

  if ((v15 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITraitStorage.m" lineNumber:408 description:@"Can only remove known relationship candidates."];
  }

  if ([objectsCopy intersectsSet:removedObjectsCopy])
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UITraitStorage.m" lineNumber:409 description:@"Can't both add and remove an object."];
  }

  _traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified = [(UITraitCollection *)collectionCopy _traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified];
  if (_traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified)
  {
    _UIIsPrivateMainBundle();
    if (dyld_program_sdk_at_least())
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      _traitsDescription = [_traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified _traitsDescription];
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"_UITraitStorage.m" lineNumber:411 description:{@"Invalid trait collection for trait storage, as it contains non-default values for the following traits that cannot represent unspecified values: %@", _traitsDescription}];

      goto LABEL_8;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v24 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_15;
      }

      _traitsDescription2 = [_traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified _traitsDescription];
      *buf = 138412290;
      v27 = _traitsDescription2;
      _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "Invalid trait collection for trait storage, as it contains non-default values for the following traits that cannot represent unspecified values: %@ This will become an assert in a future version.", buf, 0xCu);
    }

    else
    {
      v23 = *(__UILogGetCategoryCachedImpl("Assert", &addRecordWithTraitCollection_addedObjects_removedObjects____s_category) + 8);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      v24 = v23;
      _traitsDescription2 = [_traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified _traitsDescription];
      *buf = 138412290;
      v27 = _traitsDescription2;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Invalid trait collection for trait storage, as it contains non-default values for the following traits that cannot represent unspecified values: %@ This will become an assert in a future version.", buf, 0xCu);
    }

LABEL_15:
  }

LABEL_8:
  v17 = [[_UIRelationshipTraitStorageRecord alloc] initWithTraitCollection:collectionCopy addedObjects:objectsCopy removedObjects:removedObjectsCopy];
  [(_UITraitStorage *)self addRecord:v17];
}

- (void)applyRecordsMatchingTraitCollection:(id)collection
{
  v39 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v5 = [(NSOrderedSet *)self->_relationshipCandidates mutableCopy];
  object = [(_UITraitStorage *)self object];
  keyPath = [(_UITraitStorage *)self keyPath];
  v8 = [object valueForKeyPath:keyPath];
  v9 = v5;
  v10 = v8;
  if ([v10 count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [v10 objectAtIndex:v11];
      if ([v9 containsObject:v12])
      {
        break;
      }

      [v9 insertObject:v12 atIndex:v11];

      if (++v11 >= [v10 count])
      {
        goto LABEL_7;
      }
    }
  }

LABEL_7:
  v13 = [v10 count];
  if (v13 >= 1)
  {
    v14 = v13;
    do
    {
      v15 = v14 - 1;
      v16 = [v10 objectAtIndex:v14 - 1];
      if (([v9 containsObject:v16] & 1) == 0)
      {
        if (v14 == [v10 count])
        {
          [v9 addObject:v16];
        }

        else
        {
          v17 = [v10 objectAtIndex:v14];
          [v9 insertObject:v16 atIndex:{objc_msgSend(v9, "indexOfObject:", v17)}];
        }
      }

      v14 = v15;
    }

    while ((v15 + 1) > 1);
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  selfCopy = self;
  records = [(_UITraitStorage *)self records];
  v20 = [records countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(records);
        }

        v24 = *(*(&v34 + 1) + 8 * i);
        traitCollection = [v24 traitCollection];
        v26 = traitCollection;
        if (!collectionCopy || traitCollection)
        {
          v27 = [(UITraitCollection *)collectionCopy _containsTraitsInCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly:traitCollection];

          if (!v27)
          {
            continue;
          }
        }

        addedObjects = [v24 addedObjects];
        [v18 minusSet:addedObjects];

        removedObjects = [v24 removedObjects];
        [v18 unionSet:removedObjects];
      }

      v21 = [records countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v21);
  }

  [v9 minusSet:v18];
  object2 = [(_UITraitStorage *)selfCopy object];
  array = [v9 array];
  keyPath2 = [(_UITraitStorage *)selfCopy keyPath];
  [object2 _uikit_applyValueFromTraitStorage:array forKeyPath:keyPath2];
}

- (id)_propertyDescriptionString
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = _UIRelationshipTraitStorage;
  _propertyDescriptionString = [(_UITraitStorage *)&v7 _propertyDescriptionString];
  v5 = [v3 stringWithFormat:@"%@, relationshipCandidates=%@", _propertyDescriptionString, self->_relationshipCandidates];

  return v5;
}

@end