@interface VUIDocumentPreFetchedData
- (BOOL)isEqual:(id)a3;
- (VUIDocumentPreFetchedData)initWithDictionary:(id)a3;
@end

@implementation VUIDocumentPreFetchedData

- (VUIDocumentPreFetchedData)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VUIDocumentPreFetchedData;
  v5 = [(VUIDocumentPreFetchedData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    prefetchedDataDict = v5->_prefetchedDataDict;
    v5->_prefetchedDataDict = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VUIDocumentPreFetchedData *)self jsonData];
      v7 = [(VUIDocumentPreFetchedData *)v5 jsonData];

      v8 = [v6 isEqualToDictionary:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end