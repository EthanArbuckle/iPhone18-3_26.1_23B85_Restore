@interface PKAuthNotification
- (id)_makeDict;
- (unint64_t)_makeFlags;
@end

@implementation PKAuthNotification

- (unint64_t)_makeFlags
{
  v7.receiver = self;
  v7.super_class = PKAuthNotification;
  v3 = [(PKNotification *)&v7 _makeFlags];
  v4 = [(PKAuthNotification *)self usernameField];

  v5 = 0x20000;
  if (!v4)
  {
    v5 = 0x10000;
  }

  return v5 | v3;
}

- (id)_makeDict
{
  v16[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = PKAuthNotification;
  v3 = [(PKNotification *)&v13 _makeDict];
  v4 = [v3 mutableCopy];

  v5 = [(PKAuthNotification *)self usernameField];
  LODWORD(v3) = v5 == 0;

  if (v3)
  {
    v10 = PKLocalizedString(&cfstr_Password.isa, "Password placeholder text");
    v16[0] = v10;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  else
  {
    v6 = PKLocalizedString(&cfstr_UserName.isa, "Username placeholder text");
    v15[0] = v6;
    v7 = PKLocalizedString(&cfstr_Password.isa, "Password placeholder text");
    v15[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

    v9 = [(PKAuthNotification *)self defaultUsername];
    LOBYTE(v6) = v9 == 0;

    if (v6)
    {
      goto LABEL_6;
    }

    v10 = [(PKAuthNotification *)self defaultUsername];
    v14 = v10;
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