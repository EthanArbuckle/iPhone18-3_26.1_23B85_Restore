@interface WBSRecentWebSearchEntry
- (BOOL)isEqual:(id)equal;
- (WBSRecentWebSearchEntry)initWithDictionaryRepresentation:(id)representation;
- (WBSRecentWebSearchEntry)initWithSearchString:(id)string date:(id)date URLs:(id)ls;
- (WBSRecentWebSearchEntry)initWithSearchString:(id)string url:(id)url;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation WBSRecentWebSearchEntry

- (WBSRecentWebSearchEntry)initWithSearchString:(id)string date:(id)date URLs:(id)ls
{
  stringCopy = string;
  dateCopy = date;
  lsCopy = ls;
  v20.receiver = self;
  v20.super_class = WBSRecentWebSearchEntry;
  v11 = [(WBSRecentWebSearchEntry *)&v20 init];
  if (v11 && [stringCopy length])
  {
    v12 = [stringCopy copy];
    searchString = v11->_searchString;
    v11->_searchString = v12;

    if (dateCopy)
    {
      date = dateCopy;
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
    }

    date = v11->_date;
    v11->_date = date;

    if (lsCopy)
    {
      array = lsCopy;
    }

    else
    {
      array = [MEMORY[0x1E695DEC8] array];
    }

    URLStrings = v11->_URLStrings;
    v11->_URLStrings = array;

    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (WBSRecentWebSearchEntry)initWithSearchString:(id)string url:(id)url
{
  v11[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  urlCopy = url;
  v11[0] = urlCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9 = [(WBSRecentWebSearchEntry *)self initWithSearchString:stringCopy date:0 URLs:v8];

  return v9;
}

- (WBSRecentWebSearchEntry)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy safari_stringForKey:@"SearchString"];
  v6 = [representationCopy safari_dateForKey:@"Date"];
  v7 = [representationCopy safari_arrayForKey:@"URLs"];
  v8 = [(WBSRecentWebSearchEntry *)self initWithSearchString:v5 date:v6 URLs:v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isStreamlinedCompletionListEnabled = [MEMORY[0x1E69C8880] isStreamlinedCompletionListEnabled];
      searchString = self->_searchString;
      if (isStreamlinedCompletionListEnabled)
      {
        searchString = [(WBSRecentWebSearchEntry *)equalCopy searchString];
        v8 = [(NSString *)searchString safari_isCaseInsensitiveEqualToString:searchString];
      }

      else
      {
        searchString = [(WBSRecentWebSearchEntry *)equalCopy searchString];
        v8 = [(NSString *)searchString isEqualToString:searchString];
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