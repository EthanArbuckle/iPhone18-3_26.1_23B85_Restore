@interface SBHStackConfiguration
- (SBHStackConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBHStackConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SBHStackConfiguration);
  [(SBHStackConfiguration *)v4 setAllowsSuggestions:[(SBHStackConfiguration *)self allowsSuggestions]];
  [(SBHStackConfiguration *)v4 setAllowsExternalSuggestions:[(SBHStackConfiguration *)self allowsExternalSuggestions]];
  dataSources = [(SBHStackConfiguration *)self dataSources];
  [(SBHStackConfiguration *)v4 setDataSources:dataSources];

  sizeClass = [(SBHStackConfiguration *)self sizeClass];
  [(SBHStackConfiguration *)v4 setSizeClass:sizeClass];

  return v4;
}

- (SBHStackConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SBHStackConfiguration;
  v5 = [(SBHStackConfiguration *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v5->_allowsSuggestions = [coderCopy decodeBoolForKey:@"allowsSuggestions"];
    v5->_allowsExternalSuggestions = [coderCopy decodeBoolForKey:@"allowsExternalSuggestions"];
    v9 = [coderCopy decodeArrayOfObjectsOfClasses:v8 forKey:@"dataSources"];
    dataSources = v5->_dataSources;
    v5->_dataSources = v9;

    v11 = objc_opt_self();
    v12 = [coderCopy decodeObjectOfClass:v11 forKey:@"sizeClass"];
    sizeClass = v5->_sizeClass;
    v5->_sizeClass = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[SBHStackConfiguration allowsSuggestions](self forKey:{"allowsSuggestions"), @"allowsSuggestions"}];
  [coderCopy encodeBool:-[SBHStackConfiguration allowsExternalSuggestions](self forKey:{"allowsExternalSuggestions"), @"allowsExternalSuggestions"}];
  dataSources = [(SBHStackConfiguration *)self dataSources];
  [coderCopy encodeObject:dataSources forKey:@"dataSources"];

  sizeClass = [(SBHStackConfiguration *)self sizeClass];
  [coderCopy encodeObject:sizeClass forKey:@"sizeClass"];
}

@end