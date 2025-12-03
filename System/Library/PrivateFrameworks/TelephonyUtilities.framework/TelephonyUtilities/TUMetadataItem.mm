@interface TUMetadataItem
- (BOOL)isEmpty;
- (TUMetadataItem)init;
- (id)description;
- (id)metadataDictForProvider:(Class)provider;
- (id)metadataForProvider:(Class)provider;
- (void)setMetadata:(id)metadata forProvider:(Class)provider;
- (void)setMetadataDict:(id)dict forProvider:(Class)provider;
@end

@implementation TUMetadataItem

- (TUMetadataItem)init
{
  v8.receiver = self;
  v8.super_class = TUMetadataItem;
  v2 = [(TUMetadataItem *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    callMetadata = v2->_callMetadata;
    v2->_callMetadata = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    callMetadataDict = v2->_callMetadataDict;
    v2->_callMetadataDict = dictionary2;
  }

  return v2;
}

- (void)setMetadata:(id)metadata forProvider:(Class)provider
{
  metadataCopy = metadata;
  callMetadata = [(TUMetadataItem *)self callMetadata];
  v7 = NSStringFromClass(provider);
  [callMetadata setObject:metadataCopy forKeyedSubscript:v7];
}

- (id)metadataForProvider:(Class)provider
{
  callMetadata = [(TUMetadataItem *)self callMetadata];
  v5 = NSStringFromClass(provider);
  v6 = [callMetadata objectForKeyedSubscript:v5];

  return v6;
}

- (void)setMetadataDict:(id)dict forProvider:(Class)provider
{
  dictCopy = dict;
  callMetadataDict = [(TUMetadataItem *)self callMetadataDict];
  v7 = NSStringFromClass(provider);
  [callMetadataDict setObject:dictCopy forKeyedSubscript:v7];
}

- (id)metadataDictForProvider:(Class)provider
{
  callMetadataDict = [(TUMetadataItem *)self callMetadataDict];
  v6 = NSStringFromClass(provider);
  v7 = [callMetadataDict objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(TUMetadataItem *)self metadataForProvider:provider];
    v10 = v9;
    if (v9)
    {
      v9 = [[TUMetadataDict alloc] initWithSource:0 identificationLabel:v9];
    }

    v8 = v9;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  callMetadata = [(TUMetadataItem *)self callMetadata];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, callMetadata];

  return v6;
}

- (BOOL)isEmpty
{
  callMetadata = [(TUMetadataItem *)self callMetadata];
  v3 = [callMetadata count] == 0;

  return v3;
}

@end