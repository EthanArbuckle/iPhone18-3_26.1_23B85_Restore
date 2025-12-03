@interface PKSettingsTableViewConfiguration
- (NSArray)sections;
- (PKSettingsTableViewConfiguration)init;
- (id)rowForItemIdentifier:(id)identifier;
- (id)rowsForSection:(id)section;
- (id)sectionForSectionIdentifier:(id)identifier;
- (void)appendSection:(id)section rows:(id)rows;
- (void)diff:(id)diff updatedIdentifiers:(id *)identifiers;
@end

@implementation PKSettingsTableViewConfiguration

- (PKSettingsTableViewConfiguration)init
{
  v8.receiver = self;
  v8.super_class = PKSettingsTableViewConfiguration;
  v2 = [(PKSettingsTableViewConfiguration *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    rowsForIdentifier = v2->_rowsForIdentifier;
    v2->_rowsForIdentifier = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sectionsForIdentifier = v2->_sectionsForIdentifier;
    v2->_sectionsForIdentifier = v5;
  }

  return v2;
}

- (void)appendSection:(id)section rows:(id)rows
{
  v15[1] = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  rowsCopy = rows;
  if (!self->_currentSnapshot)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69955A0]);
    currentSnapshot = self->_currentSnapshot;
    self->_currentSnapshot = v8;
  }

  identifier = [sectionCopy identifier];
  [(NSMutableDictionary *)self->_sectionsForIdentifier setObject:sectionCopy forKey:identifier];
  v11 = [rowsCopy pk_arrayByApplyingBlock:&__block_literal_global];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__PKSettingsTableViewConfiguration_appendSection_rows___block_invoke_2;
  v14[3] = &unk_1E8010B98;
  v14[4] = self;
  [rowsCopy enumerateObjectsUsingBlock:v14];
  v12 = self->_currentSnapshot;
  v15[0] = identifier;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [(NSDiffableDataSourceSnapshot *)v12 appendSectionsWithIdentifiers:v13];

  [(NSDiffableDataSourceSnapshot *)self->_currentSnapshot appendItemsWithIdentifiers:v11 intoSectionWithIdentifier:identifier];
}

void __55__PKSettingsTableViewConfiguration_appendSection_rows___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = a2;
  v4 = [v3 identifier];
  [v2 setObject:v3 forKey:v4];
}

- (id)rowForItemIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(NSMutableDictionary *)self->_rowsForIdentifier objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)sectionForSectionIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(NSMutableDictionary *)self->_sectionsForIdentifier objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)sections
{
  sectionIdentifiers = [(NSDiffableDataSourceSnapshot *)self->_currentSnapshot sectionIdentifiers];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PKSettingsTableViewConfiguration_sections__block_invoke;
  v6[3] = &unk_1E8010BC0;
  v6[4] = self;
  v4 = [sectionIdentifiers pk_arrayByApplyingBlock:v6];

  return v4;
}

- (id)rowsForSection:(id)section
{
  currentSnapshot = self->_currentSnapshot;
  identifier = [section identifier];
  v6 = [(NSDiffableDataSourceSnapshot *)currentSnapshot itemIdentifiersInSectionWithIdentifier:identifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__PKSettingsTableViewConfiguration_rowsForSection___block_invoke;
  v9[3] = &unk_1E8010BE8;
  v9[4] = self;
  v7 = [v6 pk_arrayByApplyingBlock:v9];

  return v7;
}

- (void)diff:(id)diff updatedIdentifiers:(id *)identifiers
{
  if (diff && identifiers)
  {
    v6 = MEMORY[0x1E695DFA8];
    diffCopy = diff;
    v8 = objc_alloc_init(v6);
    v9 = diffCopy[1];

    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __60__PKSettingsTableViewConfiguration_diff_updatedIdentifiers___block_invoke;
    v14 = &unk_1E8010C10;
    selfCopy = self;
    v10 = v8;
    v16 = v10;
    [v9 enumerateKeysAndObjectsUsingBlock:&v11];
    if ([v10 count])
    {
      *identifiers = [v10 copy];
    }
  }
}

void __60__PKSettingsTableViewConfiguration_diff_updatedIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) objectForKey:v7];
  if (v6 && (PKEqualObjects() & 1) == 0)
  {
    [*(a1 + 40) addObject:v7];
  }
}

@end