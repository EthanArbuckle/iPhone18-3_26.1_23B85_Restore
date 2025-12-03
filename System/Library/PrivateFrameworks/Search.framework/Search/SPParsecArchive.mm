@interface SPParsecArchive
+ (id)archiveBasePath;
+ (id)archivePathForQuery:(id)query;
+ (void)deleteArchives;
- (SPParsecArchive)initWithCoder:(id)coder;
- (SPParsecArchive)initWithQuery:(id)query withResults:(id)results withSuggestions:(id)suggestions withCorrections:(id)corrections suggestionsAreBlended:(BOOL)blended withStore:(id)store;
- (_MDPlistContainer)decodeMDPlistContainerWithCoder:(id)coder forKey:(id)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPParsecArchive

+ (id)archivePathForQuery:(id)query
{
  queryCopy = query;
  archiveBasePath = [objc_opt_class() archiveBasePath];
  v5 = +[NSFileManager defaultManager];
  v9 = 1;
  if (([v5 fileExistsAtPath:archiveBasePath isDirectory:&v9] & 1) == 0 && v9 == 1)
  {
    v8 = 0;
    [v5 createDirectoryAtPath:archiveBasePath withIntermediateDirectories:1 attributes:0 error:&v8];
  }

  queryCopy = [archiveBasePath stringByAppendingFormat:@"/%@", queryCopy];

  return queryCopy;
}

+ (void)deleteArchives
{
  v4 = +[NSFileManager defaultManager];
  archiveBasePath = [self archiveBasePath];
  [v4 removeItemAtPath:archiveBasePath error:0];
}

+ (id)archiveBasePath
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingString:@"/Library/Spotlight/ParsecArchive"];

  return v3;
}

- (SPParsecArchive)initWithQuery:(id)query withResults:(id)results withSuggestions:(id)suggestions withCorrections:(id)corrections suggestionsAreBlended:(BOOL)blended withStore:(id)store
{
  queryCopy = query;
  resultsCopy = results;
  suggestionsCopy = suggestions;
  correctionsCopy = corrections;
  storeCopy = store;
  v26.receiver = self;
  v26.super_class = SPParsecArchive;
  v19 = [(SPParsecArchive *)&v26 init];
  v20 = v19;
  if (v19)
  {
    [(SPParsecArchive *)v19 setQuery:queryCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SPParsecArchive *)v20 setResultsSections:resultsCopy];
    }

    objc_storeStrong(&v20->_suggestions, suggestions);
    objc_storeStrong(&v20->_corrections, corrections);
    cepDictionary = [storeCopy cepDictionary];
    cepDictionary = v20->_cepDictionary;
    v20->_cepDictionary = cepDictionary;

    cannedCEPValues = [storeCopy cannedCEPValues];
    cannedCEPValues = v20->_cannedCEPValues;
    v20->_cannedCEPValues = cannedCEPValues;

    v20->_suggestionsAreBlended = blended;
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  query = self->_query;
  coderCopy = coder;
  [coderCopy encodeObject:query forKey:@"_query"];
  [coderCopy encodeObject:self->_resultsSections forKey:@"_resultsSections"];
  [coderCopy encodeObject:self->_suggestions forKey:@"_suggestions"];
  [coderCopy encodeObject:self->_corrections forKey:@"_corrections"];
  [(SSPlistDataReader *)self->_cepDictionary container];
  Bytes = _MDPlistContainerGetBytes();
  [coderCopy encodeBytes:Bytes length:_MDPlistContainerGetLength() forKey:@"_cepDictionaryData"];
  [(SSPlistDataReader *)self->_cannedCEPValues container];
  v6 = _MDPlistContainerGetBytes();
  [coderCopy encodeBytes:v6 length:_MDPlistContainerGetLength() forKey:@"_cannedCEPValuesData"];
}

- (_MDPlistContainer)decodeMDPlistContainerWithCoder:(id)coder forKey:(id)key
{
  size = 0;
  v4 = [coder decodeBytesForKey:key returnedLength:&size];
  if (size)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  result = malloc_type_malloc(size, 0x6A9AFD0EuLL);
  if (result)
  {
    v7 = result;
    memcpy(result, v4, size);
    result = _MDPlistContainerCreateWithBytes();
    if (!result)
    {
      free(v7);
      return 0;
    }
  }

  return result;
}

- (SPParsecArchive)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = SPParsecArchive;
  v5 = [(SPParsecArchive *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_query"];
    query = v5->_query;
    v5->_query = v6;

    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_resultsSections"];
    resultsSections = v5->_resultsSections;
    v5->_resultsSections = v10;

    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_suggestions"];
    suggestions = v5->_suggestions;
    v5->_suggestions = v14;

    v16 = objc_opt_class();
    v17 = [NSSet setWithObjects:v16, objc_opt_class(), 0];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"_corrections"];
    corrections = v5->_corrections;
    v5->_corrections = v18;

    v20 = [(SPParsecArchive *)v5 decodeMDPlistContainerWithCoder:coderCopy forKey:@"_cepDictionaryData"];
    v21 = [[SSPlistDataReader alloc] initWithPlistContainer:v20];
    cepDictionary = v5->_cepDictionary;
    v5->_cepDictionary = v21;

    if (v20)
    {
      CFRelease(v20);
    }

    v23 = [(SPParsecArchive *)v5 decodeMDPlistContainerWithCoder:coderCopy forKey:@"_cannedCEPValuesData"];
    v24 = [[SSPlistDataReader alloc] initWithPlistContainer:v23];
    cannedCEPValues = v5->_cannedCEPValues;
    v5->_cannedCEPValues = v24;

    if (v23)
    {
      CFRelease(v23);
    }
  }

  return v5;
}

@end