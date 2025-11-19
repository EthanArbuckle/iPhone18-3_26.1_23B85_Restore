@interface STStatusBarDataDictionaryEntry
+ (id)entryWithDictionary:(id)a3;
- (STStatusBarDataDictionaryEntry)initWithBSXPCCoder:(id)a3;
- (STStatusBarDataDictionaryEntry)initWithCoder:(id)a3;
- (id)_equalsBuilderWithObject:(id)a3;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusBarDataDictionaryEntry

+ (id)entryWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 copy];

  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataDictionaryEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_dictionary forKey:{@"dictionary", v5.receiver, v5.super_class}];
}

- (STStatusBarDataDictionaryEntry)initWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = STStatusBarDataDictionaryEntry;
  v3 = a3;
  v4 = [(STStatusBarDataEntry *)&v13 initWithCoder:v3];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  v10 = [v3 decodeDictionaryWithKeysOfClasses:v5 objectsOfClasses:v9 forKey:@"dictionary"];

  dictionary = v4->_dictionary;
  v4->_dictionary = v10;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataDictionaryEntry;
  v3 = [(STStatusBarDataEntry *)&v6 succinctDescriptionBuilder];
  v4 = [(STStatusBarDataDictionaryEntry *)self dictionary];
  [v3 appendDictionarySection:v4 withName:@"dictionary" skipIfEmpty:0];

  return v3;
}

- (id)_equalsBuilderWithObject:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STStatusBarDataDictionaryEntry;
  v5 = [(STStatusBarDataEntry *)&v13 _equalsBuilderWithObject:v4];
  v6 = v4;
  v7 = [(STStatusBarDataDictionaryEntry *)self dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__STStatusBarDataDictionaryEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DEB20;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendObject:v7 counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataDictionaryEntry;
  v3 = [(STStatusBarDataEntry *)&v7 _hashBuilder];
  v4 = [(STStatusBarDataDictionaryEntry *)self dictionary];
  v5 = [v3 appendObject:v4];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataDictionaryEntry;
  v4 = a3;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeObject:self->_dictionary forKey:{@"dictionary", v5.receiver, v5.super_class}];
}

- (STStatusBarDataDictionaryEntry)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STStatusBarDataDictionaryEntry;
  v5 = [(STStatusBarDataEntry *)&v9 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeDictionaryOfClass:objc_opt_class() forKey:@"dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;
  }

  return v5;
}

@end