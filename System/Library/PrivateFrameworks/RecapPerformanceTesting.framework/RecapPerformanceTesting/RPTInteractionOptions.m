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
  v2 = [(RPTInteractionOptions *)self preferredIdiom];
  if (v2 == 2)
  {
    v2 = [getRCPEventSenderPropertiesClass() mouseSender];
  }

  else if (v2 == 1)
  {
    v2 = [getRCPEventSenderPropertiesClass() trackpadSender];
  }

  else if (!v2)
  {
    v2 = [getRCPEventSenderPropertiesClass() touchScreenDigitizerSender];
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(RPTInteractionOptions *)self preferredIdiom];
  v7 = [(RPTInteractionOptions *)self senderProperties];
  v8 = [v3 stringWithFormat:@"<%@:%p preferredIdiom: %lu senderProperties: %@>", v5, self, v6, v7];;

  return v8;
}

@end