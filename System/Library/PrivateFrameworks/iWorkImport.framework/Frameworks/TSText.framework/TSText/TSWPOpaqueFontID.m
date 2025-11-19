@interface TSWPOpaqueFontID
- (BOOL)isEqual:(id)a3;
- (TSWPOpaqueFontID)initWithFont:(id)a3;
- (TSWPOpaqueFontID)initWithPostScriptName:(id)a3 familyName:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation TSWPOpaqueFontID

- (TSWPOpaqueFontID)initWithPostScriptName:(id)a3 familyName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TSWPOpaqueFontID;
  v9 = [(TSWPOpaqueFontID *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_desiredPostScriptName, a3);
    objc_storeStrong(&v10->_familyName, a4);
  }

  return v10;
}

- (TSWPOpaqueFontID)initWithFont:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isRequestedFont(v4, v5, v6))
  {
    v9 = objc_msgSend_familyName(v4, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_msgSend_desiredPostScriptName(v4, v7, v8);
  v12 = objc_msgSend_initWithPostScriptName_familyName_(self, v11, v10, v9);

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  if (self != a3)
  {
    v4 = a3;
    objc_opt_class();
    v5 = TSUDynamicCast();

    if (v5)
    {
      v8 = objc_msgSend_familyName(self, v6, v7);
      if (v8)
      {
        v11 = v8;
        v12 = objc_msgSend_familyName(v5, v9, v10);
        if (v12)
        {
          v15 = v12;
          v16 = objc_msgSend_familyName(self, v13, v14);
          v19 = objc_msgSend_familyName(v5, v17, v18);
          isEqual = objc_msgSend_isEqual_(v16, v20, v19);

          if (isEqual)
          {
            goto LABEL_10;
          }
        }

        else
        {
        }
      }

      v23 = objc_msgSend_desiredPostScriptName(self, v9, v10);
      v26 = objc_msgSend_desiredPostScriptName(v5, v24, v25);
      v28 = objc_msgSend_isEqual_(v23, v27, v26);

      if (v28)
      {
LABEL_10:
        v22 = 1;
LABEL_12:

        return v22;
      }
    }

    v22 = 0;
    goto LABEL_12;
  }

  return 1;
}

- (unint64_t)hash
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_desiredPostScriptName(self, a2, v2);
  v8 = objc_msgSend_familyName(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v4, v9, @"%@%@", v5, v8);

  v13 = objc_msgSend_hash(v10, v11, v12);
  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_desiredPostScriptName(self, v6, v7);
  v11 = objc_msgSend_familyName(self, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v3, v12, @"%@: <%p> Desired PostScript Name: %@ Family Name: %@", v5, self, v8, v11);;

  return v13;
}

@end