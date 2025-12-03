@interface SSPerformEntityQueryCommand
- (SSPerformEntityQueryCommand)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSPerformEntityQueryCommand

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = SSPerformEntityQueryCommand;
  coderCopy = coder;
  [(SSPerformEntityQueryCommand *)&v8 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[SSPerformEntityQueryCommand fromSuggestion](self, "fromSuggestion", v8.receiver, v8.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"_fromSuggestion"];

  searchBarButtonItems = [(SSPerformEntityQueryCommand *)self searchBarButtonItems];
  [coderCopy encodeObject:searchBarButtonItems forKey:@"_searchBarButtonItems"];

  folderScopeURLs = [(SSPerformEntityQueryCommand *)self folderScopeURLs];
  [coderCopy encodeObject:folderScopeURLs forKey:@"_folderScopeURLs"];
}

- (SSPerformEntityQueryCommand)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SSPerformEntityQueryCommand;
  v5 = [(SSPerformEntityQueryCommand *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fromSuggestion"];
    -[SSPerformEntityQueryCommand setFromSuggestion:](v5, "setFromSuggestion:", [v6 BOOLValue]);

    v7 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v9 = [v7 setWithArray:v8];
    v10 = [coderCopy decodeArrayOfObjectsOfClasses:v9 forKey:@"_searchBarButtonItems"];
    [(SSPerformEntityQueryCommand *)v5 setSearchBarButtonItems:v10];

    v11 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeArrayOfObjectsOfClasses:v13 forKey:@"_folderScopeURLs"];
    [(SSPerformEntityQueryCommand *)v5 setFolderScopeURLs:v14];
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = SSPerformEntityQueryCommand;
  v5 = [(SSPerformEntityQueryCommand *)&v9 copyWithZone:?];
  [v5 setFromSuggestion:self->_fromSuggestion];
  v6 = [(NSArray *)self->_searchBarButtonItems copyWithZone:zone];
  [v5 setSearchBarButtonItems:v6];

  v7 = [(NSArray *)self->_folderScopeURLs copyWithZone:zone];
  [v5 setFolderScopeURLs:v7];

  return v5;
}

@end