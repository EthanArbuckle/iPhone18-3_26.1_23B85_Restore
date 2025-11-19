@interface TUMetadataItem
- (BOOL)isEmpty;
- (TUMetadataItem)init;
- (id)description;
- (id)metadataDictForProvider:(Class)a3;
- (id)metadataForProvider:(Class)a3;
- (void)setMetadata:(id)a3 forProvider:(Class)a4;
- (void)setMetadataDict:(id)a3 forProvider:(Class)a4;
@end

@implementation TUMetadataItem

- (TUMetadataItem)init
{
  v8.receiver = self;
  v8.super_class = TUMetadataItem;
  v2 = [(TUMetadataItem *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    callMetadata = v2->_callMetadata;
    v2->_callMetadata = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    callMetadataDict = v2->_callMetadataDict;
    v2->_callMetadataDict = v5;
  }

  return v2;
}

- (void)setMetadata:(id)a3 forProvider:(Class)a4
{
  v6 = a3;
  v8 = [(TUMetadataItem *)self callMetadata];
  v7 = NSStringFromClass(a4);
  [v8 setObject:v6 forKeyedSubscript:v7];
}

- (id)metadataForProvider:(Class)a3
{
  v4 = [(TUMetadataItem *)self callMetadata];
  v5 = NSStringFromClass(a3);
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (void)setMetadataDict:(id)a3 forProvider:(Class)a4
{
  v6 = a3;
  v8 = [(TUMetadataItem *)self callMetadataDict];
  v7 = NSStringFromClass(a4);
  [v8 setObject:v6 forKeyedSubscript:v7];
}

- (id)metadataDictForProvider:(Class)a3
{
  v5 = [(TUMetadataItem *)self callMetadataDict];
  v6 = NSStringFromClass(a3);
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(TUMetadataItem *)self metadataForProvider:a3];
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
  v5 = [(TUMetadataItem *)self callMetadata];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

- (BOOL)isEmpty
{
  v2 = [(TUMetadataItem *)self callMetadata];
  v3 = [v2 count] == 0;

  return v3;
}

@end