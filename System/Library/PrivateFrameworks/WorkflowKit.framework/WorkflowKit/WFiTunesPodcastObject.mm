@interface WFiTunesPodcastObject
+ (id)JSONKeyPathsByPropertyKey;
- (WFiTunesPodcastObject)initWithName:(id)name identifier:(id)identifier podcastUUID:(id)d feedURL:(id)l kind:(id)kind;
@end

@implementation WFiTunesPodcastObject

- (WFiTunesPodcastObject)initWithName:(id)name identifier:(id)identifier podcastUUID:(id)d feedURL:(id)l kind:(id)kind
{
  dCopy = d;
  lCopy = l;
  v18.receiver = self;
  v18.super_class = WFiTunesPodcastObject;
  v14 = [(WFiTunesObject *)&v18 initWithName:name identifier:identifier kind:kind];
  v15 = v14;
  if (v14)
  {
    [(WFiTunesPodcastObject *)v14 setPodcastUUID:dCopy];
    [(WFiTunesPodcastObject *)v15 setFeedURL:lCopy];
    v16 = v15;
  }

  return v15;
}

+ (id)JSONKeyPathsByPropertyKey
{
  v9[2] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___WFiTunesPodcastObject;
  v2 = objc_msgSendSuper2(&v7, sel_JSONKeyPathsByPropertyKey);
  v3 = [v2 mutableCopy];

  v8[0] = @"podcastUUID";
  v8[1] = @"feedURL";
  v9[0] = @"podcastUUID";
  v9[1] = @"feedUrl";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v3 addEntriesFromDictionary:v4];

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

@end