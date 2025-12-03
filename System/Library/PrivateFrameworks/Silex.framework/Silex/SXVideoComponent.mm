@interface SXVideoComponent
- (BOOL)allowsPrerollAdsWithValue:(id)value withType:(int)type;
- (SXVideoComponent)initWithJSONObject:(id)object andVersion:(id)version;
- (double)aspectRatioWithValue:(id)value withType:(int)type;
@end

@implementation SXVideoComponent

- (SXVideoComponent)initWithJSONObject:(id)object andVersion:(id)version
{
  objectCopy = object;
  versionCopy = version;
  v8 = objectCopy;
  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 objectForKey:@"prerollPlacementIdentifier"];

    v9 = v8;
    if (!v10)
    {
      v9 = [v8 mutableCopy];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      [v9 setObject:uUIDString forKey:@"prerollPlacementIdentifier"];
    }
  }

  v15.receiver = self;
  v15.super_class = SXVideoComponent;
  v13 = [(SXJSONObject *)&v15 initWithJSONObject:v9 andVersion:versionCopy];

  return v13;
}

- (double)aspectRatioWithValue:(id)value withType:(int)type
{
  if (type != 2)
  {
    return 1.77777779;
  }

  [value floatValue];
  v5 = v4;
  v6 = v4 == 0.0;
  result = 1.77777779;
  if (!v6)
  {
    return v5;
  }

  return result;
}

- (BOOL)allowsPrerollAdsWithValue:(id)value withType:(int)type
{
  if (value && type == 2)
  {
    return [value BOOLValue];
  }

  else
  {
    return 1;
  }
}

@end