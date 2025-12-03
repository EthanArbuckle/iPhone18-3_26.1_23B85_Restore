@interface WFPlayMediaIntentPodcastObject
- (BOOL)isEqual:(id)equal;
- (WFPlayMediaIntentPodcastObject)initWithIntent:(id)intent;
- (unint64_t)hash;
@end

@implementation WFPlayMediaIntentPodcastObject

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = WFPlayMediaIntentPodcastObject;
  v3 = [(MTLModel *)&v7 hash];
  intent = [(WFPlayMediaIntentPodcastObject *)self intent];
  v5 = [intent hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = WFPlayMediaIntentPodcastObject;
  if ([(MTLModel *)&v13 isEqual:equalCopy])
  {
    v5 = equalCopy;
    intent = [(WFPlayMediaIntentPodcastObject *)self intent];
    intent2 = [v5 intent];
    v8 = intent;
    v9 = intent2;
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

- (WFPlayMediaIntentPodcastObject)initWithIntent:(id)intent
{
  intentCopy = intent;
  mediaItems = [intentCopy mediaItems];
  firstObject = [mediaItems firstObject];
  if (firstObject)
  {
    mediaContainer = firstObject;
  }

  else
  {
    mediaContainer = [intentCopy mediaContainer];

    if (!mediaContainer)
    {
      selfCopy2 = 0;
      goto LABEL_11;
    }
  }

  v9 = MEMORY[0x1E696AF20];
  identifier = [mediaContainer identifier];
  v11 = [v9 componentsWithString:identifier];

  queryItems = [v11 queryItems];
  v13 = [queryItems objectMatchingKey:@"name" value:@"storeCollectionId"];

  queryItems2 = [v11 queryItems];
  v15 = [queryItems2 objectMatchingKey:@"name" value:@"uuid"];

  mediaContainer2 = [intentCopy mediaContainer];
  title = [mediaContainer2 title];
  title2 = title;
  if (!title)
  {
    title2 = [mediaContainer title];
  }

  v25 = v13;
  value = [v13 value];
  value2 = [v15 value];
  v26.receiver = self;
  v26.super_class = WFPlayMediaIntentPodcastObject;
  self = [(WFiTunesPodcastObject *)&v26 initWithName:title2 identifier:value podcastUUID:value2 feedURL:0 kind:@"podcast"];

  if (!title)
  {
  }

  if (self)
  {
    objc_storeStrong(&self->_intent, obj);
    selfCopy = self;
  }

  selfCopy2 = self;
LABEL_11:

  return selfCopy2;
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