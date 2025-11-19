@interface ORProvisionAppletData
- (ORProvisionAppletData)initWithCoder:(id)a3;
- (ORProvisionAppletData)initWithProvisionAppletVersion:(id)a3;
@end

@implementation ORProvisionAppletData

- (ORProvisionAppletData)initWithProvisionAppletVersion:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ORProvisionAppletData;
  v9 = [(ORProvisionAppletData *)&v13 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(v4, v5, v6, v7, v8);
    provisionAppletVersion = v9->_provisionAppletVersion;
    v9->_provisionAppletVersion = v10;
  }

  return v9;
}

- (ORProvisionAppletData)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ORProvisionAppletData;
  v5 = [(ORProvisionAppletData *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"provisionAppletVersion", v8);
    provisionAppletVersion = v5->_provisionAppletVersion;
    v5->_provisionAppletVersion = v9;
  }

  return v5;
}

@end