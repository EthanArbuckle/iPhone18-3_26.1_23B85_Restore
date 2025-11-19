@interface PPExtractionSet
- (PPExtractionSet)initWithCoder:(id)a3;
- (PPExtractionSet)initWithNamedEntityRecords:(id)a3 topicRecords:(id)a4;
- (id)merge:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPExtractionSet

- (id)merge:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  if (self->_namedEntityRecords)
  {
    namedEntityRecords = self->_namedEntityRecords;
  }

  else
  {
    namedEntityRecords = MEMORY[0x1E695E0F0];
  }

  [v5 addObjectsFromArray:namedEntityRecords];
  v9 = [v4 namedEntityRecords];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  [v6 addObjectsFromArray:v11];

  v12 = objc_opt_new();
  v13 = v12;
  if (self->_topicRecords)
  {
    topicRecords = self->_topicRecords;
  }

  else
  {
    topicRecords = v7;
  }

  [v12 addObjectsFromArray:topicRecords];
  v15 = [v4 topicRecords];

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v7;
  }

  [v13 addObjectsFromArray:v16];

  v17 = [PPExtractionSet alloc];
  if ([v6 count])
  {
    v18 = v6;
  }

  else
  {
    v18 = 0;
  }

  if ([v13 count])
  {
    v19 = v13;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(PPExtractionSet *)v17 initWithNamedEntityRecords:v18 topicRecords:v19];

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  namedEntityRecords = self->_namedEntityRecords;
  v5 = a3;
  [v5 encodeObject:namedEntityRecords forKey:@"nam"];
  [v5 encodeObject:self->_topicRecords forKey:@"top"];
}

- (PPExtractionSet)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v5, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v6);
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"nam"];

  v9 = objc_autoreleasePoolPush();
  v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v5, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v9);
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"top"];

  v12 = [(PPExtractionSet *)self initWithNamedEntityRecords:v8 topicRecords:v11];
  return v12;
}

- (PPExtractionSet)initWithNamedEntityRecords:(id)a3 topicRecords:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PPExtractionSet;
  v9 = [(PPExtractionSet *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_namedEntityRecords, a3);
    objc_storeStrong(&v10->_topicRecords, a4);
  }

  return v10;
}

@end