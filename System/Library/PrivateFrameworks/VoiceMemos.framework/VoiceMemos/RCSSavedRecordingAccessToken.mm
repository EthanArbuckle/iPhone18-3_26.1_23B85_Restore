@interface RCSSavedRecordingAccessToken
+ (id)tokenWithName:(id)name accessIntent:(int64_t)intent compositionAVURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (RCSSavedRecordingAccessToken)initWithCoder:(id)coder;
- (RCSSavedRecordingAccessToken)initWithName:(id)name accessIntent:(int64_t)intent compositionAVURL:(id)l identifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RCSSavedRecordingAccessToken

+ (id)tokenWithName:(id)name accessIntent:(int64_t)intent compositionAVURL:(id)l
{
  v7 = MEMORY[0x277CCAD78];
  lCopy = l;
  nameCopy = name;
  uUID = [v7 UUID];
  v11 = [objc_alloc(objc_opt_class()) initWithName:nameCopy accessIntent:intent compositionAVURL:lCopy identifier:uUID];

  return v11;
}

- (RCSSavedRecordingAccessToken)initWithName:(id)name accessIntent:(int64_t)intent compositionAVURL:(id)l identifier:(id)identifier
{
  nameCopy = name;
  lCopy = l;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = RCSSavedRecordingAccessToken;
  v14 = [(RCSSavedRecordingAccessToken *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_accessIntent = intent;
    v14->_exclusive = intent == 3;
    objc_storeStrong(&v14->_identifier, identifier);
    objc_storeStrong(&v15->_compositionAVURL, l);
    objc_storeStrong(&v15->_accessName, name);
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(RCSSavedRecordingAccessToken *)self identifier];
      identifier2 = [(RCSSavedRecordingAccessToken *)equalCopy identifier];
      v7 = [identifier isEqual:identifier2];
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
  identifier = [(RCSSavedRecordingAccessToken *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
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
  path = [(NSURL *)self->_compositionAVURL path];
  v9 = [v3 stringWithFormat:@"[RCSSavedRecordingAccessToken-%@ access=%@, name=%@, URL=%@]", uUIDString, v6, accessName, path];

  return v9;
}

- (RCSSavedRecordingAccessToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = RCSSavedRecordingAccessToken;
  v5 = [(RCSSavedRecordingAccessToken *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"RCSIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectForKey:@"RCSAccessName"];
    accessName = v5->_accessName;
    v5->_accessName = v8;

    v10 = [coderCopy decodeObjectForKey:@"RCSCompositionAVURL"];
    compositionAVURL = v5->_compositionAVURL;
    v5->_compositionAVURL = v10;

    v5->_accessIntent = [coderCopy decodeIntegerForKey:@"RCSAccessIntent"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"RCSIdentifier"];
  [coderCopy encodeObject:self->_accessName forKey:@"RCSAccessName"];
  [coderCopy encodeObject:self->_compositionAVURL forKey:@"RCSCompositionAVURL"];
  [coderCopy encodeInteger:self->_accessIntent forKey:@"RCSAccessIntent"];
}

@end