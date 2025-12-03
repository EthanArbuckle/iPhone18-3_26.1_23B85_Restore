@interface PSUIDeferredDeepLink
- (PSUIDeferredDeepLink)initWithSpecifierID:(id)d resourceDictionary:(id)dictionary completion:(id)completion;
@end

@implementation PSUIDeferredDeepLink

- (PSUIDeferredDeepLink)initWithSpecifierID:(id)d resourceDictionary:(id)dictionary completion:(id)completion
{
  dCopy = d;
  dictionaryCopy = dictionary;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = PSUIDeferredDeepLink;
  v11 = [(PSUIDeferredDeepLink *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(PSUIDeferredDeepLink *)v11 setSpecifierID:dCopy];
    [(PSUIDeferredDeepLink *)v12 setResourceDictionary:dictionaryCopy];
    [(PSUIDeferredDeepLink *)v12 setCompletion:completionCopy];
  }

  return v12;
}

@end