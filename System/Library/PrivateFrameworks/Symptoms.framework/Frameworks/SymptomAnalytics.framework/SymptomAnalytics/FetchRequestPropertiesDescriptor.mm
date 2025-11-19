@interface FetchRequestPropertiesDescriptor
- (FetchRequestPropertiesDescriptor)initWithCoder:(id)a3;
- (FetchRequestPropertiesDescriptor)initWithCoder:(id)a3 GroupByProperties:(id)a4 aggregateProperties:(id)a5 fetchProperties:(id)a6;
- (void)addAggregateProperty:(id)a3;
- (void)addFetchProperty:(id)a3;
- (void)addGroupByProperty:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FetchRequestPropertiesDescriptor

- (FetchRequestPropertiesDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = FetchRequestPropertiesDescriptor;
  v5 = [(FetchRequestPropertiesDescriptor *)&v24 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"groupByProperties"];
    groupByProperties = v5->_groupByProperties;
    v5->_groupByProperties = v10;

    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"aggregateProperties"];
    aggregateProperties = v5->_aggregateProperties;
    v5->_aggregateProperties = v15;

    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"fetchProperties"];
    fetchProperties = v5->_fetchProperties;
    v5->_fetchProperties = v21;
  }

  return v5;
}

- (FetchRequestPropertiesDescriptor)initWithCoder:(id)a3 GroupByProperties:(id)a4 aggregateProperties:(id)a5 fetchProperties:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v29.receiver = self;
  v29.super_class = FetchRequestPropertiesDescriptor;
  v14 = [(FetchRequestPropertiesDescriptor *)&v29 init];
  if (v14)
  {
    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v11, v16, objc_opt_class(), 0}];
    v18 = [v10 decodeObjectOfClasses:v17 forKey:@"groupByProperties"];
    groupByProperties = v14->_groupByProperties;
    v14->_groupByProperties = v18;

    v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), v12, 0}];
    v21 = [v10 decodeObjectOfClasses:v20 forKey:@"aggregateProperties"];
    aggregateProperties = v14->_aggregateProperties;
    v14->_aggregateProperties = v21;

    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), v13, 0}];
    v26 = [v10 decodeObjectOfClasses:v25 forKey:@"fetchProperties"];
    fetchProperties = v14->_fetchProperties;
    v14->_fetchProperties = v26;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  groupByProperties = self->_groupByProperties;
  v5 = a3;
  [v5 encodeObject:groupByProperties forKey:@"groupByProperties"];
  [v5 encodeObject:self->_aggregateProperties forKey:@"aggregateProperties"];
  [v5 encodeObject:self->_fetchProperties forKey:@"fetchProperties"];
}

- (void)addGroupByProperty:(id)a3
{
  v4 = a3;
  groupByProperties = self->_groupByProperties;
  v8 = v4;
  if (!groupByProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_groupByProperties;
    self->_groupByProperties = v6;

    v4 = v8;
    groupByProperties = self->_groupByProperties;
  }

  [(NSArray *)groupByProperties addObject:v4];
}

- (void)addAggregateProperty:(id)a3
{
  v4 = a3;
  aggregateProperties = self->_aggregateProperties;
  v8 = v4;
  if (!aggregateProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_aggregateProperties;
    self->_aggregateProperties = v6;

    v4 = v8;
    aggregateProperties = self->_aggregateProperties;
  }

  [(NSArray *)aggregateProperties addObject:v4];
}

- (void)addFetchProperty:(id)a3
{
  v4 = a3;
  fetchProperties = self->_fetchProperties;
  v8 = v4;
  if (!fetchProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fetchProperties;
    self->_fetchProperties = v6;

    v4 = v8;
    fetchProperties = self->_fetchProperties;
  }

  [(NSArray *)fetchProperties addObject:v4];
}

@end