@interface SRUIFSiriSessionInfo
- (BOOL)applyInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (SRUIFSiriSessionInfo)init;
- (SRUIFSiriSessionInfo)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier;
- (id)_setPropertyValue:(id)value withSelector:(SEL)selector;
- (id)_strippedInfo;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)setUserAccountCountGenerateLightweightInfo:(int64_t)info;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRUIFSiriSessionInfo

- (SRUIFSiriSessionInfo)init
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [(SRUIFSiriSessionInfo *)self _initWithIdentifier:uUIDString];

  return v5;
}

- (id)_strippedInfo
{
  v2 = [[SRUIFSiriSessionInfo alloc] _initWithIdentifier:self->_identifier];

  return v2;
}

- (id)setUserAccountCountGenerateLightweightInfo:(int64_t)info
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:info];
  v5 = [(SRUIFSiriSessionInfo *)self _setPropertyValue:v4 withSelector:sel_setUserAccountCount_];

  return v5;
}

- (id)_setPropertyValue:(id)value withSelector:(SEL)selector
{
  valueCopy = value;
  _strippedInfo = [(SRUIFSiriSessionInfo *)self _strippedInfo];
  [_strippedInfo performSelector:selector withObject:valueCopy];

  if (![(SRUIFSiriSessionInfo *)self applyInfo:_strippedInfo])
  {

    _strippedInfo = 0;
  }

  return _strippedInfo;
}

- (BOOL)applyInfo:(id)info
{
  infoCopy = info;
  identifier = [infoCopy identifier];
  identifier2 = [(SRUIFSiriSessionInfo *)self identifier];
  v7 = [identifier isEqualToString:identifier2];

  if (v7)
  {
    assistantVersion = [infoCopy assistantVersion];
    if (assistantVersion)
    {
      objc_storeStrong(&self->_assistantVersion, assistantVersion);
    }

    activeAccount = [infoCopy activeAccount];
    if (activeAccount)
    {
      objc_storeStrong(&self->_activeAccount, activeAccount);
    }

    userAccountCount = [infoCopy userAccountCount];
    userAccountCount = self->_userAccountCount;
    self->_userAccountCount = userAccountCount;
  }

  return v7;
}

- (id)_initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SRUIFSiriSessionInfo;
  v6 = [(SRUIFSiriSessionInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [equalCopy identifier];
    if (identifier)
    {
      identifier2 = [(SRUIFSiriSessionInfo *)self identifier];
      identifier3 = [equalCopy identifier];
      if (![identifier2 isEqual:identifier3])
      {
        v9 = 0;
        goto LABEL_16;
      }
    }

    assistantVersion = [equalCopy assistantVersion];
    if (assistantVersion)
    {
      assistantVersion2 = [(SRUIFSiriSessionInfo *)self assistantVersion];
      assistantVersion3 = [equalCopy assistantVersion];
      if (![assistantVersion2 isEqual:assistantVersion3])
      {
        v9 = 0;
        goto LABEL_14;
      }

      v19 = assistantVersion2;
    }

    activeAccount = [equalCopy activeAccount];
    if (activeAccount)
    {
      v13 = activeAccount;
      activeAccount2 = [(SRUIFSiriSessionInfo *)self activeAccount];
      [equalCopy activeAccount];
      v15 = identifier3;
      v17 = v16 = identifier2;
      v9 = [activeAccount2 isEqual:v17];

      identifier2 = v16;
      identifier3 = v15;
    }

    else
    {
      v9 = 1;
    }

    assistantVersion2 = v19;
    if (!assistantVersion)
    {
LABEL_15:
      if (!identifier)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [SRUIFSiriSessionInfo alloc];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = [(SRUIFSiriSessionInfo *)v5 _initWithIdentifier:v6];

  v8 = [(NSString *)self->_assistantVersion copyWithZone:zone];
  [v7 setAssistantVersion:v8];

  v9 = [(AFAccount *)self->_activeAccount copy];
  [v7 setActiveAccount:v9];

  [v7 setUserAccountCount:self->_userAccountCount];
  return v7;
}

- (SRUIFSiriSessionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = SRUIFSiriSessionInfo;
  v5 = [(SRUIFSiriSessionInfo *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_identifier);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_assistantVersion);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    assistantVersion = v5->_assistantVersion;
    v5->_assistantVersion = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_activeAccount);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    activeAccount = v5->_activeAccount;
    v5->_activeAccount = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_userAccountCount);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    userAccountCount = v5->_userAccountCount;
    v5->_userAccountCount = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeObject:identifier forKey:v6];

  assistantVersion = self->_assistantVersion;
  v8 = NSStringFromSelector(sel_assistantVersion);
  [coderCopy encodeObject:assistantVersion forKey:v8];

  activeAccount = self->_activeAccount;
  v10 = NSStringFromSelector(sel_activeAccount);
  [coderCopy encodeObject:activeAccount forKey:v10];

  userAccountCount = self->_userAccountCount;
  v12 = NSStringFromSelector(sel_userAccountCount);
  [coderCopy encodeObject:userAccountCount forKey:v12];
}

@end