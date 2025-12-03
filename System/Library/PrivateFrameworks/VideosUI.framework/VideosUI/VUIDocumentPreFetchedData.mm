@interface VUIDocumentPreFetchedData
- (BOOL)isEqual:(id)equal;
- (VUIDocumentPreFetchedData)initWithDictionary:(id)dictionary;
@end

@implementation VUIDocumentPreFetchedData

- (VUIDocumentPreFetchedData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = VUIDocumentPreFetchedData;
  v5 = [(VUIDocumentPreFetchedData *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    prefetchedDataDict = v5->_prefetchedDataDict;
    v5->_prefetchedDataDict = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      jsonData = [(VUIDocumentPreFetchedData *)self jsonData];
      jsonData2 = [(VUIDocumentPreFetchedData *)v5 jsonData];

      v8 = [jsonData isEqualToDictionary:jsonData2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end