@interface FetchRequestPropertiesDescriptor
- (FetchRequestPropertiesDescriptor)initWithCoder:(id)coder;
- (FetchRequestPropertiesDescriptor)initWithCoder:(id)coder GroupByProperties:(id)properties aggregateProperties:(id)aggregateProperties fetchProperties:(id)fetchProperties;
- (void)addAggregateProperty:(id)property;
- (void)addFetchProperty:(id)property;
- (void)addGroupByProperty:(id)property;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FetchRequestPropertiesDescriptor

- (FetchRequestPropertiesDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = FetchRequestPropertiesDescriptor;
  v5 = [(FetchRequestPropertiesDescriptor *)&v24 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"groupByProperties"];
    groupByProperties = v5->_groupByProperties;
    v5->_groupByProperties = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"aggregateProperties"];
    aggregateProperties = v5->_aggregateProperties;
    v5->_aggregateProperties = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"fetchProperties"];
    fetchProperties = v5->_fetchProperties;
    v5->_fetchProperties = v21;
  }

  return v5;
}

- (FetchRequestPropertiesDescriptor)initWithCoder:(id)coder GroupByProperties:(id)properties aggregateProperties:(id)aggregateProperties fetchProperties:(id)fetchProperties
{
  coderCopy = coder;
  propertiesCopy = properties;
  aggregatePropertiesCopy = aggregateProperties;
  fetchPropertiesCopy = fetchProperties;
  v29.receiver = self;
  v29.super_class = FetchRequestPropertiesDescriptor;
  v14 = [(FetchRequestPropertiesDescriptor *)&v29 init];
  if (v14)
  {
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{propertiesCopy, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"groupByProperties"];
    groupByProperties = v14->_groupByProperties;
    v14->_groupByProperties = v18;

    v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), aggregatePropertiesCopy, 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"aggregateProperties"];
    aggregateProperties = v14->_aggregateProperties;
    v14->_aggregateProperties = v21;

    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), fetchPropertiesCopy, 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"fetchProperties"];
    fetchProperties = v14->_fetchProperties;
    v14->_fetchProperties = v26;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  groupByProperties = self->_groupByProperties;
  coderCopy = coder;
  [coderCopy encodeObject:groupByProperties forKey:@"groupByProperties"];
  [coderCopy encodeObject:self->_aggregateProperties forKey:@"aggregateProperties"];
  [coderCopy encodeObject:self->_fetchProperties forKey:@"fetchProperties"];
}

- (void)addGroupByProperty:(id)property
{
  propertyCopy = property;
  groupByProperties = self->_groupByProperties;
  v8 = propertyCopy;
  if (!groupByProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_groupByProperties;
    self->_groupByProperties = v6;

    propertyCopy = v8;
    groupByProperties = self->_groupByProperties;
  }

  [(NSArray *)groupByProperties addObject:propertyCopy];
}

- (void)addAggregateProperty:(id)property
{
  propertyCopy = property;
  aggregateProperties = self->_aggregateProperties;
  v8 = propertyCopy;
  if (!aggregateProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_aggregateProperties;
    self->_aggregateProperties = v6;

    propertyCopy = v8;
    aggregateProperties = self->_aggregateProperties;
  }

  [(NSArray *)aggregateProperties addObject:propertyCopy];
}

- (void)addFetchProperty:(id)property
{
  propertyCopy = property;
  fetchProperties = self->_fetchProperties;
  v8 = propertyCopy;
  if (!fetchProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fetchProperties;
    self->_fetchProperties = v6;

    propertyCopy = v8;
    fetchProperties = self->_fetchProperties;
  }

  [(NSArray *)fetchProperties addObject:propertyCopy];
}

@end