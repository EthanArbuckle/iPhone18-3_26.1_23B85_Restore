@interface RMConfigurationSubscriberDescription
+ (id)descriptionWithEventsDictionary:(id)dictionary;
+ (id)descriptionWithServiceDictionary:(id)dictionary;
- (RMConfigurationSubscriberDescription)initWithDictionary:(id)dictionary;
- (RMConfigurationSubscriberDescription)initWithTypes:(id)types;
@end

@implementation RMConfigurationSubscriberDescription

+ (id)descriptionWithEventsDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"ConfigurationSubscriber"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [RMConfigurationSubscriberDescription alloc];
  if (isKindOfClass)
  {
    v6 = [(RMConfigurationSubscriberDescription *)v5 initWithDictionary:v3];
  }

  else
  {
    v6 = [(RMConfigurationSubscriberDescription *)v5 initWithTypes:0];
  }

  v7 = v6;

  return v7;
}

+ (id)descriptionWithServiceDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"ConfigurationSubscriber"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = [RMConfigurationSubscriberDescription alloc];
  if (isKindOfClass)
  {
    v6 = [(RMConfigurationSubscriberDescription *)v5 initWithDictionary:v3];
  }

  else
  {
    v6 = [(RMConfigurationSubscriberDescription *)v5 initWithTypes:0];
  }

  v7 = v6;

  return v7;
}

- (RMConfigurationSubscriberDescription)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"ManagedSettings"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 BOOLValue])
  {
    managedSettingsSchemas = [MEMORY[0x277D46010] managedSettingsSchemas];
    allKeys = [managedSettingsSchemas allKeys];
    v8 = [(RMConfigurationSubscriberDescription *)self initWithTypes:allKeys];
  }

  else
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"Types"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_6];
      managedSettingsSchemas = [v9 filteredArrayUsingPredicate:v10];

      v9 = v10;
    }

    else
    {
      managedSettingsSchemas = 0;
    }

    v8 = [(RMConfigurationSubscriberDescription *)self initWithTypes:managedSettingsSchemas];
  }

  return v8;
}

uint64_t __59__RMConfigurationSubscriberDescription_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (RMConfigurationSubscriberDescription)initWithTypes:(id)types
{
  typesCopy = types;
  v9.receiver = self;
  v9.super_class = RMConfigurationSubscriberDescription;
  v5 = [(RMConfigurationSubscriberDescription *)&v9 init];
  if (v5)
  {
    v6 = [typesCopy copy];
    types = v5->_types;
    v5->_types = v6;
  }

  return v5;
}

@end