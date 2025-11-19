@interface PCDisambiguationContext
- (PCDisambiguationContext)initWithCoder:(id)a3;
- (PCDisambiguationContext)initWithIdentifier:(id)a3 direction:(int64_t)a4 activityData:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)leadingImage;
- (id)subtitleText;
- (id)titleText;
- (void)cacheActivityData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCDisambiguationContext

- (PCDisambiguationContext)initWithIdentifier:(id)a3 direction:(int64_t)a4 activityData:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PCDisambiguationContext;
  v11 = [(PCDisambiguationContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_deviceIdentifier, a3);
    v12->_interactionDirection = a4;
    [(PCDisambiguationContext *)v12 cacheActivityData:v10];
  }

  return v12;
}

- (void)cacheActivityData:(id)a3
{
  v4 = [a3 copy];
  activityData = self->_activityData;
  self->_activityData = v4;

  v8 = [objc_alloc(MEMORY[0x277CCAE58]) _initWithUserActivityData:self->_activityData];
  v6 = [PCActivityUtility activityFrom:v8];
  activity = self->_activity;
  self->_activity = v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PCDisambiguationContext alloc];
  deviceIdentifier = self->_deviceIdentifier;
  interactionDirection = self->_interactionDirection;
  activityData = self->_activityData;

  return [(PCDisambiguationContext *)v4 initWithIdentifier:deviceIdentifier direction:interactionDirection activityData:activityData];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  deviceIdentifier = self->_deviceIdentifier;
  v8 = v4;
  if (deviceIdentifier)
  {
    [v4 encodeObject:deviceIdentifier forKey:@"did"];
    v4 = v8;
  }

  interactionDirection = self->_interactionDirection;
  if (interactionDirection)
  {
    [v8 encodeInteger:interactionDirection forKey:@"id"];
    v4 = v8;
  }

  activityData = self->_activityData;
  if (activityData)
  {
    [v8 encodeObject:activityData forKey:@"act"];
    v4 = v8;
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
    v7 = [MEMORY[0x277D75348] systemBlueColor];
    v8 = [v6 imageWithTintColor:v7];

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

  v3 = [(PCDisambiguationContext *)self activity];

  if (v3)
  {
    v4 = [(PCDisambiguationContext *)self activity];
    v5 = [v4 pcactivityType];

    if (v5)
    {
      if (v5 != 1)
      {
LABEL_2:
        v3 = 0;
        goto LABEL_9;
      }

      v6 = [(PCDisambiguationContext *)self activity];
      v7 = [v6 shortDescription];
    }

    else
    {
      v6 = [(PCDisambiguationContext *)self activity];
      v7 = [v6 description];
    }

    v3 = v7;
  }

LABEL_9:

  return v3;
}

- (id)leadingImage
{
  v3 = [(PCDisambiguationContext *)self activity];

  if (!v3)
  {
    v14 = objc_alloc_init(MEMORY[0x277D755B8]);
    goto LABEL_14;
  }

  v4 = MEMORY[0x277D755D0];
  v5 = [MEMORY[0x277D74300] systemFontOfSize:26.0];
  v6 = [v4 configurationWithFont:v5];

  v7 = [MEMORY[0x277D755B8] systemImageNamed:@"iphone.and.arrow.forward" withConfiguration:v6];
  v8 = [MEMORY[0x277D75348] systemBlueColor];
  v9 = [v7 imageWithTintColor:v8];

  v10 = [(PCDisambiguationContext *)self activity];
  v11 = [v10 pcactivityType];

  v12 = [(PCDisambiguationContext *)self activity];
  v13 = v12;
  if (v11 == 1)
  {
    if ([v12 direction] == 2)
    {
      v14 = v9;
    }

    else
    {
      v17 = [(PCDisambiguationContext *)self activity];
      v14 = [PCActivityUtility disambiguationButtonImageForActivity:v17];
    }

    goto LABEL_13;
  }

  v15 = [v12 pcactivityType];

  if (v15)
  {
    v16 = objc_alloc_init(MEMORY[0x277D755B8]);
  }

  else
  {
    if ([(PCDisambiguationContext *)self interactionDirection]!= 2)
    {
      v19 = [(PCDisambiguationContext *)self activity];
      v14 = [PCActivityUtility disambiguationButtonImageForActivity:v19];

      goto LABEL_13;
    }

    v16 = v9;
  }

  v14 = v16;
LABEL_13:

LABEL_14:

  return v14;
}

- (PCDisambiguationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PCDisambiguationContext;
  v9 = 0;
  v5 = [(PCDisambiguationContext *)&v8 init];
  if (v5)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = v4;
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