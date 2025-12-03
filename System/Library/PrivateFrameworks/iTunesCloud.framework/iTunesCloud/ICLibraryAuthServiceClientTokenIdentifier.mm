@interface ICLibraryAuthServiceClientTokenIdentifier
- (ICLibraryAuthServiceClientTokenIdentifier)initWithCoder:(id)coder;
- (ICLibraryAuthServiceClientTokenIdentifier)initWithResponseDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICLibraryAuthServiceClientTokenIdentifier

- (void)encodeWithCoder:(id)coder
{
  DSID = self->_DSID;
  coderCopy = coder;
  [coderCopy encodeObject:DSID forKey:@"dsid"];
  [coderCopy encodeObject:self->_deviceGUID forKey:@"deviceGUID"];
}

- (ICLibraryAuthServiceClientTokenIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ICLibraryAuthServiceClientTokenIdentifier;
  v5 = [(ICLibraryAuthServiceClientTokenIdentifier *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];
    DSID = v5->_DSID;
    v5->_DSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceGUID"];
    deviceGUID = v5->_deviceGUID;
    v5->_deviceGUID = v8;
  }

  return v5;
}

- (ICLibraryAuthServiceClientTokenIdentifier)initWithResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(ICLibraryAuthServiceClientTokenIdentifier *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"dsid"];
    if (_NSIsNSNumber())
    {
      objc_storeStrong(&v5->_DSID, v6);
    }

    v7 = [dictionaryCopy objectForKey:@"deviceGUID"];

    if (_NSIsNSString())
    {
      objc_storeStrong(&v5->_deviceGUID, v7);
    }
  }

  return v5;
}

@end