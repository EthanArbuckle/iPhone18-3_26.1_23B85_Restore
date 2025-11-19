@interface PSSearchResults
- (BOOL)removeEntry:(id)a3;
- (PSSearchResults)init;
- (id)_initForCopyWithSectionEntries:(id)a3 entriesBySection:(id)a4 explicitlyAddedSectionEntries:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)entriesInSectionAtIndex:(unint64_t)a3;
- (id)entryAtIndexPath:(id)a3;
- (id)resultsByMergingWithResults:(id)a3;
- (id)sectionEntryAtIndex:(unint64_t)a3;
- (unint64_t)numberOfEntriesInSectionAtIndex:(unint64_t)a3;
- (unint64_t)removeEntries:(id)a3;
- (unint64_t)totalNumberOfEntries;
- (void)addEntries:(id)a3;
- (void)addEntry:(id)a3;
- (void)mergeWithResults:(id)a3;
- (void)setEntryComparator:(id)a3;
- (void)setSectionComparator:(id)a3;
- (void)sortResults;
@end

@implementation PSSearchResults

- (PSSearchResults)init
{
  v10.receiver = self;
  v10.super_class = PSSearchResults;
  v2 = [(PSSearchResults *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sectionEntries = v2->_sectionEntries;
    v2->_sectionEntries = v3;

    v5 = objc_opt_new();
    entriesBySection = v2->_entriesBySection;
    v2->_entriesBySection = v5;

    v7 = objc_opt_new();
    explicitlyAddedSectionEntries = v2->_explicitlyAddedSectionEntries;
    v2->_explicitlyAddedSectionEntries = v7;
  }

  return v2;
}

- (id)_initForCopyWithSectionEntries:(id)a3 entriesBySection:(id)a4 explicitlyAddedSectionEntries:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PSSearchResults;
  v12 = [(PSSearchResults *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_sectionEntries, a3);
    objc_storeStrong(p_isa + 2, a5);
    objc_storeStrong(p_isa + 3, a4);
  }

  return p_isa;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MEMORY[0x1E695DF70] arrayWithArray:self->_sectionEntries];
  v5 = [MEMORY[0x1E695DFA8] setWithSet:self->_explicitlyAddedSectionEntries];
  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_entriesBySection, "count")}];
  entriesBySection = self->_entriesBySection;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __32__PSSearchResults_copyWithZone___block_invoke;
  v15[3] = &unk_1E71DDB98;
  v16 = v6;
  v8 = v6;
  [(NSMutableDictionary *)entriesBySection enumerateKeysAndObjectsUsingBlock:v15];
  v9 = [[PSSearchResults alloc] _initForCopyWithSectionEntries:v4 entriesBySection:v8 explicitlyAddedSectionEntries:v5];
  v10 = [self->_sectionComparator copy];
  v11 = v9[5];
  v9[5] = v10;

  v12 = [self->_entryComparator copy];
  v13 = v9[6];
  v9[6] = v12;

  *(v9 + 32) = self->_needsSorting;
  return v9;
}

void __32__PSSearchResults_copyWithZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 mutableCopy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (void)addEntry:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v13 = v4;
    if ([v4 isSectionEntry])
    {
      v6 = [(NSMutableArray *)self->_sectionEntries containsObject:v13];
      v5 = v13;
      if ((v6 & 1) == 0)
      {
        [(NSMutableArray *)self->_sectionEntries addObject:v13];
        [(NSMutableSet *)self->_explicitlyAddedSectionEntries addObject:v13];
        v5 = v13;
        self->_needsSorting = 1;
      }
    }

    else
    {
      v7 = [v13 sectionEntry];
      if (v7)
      {
        entriesBySection = self->_entriesBySection;
        v9 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v7];
        v10 = [(NSMutableDictionary *)entriesBySection objectForKeyedSubscript:v9];

        if (v10)
        {
          [v10 addObject:v13];
          self->_needsSorting = 1;
        }

        else
        {
          v10 = [MEMORY[0x1E695DF70] arrayWithObject:v13];
          v11 = self->_entriesBySection;
          v12 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v7];
          [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];
        }

        if (([(NSMutableArray *)self->_sectionEntries containsObject:v7]& 1) == 0)
        {
          [(NSMutableArray *)self->_sectionEntries addObject:v7];
          self->_needsSorting = 1;
        }
      }

      v5 = v13;
    }
  }
}

- (void)addEntries:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PSSearchResults *)self addEntry:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)removeEntry:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  if (![v4 isSectionEntry])
  {
    v8 = [v5 sectionEntry];
    if (v8)
    {
      entriesBySection = self->_entriesBySection;
      v10 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v8];
      v11 = [(NSMutableDictionary *)entriesBySection objectForKeyedSubscript:v10];

      if ([v11 count] && (v12 = objc_msgSend(v11, "indexOfObject:", v5), v12 != 0x7FFFFFFFFFFFFFFFLL))
      {
        [v11 removeObjectAtIndex:v12];
        if (![v11 count] && (-[NSMutableSet containsObject:](self->_explicitlyAddedSectionEntries, "containsObject:", v8) & 1) == 0)
        {
          v14 = self->_entriesBySection;
          v15 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v8];
          [(NSMutableDictionary *)v14 removeObjectForKey:v15];

          [(NSMutableArray *)self->_sectionEntries removeObject:v8];
        }

        v7 = 1;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_18;
  }

  v6 = [(NSMutableArray *)self->_sectionEntries indexOfObject:v5];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v6;
    v8 = [(PSSearchResults *)self entriesInSectionAtIndex:v6];
    if (![v8 count])
    {
      [(NSMutableArray *)self->_sectionEntries removeObjectAtIndex:v13];
    }

    [(NSMutableSet *)self->_explicitlyAddedSectionEntries removeObject:v5];
    v7 = 1;
LABEL_18:

    goto LABEL_19;
  }

LABEL_4:
  v7 = 0;
LABEL_19:

  return v7;
}

- (unint64_t)removeEntries:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 += [(PSSearchResults *)self removeEntry:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)numberOfEntriesInSectionAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_sectionEntries count]<= a3)
  {
    return 0;
  }

  v5 = [(PSSearchResults *)self entriesInSectionAtIndex:a3];
  v6 = [v5 count];

  return v6;
}

- (unint64_t)totalNumberOfEntries
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(PSSearchResults *)self numberOfSectionEntries];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMutableDictionary *)self->_entriesBySection allValues];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3 += [*(*(&v10 + 1) + 8 * v8++) count];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)sectionEntryAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_sectionEntries count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_sectionEntries objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (id)entriesInSectionAtIndex:(unint64_t)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableArray *)self->_sectionEntries count];
  v6 = MEMORY[0x1E695E0F0];
  if (v5 > a3)
  {
    v7 = [(NSMutableArray *)self->_sectionEntries objectAtIndexedSubscript:a3];
    entriesBySection = self->_entriesBySection;
    v9 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v7];
    v10 = [(NSMutableDictionary *)entriesBySection objectForKeyedSubscript:v9];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }

    v13 = v12;

    if (self->_treatSectionEntriesAsRegularEntries)
    {
      v18[0] = v7;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v6 = [v14 arrayByAddingObjectsFromArray:v13];
    }

    else
    {
      if ([v13 count])
      {
        v15 = v13;
      }

      else
      {
        v17 = v7;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
      }

      v6 = v15;
    }
  }

  return v6;
}

- (id)entryAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[PSSearchResults entriesInSectionAtIndex:](self, "entriesInSectionAtIndex:", [v4 section]);
  v6 = [v4 item];

  if (v6 >= [v5 count])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndexedSubscript:v6];
  }

  return v7;
}

- (void)sortResults
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_needsSorting)
  {
    if (self->_sectionComparator)
    {
      sectionComparator = self->_sectionComparator;
    }

    else
    {
      sectionComparator = &__block_literal_global_22;
    }

    v4 = _Block_copy(sectionComparator);
    if (self->_entryComparator)
    {
      entryComparator = self->_entryComparator;
    }

    else
    {
      entryComparator = &__block_literal_global_22;
    }

    v6 = _Block_copy(entryComparator);
    [(NSMutableArray *)self->_sectionEntries sortUsingComparator:v4];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(NSMutableDictionary *)self->_entriesBySection allValues];
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) sortUsingComparator:v6];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

uint64_t __30__PSSearchResults_sortResults__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (void)setSectionComparator:(id)a3
{
  if (self->_sectionComparator != a3)
  {
    v4 = [a3 copy];
    sectionComparator = self->_sectionComparator;
    self->_sectionComparator = v4;

    self->_needsSorting = 1;
  }
}

- (void)setEntryComparator:(id)a3
{
  if (self->_entryComparator != a3)
  {
    v4 = [a3 copy];
    entryComparator = self->_entryComparator;
    self->_entryComparator = v4;

    self->_needsSorting = 1;
  }
}

- (void)mergeWithResults:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = *(a3 + 1);
    v6 = a3;
    v7 = [v4 setWithArray:v5];
    v8 = [MEMORY[0x1E695DFD8] setWithArray:self->_sectionEntries];
    v9 = [v8 setByAddingObjectsFromSet:v7];

    v10 = objc_alloc(MEMORY[0x1E695DF70]);
    v11 = [v9 allObjects];
    v12 = [v10 initWithArray:v11];
    sectionEntries = self->_sectionEntries;
    self->_sectionEntries = v12;

    v14 = v6[3];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __36__PSSearchResults_mergeWithResults___block_invoke;
    v17[3] = &unk_1E71DDB98;
    v17[4] = self;
    [v14 enumerateKeysAndObjectsUsingBlock:v17];
    explicitlyAddedSectionEntries = self->_explicitlyAddedSectionEntries;
    v16 = v6[2];

    [(NSMutableSet *)explicitlyAddedSectionEntries unionSet:v16];
    self->_needsSorting = 1;
  }
}

void __36__PSSearchResults_mergeWithResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(*(a1 + 32) + 24);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v9];
  v8 = v7;
  if (v7)
  {
    [v7 addObjectsFromArray:v6];
  }

  else
  {
    [*(*(a1 + 32) + 24) setObject:v6 forKeyedSubscript:v9];
  }
}

- (id)resultsByMergingWithResults:(id)a3
{
  v4 = a3;
  v5 = [(PSSearchResults *)self copy];
  [v5 mergeWithResults:v4];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableDictionary count](self->_entriesBySection, "count")}];
  entriesBySection = self->_entriesBySection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __30__PSSearchResults_description__block_invoke;
  v11[3] = &unk_1E71DDBE0;
  v12 = v3;
  v5 = v3;
  [(NSMutableDictionary *)entriesBySection enumerateKeysAndObjectsUsingBlock:v11];
  v6 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = PSSearchResults;
  v7 = [(PSSearchResults *)&v10 description];
  v8 = [v6 stringWithFormat:@"%@ %@", v7, v5];

  return v8;
}

void __30__PSSearchResults_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [a2 nonretainedObjectValue];
  v6 = [v7 description];
  [v4 setObject:v5 forKeyedSubscript:v6];
}

@end