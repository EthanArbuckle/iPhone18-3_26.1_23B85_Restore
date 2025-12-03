@interface SXImageRecordValueTransformer
- (SXImageRecordValueTransformer)initWithDOMObjectProvider:(id)provider;
- (id)transformValueForRecord:(id)record descriptor:(id)descriptor;
@end

@implementation SXImageRecordValueTransformer

- (SXImageRecordValueTransformer)initWithDOMObjectProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SXImageRecordValueTransformer;
  v6 = [(SXImageRecordValueTransformer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_DOMObjectProvider, provider);
  }

  return v7;
}

- (id)transformValueForRecord:(id)record descriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  jsonDictionary = [record jsonDictionary];
  v8 = [descriptorCopy key];

  v9 = [jsonDictionary objectForKey:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 objectForKey:@"imageIdentifier"];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = 0;
      goto LABEL_8;
    }

    v10 = v9;
  }

  v11 = v10;
  if (v10)
  {
    dOMObjectProvider = [(SXImageRecordValueTransformer *)self DOMObjectProvider];
    v13 = [dOMObjectProvider imageResourceForIdentifier:v11];

    goto LABEL_9;
  }

LABEL_8:
  v13 = 0;
LABEL_9:

  return v13;
}

@end