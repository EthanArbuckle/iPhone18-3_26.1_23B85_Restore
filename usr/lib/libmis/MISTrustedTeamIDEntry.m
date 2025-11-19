@interface MISTrustedTeamIDEntry
- (BOOL)isEqual:(id)a3;
- (MISTrustedTeamIDEntry)initWithTeamID:(id)a3 signature:(id)a4;
- (unint64_t)hash;
@end

@implementation MISTrustedTeamIDEntry

- (unint64_t)hash
{
  v4 = objc_msgSend_teamID(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_signature(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v8 = objc_msgSend_teamID(self, v6, v7);
    v11 = objc_msgSend_teamID(v5, v9, v10);
    if (objc_msgSend_isEqual_(v8, v12, v11))
    {
      v15 = objc_msgSend_signature(self, v13, v14);
      v18 = objc_msgSend_signature(v5, v16, v17);
      if (objc_msgSend_isEqual_(v15, v19, v18))
      {
        v22 = 1;
      }

      else
      {
        v25 = objc_msgSend_signature(self, v20, v21);
        if (v25)
        {
          v22 = 0;
        }

        else
        {
          v26 = objc_msgSend_signature(v5, v23, v24);
          v22 = v26 == 0;
        }
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (MISTrustedTeamIDEntry)initWithTeamID:(id)a3 signature:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MISTrustedTeamIDEntry;
  v9 = [(MISTrustedTeamIDEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_teamID, a3);
    objc_storeStrong(&v10->_signature, a4);
  }

  return v10;
}

@end