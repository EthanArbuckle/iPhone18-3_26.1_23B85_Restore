@interface WhatDidTheySayIntent
- (WhatDidTheySayIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name;
- (WhatDidTheySayIntent)initWithIdentifier:(id)identifier backingStore:(id)store;
@end

@implementation WhatDidTheySayIntent

- (WhatDidTheySayIntent)initWithIdentifier:(id)identifier backingStore:(id)store
{
  if (identifier)
  {
    v5 = sub_268B37BF4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  storeCopy = store;
  return WhatDidTheySayIntent.init(identifier:backingStore:)(v5, v7, store);
}

- (WhatDidTheySayIntent)initWithDomain:(id)domain verb:(id)verb parametersByName:(id)name
{
  sub_268B37BF4();
  sub_268B37BF4();
  if (name)
  {
    sub_268B37B64();
  }

  return WhatDidTheySayIntent.init(domain:verb:parametersByName:)();
}

@end