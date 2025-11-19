@interface SXAdvertisementComponent
- (SXAdvertisementComponent)initWithJSONObject:(id)a3 andVersion:(id)a4;
@end

@implementation SXAdvertisementComponent

- (SXAdvertisementComponent)initWithJSONObject:(id)a3 andVersion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 objectForKey:@"placementIdentifier"];

    v9 = v8;
    if (!v10)
    {
      v9 = [v8 mutableCopy];
      v11 = [MEMORY[0x1E696AFB0] UUID];
      v12 = [v11 UUIDString];
      [v9 setObject:v12 forKey:@"placementIdentifier"];
    }
  }

  v15.receiver = self;
  v15.super_class = SXAdvertisementComponent;
  v13 = [(SXJSONObject *)&v15 initWithJSONObject:v9 andVersion:v7];

  return v13;
}

@end