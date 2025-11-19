@interface ICLibraryAuthServiceClientTokenIdentifier
- (ICLibraryAuthServiceClientTokenIdentifier)initWithCoder:(id)a3;
- (ICLibraryAuthServiceClientTokenIdentifier)initWithResponseDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICLibraryAuthServiceClientTokenIdentifier

- (void)encodeWithCoder:(id)a3
{
  DSID = self->_DSID;
  v5 = a3;
  [v5 encodeObject:DSID forKey:@"dsid"];
  [v5 encodeObject:self->_deviceGUID forKey:@"deviceGUID"];
}

- (ICLibraryAuthServiceClientTokenIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICLibraryAuthServiceClientTokenIdentifier;
  v5 = [(ICLibraryAuthServiceClientTokenIdentifier *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];
    DSID = v5->_DSID;
    v5->_DSID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceGUID"];
    deviceGUID = v5->_deviceGUID;
    v5->_deviceGUID = v8;
  }

  return v5;
}

- (ICLibraryAuthServiceClientTokenIdentifier)initWithResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = [(ICLibraryAuthServiceClientTokenIdentifier *)self init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"dsid"];
    if (_NSIsNSNumber())
    {
      objc_storeStrong(&v5->_DSID, v6);
    }

    v7 = [v4 objectForKey:@"deviceGUID"];

    if (_NSIsNSString())
    {
      objc_storeStrong(&v5->_deviceGUID, v7);
    }
  }

  return v5;
}

@end