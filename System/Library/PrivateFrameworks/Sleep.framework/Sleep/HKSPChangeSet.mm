@interface HKSPChangeSet
- (BOOL)hasChangeForPropertyIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HKSPChangeSet)initWithChangeDictionary:(id)a3;
- (HKSPChangeSet)initWithCoder:(id)a3;
- (NSArray)changes;
- (NSSet)topLevelChangeKeys;
- (id)changedValueForPropertyIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deepCopy;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)originalValueForPropertyIdentifier:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)addChange:(id)a3;
- (void)applyChangeSet:(id)a3;
@end

@implementation HKSPChangeSet

- (HKSPChangeSet)initWithChangeDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKSPChangeSet;
  v5 = [(HKSPChangeSet *)&v10 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    changeDictionary = v5->_changeDictionary;
    v5->_changeDictionary = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(HKSPChangeSet);
  v5 = [(HKSPChangeSet *)self changeDictionary];
  v6 = [v5 mutableCopy];
  changeDictionary = v4->_changeDictionary;
  v4->_changeDictionary = v6;

  return v4;
}

- (id)deepCopy
{
  v3 = objc_alloc_init(HKSPChangeSet);
  v4 = [(NSMutableDictionary *)self->_changeDictionary na_dictionaryByMappingValues:&__block_literal_global_4];
  v5 = [v4 mutableCopy];
  changeDictionary = v3->_changeDictionary;
  v3->_changeDictionary = v5;

  return v3;
}

- (HKSPChangeSet)initWithCoder:(id)a3
{
  v15[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HKSPChangeSet;
  v5 = [(HKSPChangeSet *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v15[3] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"HKSPChanges"];
    changeDictionary = v5->_changeDictionary;
    v5->_changeDictionary = v9;

    v11 = v5;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [MEMORY[0x277CF0C20] builderWithObject:v5 ofExpectedClass:objc_opt_class()];
      changeDictionary = self->_changeDictionary;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __25__HKSPChangeSet_isEqual___block_invoke;
      v12[3] = &unk_279C74410;
      v13 = v5;
      v8 = v5;
      v9 = [v6 appendObject:changeDictionary counterpart:v12];
      v10 = [v6 isEqual];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)addChange:(id)a3
{
  changeDictionary = self->_changeDictionary;
  v4 = a3;
  v6 = [v4 property];
  v5 = [v6 identifier];
  [(NSMutableDictionary *)changeDictionary setObject:v4 forKeyedSubscript:v5];
}

- (void)applyChangeSet:(id)a3
{
  v4 = [a3 changes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__HKSPChangeSet_applyChangeSet___block_invoke;
  v5[3] = &unk_279C74438;
  v5[4] = self;
  [v4 na_each:v5];
}

- (NSArray)changes
{
  v2 = [(NSMutableDictionary *)self->_changeDictionary allValues];
  v3 = [v2 copy];

  return v3;
}

- (NSSet)topLevelChangeKeys
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSMutableDictionary *)self->_changeDictionary allKeys];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (BOOL)hasChangeForPropertyIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_changeDictionary objectForKeyedSubscript:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)changedValueForPropertyIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_changeDictionary objectForKeyedSubscript:a3];
  v4 = [v3 changedValue];

  return v4;
}

- (id)originalValueForPropertyIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_changeDictionary objectForKeyedSubscript:a3];
  v4 = [v3 originalValue];

  return v4;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [(HKSPChangeSet *)self changes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __21__HKSPChangeSet_hash__block_invoke;
  v8[3] = &unk_279C74438;
  v9 = v3;
  v5 = v3;
  [v4 na_each:v8];

  v6 = [v5 hash];
  return v6;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HKSPChangeSet *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x277CF0C00];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v7 = [(HKSPChangeSet *)self changes];
  [v6 appendArraySection:v7 withName:@"changes" multilinePrefix:v5 skipIfEmpty:0];

  return v6;
}

- (id)succinctDescription
{
  v2 = [(HKSPChangeSet *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(HKSPChangeSet *)self changes];
  v5 = [v3 appendInteger:objc_msgSend(v4 withName:{"count"), @"changes"}];

  return v3;
}

@end