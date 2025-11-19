@interface SPParsecArchive
+ (id)archiveBasePath;
+ (id)archivePathForQuery:(id)a3;
+ (void)deleteArchives;
- (SPParsecArchive)initWithCoder:(id)a3;
- (SPParsecArchive)initWithQuery:(id)a3 withResults:(id)a4 withSuggestions:(id)a5 withCorrections:(id)a6 suggestionsAreBlended:(BOOL)a7 withStore:(id)a8;
- (_MDPlistContainer)decodeMDPlistContainerWithCoder:(id)a3 forKey:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPParsecArchive

+ (id)archivePathForQuery:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() archiveBasePath];
  v5 = +[NSFileManager defaultManager];
  v9 = 1;
  if (([v5 fileExistsAtPath:v4 isDirectory:&v9] & 1) == 0 && v9 == 1)
  {
    v8 = 0;
    [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v8];
  }

  v6 = [v4 stringByAppendingFormat:@"/%@", v3];

  return v6;
}

+ (void)deleteArchives
{
  v4 = +[NSFileManager defaultManager];
  v3 = [a1 archiveBasePath];
  [v4 removeItemAtPath:v3 error:0];
}

+ (id)archiveBasePath
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingString:@"/Library/Spotlight/ParsecArchive"];

  return v3;
}

- (SPParsecArchive)initWithQuery:(id)a3 withResults:(id)a4 withSuggestions:(id)a5 withCorrections:(id)a6 suggestionsAreBlended:(BOOL)a7 withStore:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v26.receiver = self;
  v26.super_class = SPParsecArchive;
  v19 = [(SPParsecArchive *)&v26 init];
  v20 = v19;
  if (v19)
  {
    [(SPParsecArchive *)v19 setQuery:v14];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SPParsecArchive *)v20 setResultsSections:v15];
    }

    objc_storeStrong(&v20->_suggestions, a5);
    objc_storeStrong(&v20->_corrections, a6);
    v21 = [v18 cepDictionary];
    cepDictionary = v20->_cepDictionary;
    v20->_cepDictionary = v21;

    v23 = [v18 cannedCEPValues];
    cannedCEPValues = v20->_cannedCEPValues;
    v20->_cannedCEPValues = v23;

    v20->_suggestionsAreBlended = a7;
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  query = self->_query;
  v7 = a3;
  [v7 encodeObject:query forKey:@"_query"];
  [v7 encodeObject:self->_resultsSections forKey:@"_resultsSections"];
  [v7 encodeObject:self->_suggestions forKey:@"_suggestions"];
  [v7 encodeObject:self->_corrections forKey:@"_corrections"];
  [(SSPlistDataReader *)self->_cepDictionary container];
  Bytes = _MDPlistContainerGetBytes();
  [v7 encodeBytes:Bytes length:_MDPlistContainerGetLength() forKey:@"_cepDictionaryData"];
  [(SSPlistDataReader *)self->_cannedCEPValues container];
  v6 = _MDPlistContainerGetBytes();
  [v7 encodeBytes:v6 length:_MDPlistContainerGetLength() forKey:@"_cannedCEPValuesData"];
}

- (_MDPlistContainer)decodeMDPlistContainerWithCoder:(id)a3 forKey:(id)a4
{
  size = 0;
  v4 = [a3 decodeBytesForKey:a4 returnedLength:&size];
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

- (SPParsecArchive)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SPParsecArchive;
  v5 = [(SPParsecArchive *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_query"];
    query = v5->_query;
    v5->_query = v6;

    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"_resultsSections"];
    resultsSections = v5->_resultsSections;
    v5->_resultsSections = v10;

    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"_suggestions"];
    suggestions = v5->_suggestions;
    v5->_suggestions = v14;

    v16 = objc_opt_class();
    v17 = [NSSet setWithObjects:v16, objc_opt_class(), 0];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"_corrections"];
    corrections = v5->_corrections;
    v5->_corrections = v18;

    v20 = [(SPParsecArchive *)v5 decodeMDPlistContainerWithCoder:v4 forKey:@"_cepDictionaryData"];
    v21 = [[SSPlistDataReader alloc] initWithPlistContainer:v20];
    cepDictionary = v5->_cepDictionary;
    v5->_cepDictionary = v21;

    if (v20)
    {
      CFRelease(v20);
    }

    v23 = [(SPParsecArchive *)v5 decodeMDPlistContainerWithCoder:v4 forKey:@"_cannedCEPValuesData"];
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