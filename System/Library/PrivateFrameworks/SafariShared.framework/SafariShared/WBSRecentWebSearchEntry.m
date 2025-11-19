@interface WBSRecentWebSearchEntry
- (BOOL)isEqual:(id)a3;
- (WBSRecentWebSearchEntry)initWithDictionaryRepresentation:(id)a3;
- (WBSRecentWebSearchEntry)initWithSearchString:(id)a3 date:(id)a4 URLs:(id)a5;
- (WBSRecentWebSearchEntry)initWithSearchString:(id)a3 url:(id)a4;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation WBSRecentWebSearchEntry

- (WBSRecentWebSearchEntry)initWithSearchString:(id)a3 date:(id)a4 URLs:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = WBSRecentWebSearchEntry;
  v11 = [(WBSRecentWebSearchEntry *)&v20 init];
  if (v11 && [v8 length])
  {
    v12 = [v8 copy];
    searchString = v11->_searchString;
    v11->_searchString = v12;

    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = [MEMORY[0x1E695DF00] date];
    }

    date = v11->_date;
    v11->_date = v14;

    if (v10)
    {
      v17 = v10;
    }

    else
    {
      v17 = [MEMORY[0x1E695DEC8] array];
    }

    URLStrings = v11->_URLStrings;
    v11->_URLStrings = v17;

    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (WBSRecentWebSearchEntry)initWithSearchString:(id)a3 url:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v11[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(WBSRecentWebSearchEntry *)self initWithSearchString:v6 date:0 URLs:v8];

  return v9;
}

- (WBSRecentWebSearchEntry)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 safari_stringForKey:@"SearchString"];
  v6 = [v4 safari_dateForKey:@"Date"];
  v7 = [v4 safari_arrayForKey:@"URLs"];
  v8 = [(WBSRecentWebSearchEntry *)self initWithSearchString:v5 date:v6 URLs:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x1E69C8880] isStreamlinedCompletionListEnabled];
      searchString = self->_searchString;
      if (v5)
      {
        v7 = [(WBSRecentWebSearchEntry *)v4 searchString];
        v8 = [(NSString *)searchString safari_isCaseInsensitiveEqualToString:v7];
      }

      else
      {
        v7 = [(WBSRecentWebSearchEntry *)v4 searchString];
        v8 = [(NSString *)searchString isEqualToString:v7];
      }

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *&self->_searchString;
  v5[0] = @"SearchString";
  v5[1] = @"Date";
  v6 = v2;
  v5[2] = @"URLs";
  URLStrings = self->_URLStrings;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:v5 count:3];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p searchString = %@; date = %@; urls = %@>", v5, self, self->_searchString, self->_date, self->_URLStrings];;

  return v6;
}

@end