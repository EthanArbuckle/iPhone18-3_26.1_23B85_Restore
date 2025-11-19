@interface WBSWebBrowserPasskey
- (WBSWebBrowserPasskey)initWithCoder:(id)a3;
- (WBSWebBrowserPasskey)initWithName:(id)a3 relyingParty:(id)a4 credentialID:(id)a5 userHandle:(id)a6 customTitle:(id)a7 providerName:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSWebBrowserPasskey

- (WBSWebBrowserPasskey)initWithName:(id)a3 relyingParty:(id)a4 credentialID:(id)a5 userHandle:(id)a6 customTitle:(id)a7 providerName:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v35.receiver = self;
  v35.super_class = WBSWebBrowserPasskey;
  v20 = [(WBSWebBrowserPasskey *)&v35 init];
  if (v20)
  {
    v21 = [v14 copy];
    name = v20->_name;
    v20->_name = v21;

    v23 = [v15 copy];
    relyingParty = v20->_relyingParty;
    v20->_relyingParty = v23;

    v25 = [v16 copy];
    credentialID = v20->_credentialID;
    v20->_credentialID = v25;

    v27 = [v17 copy];
    userHandle = v20->_userHandle;
    v20->_userHandle = v27;

    v29 = [v18 copy];
    customTitle = v20->_customTitle;
    v20->_customTitle = v29;

    v31 = [v19 copy];
    providerName = v20->_providerName;
    v20->_providerName = v31;

    v33 = v20;
  }

  return v20;
}

- (WBSWebBrowserPasskey)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = WBSWebBrowserPasskey;
  v5 = [(WBSWebBrowserPasskey *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relyingParty"];
    relyingParty = v5->_relyingParty;
    v5->_relyingParty = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
    credentialID = v5->_credentialID;
    v5->_credentialID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userHandle"];
    userHandle = v5->_userHandle;
    v5->_userHandle = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customTitle"];
    customTitle = v5->_customTitle;
    v5->_customTitle = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"providerName"];
    providerName = v5->_providerName;
    v5->_providerName = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_relyingParty forKey:@"relyingParty"];
  [v5 encodeObject:self->_credentialID forKey:@"credentialID"];
  [v5 encodeObject:self->_userHandle forKey:@"userHandle"];
  [v5 encodeObject:self->_customTitle forKey:@"customTitle"];
  [v5 encodeObject:self->_providerName forKey:@"providerName"];
}

@end