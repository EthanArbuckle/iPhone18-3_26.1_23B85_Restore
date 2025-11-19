@interface SSPerformEntityQueryCommand
- (SSPerformEntityQueryCommand)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSPerformEntityQueryCommand

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = SSPerformEntityQueryCommand;
  v4 = a3;
  [(SSPerformEntityQueryCommand *)&v8 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[SSPerformEntityQueryCommand fromSuggestion](self, "fromSuggestion", v8.receiver, v8.super_class)}];
  [v4 encodeObject:v5 forKey:@"_fromSuggestion"];

  v6 = [(SSPerformEntityQueryCommand *)self searchBarButtonItems];
  [v4 encodeObject:v6 forKey:@"_searchBarButtonItems"];

  v7 = [(SSPerformEntityQueryCommand *)self folderScopeURLs];
  [v4 encodeObject:v7 forKey:@"_folderScopeURLs"];
}

- (SSPerformEntityQueryCommand)initWithCoder:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SSPerformEntityQueryCommand;
  v5 = [(SSPerformEntityQueryCommand *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fromSuggestion"];
    -[SSPerformEntityQueryCommand setFromSuggestion:](v5, "setFromSuggestion:", [v6 BOOLValue]);

    v7 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v9 = [v7 setWithArray:v8];
    v10 = [v4 decodeArrayOfObjectsOfClasses:v9 forKey:@"_searchBarButtonItems"];
    [(SSPerformEntityQueryCommand *)v5 setSearchBarButtonItems:v10];

    v11 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeArrayOfObjectsOfClasses:v13 forKey:@"_folderScopeURLs"];
    [(SSPerformEntityQueryCommand *)v5 setFolderScopeURLs:v14];
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = SSPerformEntityQueryCommand;
  v5 = [(SSPerformEntityQueryCommand *)&v9 copyWithZone:?];
  [v5 setFromSuggestion:self->_fromSuggestion];
  v6 = [(NSArray *)self->_searchBarButtonItems copyWithZone:a3];
  [v5 setSearchBarButtonItems:v6];

  v7 = [(NSArray *)self->_folderScopeURLs copyWithZone:a3];
  [v5 setFolderScopeURLs:v7];

  return v5;
}

@end