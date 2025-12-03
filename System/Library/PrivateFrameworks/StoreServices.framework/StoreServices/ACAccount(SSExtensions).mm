@interface ACAccount(SSExtensions)
- (id)_ss_altDSID;
- (id)_ss_hashedDescription;
- (id)_ss_secureToken;
- (uint64_t)_ss_isAppleAuthenticationAccount;
- (uint64_t)_ss_isDuplicate:()SSExtensions;
- (uint64_t)_ss_isIDMSAccount;
- (uint64_t)_ss_isiCloudAccount;
- (uint64_t)_ss_isiTunesAccount;
- (void)_ss_DSID;
- (void)_ss_setSecureToken:()SSExtensions;
@end

@implementation ACAccount(SSExtensions)

- (id)_ss_altDSID
{
  if (([self _ss_isiCloudAccount] & 1) != 0 || objc_msgSend(self, "_ss_isiTunesAccount"))
  {
    v2 = [self objectForKeyedSubscript:@"altDSID"];
  }

  else if ([self _ss_isIDMSAccount])
  {
    mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
    v2 = [mEMORY[0x1E698DC80] altDSIDForAccount:self];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_ss_DSID
{
  if ([self _ss_isiCloudAccount])
  {
    mEMORY[0x1E698DC80] = [self objectForKeyedSubscript:@"personID"];
    if (![mEMORY[0x1E698DC80] length])
    {
      v4 = 0;
      goto LABEL_11;
    }

    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(mEMORY[0x1E698DC80], "longLongValue")}];
LABEL_6:
    v4 = v3;
LABEL_11:

    goto LABEL_12;
  }

  if ([self _ss_isIDMSAccount])
  {
    mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
    v3 = [mEMORY[0x1E698DC80] DSIDForAccount:self];
    goto LABEL_6;
  }

  if (([self _ss_isAppleAuthenticationAccount] & 1) != 0 || objc_msgSend(self, "_ss_isiTunesAccount"))
  {
    v4 = [self objectForKeyedSubscript:@"dsid"];
  }

  else
  {
    v4 = 0;
  }

LABEL_12:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)_ss_hashedDescription
{
  v1 = [[SSAccount alloc] initWithBackingAccount:self];
  hashedDescription = [(SSAccount *)v1 hashedDescription];

  return hashedDescription;
}

- (uint64_t)_ss_isAppleAuthenticationAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v3 = [identifier isEqualToString:*MEMORY[0x1E6959810]];

  return v3;
}

- (uint64_t)_ss_isiCloudAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v3 = [identifier isEqualToString:*MEMORY[0x1E69597F8]];

  return v3;
}

- (uint64_t)_ss_isIDMSAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  v3 = [identifier isEqualToString:*MEMORY[0x1E6959888]];

  return v3;
}

- (uint64_t)_ss_isiTunesAccount
{
  accountType = [self accountType];
  identifier = [accountType identifier];
  if ([identifier isEqualToString:*MEMORY[0x1E6959930]])
  {
    v4 = 1;
  }

  else
  {
    accountType2 = [self accountType];
    identifier2 = [accountType2 identifier];
    v4 = [identifier2 isEqualToString:*MEMORY[0x1E6959938]];
  }

  return v4;
}

- (id)_ss_secureToken
{
  v1 = [[SSAccount alloc] initWithBackingAccount:self];
  secureToken = [(SSAccount *)v1 secureToken];

  return secureToken;
}

- (void)_ss_setSecureToken:()SSExtensions
{
  v4 = a3;
  v5 = [[SSAccount alloc] initWithBackingAccount:self];
  [(SSAccount *)v5 setSecureToken:v4];
}

- (uint64_t)_ss_isDuplicate:()SSExtensions
{
  v4 = a3;
  identifier = [self identifier];
  identifier2 = [v4 identifier];
  v7 = [identifier isEqualToString:identifier2];

  if ((v7 & 1) != 0 || ([self accountType], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "accountType"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "identifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v9, "isEqualToString:", v11), v11, v10, v9, v8, !v12))
  {
    v21 = 0;
  }

  else
  {
    _ss_altDSID = [self _ss_altDSID];
    _ss_altDSID2 = [v4 _ss_altDSID];
    v15 = [_ss_altDSID isEqualToString:_ss_altDSID2];

    if (v15 & 1) != 0 || ([v4 _ss_DSID], (v16 = objc_claimAutoreleasedReturnValue()) != 0) && (v17 = v16, objc_msgSend(self, "_ss_DSID"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "_ss_DSID"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "isEqualToNumber:", v19), v19, v18, v17, (v20))
    {
      v21 = 1;
    }

    else
    {
      username = [self username];
      username2 = [v4 username];
      v21 = [username isEqualToString:username2];
    }
  }

  return v21;
}

@end