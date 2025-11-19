@interface VMAccount
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccount:(id)a3;
- (VMAccount)init;
- (VMAccount)initWithCoder:(id)a3;
- (VMAccount)initWithUUID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)copyPropertiesWithZone:(_NSZone *)a3 toAccount:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VMAccount

- (VMAccount)init
{
  [(VMAccount *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMAccount)initWithUUID:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = VMAccount;
  v6 = [(VMAccount *)&v8 init];
  if (v6)
  {
    if (!v5)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%s: parameter '%@' cannot be nil", "-[VMAccount initWithUUID:]", @"UUID"}];
    }

    objc_storeStrong(&v6->_UUID, a3);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[VMAccount allocWithZone:](VMAccount initWithUUID:"initWithUUID:", self->_UUID];
  [(VMAccount *)self copyPropertiesWithZone:a3 toAccount:v5];
  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [(VMAccount *)[VMMutableAccount alloc] initWithUUID:self->_UUID];
  [(VMAccount *)self copyPropertiesWithZone:a3 toAccount:v5];
  return v5;
}

- (VMAccount)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = VMAccount;
  v5 = [(VMAccount *)&v32 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_abbreviatedAccountDescription);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    abbreviatedAccountDescription = v5->_abbreviatedAccountDescription;
    v5->_abbreviatedAccountDescription = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_accountDescription);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    accountDescription = v5->_accountDescription;
    v5->_accountDescription = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_handle);
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    handle = v5->_handle;
    v5->_handle = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_isoCountryCode);
    v20 = [v4 decodeObjectOfClass:v18 forKey:v19];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = v20;

    v22 = NSStringFromSelector(sel_isProvisioned);
    v5->_provisioned = [v4 decodeBoolForKey:v22];

    v23 = objc_opt_class();
    v24 = NSStringFromSelector(sel_serviceName);
    v25 = [v4 decodeObjectOfClass:v23 forKey:v24];
    serviceName = v5->_serviceName;
    v5->_serviceName = v25;

    v27 = objc_opt_class();
    v28 = NSStringFromSelector(sel_UUID);
    v29 = [v4 decodeObjectOfClass:v27 forKey:v28];
    UUID = v5->_UUID;
    v5->_UUID = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(VMAccount *)self abbreviatedAccountDescription];
  v6 = NSStringFromSelector(sel_abbreviatedAccountDescription);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(VMAccount *)self accountDescription];
  v8 = NSStringFromSelector(sel_accountDescription);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(VMAccount *)self handle];
  v10 = NSStringFromSelector(sel_handle);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(VMAccount *)self isoCountryCode];
  v12 = NSStringFromSelector(sel_isoCountryCode);
  [v4 encodeObject:v11 forKey:v12];

  v13 = [(VMAccount *)self isProvisioned];
  v14 = NSStringFromSelector(sel_isProvisioned);
  [v4 encodeBool:v13 forKey:v14];

  v15 = [(VMAccount *)self serviceName];
  v16 = NSStringFromSelector(sel_serviceName);
  [v4 encodeObject:v15 forKey:v16];

  v18 = [(VMAccount *)self UUID];
  v17 = NSStringFromSelector(sel_UUID);
  [v4 encodeObject:v18 forKey:v17];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_UUID);
  v5 = [(VMAccount *)self UUID];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_handle);
  v7 = [(VMAccount *)self handle];
  [v3 appendFormat:@"%@=%@", v6, v7];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector(sel_isoCountryCode);
  v9 = [(VMAccount *)self isoCountryCode];
  [v3 appendFormat:@"%@=%@", v8, v9];

  [v3 appendFormat:@", "];
  v10 = NSStringFromSelector(sel_abbreviatedAccountDescription);
  v11 = [(VMAccount *)self abbreviatedAccountDescription];
  [v3 appendFormat:@"%@=%@", v10, v11];

  [v3 appendFormat:@", "];
  v12 = NSStringFromSelector(sel_accountDescription);
  v13 = [(VMAccount *)self accountDescription];
  [v3 appendFormat:@"%@=%@", v12, v13];

  [v3 appendFormat:@", "];
  v14 = NSStringFromSelector(sel_serviceName);
  v15 = [(VMAccount *)self serviceName];
  [v3 appendFormat:@"%@=%@", v14, v15];

  [v3 appendFormat:@", "];
  v16 = NSStringFromSelector(sel_isProvisioned);
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[VMAccount isProvisioned](self, "isProvisioned")}];
  [v3 appendFormat:@"%@=%@", v16, v17];

  [v3 appendFormat:@">"];
  v18 = [v3 copy];

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(VMAccount *)self isEqualToAccount:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(VMAccount *)self abbreviatedAccountDescription];
  v4 = [v3 hash];
  v5 = [(VMAccount *)self accountDescription];
  v6 = [v5 hash] ^ v4;
  v7 = [(VMAccount *)self isoCountryCode];
  v8 = [v7 hash];
  v9 = [(VMAccount *)self handle];
  v10 = v6 ^ v8 ^ [v9 hash];
  if ([(VMAccount *)self isProvisioned])
  {
    v11 = 1231;
  }

  else
  {
    v11 = 1237;
  }

  v12 = [(VMAccount *)self serviceName];
  v13 = v10 ^ v11 ^ [v12 hash];
  v14 = [(VMAccount *)self UUID];
  v15 = [v14 hash];

  return v13 ^ v15;
}

- (void)copyPropertiesWithZone:(_NSZone *)a3 toAccount:(id)a4
{
  abbreviatedAccountDescription = self->_abbreviatedAccountDescription;
  v7 = a4;
  v8 = [(NSString *)abbreviatedAccountDescription copyWithZone:a3];
  v9 = v7[4];
  v7[4] = v8;

  v10 = [(NSString *)self->_accountDescription copyWithZone:a3];
  v11 = v7[3];
  v7[3] = v10;

  v12 = [(VMHandle *)self->_handle copyWithZone:a3];
  v13 = v7[5];
  v7[5] = v12;

  v14 = [(NSString *)self->_isoCountryCode copyWithZone:a3];
  v15 = v7[6];
  v7[6] = v14;

  *(v7 + 8) = self->_provisioned;
  v16 = [(NSString *)self->_serviceName copyWithZone:a3];
  v17 = v7[7];
  v7[7] = v16;
}

- (BOOL)isEqualToAccount:(id)a3
{
  v4 = a3;
  v5 = [(VMAccount *)self abbreviatedAccountDescription];
  v6 = [v4 abbreviatedAccountDescription];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (!(v7 | v8))
  {
    goto LABEL_4;
  }

  if (!v8)
  {
    v29 = 0;
    v13 = v7;
LABEL_37:

    goto LABEL_38;
  }

  v10 = [v7 isEqualToString:v8];

  if (v10)
  {
LABEL_4:
    v11 = [(VMAccount *)self accountDescription];
    v12 = [v4 accountDescription];
    v13 = v11;
    v14 = v12;
    v15 = v14;
    if (v13 | v14)
    {
      if (!v14)
      {
        v29 = 0;
        v19 = v13;
LABEL_35:

        goto LABEL_36;
      }

      v16 = [v13 isEqualToString:v14];

      if (!v16)
      {
        v29 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    v17 = [(VMAccount *)self isoCountryCode];
    v18 = [v4 isoCountryCode];
    v19 = v17;
    v20 = v18;
    v21 = v20;
    if (v19 | v20)
    {
      if (!v20)
      {
        v29 = 0;
        v25 = v19;
LABEL_33:

        goto LABEL_34;
      }

      v22 = [v19 isEqualToString:v20];

      if (!v22)
      {
        v29 = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    v23 = [(VMAccount *)self handle];
    v24 = [v4 handle];
    v25 = v23;
    v26 = v24;
    v27 = v26;
    v47 = v25;
    if (v25 | v26)
    {
      if (!v26)
      {
        v29 = 0;
        v39 = v25;
LABEL_31:

        goto LABEL_32;
      }

      v44 = [v25 isEqual:v26];

      if (!v44)
      {
LABEL_14:
        v29 = 0;
        v25 = v47;
LABEL_32:

        goto LABEL_33;
      }
    }

    v28 = [(VMAccount *)self isProvisioned];
    if (v28 != [v4 isProvisioned])
    {
      goto LABEL_14;
    }

    v30 = [(VMAccount *)self serviceName];
    v45 = [v4 serviceName];
    v31 = v30;
    v32 = v45;
    v33 = v32;
    v46 = v31;
    if (v31 | v32)
    {
      if (!v32)
      {
        v43 = 0;
        v29 = 0;
        v38 = v31;
LABEL_29:

        v25 = v47;
        v33 = v43;
LABEL_30:

        v39 = v46;
        goto LABEL_31;
      }

      v34 = v32;
      LODWORD(v41) = [v46 isEqualToString:v32];

      v33 = v34;
      if (!v41)
      {
        v29 = 0;
        v25 = v47;
        goto LABEL_30;
      }
    }

    v43 = v33;
    v35 = [(VMAccount *)self UUID];
    v36 = [v4 UUID];
    v37 = v35;
    v29 = (v35 | v36) == 0;
    v42 = v37;
    if (v36)
    {
      v29 = [v37 isEqual:v36];
    }

    v38 = v42;
    goto LABEL_29;
  }

  v29 = 0;
LABEL_38:

  return v29;
}

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCAAC8];
  v7 = a3;
  v8 = [a1 unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:v8 fromData:v7 error:a4];

  return v9;
}

@end