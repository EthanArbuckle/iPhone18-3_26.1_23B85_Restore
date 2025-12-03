@interface RPTInteractionOptions
+ (RPTInteractionOptions)defaultForPlatform;
- (RCPEventSenderProperties)senderProperties;
- (RPTInteractionOptions)init;
- (id)description;
@end

@implementation RPTInteractionOptions

- (RPTInteractionOptions)init
{
  v3.receiver = self;
  v3.super_class = RPTInteractionOptions;
  result = [(RPTInteractionOptions *)&v3 init];
  if (result)
  {
    result->_pointerFrequency = 120;
  }

  return result;
}

+ (RPTInteractionOptions)defaultForPlatform
{
  if (defaultForPlatform_onceToken != -1)
  {
    +[RPTInteractionOptions defaultForPlatform];
  }

  v3 = defaultForPlatform_defaultForPlatform;

  return v3;
}

uint64_t __43__RPTInteractionOptions_defaultForPlatform__block_invoke()
{
  v0 = objc_alloc_init(RPTInteractionOptions);
  v1 = defaultForPlatform_defaultForPlatform;
  defaultForPlatform_defaultForPlatform = v0;

  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 isiOSAppOnMac];

  v4 = defaultForPlatform_defaultForPlatform;

  return [v4 setPreferredIdiom:v3];
}

- (RCPEventSenderProperties)senderProperties
{
  preferredIdiom = [(RPTInteractionOptions *)self preferredIdiom];
  if (preferredIdiom == 2)
  {
    preferredIdiom = [getRCPEventSenderPropertiesClass() mouseSender];
  }

  else if (preferredIdiom == 1)
  {
    preferredIdiom = [getRCPEventSenderPropertiesClass() trackpadSender];
  }

  else if (!preferredIdiom)
  {
    preferredIdiom = [getRCPEventSenderPropertiesClass() touchScreenDigitizerSender];
  }

  return preferredIdiom;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  preferredIdiom = [(RPTInteractionOptions *)self preferredIdiom];
  senderProperties = [(RPTInteractionOptions *)self senderProperties];
  v8 = [v3 stringWithFormat:@"<%@:%p preferredIdiom: %lu senderProperties: %@>", v5, self, preferredIdiom, senderProperties];;

  return v8;
}

@end