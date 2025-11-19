@interface RCSSavedRecordingAccessToken
+ (id)tokenWithName:(id)a3 accessIntent:(int64_t)a4 compositionAVURL:(id)a5;
- (BOOL)isEqual:(id)a3;
- (RCSSavedRecordingAccessToken)initWithCoder:(id)a3;
- (RCSSavedRecordingAccessToken)initWithName:(id)a3 accessIntent:(int64_t)a4 compositionAVURL:(id)a5 identifier:(id)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RCSSavedRecordingAccessToken

+ (id)tokenWithName:(id)a3 accessIntent:(int64_t)a4 compositionAVURL:(id)a5
{
  v7 = MEMORY[0x277CCAD78];
  v8 = a5;
  v9 = a3;
  v10 = [v7 UUID];
  v11 = [objc_alloc(objc_opt_class()) initWithName:v9 accessIntent:a4 compositionAVURL:v8 identifier:v10];

  return v11;
}

- (RCSSavedRecordingAccessToken)initWithName:(id)a3 accessIntent:(int64_t)a4 compositionAVURL:(id)a5 identifier:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = RCSSavedRecordingAccessToken;
  v14 = [(RCSSavedRecordingAccessToken *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_accessIntent = a4;
    v14->_exclusive = a4 == 3;
    objc_storeStrong(&v14->_identifier, a6);
    objc_storeStrong(&v15->_compositionAVURL, a5);
    objc_storeStrong(&v15->_accessName, a3);
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(RCSSavedRecordingAccessToken *)self identifier];
      v6 = [(RCSSavedRecordingAccessToken *)v4 identifier];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(RCSSavedRecordingAccessToken *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSUUID *)self->_identifier UUIDString];
  v5 = self->_accessIntent - 1;
  if (v5 > 2)
  {
    v6 = @"RCSSavedRecordingAccessIntentUnknown";
  }

  else
  {
    v6 = off_279E44248[v5];
  }

  accessName = self->_accessName;
  v8 = [(NSURL *)self->_compositionAVURL path];
  v9 = [v3 stringWithFormat:@"[RCSSavedRecordingAccessToken-%@ access=%@, name=%@, URL=%@]", v4, v6, accessName, v8];

  return v9;
}

- (RCSSavedRecordingAccessToken)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = RCSSavedRecordingAccessToken;
  v5 = [(RCSSavedRecordingAccessToken *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"RCSIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectForKey:@"RCSAccessName"];
    accessName = v5->_accessName;
    v5->_accessName = v8;

    v10 = [v4 decodeObjectForKey:@"RCSCompositionAVURL"];
    compositionAVURL = v5->_compositionAVURL;
    v5->_compositionAVURL = v10;

    v5->_accessIntent = [v4 decodeIntegerForKey:@"RCSAccessIntent"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"RCSIdentifier"];
  [v5 encodeObject:self->_accessName forKey:@"RCSAccessName"];
  [v5 encodeObject:self->_compositionAVURL forKey:@"RCSCompositionAVURL"];
  [v5 encodeInteger:self->_accessIntent forKey:@"RCSAccessIntent"];
}

@end