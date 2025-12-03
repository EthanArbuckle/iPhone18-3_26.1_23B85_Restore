@interface SXActionEngine
- (SXActionEngine)init;
- (id)actionForAddition:(id)addition;
- (id)actionForURL:(id)l;
- (void)registerFactory:(id)factory URLHost:(id)host;
- (void)registerFactory:(id)factory additionType:(Class)type;
@end

@implementation SXActionEngine

- (SXActionEngine)init
{
  v8.receiver = self;
  v8.super_class = SXActionEngine;
  v2 = [(SXActionEngine *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    additionFactories = v2->_additionFactories;
    v2->_additionFactories = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    hostNameFactories = v2->_hostNameFactories;
    v2->_hostNameFactories = dictionary2;
  }

  return v2;
}

- (id)actionForAddition:(id)addition
{
  additionCopy = addition;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  v8 = 0;
  if (additionCopy && v6)
  {
    additionFactories = [(SXActionEngine *)self additionFactories];
    v10 = [additionFactories objectForKey:v7];

    v8 = [v10 actionForAddition:additionCopy];
  }

  return v8;
}

- (id)actionForURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  if (host && ([lCopy scheme], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"action"), v6, v7))
  {
    hostNameFactories = [(SXActionEngine *)self hostNameFactories];
    v9 = [hostNameFactories objectForKey:host];

    v10 = [v9 actionForURL:lCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)registerFactory:(id)factory additionType:(Class)type
{
  if (factory && type)
  {
    factoryCopy = factory;
    additionFactories = [(SXActionEngine *)self additionFactories];
    v7 = NSStringFromClass(type);
    [additionFactories setObject:factoryCopy forKey:v7];
  }
}

- (void)registerFactory:(id)factory URLHost:(id)host
{
  if (factory && host)
  {
    hostCopy = host;
    factoryCopy = factory;
    hostNameFactories = [(SXActionEngine *)self hostNameFactories];
    [hostNameFactories setObject:factoryCopy forKey:hostCopy];
  }
}

@end