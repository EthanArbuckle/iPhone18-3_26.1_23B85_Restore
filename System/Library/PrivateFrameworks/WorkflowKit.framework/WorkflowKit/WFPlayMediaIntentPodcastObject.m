@interface WFPlayMediaIntentPodcastObject
- (BOOL)isEqual:(id)a3;
- (WFPlayMediaIntentPodcastObject)initWithIntent:(id)a3;
- (unint64_t)hash;
@end

@implementation WFPlayMediaIntentPodcastObject

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = WFPlayMediaIntentPodcastObject;
  v3 = [(MTLModel *)&v7 hash];
  v4 = [(WFPlayMediaIntentPodcastObject *)self intent];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WFPlayMediaIntentPodcastObject;
  if ([(MTLModel *)&v13 isEqual:v4])
  {
    v5 = v4;
    v6 = [(WFPlayMediaIntentPodcastObject *)self intent];
    v7 = [v5 intent];
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = 0;
      if (v8 && v9)
      {
        v11 = [v8 isEqual:v9];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (WFPlayMediaIntentPodcastObject)initWithIntent:(id)a3
{
  v5 = a3;
  v6 = [v5 mediaItems];
  v7 = [v6 firstObject];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [v5 mediaContainer];

    if (!v8)
    {
      v22 = 0;
      goto LABEL_11;
    }
  }

  v9 = MEMORY[0x1E696AF20];
  v10 = [v8 identifier];
  v11 = [v9 componentsWithString:v10];

  v12 = [v11 queryItems];
  v13 = [v12 objectMatchingKey:@"name" value:@"storeCollectionId"];

  v14 = [v11 queryItems];
  v15 = [v14 objectMatchingKey:@"name" value:@"uuid"];

  v16 = [v5 mediaContainer];
  v17 = [v16 title];
  v18 = v17;
  if (!v17)
  {
    v18 = [v8 title];
  }

  v25 = v13;
  v19 = [v13 value];
  v20 = [v15 value];
  v26.receiver = self;
  v26.super_class = WFPlayMediaIntentPodcastObject;
  self = [(WFiTunesPodcastObject *)&v26 initWithName:v18 identifier:v19 podcastUUID:v20 feedURL:0 kind:@"podcast"];

  if (!v17)
  {
  }

  if (self)
  {
    objc_storeStrong(&self->_intent, obj);
    v21 = self;
  }

  v22 = self;
LABEL_11:

  return v22;
}

id __55__WFPlayMediaIntentPodcastObject_intentJSONTransformer__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [a2 _JSONDictionaryRepresentation];
  v4 = [v2 dataWithJSONObject:v3 options:0 error:0];

  return v4;
}

id __55__WFPlayMediaIntentPodcastObject_intentJSONTransformer__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a2 options:0 error:0];
  v3 = objc_alloc_init(MEMORY[0x1E696E950]);
  [v3 _updateWithJSONDictionary:v2];

  return v3;
}

@end