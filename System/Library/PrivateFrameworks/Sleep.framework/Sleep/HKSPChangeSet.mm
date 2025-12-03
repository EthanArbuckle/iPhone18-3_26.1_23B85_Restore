@interface HKSPChangeSet
- (BOOL)hasChangeForPropertyIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (HKSPChangeSet)initWithChangeDictionary:(id)dictionary;
- (HKSPChangeSet)initWithCoder:(id)coder;
- (NSArray)changes;
- (NSSet)topLevelChangeKeys;
- (id)changedValueForPropertyIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deepCopy;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)originalValueForPropertyIdentifier:(id)identifier;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)addChange:(id)change;
- (void)applyChangeSet:(id)set;
@end

@implementation HKSPChangeSet

- (HKSPChangeSet)initWithChangeDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = HKSPChangeSet;
  v5 = [(HKSPChangeSet *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy mutableCopy];
    changeDictionary = v5->_changeDictionary;
    v5->_changeDictionary = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HKSPChangeSet);
  changeDictionary = [(HKSPChangeSet *)self changeDictionary];
  v6 = [changeDictionary mutableCopy];
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

- (HKSPChangeSet)initWithCoder:(id)coder
{
  v15[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
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
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HKSPChanges"];
    changeDictionary = v5->_changeDictionary;
    v5->_changeDictionary = v9;

    v11 = v5;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (void)addChange:(id)change
{
  changeDictionary = self->_changeDictionary;
  changeCopy = change;
  property = [changeCopy property];
  identifier = [property identifier];
  [(NSMutableDictionary *)changeDictionary setObject:changeCopy forKeyedSubscript:identifier];
}

- (void)applyChangeSet:(id)set
{
  changes = [set changes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__HKSPChangeSet_applyChangeSet___block_invoke;
  v5[3] = &unk_279C74438;
  v5[4] = self;
  [changes na_each:v5];
}

- (NSArray)changes
{
  allValues = [(NSMutableDictionary *)self->_changeDictionary allValues];
  v3 = [allValues copy];

  return v3;
}

- (NSSet)topLevelChangeKeys
{
  v2 = MEMORY[0x277CBEB98];
  allKeys = [(NSMutableDictionary *)self->_changeDictionary allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

- (BOOL)hasChangeForPropertyIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_changeDictionary objectForKeyedSubscript:identifier];
  v4 = v3 != 0;

  return v4;
}

- (id)changedValueForPropertyIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_changeDictionary objectForKeyedSubscript:identifier];
  changedValue = [v3 changedValue];

  return changedValue;
}

- (id)originalValueForPropertyIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->_changeDictionary objectForKeyedSubscript:identifier];
  originalValue = [v3 originalValue];

  return originalValue;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  changes = [(HKSPChangeSet *)self changes];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __21__HKSPChangeSet_hash__block_invoke;
  v8[3] = &unk_279C74438;
  v9 = builder;
  v5 = builder;
  [changes na_each:v8];

  v6 = [v5 hash];
  return v6;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HKSPChangeSet *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x277CF0C00];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  changes = [(HKSPChangeSet *)self changes];
  [v6 appendArraySection:changes withName:@"changes" multilinePrefix:prefixCopy skipIfEmpty:0];

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HKSPChangeSet *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  changes = [(HKSPChangeSet *)self changes];
  v5 = [v3 appendInteger:objc_msgSend(changes withName:{"count"), @"changes"}];

  return v3;
}

@end