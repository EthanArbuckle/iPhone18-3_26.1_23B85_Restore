@interface SBHStackConfiguration
- (SBHStackConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBHStackConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SBHStackConfiguration);
  [(SBHStackConfiguration *)v4 setAllowsSuggestions:[(SBHStackConfiguration *)self allowsSuggestions]];
  [(SBHStackConfiguration *)v4 setAllowsExternalSuggestions:[(SBHStackConfiguration *)self allowsExternalSuggestions]];
  v5 = [(SBHStackConfiguration *)self dataSources];
  [(SBHStackConfiguration *)v4 setDataSources:v5];

  v6 = [(SBHStackConfiguration *)self sizeClass];
  [(SBHStackConfiguration *)v4 setSizeClass:v6];

  return v4;
}

- (SBHStackConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SBHStackConfiguration;
  v5 = [(SBHStackConfiguration *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v5->_allowsSuggestions = [v4 decodeBoolForKey:@"allowsSuggestions"];
    v5->_allowsExternalSuggestions = [v4 decodeBoolForKey:@"allowsExternalSuggestions"];
    v9 = [v4 decodeArrayOfObjectsOfClasses:v8 forKey:@"dataSources"];
    dataSources = v5->_dataSources;
    v5->_dataSources = v9;

    v11 = objc_opt_self();
    v12 = [v4 decodeObjectOfClass:v11 forKey:@"sizeClass"];
    sizeClass = v5->_sizeClass;
    v5->_sizeClass = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[SBHStackConfiguration allowsSuggestions](self forKey:{"allowsSuggestions"), @"allowsSuggestions"}];
  [v4 encodeBool:-[SBHStackConfiguration allowsExternalSuggestions](self forKey:{"allowsExternalSuggestions"), @"allowsExternalSuggestions"}];
  v5 = [(SBHStackConfiguration *)self dataSources];
  [v4 encodeObject:v5 forKey:@"dataSources"];

  v6 = [(SBHStackConfiguration *)self sizeClass];
  [v4 encodeObject:v6 forKey:@"sizeClass"];
}

@end