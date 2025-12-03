@interface OKPresentationGuideline
+ (id)defaultMobileRecommendedResolutionSizes;
+ (id)globalUniqueKeyForKey:(id)key mediaItem:(id)item;
+ (id)globalUniqueKeyForKey:(id)key mediaItem:(id)item presentationCanvas:(id)canvas producerPlugin:(id)plugin;
+ (id)globalUniqueKeyForKey:(id)key presentationCanvas:(id)canvas;
+ (id)globalUniqueKeyForKey:(id)key producerPlugin:(id)plugin;
+ (id)guidelineAuthoringAttributedTitle:(id)title;
+ (id)guidelineAuthoringAudioURLs:(id)ls;
+ (id)guidelineAuthoringCurrentPageDuration:(double)duration;
+ (id)guidelineAuthoringDebuggingEnabled:(BOOL)enabled;
+ (id)guidelineAuthoringDefaultMobileRecommendedResolutionSizes;
+ (id)guidelineAuthoringDurationFactor:(double)factor;
+ (id)guidelineAuthoringFitToAudioDuration:(BOOL)duration;
+ (id)guidelineAuthoringInteractiveTransitionSettings:(id)settings;
+ (id)guidelineAuthoringMaximumDuration:(double)duration;
+ (id)guidelineAuthoringMediaAttributes:(id)attributes;
+ (id)guidelineAuthoringMinimumDuration:(double)duration;
+ (id)guidelineAuthoringPageDuration:(double)duration;
+ (id)guidelineAuthoringRandomSeed:(unint64_t)seed;
+ (id)guidelineAuthoringRecommendedResolutionSizes:(id)sizes;
+ (id)guidelineAuthoringSynopsis:(id)synopsis;
+ (id)guidelineAuthoringTitle:(id)title;
+ (id)guidelineAuthoringTotalDuration:(double)duration;
+ (id)guidelineAuthoringTransitionSettings:(id)settings;
+ (id)guidelineLiveAuthoringEnabled:(BOOL)enabled;
+ (id)guidelineWithType:(unint64_t)type key:(id)key value:(id)value;
- (OKMediaItem)mediaItem;
- (OKPresentationCanvas)presentationCanvas;
- (OKPresentationGuideline)init;
- (OKPresentationGuideline)initWithDictionary:(id)dictionary;
- (OKPresentationGuideline)initWithType:(unint64_t)type;
- (OKPresentationGuideline)initWithType:(unint64_t)type key:(id)key value:(id)value;
- (OKProducerPlugin)producerPlugin;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionary;
- (id)globalUniqueKey;
- (id)presentationCanvasKeyPath;
- (void)dealloc;
- (void)setMediaItem:(id)item;
- (void)setPresentationCanvas:(id)canvas;
- (void)setProducerPlugin:(id)plugin;
@end

@implementation OKPresentationGuideline

+ (id)guidelineWithType:(unint64_t)type key:(id)key value:(id)value
{
  v5 = [[self alloc] initWithType:type key:key value:value];

  return v5;
}

- (OKPresentationGuideline)init
{
  v6.receiver = self;
  v6.super_class = OKPresentationGuideline;
  v2 = [(OKPresentationGuideline *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_presentation, 0);
    v3->_type = 0;
    [objc_msgSend(MEMORY[0x277CBEAA8] "date")];
    v3->_timestamp = v4;
    *&v3->_key = 0u;
    *&v3->_mediaItem = 0u;
    *&v3->_presentationCanvas = 0u;
    *&v3->_presentationCanvasKeyPath = 0u;
    v3->_producerPluginUUID = 0;
  }

  return v3;
}

- (OKPresentationGuideline)initWithType:(unint64_t)type
{
  result = [(OKPresentationGuideline *)self init];
  if (result)
  {
    result->_type = type;
  }

  return result;
}

- (OKPresentationGuideline)initWithType:(unint64_t)type key:(id)key value:(id)value
{
  v7 = [(OKPresentationGuideline *)self initWithType:type];
  if (v7)
  {
    v7->_key = [key copy];
    v7->_value = value;
  }

  return v7;
}

- (void)dealloc
{
  objc_storeWeak(&self->_presentation, 0);
  key = self->_key;
  if (key)
  {

    self->_key = 0;
  }

  value = self->_value;
  if (value)
  {

    self->_value = 0;
  }

  mediaItem = self->_mediaItem;
  if (mediaItem)
  {

    self->_mediaItem = 0;
  }

  mediaItemUniqueURLString = self->_mediaItemUniqueURLString;
  if (mediaItemUniqueURLString)
  {

    self->_mediaItemUniqueURLString = 0;
  }

  presentationCanvas = self->_presentationCanvas;
  if (presentationCanvas)
  {

    self->_presentationCanvas = 0;
  }

  presentationCanvasKeyPath = self->_presentationCanvasKeyPath;
  if (presentationCanvasKeyPath)
  {

    self->_presentationCanvasKeyPath = 0;
  }

  producerPlugin = self->_producerPlugin;
  if (producerPlugin)
  {

    self->_producerPlugin = 0;
  }

  producerPluginUUID = self->_producerPluginUUID;
  if (producerPluginUUID)
  {

    self->_producerPluginUUID = 0;
  }

  v11.receiver = self;
  v11.super_class = OKPresentationGuideline;
  [(OKPresentationGuideline *)&v11 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    *(v4 + 32) = [(NSString *)self->_key copy];
    *(v4 + 40) = [self->_value copy];
    [v4 setType:{-[OKPresentationGuideline type](self, "type")}];
    *(v4 + 24) = self->_timestamp;
    *(v4 + 48) = [(OKMediaItem *)self->_mediaItem copy];
    *(v4 + 56) = [(NSString *)self->_mediaItemUniqueURLString copy];
    *(v4 + 64) = self->_presentationCanvas;
    *(v4 + 72) = self->_presentationCanvasType;
    *(v4 + 80) = [(NSString *)self->_presentationCanvasKeyPath copy];
    *(v4 + 88) = self->_producerPlugin;
    *(v4 + 96) = [(NSString *)self->_producerPluginUUID copy];
  }

  return v4;
}

- (OKMediaItem)mediaItem
{
  result = self->_mediaItem;
  if (!result)
  {
    if (self->_mediaItemUniqueURLString)
    {
      presentation = [(OKPresentationGuideline *)self presentation];
      -[OKPresentationGuideline setMediaItem:](self, "setMediaItem:", -[OKPresentation mediaItemForURL:](presentation, "mediaItemForURL:", [MEMORY[0x277CBEBC0] URLWithString:self->_mediaItemUniqueURLString]));
      return self->_mediaItem;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)setMediaItem:(id)item
{
  mediaItem = self->_mediaItem;
  if (mediaItem)
  {

    self->_mediaItem = 0;
  }

  mediaItemUniqueURLString = self->_mediaItemUniqueURLString;
  if (mediaItemUniqueURLString)
  {

    self->_mediaItemUniqueURLString = 0;
  }

  if (item)
  {
    itemCopy = item;
    self->_mediaItem = itemCopy;
    self->_mediaItemUniqueURLString = [(NSString *)[(NSURL *)[(OKMediaItem *)itemCopy uniqueURL] absoluteString] copy];
  }
}

- (OKPresentationCanvas)presentationCanvas
{
  if (!self->_presentationCanvas && self->_presentationCanvasKeyPath)
  {
    presentationCanvasType = self->_presentationCanvasType;
    if (presentationCanvasType == 2)
    {
      v5 = [[(OKPresentationGuideline *)self presentation] canvasForKeyPath:[(OKPresentationGuideline *)self presentationCanvasKeyPath]];
      goto LABEL_8;
    }

    if (presentationCanvasType == 1)
    {
      v5 = [[(OKPresentationGuideline *)self presentation] couchWithName:[(OKPresentationGuideline *)self presentationCanvasKeyPath]];
LABEL_8:
      [(OKPresentationGuideline *)self setPresentationCanvas:v5];
    }
  }

  return self->_presentationCanvas;
}

- (void)setPresentationCanvas:(id)canvas
{
  presentationCanvas = self->_presentationCanvas;
  if (presentationCanvas)
  {

    self->_presentationCanvas = 0;
  }

  presentationCanvasKeyPath = self->_presentationCanvasKeyPath;
  if (presentationCanvasKeyPath)
  {

    self->_presentationCanvasKeyPath = 0;
  }

  if (canvas)
  {
    self->_presentationCanvas = canvas;
    v7 = objc_opt_class();
    v8 = [v7 isSubclassOfClass:objc_opt_class()];
    v9 = 1;
    if (!v8)
    {
      v9 = 2;
    }

    self->_presentationCanvasType = v9;
  }
}

- (id)presentationCanvasKeyPath
{
  result = self->_presentationCanvasKeyPath;
  if (!result)
  {
    result = self->_presentationCanvas;
    if (result)
    {
      result = [objc_msgSend(result "keyPath")];
      self->_presentationCanvasKeyPath = result;
    }
  }

  return result;
}

- (OKProducerPlugin)producerPlugin
{
  result = self->_producerPlugin;
  if (!result)
  {
    if (self->_producerPluginUUID)
    {
      -[OKPresentationGuideline setProducerPlugin:](self, "setProducerPlugin:", [+[OKProducerManager defaultManager](OKProducerManager "defaultManager")]);
      return self->_producerPlugin;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)setProducerPlugin:(id)plugin
{
  producerPlugin = self->_producerPlugin;
  if (producerPlugin)
  {

    self->_producerPlugin = 0;
  }

  producerPluginUUID = self->_producerPluginUUID;
  if (producerPluginUUID)
  {

    self->_producerPluginUUID = 0;
  }

  if (plugin)
  {
    pluginCopy = plugin;
    self->_producerPlugin = pluginCopy;
    self->_producerPluginUUID = [-[OKProducerBundle identifier](pluginCopy "identifier")];
  }
}

- (OKPresentationGuideline)initWithDictionary:(id)dictionary
{
  v4 = [(OKPresentationGuideline *)self init];
  if (v4)
  {
    v5 = [dictionary objectForKey:@"type"];
    if (v5)
    {
      -[OKPresentationGuideline setType:](v4, "setType:", [v5 unsignedIntegerValue]);
    }

    v6 = [dictionary objectForKey:@"timestamp"];
    if (v6)
    {
      [v6 doubleValue];
      v4->_timestamp = v7;
    }

    v8 = [dictionary objectForKey:@"key"];
    if (v8)
    {
      [(OKPresentationGuideline *)v4 setKey:v8];
    }

    v9 = [dictionary objectForKey:@"value"];
    if (v9)
    {
      [(OKPresentationGuideline *)v4 setValue:v9];
    }

    v10 = [dictionary objectForKey:@"mediaItemUniqueURLString"];
    if (v10)
    {
      v4->_mediaItemUniqueURLString = [v10 copy];
    }

    v11 = [dictionary objectForKey:@"presentationCanvasType"];
    if (v11)
    {
      v4->_presentationCanvasType = [v11 integerValue];
    }

    v12 = [dictionary objectForKey:@"presentationCanvasKeyPath"];
    if (v12)
    {
      v4->_presentationCanvasKeyPath = [v12 copy];
    }

    v13 = [dictionary objectForKey:@"producerPluginUUID"];
    if (v13)
    {
      v4->_producerPluginUUID = [v13 copy];
    }
  }

  return v4;
}

- (id)dictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_type), @"type"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_timestamp), @"timestamp"}];
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  value = self->_value;
  if (value)
  {
    [dictionary setObject:value forKey:@"value"];
  }

  mediaItemUniqueURLString = self->_mediaItemUniqueURLString;
  if (mediaItemUniqueURLString)
  {
    [dictionary setObject:mediaItemUniqueURLString forKey:@"mediaItemUniqueURLString"];
  }

  if (self->_presentationCanvasType)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:"), @"presentationCanvasType"}];
  }

  if ([(OKPresentationGuideline *)self presentationCanvasKeyPath])
  {
    [dictionary setObject:-[OKPresentationGuideline presentationCanvasKeyPath](self forKey:{"presentationCanvasKeyPath"), @"presentationCanvasKeyPath"}];
  }

  producerPluginUUID = self->_producerPluginUUID;
  if (producerPluginUUID)
  {
    [dictionary setObject:producerPluginUUID forKey:@"producerPluginUUID"];
  }

  return dictionary;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = OKPresentationGuideline;
  return [-[OKPresentationGuideline description](&v3 description)];
}

- (id)globalUniqueKey
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:self->_key];
  if (self->_mediaItemUniqueURLString)
  {
    [v3 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @":%@", self->_mediaItemUniqueURLString)}];
  }

  if ([(OKPresentationGuideline *)self presentationCanvasKeyPath])
  {
    [v3 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @":%@", -[OKPresentationGuideline presentationCanvasKeyPath](self, "presentationCanvasKeyPath"))}];
  }

  if (self->_producerPluginUUID)
  {
    [v3 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @":%@", self->_producerPluginUUID)}];
  }

  return v3;
}

+ (id)globalUniqueKeyForKey:(id)key mediaItem:(id)item
{
  v5 = [MEMORY[0x277CCAB68] stringWithString:key];
  if (item)
  {
    [v5 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @":%@", objc_msgSend(objc_msgSend(item, "uniqueURL"), "absoluteString"))}];
  }

  return v5;
}

+ (id)globalUniqueKeyForKey:(id)key presentationCanvas:(id)canvas
{
  v5 = [MEMORY[0x277CCAB68] stringWithString:key];
  if (canvas)
  {
    [v5 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @":%@", objc_msgSend(canvas, "keyPath"))}];
  }

  return v5;
}

+ (id)globalUniqueKeyForKey:(id)key producerPlugin:(id)plugin
{
  v5 = [MEMORY[0x277CCAB68] stringWithString:key];
  if (plugin)
  {
    [v5 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @":%@", objc_msgSend(plugin, "identifier"))}];
  }

  return v5;
}

+ (id)globalUniqueKeyForKey:(id)key mediaItem:(id)item presentationCanvas:(id)canvas producerPlugin:(id)plugin
{
  v9 = [MEMORY[0x277CCAB68] stringWithString:key];
  if (item)
  {
    [v9 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @":%@", objc_msgSend(objc_msgSend(item, "uniqueURL"), "absoluteString"))}];
  }

  if (canvas)
  {
    [v9 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @":%@", objc_msgSend(canvas, "keyPath"))}];
  }

  if (plugin)
  {
    [v9 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @":%@", objc_msgSend(plugin, "identifier"))}];
  }

  return v9;
}

+ (id)guidelineLiveAuthoringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];

  return [v4 guidelineWithType:1 key:@"liveAuthoringEnabled" value:v5];
}

+ (id)guidelineAuthoringRecommendedResolutionSizes:(id)sizes
{
  v4 = objc_opt_class();

  return [v4 guidelineWithType:1 key:@"authoringRecommendedResolutionSizes" value:sizes];
}

+ (id)defaultMobileRecommendedResolutionSizes
{
  v3[5] = *MEMORY[0x277D85DE8];
  v3[0] = [MEMORY[0x277CCAE60] valueWithCGSize:{320.0, 568.0}];
  v3[1] = [MEMORY[0x277CCAE60] valueWithCGSize:{568.0, 320.0}];
  v3[2] = [MEMORY[0x277CCAE60] valueWithCGSize:{768.0, 1024.0}];
  v3[3] = [MEMORY[0x277CCAE60] valueWithCGSize:{1024.0, 768.0}];
  v3[4] = [MEMORY[0x277CCAE60] valueWithCGSize:{1920.0, 1080.0}];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:5];
}

+ (id)guidelineAuthoringDefaultMobileRecommendedResolutionSizes
{
  v2 = objc_opt_class();
  defaultMobileRecommendedResolutionSizes = [objc_opt_class() defaultMobileRecommendedResolutionSizes];

  return [v2 guidelineAuthoringRecommendedResolutionSizes:defaultMobileRecommendedResolutionSizes];
}

+ (id)guidelineAuthoringRandomSeed:(unint64_t)seed
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:seed];

  return [v4 guidelineWithType:1 key:@"authoringRandomSeed" value:v5];
}

+ (id)guidelineAuthoringSynopsis:(id)synopsis
{
  v4 = objc_opt_class();

  return [v4 guidelineWithType:1 key:@"authoringSynopsis" value:synopsis];
}

+ (id)guidelineAuthoringAudioURLs:(id)ls
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(ls, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [ls countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(ls);
        }

        [v4 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v8++), "absoluteString")}];
      }

      while (v6 != v8);
      v6 = [ls countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return [objc_opt_class() guidelineWithType:1 key:@"authoringUserAudioURLStrings" value:v4];
}

+ (id)guidelineAuthoringTitle:(id)title
{
  v4 = objc_opt_class();

  return [v4 guidelineWithType:1 key:@"authoringTitle" value:title];
}

+ (id)guidelineAuthoringAttributedTitle:(id)title
{
  v4 = objc_opt_class();

  return [v4 guidelineWithType:1 key:@"authoringAttributedTitle" value:title];
}

+ (id)guidelineAuthoringTransitionSettings:(id)settings
{
  v4 = objc_opt_class();

  return [v4 guidelineWithType:1 key:@"transitionSettings" value:settings];
}

+ (id)guidelineAuthoringInteractiveTransitionSettings:(id)settings
{
  v4 = objc_opt_class();

  return [v4 guidelineWithType:1 key:@"interactiveTransitionSettings" value:settings];
}

+ (id)guidelineAuthoringMediaAttributes:(id)attributes
{
  v4 = objc_opt_class();

  return [v4 guidelineWithType:1 key:@"authoringMediaAttributes" value:attributes];
}

+ (id)guidelineAuthoringPageDuration:(double)duration
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:duration];

  return [v4 guidelineWithType:1 key:@"authoringPageDuration" value:v5];
}

+ (id)guidelineAuthoringCurrentPageDuration:(double)duration
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:duration];

  return [v4 guidelineWithType:1 key:@"authoringCurrentPageDuration" value:v5];
}

+ (id)guidelineAuthoringTotalDuration:(double)duration
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:duration];

  return [v4 guidelineWithType:1 key:@"authoringTotalDuration" value:v5];
}

+ (id)guidelineAuthoringDurationFactor:(double)factor
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:factor];

  return [v4 guidelineWithType:1 key:@"authoringDurationFactor" value:v5];
}

+ (id)guidelineAuthoringMinimumDuration:(double)duration
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:duration];

  return [v4 guidelineWithType:1 key:@"authoringMinimumDuration" value:v5];
}

+ (id)guidelineAuthoringMaximumDuration:(double)duration
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:duration];

  return [v4 guidelineWithType:1 key:@"authoringMaximumDuration" value:v5];
}

+ (id)guidelineAuthoringFitToAudioDuration:(BOOL)duration
{
  durationCopy = duration;
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithBool:durationCopy];

  return [v4 guidelineWithType:1 key:@"authoringFitToAudioDuration" value:v5];
}

+ (id)guidelineAuthoringDebuggingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];

  return [v4 guidelineWithType:1 key:@"authoringDebuggingEnabled" value:v5];
}

@end