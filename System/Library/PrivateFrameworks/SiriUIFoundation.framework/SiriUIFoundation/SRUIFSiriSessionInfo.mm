@interface SRUIFSiriSessionInfo
- (BOOL)applyInfo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SRUIFSiriSessionInfo)init;
- (SRUIFSiriSessionInfo)initWithCoder:(id)a3;
- (id)_initWithIdentifier:(id)a3;
- (id)_setPropertyValue:(id)a3 withSelector:(SEL)a4;
- (id)_strippedInfo;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)setUserAccountCountGenerateLightweightInfo:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRUIFSiriSessionInfo

- (SRUIFSiriSessionInfo)init
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  v5 = [(SRUIFSiriSessionInfo *)self _initWithIdentifier:v4];

  return v5;
}

- (id)_strippedInfo
{
  v2 = [[SRUIFSiriSessionInfo alloc] _initWithIdentifier:self->_identifier];

  return v2;
}

- (id)setUserAccountCountGenerateLightweightInfo:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(SRUIFSiriSessionInfo *)self _setPropertyValue:v4 withSelector:sel_setUserAccountCount_];

  return v5;
}

- (id)_setPropertyValue:(id)a3 withSelector:(SEL)a4
{
  v6 = a3;
  v7 = [(SRUIFSiriSessionInfo *)self _strippedInfo];
  [v7 performSelector:a4 withObject:v6];

  if (![(SRUIFSiriSessionInfo *)self applyInfo:v7])
  {

    v7 = 0;
  }

  return v7;
}

- (BOOL)applyInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(SRUIFSiriSessionInfo *)self identifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [v4 assistantVersion];
    if (v8)
    {
      objc_storeStrong(&self->_assistantVersion, v8);
    }

    v9 = [v4 activeAccount];
    if (v9)
    {
      objc_storeStrong(&self->_activeAccount, v9);
    }

    v10 = [v4 userAccountCount];
    userAccountCount = self->_userAccountCount;
    self->_userAccountCount = v10;
  }

  return v7;
}

- (id)_initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SRUIFSiriSessionInfo;
  v6 = [(SRUIFSiriSessionInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 identifier];
    if (v8)
    {
      v3 = [(SRUIFSiriSessionInfo *)self identifier];
      v4 = [v7 identifier];
      if (![v3 isEqual:v4])
      {
        v9 = 0;
        goto LABEL_16;
      }
    }

    v10 = [v7 assistantVersion];
    if (v10)
    {
      v11 = [(SRUIFSiriSessionInfo *)self assistantVersion];
      v5 = [v7 assistantVersion];
      if (![v11 isEqual:v5])
      {
        v9 = 0;
        goto LABEL_14;
      }

      v19 = v11;
    }

    v12 = [v7 activeAccount];
    if (v12)
    {
      v13 = v12;
      v14 = [(SRUIFSiriSessionInfo *)self activeAccount];
      [v7 activeAccount];
      v15 = v4;
      v17 = v16 = v3;
      v9 = [v14 isEqual:v17];

      v3 = v16;
      v4 = v15;
    }

    else
    {
      v9 = 1;
    }

    v11 = v19;
    if (!v10)
    {
LABEL_15:
      if (!v8)
      {
LABEL_17:

        goto LABEL_18;
      }

LABEL_16:

      goto LABEL_17;
    }

LABEL_14:

    goto LABEL_15;
  }

  v9 = 0;
LABEL_18:

  return v9;
}

- (id)description
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(sel_identifier);
  v16[0] = v3;
  identifier = self->_identifier;
  v4 = NSStringFromSelector(sel_assistantVersion);
  v16[1] = v4;
  *&v5 = identifier;
  *(&v5 + 1) = self->_assistantVersion;
  v15 = v5;
  v6 = NSStringFromSelector(sel_activeAccount);
  v16[2] = v6;
  activeAccount = self->_activeAccount;
  v7 = NSStringFromSelector(sel_userAccountCount);
  v16[3] = v7;
  *&v8 = activeAccount;
  *(&v8 + 1) = self->_userAccountCount;
  v17[0] = v15;
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v10 = [v9 description];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [SRUIFSiriSessionInfo alloc];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = [(SRUIFSiriSessionInfo *)v5 _initWithIdentifier:v6];

  v8 = [(NSString *)self->_assistantVersion copyWithZone:a3];
  [v7 setAssistantVersion:v8];

  v9 = [(AFAccount *)self->_activeAccount copy];
  [v7 setActiveAccount:v9];

  [v7 setUserAccountCount:self->_userAccountCount];
  return v7;
}

- (SRUIFSiriSessionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SRUIFSiriSessionInfo;
  v5 = [(SRUIFSiriSessionInfo *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_identifier);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_assistantVersion);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    assistantVersion = v5->_assistantVersion;
    v5->_assistantVersion = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_activeAccount);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    activeAccount = v5->_activeAccount;
    v5->_activeAccount = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_userAccountCount);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    userAccountCount = v5->_userAccountCount;
    v5->_userAccountCount = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  v6 = NSStringFromSelector(sel_identifier);
  [v5 encodeObject:identifier forKey:v6];

  assistantVersion = self->_assistantVersion;
  v8 = NSStringFromSelector(sel_assistantVersion);
  [v5 encodeObject:assistantVersion forKey:v8];

  activeAccount = self->_activeAccount;
  v10 = NSStringFromSelector(sel_activeAccount);
  [v5 encodeObject:activeAccount forKey:v10];

  userAccountCount = self->_userAccountCount;
  v12 = NSStringFromSelector(sel_userAccountCount);
  [v5 encodeObject:userAccountCount forKey:v12];
}

@end