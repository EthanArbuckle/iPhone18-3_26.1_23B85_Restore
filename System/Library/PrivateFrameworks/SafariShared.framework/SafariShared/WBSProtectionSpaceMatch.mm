@interface WBSProtectionSpaceMatch
- (WBSProtectionSpaceMatch)initWithProtectionSpace:(id)space credentials:(id)credentials defaultCredential:(id)credential matchLevel:(int64_t)level;
- (id)debugDescription;
@end

@implementation WBSProtectionSpaceMatch

- (WBSProtectionSpaceMatch)initWithProtectionSpace:(id)space credentials:(id)credentials defaultCredential:(id)credential matchLevel:(int64_t)level
{
  spaceCopy = space;
  credentialsCopy = credentials;
  credentialCopy = credential;
  v20.receiver = self;
  v20.super_class = WBSProtectionSpaceMatch;
  v14 = [(WBSProtectionSpaceMatch *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_protectionSpace, space);
    v16 = [credentialsCopy copy];
    credentials = v15->_credentials;
    v15->_credentials = v16;

    objc_storeStrong(&v15->_defaultCredential, credential);
    v15->_matchLevel = level;
    v18 = v15;
  }

  return v15;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p protection space = %@; _matchLevel = %ld >", v5, self, self->_protectionSpace, self->_matchLevel];;

  return v6;
}

@end