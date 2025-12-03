@interface SXComponentMergerClassProvider
- (Class)classForObject:(id)object specVersion:(id)version;
@end

@implementation SXComponentMergerClassProvider

- (Class)classForObject:(id)object specVersion:(id)version
{
  versionCopy = version;
  objectCopy = object;
  v7 = +[SXJSONObjectComponentSupport shared];
  objectValueClassBlock = [v7 objectValueClassBlock];

  v9 = objc_opt_class();
  v10 = (objectValueClassBlock)[2](objectValueClassBlock, objectCopy, v9, versionCopy);

  return v10;
}

@end