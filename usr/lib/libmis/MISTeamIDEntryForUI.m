@interface MISTeamIDEntryForUI
- (BOOL)isEqual:(id)a3;
- (MISTeamIDEntryForUI)initWithTeamID:(id)a3 teamName:(id)a4 trusted:(BOOL)a5 hasAuxiliarySignature:(BOOL)a6;
- (unint64_t)hash;
@end

@implementation MISTeamIDEntryForUI

- (unint64_t)hash
{
  v4 = objc_msgSend_teamID(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_teamName(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = v13 ^ objc_msgSend_trusted(self, v14, v15);
  hasAuxiliarySignature = objc_msgSend_hasAuxiliarySignature(self, v17, v18);

  return v16 ^ hasAuxiliarySignature;
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
      v15 = objc_msgSend_teamName(self, v13, v14);
      v18 = objc_msgSend_teamName(v5, v16, v17);
      if (objc_msgSend_isEqual_(v15, v19, v18) && (v22 = objc_msgSend_trusted(self, v20, v21), v22 == objc_msgSend_trusted(v5, v23, v24)))
      {
        hasAuxiliarySignature = objc_msgSend_hasAuxiliarySignature(self, v25, v26);
        v27 = hasAuxiliarySignature ^ objc_msgSend_hasAuxiliarySignature(v5, v29, v30) ^ 1;
      }

      else
      {
        LOBYTE(v27) = 0;
      }
    }

    else
    {
      LOBYTE(v27) = 0;
    }
  }

  else
  {
    LOBYTE(v27) = 0;
  }

  return v27;
}

- (MISTeamIDEntryForUI)initWithTeamID:(id)a3 teamName:(id)a4 trusted:(BOOL)a5 hasAuxiliarySignature:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = MISTeamIDEntryForUI;
  v13 = [(MISTeamIDEntryForUI *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_teamID, a3);
    objc_storeStrong(&v14->_teamName, a4);
    v14->_trusted = a5;
    v14->_hasAuxiliarySignature = a6;
  }

  return v14;
}

@end