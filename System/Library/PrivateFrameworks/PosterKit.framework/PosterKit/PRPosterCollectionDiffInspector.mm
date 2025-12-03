@interface PRPosterCollectionDiffInspector
- (NSSet)addedAssocPosters;
- (NSSet)addedPosters;
- (NSSet)removedAssocPosters;
- (NSSet)removedPosters;
- (NSSet)updatedAssocPosters;
- (NSSet)updatedPosters;
- (PRPosterCollectionDiffInspector)initWithCollection:(id)collection newCollection:(id)newCollection;
- (id)description;
@end

@implementation PRPosterCollectionDiffInspector

- (PRPosterCollectionDiffInspector)initWithCollection:(id)collection newCollection:(id)newCollection
{
  v70 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  newCollectionCopy = newCollection;
  v10 = collectionCopy;
  if (v10)
  {
    NSClassFromString(&cfstr_Prpostercollec_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PRPosterCollectionDiffInspector initWithCollection:a2 newCollection:?];
    }
  }

  v11 = newCollectionCopy;
  NSClassFromString(&cfstr_Prpostercollec_0.isa);
  if (!v11)
  {
    [PRPosterCollectionDiffInspector initWithCollection:a2 newCollection:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterCollectionDiffInspector initWithCollection:a2 newCollection:?];
  }

  v67.receiver = self;
  v67.super_class = PRPosterCollectionDiffInspector;
  v12 = [(PRPosterCollectionDiffInspector *)&v67 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_lhsCollection, collection);
    objc_storeStrong(&v13->_rhsCollection, newCollection);
    if (v10)
    {
      orderedPosters = [(PRPosterCollection *)v13->_rhsCollection orderedPosters];
      orderedPosters2 = [(PRPosterCollection *)v13->_lhsCollection orderedPosters];
      v16 = [orderedPosters differenceFromOrderedSet:orderedPosters2 withOptions:0 usingEquivalenceTest:&__block_literal_global_107];
      postersDiff = v13->_postersDiff;
      v13->_postersDiff = v16;
    }

    else
    {
      orderedPosters = v13->_postersDiff;
      v13->_postersDiff = 0;
    }

    orderedPosters3 = [(PRPosterCollection *)v13->_lhsCollection orderedPosters];
    v19 = [orderedPosters3 set];
    orderedPosters4 = [(PRPosterCollection *)v13->_rhsCollection orderedPosters];
    v21 = [orderedPosters4 set];
    v13->_postersAreEqual = BSEqualObjects();

    v13->_orderedPostersAreEqual = ![(NSOrderedCollectionDifference *)v13->_postersDiff hasChanges];
    selectedPoster = [(PRPosterCollection *)v13->_lhsCollection selectedPoster];
    selectedPoster2 = [(PRPosterCollection *)v13->_rhsCollection selectedPoster];
    _path = [selectedPoster _path];
    serverIdentity = [_path serverIdentity];
    posterUUID = [serverIdentity posterUUID];
    _path2 = [selectedPoster2 _path];
    serverIdentity2 = [_path2 serverIdentity];
    posterUUID2 = [serverIdentity2 posterUUID];
    v57 = v11;
    v58 = v10;
    v55 = selectedPoster2;
    v56 = selectedPoster;
    if (BSEqualObjects())
    {
      _path3 = [selectedPoster _path];
      serverIdentity3 = [_path3 serverIdentity];
      _path4 = [selectedPoster2 _path];
      serverIdentity4 = [_path4 serverIdentity];
      v13->_selectedPostersAreEqual = [serverIdentity3 compare:serverIdentity4] == 0;
      p_selectedPostersAreEqual = &v13->_selectedPostersAreEqual;
    }

    else
    {
      v13->_selectedPostersAreEqual = 0;
      p_selectedPostersAreEqual = &v13->_selectedPostersAreEqual;
    }

    v33 = objc_opt_new();
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    orderedPosters5 = [(PRPosterCollection *)v13->_lhsCollection orderedPosters];
    v35 = [orderedPosters5 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v64;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v64 != v37)
          {
            objc_enumerationMutation(orderedPosters5);
          }

          p_selectedPostersAreEqual = [(PRPosterCollection *)v13->_lhsCollection associatedPosterForPoster:*(*(&v63 + 1) + 8 * i), p_selectedPostersAreEqual];
          if (p_selectedPostersAreEqual)
          {
            [v33 addObject:p_selectedPostersAreEqual];
          }
        }

        v36 = [orderedPosters5 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v36);
    }

    v40 = objc_opt_new();
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    orderedPosters6 = [(PRPosterCollection *)v13->_rhsCollection orderedPosters];
    v42 = [orderedPosters6 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v60;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v60 != v44)
          {
            objc_enumerationMutation(orderedPosters6);
          }

          p_selectedPostersAreEqual2 = [(PRPosterCollection *)v13->_rhsCollection associatedPosterForPoster:*(*(&v59 + 1) + 8 * j), p_selectedPostersAreEqual];
          if (p_selectedPostersAreEqual2)
          {
            [v40 addObject:p_selectedPostersAreEqual2];
          }
        }

        v43 = [orderedPosters6 countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v43);
    }

    v47 = [v40 differenceFromOrderedSet:v33 withOptions:0 usingEquivalenceTest:&__block_literal_global_110];
    assocPostersDiff = v13->_assocPostersDiff;
    v13->_assocPostersDiff = v47;

    v49 = [v40 set];
    v50 = [v33 set];
    v13->_associatedPostersAreEqual = [v49 isEqualToSet:v50];

    if (v13->_associatedPostersAreEqual)
    {
      v11 = v57;
      v10 = v58;
      v51 = *p_selectedPostersAreEqual && v13->_orderedPostersAreEqual && v13->_postersAreEqual;
    }

    else
    {
      v51 = 0;
      v11 = v57;
      v10 = v58;
    }

    v13->_isEqual = v51;
  }

  return v13;
}

uint64_t __68__PRPosterCollectionDiffInspector_initWithCollection_newCollection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 _path];
  v6 = [v5 serverIdentity];

  v7 = [v4 _path];

  v8 = [v7 serverIdentity];

  v9 = [v6 posterUUID];
  v10 = [v8 posterUUID];
  v11 = [v9 isEqual:v10];

  return v11;
}

uint64_t __68__PRPosterCollectionDiffInspector_initWithCollection_newCollection___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 _path];
  v6 = [v5 serverIdentity];
  v7 = [v6 posterUUID];
  v8 = [v4 _path];

  v9 = [v8 serverIdentity];
  v10 = [v9 posterUUID];
  v11 = [v7 isEqual:v10];

  return v11;
}

- (NSSet)removedPosters
{
  v26 = *MEMORY[0x1E69E9840];
  removedPosters = self->_removedPosters;
  if (removedPosters)
  {
    v3 = removedPosters;
  }

  else
  {
    v5 = MEMORY[0x1E695DFA8];
    removals = [(NSOrderedCollectionDifference *)self->_postersDiff removals];
    v7 = [removals bs_mapNoNulls:&__block_literal_global_113];
    v8 = [v5 setWithArray:v7];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [v8 copy];
    v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          insertions = [(NSOrderedCollectionDifference *)self->_postersDiff insertions];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __49__PRPosterCollectionDiffInspector_removedPosters__block_invoke_2;
          v20[3] = &unk_1E7844CB0;
          v20[4] = v13;
          v15 = [insertions bs_containsObjectPassingTest:v20];

          if (v15)
          {
            [v8 removeObject:v13];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    v16 = [v8 copy];
    v17 = self->_removedPosters;
    self->_removedPosters = v16;

    v3 = self->_removedPosters;
  }

  return v3;
}

uint64_t __49__PRPosterCollectionDiffInspector_removedPosters__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = [v3 pr_posterUUID];
  v5 = [*(a1 + 32) pr_posterUUID];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (NSSet)addedPosters
{
  v30 = *MEMORY[0x1E69E9840];
  addedPosters = self->_addedPosters;
  if (!addedPosters)
  {
    postersDiff = self->_postersDiff;
    if (postersDiff)
    {
      v5 = MEMORY[0x1E695DFA8];
      insertions = [(NSOrderedCollectionDifference *)postersDiff insertions];
      v7 = [insertions bs_map:&__block_literal_global_116];
      orderedPosters = [v5 setWithArray:v7];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = [orderedPosters copy];
      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v26;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v25 + 1) + 8 * i);
            removals = [(NSOrderedCollectionDifference *)self->_postersDiff removals];
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v24[2] = __47__PRPosterCollectionDiffInspector_addedPosters__block_invoke_2;
            v24[3] = &unk_1E7844CB0;
            v24[4] = v13;
            v15 = [removals bs_containsObjectPassingTest:v24];

            if (v15)
            {
              [orderedPosters removeObject:v13];
            }
          }

          v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v10);
      }

      v16 = [orderedPosters copy];
      v17 = self->_addedPosters;
      self->_addedPosters = v16;
    }

    else
    {
      orderedPosters = [(PRPosterCollection *)self->_rhsCollection orderedPosters];
      v18 = [orderedPosters set];
      v19 = [v18 copy];
      v20 = self->_addedPosters;
      self->_addedPosters = v19;
    }

    addedPosters = self->_addedPosters;
  }

  v21 = addedPosters;

  return v21;
}

uint64_t __47__PRPosterCollectionDiffInspector_addedPosters__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = [v3 pr_posterUUID];
  v5 = [*(a1 + 32) pr_posterUUID];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (NSSet)updatedPosters
{
  v29 = *MEMORY[0x1E69E9840];
  updatedPosters = self->_updatedPosters;
  if (updatedPosters)
  {
    v22 = updatedPosters;
  }

  else
  {
    v22 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = [(PRPosterCollection *)self->_lhsCollection orderedPosters];
    v4 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v25;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v24 + 1) + 8 * i);
          rhsCollection = self->_rhsCollection;
          _path = [v8 _path];
          serverIdentity = [_path serverIdentity];
          posterUUID = [serverIdentity posterUUID];
          v13 = [(PRPosterCollection *)rhsCollection posterWithUUID:posterUUID];

          if (v13)
          {
            _path2 = [v13 _path];
            serverIdentity2 = [_path2 serverIdentity];
            _path3 = [v8 _path];
            serverIdentity3 = [_path3 serverIdentity];
            v18 = [serverIdentity2 isNewerVersionOfIdentity:serverIdentity3];

            if (v18)
            {
              [(NSSet *)v22 addObject:v13];
            }
          }
        }

        v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v5);
    }

    v19 = [(NSSet *)v22 copy];
    v20 = self->_updatedPosters;
    self->_updatedPosters = v19;
  }

  return v22;
}

- (NSSet)updatedAssocPosters
{
  v37 = *MEMORY[0x1E69E9840];
  updatedAssocPosters = self->_updatedAssocPosters;
  if (updatedAssocPosters)
  {
    v3 = updatedAssocPosters;
  }

  else
  {
    selfCopy = self;
    v28 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    orderedPosters = [(PRPosterCollection *)selfCopy->_lhsCollection orderedPosters];
    v6 = [orderedPosters countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v33;
      do
      {
        v9 = 0;
        v29 = v7;
        do
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(orderedPosters);
          }

          v10 = *(*(&v32 + 1) + 8 * v9);
          rhsCollection = selfCopy->_rhsCollection;
          _path = [v10 _path];
          serverIdentity = [_path serverIdentity];
          posterUUID = [serverIdentity posterUUID];
          v15 = [(PRPosterCollection *)rhsCollection posterWithUUID:posterUUID];

          if (v15)
          {
            v16 = [(PRPosterCollection *)selfCopy->_lhsCollection associatedPosterForPoster:v10];
            if (v16)
            {
              v17 = [(PRPosterCollection *)selfCopy->_rhsCollection associatedPosterForPoster:v15];
              v18 = v17;
              if (v17)
              {
                _path2 = [v17 _path];
                serverIdentity2 = [_path2 serverIdentity];
                _path3 = [v16 _path];
                [_path3 serverIdentity];
                v21 = v8;
                v22 = selfCopy;
                v24 = v23 = orderedPosters;
                v30 = [serverIdentity2 isNewerVersionOfIdentity:v24];

                orderedPosters = v23;
                selfCopy = v22;
                v8 = v21;

                v7 = v29;
                if (v30)
                {
                  [v28 addObject:v18];
                }
              }
            }
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [orderedPosters countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v7);
    }

    v25 = [v28 copy];
    v26 = selfCopy->_updatedAssocPosters;
    selfCopy->_updatedAssocPosters = v25;

    v3 = selfCopy->_updatedAssocPosters;
  }

  return v3;
}

- (NSSet)removedAssocPosters
{
  v25 = *MEMORY[0x1E69E9840];
  removedAssocPosters = self->_removedAssocPosters;
  if (removedAssocPosters)
  {
    v3 = removedAssocPosters;
  }

  else
  {
    v5 = objc_opt_new();
    removals = [(NSOrderedCollectionDifference *)self->_assocPostersDiff removals];
    v7 = [removals bs_mapNoNulls:&__block_literal_global_118];
    [v5 addObjectsFromArray:v7];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [v5 copy];
    v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          insertions = [(NSOrderedCollectionDifference *)self->_assocPostersDiff insertions];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __54__PRPosterCollectionDiffInspector_removedAssocPosters__block_invoke_2;
          v19[3] = &unk_1E7844CB0;
          v19[4] = v12;
          v14 = [insertions bs_containsObjectPassingTest:v19];

          if (v14)
          {
            [v5 removeObject:v12];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    v15 = [v5 copy];
    v16 = self->_removedAssocPosters;
    self->_removedAssocPosters = v15;

    v3 = self->_removedAssocPosters;
  }

  return v3;
}

uint64_t __54__PRPosterCollectionDiffInspector_removedAssocPosters__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = [v3 pr_posterUUID];
  v5 = [*(a1 + 32) pr_posterUUID];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (NSSet)addedAssocPosters
{
  v25 = *MEMORY[0x1E69E9840];
  addedAssocPosters = self->_addedAssocPosters;
  if (addedAssocPosters)
  {
    v3 = addedAssocPosters;
  }

  else
  {
    v5 = objc_opt_new();
    insertions = [(NSOrderedCollectionDifference *)self->_assocPostersDiff insertions];
    v7 = [insertions bs_mapNoNulls:&__block_literal_global_120];
    [v5 addObjectsFromArray:v7];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [v5 copy];
    v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          removals = [(NSOrderedCollectionDifference *)self->_assocPostersDiff removals];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __52__PRPosterCollectionDiffInspector_addedAssocPosters__block_invoke_2;
          v19[3] = &unk_1E7844CB0;
          v19[4] = v12;
          v14 = [removals bs_containsObjectPassingTest:v19];

          if (v14)
          {
            [v5 removeObject:v12];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    v15 = [v5 copy];
    v16 = self->_addedAssocPosters;
    self->_addedAssocPosters = v15;

    v3 = self->_addedAssocPosters;
  }

  return v3;
}

uint64_t __52__PRPosterCollectionDiffInspector_addedAssocPosters__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 object];
  v4 = [v3 pr_posterUUID];
  v5 = [*(a1 + 32) pr_posterUUID];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  if ([(PRPosterCollectionDiffInspector *)self isEqual])
  {
    v4 = [v3 appendBool:1 withName:@"isEqual"];
  }

  else
  {
    if ([(PRPosterCollectionDiffInspector *)self selectedPostersAreEqual])
    {
      v5 = [v3 appendBool:1 withName:@"selectedPostersAreEqual"];
    }

    else
    {
      selectedPoster = [(PRPosterCollection *)self->_lhsCollection selectedPoster];
      selectedPoster2 = [(PRPosterCollection *)self->_rhsCollection selectedPoster];
      pr_posterUUID = [selectedPoster pr_posterUUID];
      v9 = [v3 appendObject:pr_posterUUID withName:@"previousSelectedPoster"];

      pr_posterUUID2 = [selectedPoster2 pr_posterUUID];
      v11 = [v3 appendObject:pr_posterUUID2 withName:@"newSelectedPoster"];
    }

    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __46__PRPosterCollectionDiffInspector_description__block_invoke;
    v17 = &unk_1E7843070;
    selfCopy = self;
    v19 = v3;
    [v19 appendBodySectionWithName:@"changes" multilinePrefix:@"\n" block:&v14];
  }

  build = [v3 build];

  return build;
}

void __46__PRPosterCollectionDiffInspector_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) addedPosters];
  v3 = [v2 count];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) addedPosters];
    v6 = [v5 valueForKey:@"pr_posterUUID"];
    v7 = [v4 appendObject:v6 withName:@"addedPosters"];
  }

  v8 = [*(a1 + 32) removedPosters];
  v9 = [v8 count];

  if (v9)
  {
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) removedPosters];
    v12 = [v11 valueForKey:@"pr_posterUUID"];
    v13 = [v10 appendObject:v12 withName:@"removedPosters"];
  }

  v14 = [*(a1 + 32) updatedPosters];
  v15 = [v14 count];

  if (v15)
  {
    v16 = *(a1 + 40);
    v17 = [*(a1 + 32) updatedPosters];
    v18 = [v17 valueForKey:@"pr_posterUUID"];
    v19 = [v16 appendObject:v18 withName:@"updatedPosters"];
  }

  v20 = [*(a1 + 32) addedAssocPosters];
  v21 = [v20 count];

  if (v21)
  {
    v22 = *(a1 + 40);
    v23 = [*(a1 + 32) addedAssocPosters];
    v24 = [v23 valueForKey:@"pr_posterUUID"];
    v25 = [v22 appendObject:v24 withName:@"addedAssocPosters"];
  }

  v26 = [*(a1 + 32) removedAssocPosters];
  v27 = [v26 count];

  if (v27)
  {
    v28 = *(a1 + 40);
    v29 = [*(a1 + 32) removedAssocPosters];
    v30 = [v29 valueForKey:@"pr_posterUUID"];
    v31 = [v28 appendObject:v30 withName:@"removedAssocPosters"];
  }

  v32 = [*(a1 + 32) updatedAssocPosters];
  v33 = [v32 count];

  if (v33)
  {
    v34 = *(a1 + 40);
    v37 = [*(a1 + 32) updatedAssocPosters];
    v35 = [v37 valueForKey:@"pr_posterUUID"];
    v36 = [v34 appendObject:v35 withName:@"updatedAssocPosters"];
  }
}

- (void)initWithCollection:(char *)a1 newCollection:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterCollectionClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithCollection:(char *)a1 newCollection:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterCollectionClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithCollection:(char *)a1 newCollection:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end