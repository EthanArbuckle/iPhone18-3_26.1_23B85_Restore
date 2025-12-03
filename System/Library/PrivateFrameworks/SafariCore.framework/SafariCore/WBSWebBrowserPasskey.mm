@interface WBSWebBrowserPasskey
- (WBSWebBrowserPasskey)initWithCoder:(id)coder;
- (WBSWebBrowserPasskey)initWithName:(id)name relyingParty:(id)party credentialID:(id)d userHandle:(id)handle customTitle:(id)title providerName:(id)providerName;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSWebBrowserPasskey

- (WBSWebBrowserPasskey)initWithName:(id)name relyingParty:(id)party credentialID:(id)d userHandle:(id)handle customTitle:(id)title providerName:(id)providerName
{
  nameCopy = name;
  partyCopy = party;
  dCopy = d;
  handleCopy = handle;
  titleCopy = title;
  providerNameCopy = providerName;
  v35.receiver = self;
  v35.super_class = WBSWebBrowserPasskey;
  v20 = [(WBSWebBrowserPasskey *)&v35 init];
  if (v20)
  {
    v21 = [nameCopy copy];
    name = v20->_name;
    v20->_name = v21;

    v23 = [partyCopy copy];
    relyingParty = v20->_relyingParty;
    v20->_relyingParty = v23;

    v25 = [dCopy copy];
    credentialID = v20->_credentialID;
    v20->_credentialID = v25;

    v27 = [handleCopy copy];
    userHandle = v20->_userHandle;
    v20->_userHandle = v27;

    v29 = [titleCopy copy];
    customTitle = v20->_customTitle;
    v20->_customTitle = v29;

    v31 = [providerNameCopy copy];
    providerName = v20->_providerName;
    v20->_providerName = v31;

    v33 = v20;
  }

  return v20;
}

- (WBSWebBrowserPasskey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = WBSWebBrowserPasskey;
  v5 = [(WBSWebBrowserPasskey *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingParty"];
    relyingParty = v5->_relyingParty;
    v5->_relyingParty = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
    credentialID = v5->_credentialID;
    v5->_credentialID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userHandle"];
    userHandle = v5->_userHandle;
    v5->_userHandle = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customTitle"];
    customTitle = v5->_customTitle;
    v5->_customTitle = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"providerName"];
    providerName = v5->_providerName;
    v5->_providerName = v16;

    v18 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_relyingParty forKey:@"relyingParty"];
  [coderCopy encodeObject:self->_credentialID forKey:@"credentialID"];
  [coderCopy encodeObject:self->_userHandle forKey:@"userHandle"];
  [coderCopy encodeObject:self->_customTitle forKey:@"customTitle"];
  [coderCopy encodeObject:self->_providerName forKey:@"providerName"];
}

@end