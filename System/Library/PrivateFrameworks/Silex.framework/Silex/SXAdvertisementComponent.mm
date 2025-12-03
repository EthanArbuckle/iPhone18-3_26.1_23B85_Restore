@interface SXAdvertisementComponent
- (SXAdvertisementComponent)initWithJSONObject:(id)object andVersion:(id)version;
@end

@implementation SXAdvertisementComponent

- (SXAdvertisementComponent)initWithJSONObject:(id)object andVersion:(id)version
{
  objectCopy = object;
  versionCopy = version;
  v8 = objectCopy;
  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 objectForKey:@"placementIdentifier"];

    v9 = v8;
    if (!v10)
    {
      v9 = [v8 mutableCopy];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      [v9 setObject:uUIDString forKey:@"placementIdentifier"];
    }
  }

  v15.receiver = self;
  v15.super_class = SXAdvertisementComponent;
  v13 = [(SXJSONObject *)&v15 initWithJSONObject:v9 andVersion:versionCopy];

  return v13;
}

@end