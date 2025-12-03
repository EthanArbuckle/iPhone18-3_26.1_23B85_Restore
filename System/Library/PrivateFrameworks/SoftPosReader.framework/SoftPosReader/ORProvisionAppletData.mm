@interface ORProvisionAppletData
- (ORProvisionAppletData)initWithCoder:(id)coder;
- (ORProvisionAppletData)initWithProvisionAppletVersion:(id)version;
@end

@implementation ORProvisionAppletData

- (ORProvisionAppletData)initWithProvisionAppletVersion:(id)version
{
  versionCopy = version;
  v13.receiver = self;
  v13.super_class = ORProvisionAppletData;
  v9 = [(ORProvisionAppletData *)&v13 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(versionCopy, v5, v6, v7, v8);
    provisionAppletVersion = v9->_provisionAppletVersion;
    v9->_provisionAppletVersion = v10;
  }

  return v9;
}

- (ORProvisionAppletData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ORProvisionAppletData;
  v5 = [(ORProvisionAppletData *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"provisionAppletVersion", v8);
    provisionAppletVersion = v5->_provisionAppletVersion;
    v5->_provisionAppletVersion = v9;
  }

  return v5;
}

@end