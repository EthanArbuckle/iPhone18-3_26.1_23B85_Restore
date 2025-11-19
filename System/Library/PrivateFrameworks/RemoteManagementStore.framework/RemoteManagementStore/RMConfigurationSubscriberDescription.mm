@interface RMConfigurationSubscriberDescription
+ (id)descriptionWithEventsDictionary:(id)a3;
+ (id)descriptionWithServiceDictionary:(id)a3;
- (RMConfigurationSubscriberDescription)initWithDictionary:(id)a3;
- (RMConfigurationSubscriberDescription)initWithTypes:(id)a3;
@end

@implementation RMConfigurationSubscriberDescription

+ (id)descriptionWithEventsDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"ConfigurationSubscriber"];
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

+ (id)descriptionWithServiceDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"ConfigurationSubscriber"];
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

- (RMConfigurationSubscriberDescription)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"ManagedSettings"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 BOOLValue])
  {
    v6 = [MEMORY[0x277D46010] managedSettingsSchemas];
    v7 = [v6 allKeys];
    v8 = [(RMConfigurationSubscriberDescription *)self initWithTypes:v7];
  }

  else
  {
    v9 = [v4 objectForKeyedSubscript:@"Types"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_6];
      v6 = [v9 filteredArrayUsingPredicate:v10];

      v9 = v10;
    }

    else
    {
      v6 = 0;
    }

    v8 = [(RMConfigurationSubscriberDescription *)self initWithTypes:v6];
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

- (RMConfigurationSubscriberDescription)initWithTypes:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RMConfigurationSubscriberDescription;
  v5 = [(RMConfigurationSubscriberDescription *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    types = v5->_types;
    v5->_types = v6;
  }

  return v5;
}

@end