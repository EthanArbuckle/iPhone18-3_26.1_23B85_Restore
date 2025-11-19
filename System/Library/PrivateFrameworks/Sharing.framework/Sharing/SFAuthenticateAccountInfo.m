@interface SFAuthenticateAccountInfo
- (SFAuthenticateAccountInfo)initWithType:(unsigned int)a3 altDSID:(id)a4;
- (id)description;
@end

@implementation SFAuthenticateAccountInfo

- (SFAuthenticateAccountInfo)initWithType:(unsigned int)a3 altDSID:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SFAuthenticateAccountInfo;
  v8 = [(SFAuthenticateAccountInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_altDSID, a4);
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: {type: %d, altDSID=%@}", v5, self->_type, self->_altDSID];

  return v6;
}

@end