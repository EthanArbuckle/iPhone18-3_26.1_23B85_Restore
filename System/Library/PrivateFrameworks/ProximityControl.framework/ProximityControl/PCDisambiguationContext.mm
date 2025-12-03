@interface PCDisambiguationContext
- (PCDisambiguationContext)initWithCoder:(id)coder;
- (PCDisambiguationContext)initWithIdentifier:(id)identifier direction:(int64_t)direction activityData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)leadingImage;
- (id)subtitleText;
- (id)titleText;
- (void)cacheActivityData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCDisambiguationContext

- (PCDisambiguationContext)initWithIdentifier:(id)identifier direction:(int64_t)direction activityData:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = PCDisambiguationContext;
  v11 = [(PCDisambiguationContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_deviceIdentifier, identifier);
    v12->_interactionDirection = direction;
    [(PCDisambiguationContext *)v12 cacheActivityData:dataCopy];
  }

  return v12;
}

- (void)cacheActivityData:(id)data
{
  v4 = [data copy];
  activityData = self->_activityData;
  self->_activityData = v4;

  v8 = [objc_alloc(MEMORY[0x277CCAE58]) _initWithUserActivityData:self->_activityData];
  v6 = [PCActivityUtility activityFrom:v8];
  activity = self->_activity;
  self->_activity = v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PCDisambiguationContext alloc];
  deviceIdentifier = self->_deviceIdentifier;
  interactionDirection = self->_interactionDirection;
  activityData = self->_activityData;

  return [(PCDisambiguationContext *)v4 initWithIdentifier:deviceIdentifier direction:interactionDirection activityData:activityData];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceIdentifier = self->_deviceIdentifier;
  v8 = coderCopy;
  if (deviceIdentifier)
  {
    [coderCopy encodeObject:deviceIdentifier forKey:@"did"];
    coderCopy = v8;
  }

  interactionDirection = self->_interactionDirection;
  if (interactionDirection)
  {
    [v8 encodeInteger:interactionDirection forKey:@"id"];
    coderCopy = v8;
  }

  activityData = self->_activityData;
  if (activityData)
  {
    [v8 encodeObject:activityData forKey:@"act"];
    coderCopy = v8;
  }
}

- (id)titleText
{
  if ([(PCDisambiguationContext *)self interactionDirection]== 2)
  {
    v3 = [PCLocalizedString localizedStringForKey:13];
    v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v3];
LABEL_5:

    goto LABEL_7;
  }

  if ([(PCDisambiguationContext *)self interactionDirection]== 1)
  {
    v3 = [PCLocalizedString localizedStringForKey:12];
    v5 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v3];
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"iphone"];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v8 = [v6 imageWithTintColor:systemBlueColor];

    v9 = objc_alloc_init(MEMORY[0x277D74270]);
    [v9 setImage:v8];
    v10 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v9];
    v11 = objc_alloc_init(MEMORY[0x277CCAB48]);
    [v11 appendAttributedString:v10];
    [v11 appendAttributedString:v5];
    v4 = [v11 copy];

    goto LABEL_5;
  }

  v4 = objc_alloc_init(MEMORY[0x277CCA898]);
LABEL_7:

  return v4;
}

- (id)subtitleText
{
  if ([(PCDisambiguationContext *)self interactionDirection]== 2)
  {
    goto LABEL_2;
  }

  activity = [(PCDisambiguationContext *)self activity];

  if (activity)
  {
    activity2 = [(PCDisambiguationContext *)self activity];
    pcactivityType = [activity2 pcactivityType];

    if (pcactivityType)
    {
      if (pcactivityType != 1)
      {
LABEL_2:
        activity = 0;
        goto LABEL_9;
      }

      activity3 = [(PCDisambiguationContext *)self activity];
      shortDescription = [activity3 shortDescription];
    }

    else
    {
      activity3 = [(PCDisambiguationContext *)self activity];
      shortDescription = [activity3 description];
    }

    activity = shortDescription;
  }

LABEL_9:

  return activity;
}

- (id)leadingImage
{
  activity = [(PCDisambiguationContext *)self activity];

  if (!activity)
  {
    v14 = objc_alloc_init(MEMORY[0x277D755B8]);
    goto LABEL_14;
  }

  v4 = MEMORY[0x277D755D0];
  v5 = [MEMORY[0x277D74300] systemFontOfSize:26.0];
  v6 = [v4 configurationWithFont:v5];

  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"iphone.and.arrow.forward" withConfiguration:v6];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v9 = [v7 imageWithTintColor:systemBlueColor];

  activity2 = [(PCDisambiguationContext *)self activity];
  pcactivityType = [activity2 pcactivityType];

  activity3 = [(PCDisambiguationContext *)self activity];
  v13 = activity3;
  if (pcactivityType == 1)
  {
    if ([activity3 direction] == 2)
    {
      v14 = v9;
    }

    else
    {
      activity4 = [(PCDisambiguationContext *)self activity];
      v14 = [PCActivityUtility disambiguationButtonImageForActivity:activity4];
    }

    goto LABEL_13;
  }

  pcactivityType2 = [activity3 pcactivityType];

  if (pcactivityType2)
  {
    v16 = objc_alloc_init(MEMORY[0x277D755B8]);
  }

  else
  {
    if ([(PCDisambiguationContext *)self interactionDirection]!= 2)
    {
      activity5 = [(PCDisambiguationContext *)self activity];
      v14 = [PCActivityUtility disambiguationButtonImageForActivity:activity5];

      goto LABEL_13;
    }

    v16 = v9;
  }

  v14 = v16;
LABEL_13:

LABEL_14:

  return v14;
}

- (PCDisambiguationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PCDisambiguationContext;
  v9 = 0;
  v5 = [(PCDisambiguationContext *)&v8 init];
  if (v5)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = coderCopy;
    if ([v6 containsValueForKey:@"id"])
    {
      v5->_interactionDirection = [v6 decodeIntegerForKey:@"id"];
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    [(PCDisambiguationContext *)v5 cacheActivityData:v9];
  }

  return v5;
}

@end