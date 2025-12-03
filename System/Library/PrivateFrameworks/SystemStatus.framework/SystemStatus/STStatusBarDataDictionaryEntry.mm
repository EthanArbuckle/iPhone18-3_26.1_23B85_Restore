@interface STStatusBarDataDictionaryEntry
+ (id)entryWithDictionary:(id)dictionary;
- (STStatusBarDataDictionaryEntry)initWithBSXPCCoder:(id)coder;
- (STStatusBarDataDictionaryEntry)initWithCoder:(id)coder;
- (id)_equalsBuilderWithObject:(id)object;
- (id)_hashBuilder;
- (id)succinctDescriptionBuilder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusBarDataDictionaryEntry

+ (id)entryWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(self);
  v6 = [dictionaryCopy copy];

  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataDictionaryEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_dictionary forKey:{@"dictionary", v5.receiver, v5.super_class}];
}

- (STStatusBarDataDictionaryEntry)initWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = STStatusBarDataDictionaryEntry;
  coderCopy = coder;
  v4 = [(STStatusBarDataEntry *)&v13 initWithCoder:coderCopy];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeDictionaryWithKeysOfClasses:v5 objectsOfClasses:v9 forKey:@"dictionary"];

  dictionary = v4->_dictionary;
  v4->_dictionary = v10;

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v6.receiver = self;
  v6.super_class = STStatusBarDataDictionaryEntry;
  succinctDescriptionBuilder = [(STStatusBarDataEntry *)&v6 succinctDescriptionBuilder];
  dictionary = [(STStatusBarDataDictionaryEntry *)self dictionary];
  [succinctDescriptionBuilder appendDictionarySection:dictionary withName:@"dictionary" skipIfEmpty:0];

  return succinctDescriptionBuilder;
}

- (id)_equalsBuilderWithObject:(id)object
{
  objectCopy = object;
  v13.receiver = self;
  v13.super_class = STStatusBarDataDictionaryEntry;
  v5 = [(STStatusBarDataEntry *)&v13 _equalsBuilderWithObject:objectCopy];
  v6 = objectCopy;
  dictionary = [(STStatusBarDataDictionaryEntry *)self dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__STStatusBarDataDictionaryEntry__equalsBuilderWithObject___block_invoke;
  v11[3] = &unk_1E85DEB20;
  v12 = v6;
  v8 = v6;
  v9 = [v5 appendObject:dictionary counterpart:v11];

  return v5;
}

- (id)_hashBuilder
{
  v7.receiver = self;
  v7.super_class = STStatusBarDataDictionaryEntry;
  _hashBuilder = [(STStatusBarDataEntry *)&v7 _hashBuilder];
  dictionary = [(STStatusBarDataDictionaryEntry *)self dictionary];
  v5 = [_hashBuilder appendObject:dictionary];

  return _hashBuilder;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STStatusBarDataDictionaryEntry;
  coderCopy = coder;
  [(STStatusBarDataEntry *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeObject:self->_dictionary forKey:{@"dictionary", v5.receiver, v5.super_class}];
}

- (STStatusBarDataDictionaryEntry)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STStatusBarDataDictionaryEntry;
  v5 = [(STStatusBarDataEntry *)&v9 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeDictionaryOfClass:objc_opt_class() forKey:@"dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;
  }

  return v5;
}

@end