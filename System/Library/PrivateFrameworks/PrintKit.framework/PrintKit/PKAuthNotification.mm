@interface PKAuthNotification
- (id)_makeDict;
- (unint64_t)_makeFlags;
@end

@implementation PKAuthNotification

- (unint64_t)_makeFlags
{
  v7.receiver = self;
  v7.super_class = PKAuthNotification;
  _makeFlags = [(PKNotification *)&v7 _makeFlags];
  usernameField = [(PKAuthNotification *)self usernameField];

  v5 = 0x20000;
  if (!usernameField)
  {
    v5 = 0x10000;
  }

  return v5 | _makeFlags;
}

- (id)_makeDict
{
  v16[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = PKAuthNotification;
  _makeDict = [(PKNotification *)&v13 _makeDict];
  v4 = [_makeDict mutableCopy];

  usernameField = [(PKAuthNotification *)self usernameField];
  LODWORD(_makeDict) = usernameField == 0;

  if (_makeDict)
  {
    defaultUsername2 = PKLocalizedString(&cfstr_Password.isa, "Password placeholder text");
    v16[0] = defaultUsername2;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  else
  {
    v6 = PKLocalizedString(&cfstr_UserName.isa, "Username placeholder text");
    v15[0] = v6;
    v7 = PKLocalizedString(&cfstr_Password.isa, "Password placeholder text");
    v15[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

    defaultUsername = [(PKAuthNotification *)self defaultUsername];
    LOBYTE(v6) = defaultUsername == 0;

    if (v6)
    {
      goto LABEL_6;
    }

    defaultUsername2 = [(PKAuthNotification *)self defaultUsername];
    v14 = defaultUsername2;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x277CBF238]];
  }

LABEL_6:
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277CBF230]];
  [v4 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D67438]];
  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D67440]];

  return v4;
}

@end