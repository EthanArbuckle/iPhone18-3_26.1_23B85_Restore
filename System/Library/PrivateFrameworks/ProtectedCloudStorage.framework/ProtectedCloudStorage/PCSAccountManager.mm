@interface PCSAccountManager
- (PCSAccountManager)initWithDSID:(id)d;
- (unint64_t)accountStatus;
@end

@implementation PCSAccountManager

- (PCSAccountManager)initWithDSID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = PCSAccountManager;
  v6 = [(PCSAccountManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dsid, d);
    v8 = v7;
  }

  return v7;
}

- (unint64_t)accountStatus
{
  v14[1] = *MEMORY[0x1E69E9840];
  dsid = [(PCSAccountManager *)self dsid];
  v4 = PCSCurrentPersonaMatchesDSID(dsid);

  if (v4)
  {
    v13 = kPCSSetupDSID[0];
    dsid2 = [(PCSAccountManager *)self dsid];
    v14[0] = dsid2;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

    v12 = 0;
    v7 = PCSIdentitySetCreate(v6, 0, &v12);
    if (v7)
    {
      v8 = v7;
      IsICDP = PCSIdentitySetIsICDP(v7, 0);
    }

    else
    {
      v8 = v12;
      if (!v12)
      {
        IsICDP = 1;
        goto LABEL_8;
      }

      v12 = 0;
      IsICDP = 1;
    }

    CFRelease(v8);
LABEL_8:

    goto LABEL_9;
  }

  IsICDP = 2;
LABEL_9:
  v10 = *MEMORY[0x1E69E9840];
  return IsICDP;
}

@end