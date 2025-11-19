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
  if (([a1 _ss_isiCloudAccount] & 1) != 0 || objc_msgSend(a1, "_ss_isiTunesAccount"))
  {
    v2 = [a1 objectForKeyedSubscript:@"altDSID"];
  }

  else if ([a1 _ss_isIDMSAccount])
  {
    v4 = [MEMORY[0x1E698DC80] sharedInstance];
    v2 = [v4 altDSIDForAccount:a1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_ss_DSID
{
  if ([a1 _ss_isiCloudAccount])
  {
    v2 = [a1 objectForKeyedSubscript:@"personID"];
    if (![v2 length])
    {
      v4 = 0;
      goto LABEL_11;
    }

    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "longLongValue")}];
LABEL_6:
    v4 = v3;
LABEL_11:

    goto LABEL_12;
  }

  if ([a1 _ss_isIDMSAccount])
  {
    v2 = [MEMORY[0x1E698DC80] sharedInstance];
    v3 = [v2 DSIDForAccount:a1];
    goto LABEL_6;
  }

  if (([a1 _ss_isAppleAuthenticationAccount] & 1) != 0 || objc_msgSend(a1, "_ss_isiTunesAccount"))
  {
    v4 = [a1 objectForKeyedSubscript:@"dsid"];
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
  v1 = [[SSAccount alloc] initWithBackingAccount:a1];
  v2 = [(SSAccount *)v1 hashedDescription];

  return v2;
}

- (uint64_t)_ss_isAppleAuthenticationAccount
{
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  v3 = [v2 isEqualToString:*MEMORY[0x1E6959810]];

  return v3;
}

- (uint64_t)_ss_isiCloudAccount
{
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  v3 = [v2 isEqualToString:*MEMORY[0x1E69597F8]];

  return v3;
}

- (uint64_t)_ss_isIDMSAccount
{
  v1 = [a1 accountType];
  v2 = [v1 identifier];
  v3 = [v2 isEqualToString:*MEMORY[0x1E6959888]];

  return v3;
}

- (uint64_t)_ss_isiTunesAccount
{
  v2 = [a1 accountType];
  v3 = [v2 identifier];
  if ([v3 isEqualToString:*MEMORY[0x1E6959930]])
  {
    v4 = 1;
  }

  else
  {
    v5 = [a1 accountType];
    v6 = [v5 identifier];
    v4 = [v6 isEqualToString:*MEMORY[0x1E6959938]];
  }

  return v4;
}

- (id)_ss_secureToken
{
  v1 = [[SSAccount alloc] initWithBackingAccount:a1];
  v2 = [(SSAccount *)v1 secureToken];

  return v2;
}

- (void)_ss_setSecureToken:()SSExtensions
{
  v4 = a3;
  v5 = [[SSAccount alloc] initWithBackingAccount:a1];
  [(SSAccount *)v5 setSecureToken:v4];
}

- (uint64_t)_ss_isDuplicate:()SSExtensions
{
  v4 = a3;
  v5 = [a1 identifier];
  v6 = [v4 identifier];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) != 0 || ([a1 accountType], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "accountType"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "identifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v9, "isEqualToString:", v11), v11, v10, v9, v8, !v12))
  {
    v21 = 0;
  }

  else
  {
    v13 = [a1 _ss_altDSID];
    v14 = [v4 _ss_altDSID];
    v15 = [v13 isEqualToString:v14];

    if (v15 & 1) != 0 || ([v4 _ss_DSID], (v16 = objc_claimAutoreleasedReturnValue()) != 0) && (v17 = v16, objc_msgSend(a1, "_ss_DSID"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "_ss_DSID"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "isEqualToNumber:", v19), v19, v18, v17, (v20))
    {
      v21 = 1;
    }

    else
    {
      v23 = [a1 username];
      v24 = [v4 username];
      v21 = [v23 isEqualToString:v24];
    }
  }

  return v21;
}

@end