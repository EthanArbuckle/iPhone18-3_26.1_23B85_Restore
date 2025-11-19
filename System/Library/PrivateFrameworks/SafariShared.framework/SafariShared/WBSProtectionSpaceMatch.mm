@interface WBSProtectionSpaceMatch
- (WBSProtectionSpaceMatch)initWithProtectionSpace:(id)a3 credentials:(id)a4 defaultCredential:(id)a5 matchLevel:(int64_t)a6;
- (id)debugDescription;
@end

@implementation WBSProtectionSpaceMatch

- (WBSProtectionSpaceMatch)initWithProtectionSpace:(id)a3 credentials:(id)a4 defaultCredential:(id)a5 matchLevel:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v20.receiver = self;
  v20.super_class = WBSProtectionSpaceMatch;
  v14 = [(WBSProtectionSpaceMatch *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_protectionSpace, a3);
    v16 = [v12 copy];
    credentials = v15->_credentials;
    v15->_credentials = v16;

    objc_storeStrong(&v15->_defaultCredential, a5);
    v15->_matchLevel = a6;
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