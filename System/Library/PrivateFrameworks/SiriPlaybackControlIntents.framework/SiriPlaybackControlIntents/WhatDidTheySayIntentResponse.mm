@interface WhatDidTheySayIntentResponse
- (WhatDidTheySayIntentResponse)initWithPropertiesByName:(id)name;
@end

@implementation WhatDidTheySayIntentResponse

- (WhatDidTheySayIntentResponse)initWithPropertiesByName:(id)name
{
  if (name)
  {
    v3 = sub_268B37B64();
  }

  else
  {
    v3 = 0;
  }

  return WhatDidTheySayIntentResponse.init(propertiesByName:)(v3);
}

@end