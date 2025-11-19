@interface OKPresentationGuideline
+ (id)defaultMobileRecommendedResolutionSizes;
+ (id)globalUniqueKeyForKey:(id)a3 mediaItem:(id)a4;
+ (id)globalUniqueKeyForKey:(id)a3 mediaItem:(id)a4 presentationCanvas:(id)a5 producerPlugin:(id)a6;
+ (id)globalUniqueKeyForKey:(id)a3 presentationCanvas:(id)a4;
+ (id)globalUniqueKeyForKey:(id)a3 producerPlugin:(id)a4;
+ (id)guidelineAuthoringAttributedTitle:(id)a3;
+ (id)guidelineAuthoringAudioURLs:(id)a3;
+ (id)guidelineAuthoringCurrentPageDuration:(double)a3;
+ (id)guidelineAuthoringDebuggingEnabled:(BOOL)a3;
+ (id)guidelineAuthoringDefaultMobileRecommendedResolutionSizes;
+ (id)guidelineAuthoringDurationFactor:(double)a3;
+ (id)guidelineAuthoringFitToAudioDuration:(BOOL)a3;
+ (id)guidelineAuthoringInteractiveTransitionSettings:(id)a3;
+ (id)guidelineAuthoringMaximumDuration:(double)a3;
+ (id)guidelineAuthoringMediaAttributes:(id)a3;
+ (id)guidelineAuthoringMinimumDuration:(double)a3;
+ (id)guidelineAuthoringPageDuration:(double)a3;
+ (id)guidelineAuthoringRandomSeed:(unint64_t)a3;
+ (id)guidelineAuthoringRecommendedResolutionSizes:(id)a3;
+ (id)guidelineAuthoringSynopsis:(id)a3;
+ (id)guidelineAuthoringTitle:(id)a3;
+ (id)guidelineAuthoringTotalDuration:(double)a3;
+ (id)guidelineAuthoringTransitionSettings:(id)a3;
+ (id)guidelineLiveAuthoringEnabled:(BOOL)a3;
+ (id)guidelineWithType:(unint64_t)a3 key:(id)a4 value:(id)a5;
- (OKMediaItem)mediaItem;
- (OKPresentationCanvas)presentationCanvas;
- (OKPresentationGuideline)init;
- (OKPresentationGuideline)initWithDictionary:(id)a3;
- (OKPresentationGuideline)initWithType:(unint64_t)a3;
- (OKPresentationGuideline)initWithType:(unint64_t)a3 key:(id)a4 value:(id)a5;
- (OKProducerPlugin)producerPlugin;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionary;
- (id)globalUniqueKey;
- (id)presentationCanvasKeyPath;
- (void)dealloc;
- (void)setMediaItem:(id)a3;
- (void)setPresentationCanvas:(id)a3;
- (void)setProducerPlugin:(id)a3;
@end

@implementation OKPresentationGuideline

+ (id)guidelineWithType:(unint64_t)a3 key:(id)a4 value:(id)a5
{
  v5 = [[a1 alloc] initWithType:a3 key:a4 value:a5];

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

- (OKPresentationGuideline)initWithType:(unint64_t)a3
{
  result = [(OKPresentationGuideline *)self init];
  if (result)
  {
    result->_type = a3;
  }

  return result;
}

- (OKPresentationGuideline)initWithType:(unint64_t)a3 key:(id)a4 value:(id)a5
{
  v7 = [(OKPresentationGuideline *)self initWithType:a3];
  if (v7)
  {
    v7->_key = [a4 copy];
    v7->_value = a5;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
      v4 = [(OKPresentationGuideline *)self presentation];
      -[OKPresentationGuideline setMediaItem:](self, "setMediaItem:", -[OKPresentation mediaItemForURL:](v4, "mediaItemForURL:", [MEMORY[0x277CBEBC0] URLWithString:self->_mediaItemUniqueURLString]));
      return self->_mediaItem;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)setMediaItem:(id)a3
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

  if (a3)
  {
    v7 = a3;
    self->_mediaItem = v7;
    self->_mediaItemUniqueURLString = [(NSString *)[(NSURL *)[(OKMediaItem *)v7 uniqueURL] absoluteString] copy];
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

- (void)setPresentationCanvas:(id)a3
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

  if (a3)
  {
    self->_presentationCanvas = a3;
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

- (void)setProducerPlugin:(id)a3
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

  if (a3)
  {
    v7 = a3;
    self->_producerPlugin = v7;
    self->_producerPluginUUID = [-[OKProducerBundle identifier](v7 "identifier")];
  }
}

- (OKPresentationGuideline)initWithDictionary:(id)a3
{
  v4 = [(OKPresentationGuideline *)self init];
  if (v4)
  {
    v5 = [a3 objectForKey:@"type"];
    if (v5)
    {
      -[OKPresentationGuideline setType:](v4, "setType:", [v5 unsignedIntegerValue]);
    }

    v6 = [a3 objectForKey:@"timestamp"];
    if (v6)
    {
      [v6 doubleValue];
      v4->_timestamp = v7;
    }

    v8 = [a3 objectForKey:@"key"];
    if (v8)
    {
      [(OKPresentationGuideline *)v4 setKey:v8];
    }

    v9 = [a3 objectForKey:@"value"];
    if (v9)
    {
      [(OKPresentationGuideline *)v4 setValue:v9];
    }

    v10 = [a3 objectForKey:@"mediaItemUniqueURLString"];
    if (v10)
    {
      v4->_mediaItemUniqueURLString = [v10 copy];
    }

    v11 = [a3 objectForKey:@"presentationCanvasType"];
    if (v11)
    {
      v4->_presentationCanvasType = [v11 integerValue];
    }

    v12 = [a3 objectForKey:@"presentationCanvasKeyPath"];
    if (v12)
    {
      v4->_presentationCanvasKeyPath = [v12 copy];
    }

    v13 = [a3 objectForKey:@"producerPluginUUID"];
    if (v13)
    {
      v4->_producerPluginUUID = [v13 copy];
    }
  }

  return v4;
}

- (id)dictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_type), @"type"}];
  [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_timestamp), @"timestamp"}];
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  value = self->_value;
  if (value)
  {
    [v3 setObject:value forKey:@"value"];
  }

  mediaItemUniqueURLString = self->_mediaItemUniqueURLString;
  if (mediaItemUniqueURLString)
  {
    [v3 setObject:mediaItemUniqueURLString forKey:@"mediaItemUniqueURLString"];
  }

  if (self->_presentationCanvasType)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:"), @"presentationCanvasType"}];
  }

  if ([(OKPresentationGuideline *)self presentationCanvasKeyPath])
  {
    [v3 setObject:-[OKPresentationGuideline presentationCanvasKeyPath](self forKey:{"presentationCanvasKeyPath"), @"presentationCanvasKeyPath"}];
  }

  producerPluginUUID = self->_producerPluginUUID;
  if (producerPluginUUID)
  {
    [v3 setObject:producerPluginUUID forKey:@"producerPluginUUID"];
  }

  return v3;
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

+ (id)globalUniqueKeyForKey:(id)a3 mediaItem:(id)a4
{
  v5 = [MEMORY[0x277CCAB68] stringWithString:a3];
  if (a4)
  {
    [v5 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @":%@", objc_msgSend(objc_msgSend(a4, "uniqueURL"), "absoluteString"))}];
  }

  return v5;
}

+ (id)globalUniqueKeyForKey:(id)a3 presentationCanvas:(id)a4
{
  v5 = [MEMORY[0x277CCAB68] stringWithString:a3];
  if (a4)
  {
    [v5 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @":%@", objc_msgSend(a4, "keyPath"))}];
  }

  return v5;
}

+ (id)globalUniqueKeyForKey:(id)a3 producerPlugin:(id)a4
{
  v5 = [MEMORY[0x277CCAB68] stringWithString:a3];
  if (a4)
  {
    [v5 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @":%@", objc_msgSend(a4, "identifier"))}];
  }

  return v5;
}

+ (id)globalUniqueKeyForKey:(id)a3 mediaItem:(id)a4 presentationCanvas:(id)a5 producerPlugin:(id)a6
{
  v9 = [MEMORY[0x277CCAB68] stringWithString:a3];
  if (a4)
  {
    [v9 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @":%@", objc_msgSend(objc_msgSend(a4, "uniqueURL"), "absoluteString"))}];
  }

  if (a5)
  {
    [v9 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @":%@", objc_msgSend(a5, "keyPath"))}];
  }

  if (a6)
  {
    [v9 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @":%@", objc_msgSend(a6, "identifier"))}];
  }

  return v9;
}

+ (id)guidelineLiveAuthoringEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];

  return [v4 guidelineWithType:1 key:@"liveAuthoringEnabled" value:v5];
}

+ (id)guidelineAuthoringRecommendedResolutionSizes:(id)a3
{
  v4 = objc_opt_class();

  return [v4 guidelineWithType:1 key:@"authoringRecommendedResolutionSizes" value:a3];
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
  v3 = [objc_opt_class() defaultMobileRecommendedResolutionSizes];

  return [v2 guidelineAuthoringRecommendedResolutionSizes:v3];
}

+ (id)guidelineAuthoringRandomSeed:(unint64_t)a3
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];

  return [v4 guidelineWithType:1 key:@"authoringRandomSeed" value:v5];
}

+ (id)guidelineAuthoringSynopsis:(id)a3
{
  v4 = objc_opt_class();

  return [v4 guidelineWithType:1 key:@"authoringSynopsis" value:a3];
}

+ (id)guidelineAuthoringAudioURLs:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a3, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(a3);
        }

        [v4 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v8++), "absoluteString")}];
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return [objc_opt_class() guidelineWithType:1 key:@"authoringUserAudioURLStrings" value:v4];
}

+ (id)guidelineAuthoringTitle:(id)a3
{
  v4 = objc_opt_class();

  return [v4 guidelineWithType:1 key:@"authoringTitle" value:a3];
}

+ (id)guidelineAuthoringAttributedTitle:(id)a3
{
  v4 = objc_opt_class();

  return [v4 guidelineWithType:1 key:@"authoringAttributedTitle" value:a3];
}

+ (id)guidelineAuthoringTransitionSettings:(id)a3
{
  v4 = objc_opt_class();

  return [v4 guidelineWithType:1 key:@"transitionSettings" value:a3];
}

+ (id)guidelineAuthoringInteractiveTransitionSettings:(id)a3
{
  v4 = objc_opt_class();

  return [v4 guidelineWithType:1 key:@"interactiveTransitionSettings" value:a3];
}

+ (id)guidelineAuthoringMediaAttributes:(id)a3
{
  v4 = objc_opt_class();

  return [v4 guidelineWithType:1 key:@"authoringMediaAttributes" value:a3];
}

+ (id)guidelineAuthoringPageDuration:(double)a3
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];

  return [v4 guidelineWithType:1 key:@"authoringPageDuration" value:v5];
}

+ (id)guidelineAuthoringCurrentPageDuration:(double)a3
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];

  return [v4 guidelineWithType:1 key:@"authoringCurrentPageDuration" value:v5];
}

+ (id)guidelineAuthoringTotalDuration:(double)a3
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];

  return [v4 guidelineWithType:1 key:@"authoringTotalDuration" value:v5];
}

+ (id)guidelineAuthoringDurationFactor:(double)a3
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];

  return [v4 guidelineWithType:1 key:@"authoringDurationFactor" value:v5];
}

+ (id)guidelineAuthoringMinimumDuration:(double)a3
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];

  return [v4 guidelineWithType:1 key:@"authoringMinimumDuration" value:v5];
}

+ (id)guidelineAuthoringMaximumDuration:(double)a3
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];

  return [v4 guidelineWithType:1 key:@"authoringMaximumDuration" value:v5];
}

+ (id)guidelineAuthoringFitToAudioDuration:(BOOL)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];

  return [v4 guidelineWithType:1 key:@"authoringFitToAudioDuration" value:v5];
}

+ (id)guidelineAuthoringDebuggingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];

  return [v4 guidelineWithType:1 key:@"authoringDebuggingEnabled" value:v5];
}

@end