@interface SBSDefaultInfo
+ (id)defaultsName:(id)a3 asBool:(id)a4 userInfo:(id)a5 requiresReinit:(BOOL)a6;
+ (id)defaultsName:(id)a3 asDouble:(id)a4 rangeMin:(id)a5 rangeMax:(id)a6 userInfo:(id)a7 requiresReinit:(BOOL)a8;
+ (id)defaultsName:(id)a3 asInt:(id)a4 rangeMin:(id)a5 rangeMax:(id)a6 userInfo:(id)a7 requiresReinit:(BOOL)a8;
+ (id)defaultsName:(id)a3 asString:(id)a4 userInfo:(id)a5 requiresReinit:(BOOL)a6;
- (NSString)valueType;
- (SBSDefaultInfo)initWithCoder:(id)a3;
- (id)getHumanReadable:(id)a3 isDefaultSet:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSDefaultInfo

- (id)getHumanReadable:(id)a3 isDefaultSet:(BOOL)a4
{
  v4 = a4;
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SBSDefaultInfo *)self stringForUserDefault];
  [v7 getCString:v46 maxLength:128 encoding:1];

  v8 = [(SBSDefaultInfo *)self defaultValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v6;
    }

    else
    {
      v10 = [v6 stringValue];
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(SBSDefaultInfo *)self defaultValue];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  if (v13)
  {
    if ([(SBSDefaultInfo *)self isBool])
    {
      v14 = [v6 BOOLValue];
      v15 = @"NO";
      if (v14)
      {
        v15 = @"YES";
      }

      v16 = v15;
      goto LABEL_17;
    }

    v17 = [(SBSDefaultInfo *)self isDouble];
    v18 = MEMORY[0x277CCACA8];
    if (v17)
    {
      [v6 doubleValue];
      v20 = [v18 stringWithFormat:@"%-4.2f", v19];

      v21 = [(SBSDefaultInfo *)self rangeMax];

      if (v21)
      {
        v22 = MEMORY[0x277CCACA8];
        v11 = [(SBSDefaultInfo *)self rangeMin];
        [(__CFString *)v11 doubleValue];
        v24 = v23;
        v25 = [(SBSDefaultInfo *)self rangeMax];
        [v25 doubleValue];
        v16 = [v22 stringWithFormat:@"%@ [%.2f..%.2f]", v20, v24, v26];

LABEL_17:
        v11 = v16;
        goto LABEL_18;
      }
    }

    else
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%-4ld", objc_msgSend(v6, "integerValue")];

      v27 = [(SBSDefaultInfo *)self rangeMax];

      if (v27)
      {
        v28 = MEMORY[0x277CCACA8];
        v11 = [(SBSDefaultInfo *)self rangeMin];
        v29 = [(__CFString *)v11 integerValue];
        v30 = [(SBSDefaultInfo *)self rangeMax];
        v16 = [v28 stringWithFormat:@"%@ [%ld..%ld]", v20, v29, objc_msgSend(v30, "integerValue")];

        goto LABEL_17;
      }
    }

    v11 = v20;
  }

LABEL_18:
  v31 = [(SBSDefaultInfo *)self defaultValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = [(SBSDefaultInfo *)self isBool];

    if (!v32)
    {
      goto LABEL_24;
    }

    v33 = [v6 BOOLValue];
    v34 = @"NO";
    if (v33)
    {
      v34 = @"YES";
    }

    v31 = v11;
    v11 = v34;
  }

LABEL_24:
  [(__CFString *)v11 getCString:v45 maxLength:128 encoding:1];
  v35 = [(SBSDefaultInfo *)self stringForUserDefault];
  v36 = [(SBSDefaultInfo *)self userDescription];
  v37 = [v35 isEqualToString:v36];

  v38 = MEMORY[0x277CCACA8];
  if (v4)
  {
    v39 = "*";
  }

  else
  {
    v39 = "";
  }

  if (v4)
  {
    v40 = "";
  }

  else
  {
    v40 = " ";
  }

  if (v37)
  {
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s%-40s%s : %-16s%@%@", v39, v46, v40, v45, &stru_287BC60F0, &stru_287BC60F0];
  }

  else
  {
    v42 = [(SBSDefaultInfo *)self userDescription];
    v41 = [v38 stringWithFormat:@"%s%-40s%s : %-16s%@%@", v39, v46, v40, v45, @" : ", v42];
  }

  v43 = *MEMORY[0x277D85DE8];

  return v41;
}

- (NSString)valueType
{
  if ([(SBSDefaultInfo *)self isBool])
  {
    return @"BOOL";
  }

  if ([(SBSDefaultInfo *)self isDouble])
  {
    return @"float";
  }

  v4 = [(SBSDefaultInfo *)self defaultType];
  if (v4 < 4)
  {
    return &off_279CD5228[v4]->isa;
  }

  v5 = [(SBSDefaultInfo *)self defaultValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return @"array";
  }

  v7 = [(SBSDefaultInfo *)self defaultValue];
  objc_opt_class();
  v8 = objc_opt_isKindOfClass();

  if (v8)
  {
    return @"dictionary";
  }

  else
  {
    return &stru_287BC60F0;
  }
}

- (SBSDefaultInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SBSDefaultInfo;
  v5 = [(SBSDefaultInfo *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stringForUserDefault"];
    stringForUserDefault = v5->_stringForUserDefault;
    v5->_stringForUserDefault = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userDescription"];
    userDescription = v5->_userDescription;
    v5->_userDescription = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultType"];
    v5->_defaultType = [v10 unsignedIntegerValue];

    defaultType = v5->_defaultType;
    if (defaultType <= 3)
    {
      v12 = **(&unk_279CD5208 + defaultType);
      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];
      defaultValue = v5->_defaultValue;
      v5->_defaultValue = v13;
    }

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isBool"];
    v5->_isBool = [v15 BOOLValue];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isDouble"];
    v5->_isDouble = [v16 BOOLValue];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rangeMin"];
    rangeMin = v5->_rangeMin;
    v5->_rangeMin = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rangeMax"];
    rangeMax = v5->_rangeMax;
    v5->_rangeMax = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requiresReinit"];
    v5->_requiresReinit = [v21 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SBSDefaultInfo *)self stringForUserDefault];
  [v4 encodeObject:v5 forKey:@"stringForUserDefault"];

  v6 = [(SBSDefaultInfo *)self userDescription];
  [v4 encodeObject:v6 forKey:@"userDescription"];

  v7 = [(SBSDefaultInfo *)self defaultValue];
  [v4 encodeObject:v7 forKey:@"defaultValue"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBSDefaultInfo isBool](self, "isBool")}];
  [v4 encodeObject:v8 forKey:@"isBool"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBSDefaultInfo isDouble](self, "isDouble")}];
  [v4 encodeObject:v9 forKey:@"isDouble"];

  v10 = [(SBSDefaultInfo *)self rangeMin];
  [v4 encodeObject:v10 forKey:@"rangeMin"];

  v11 = [(SBSDefaultInfo *)self rangeMax];
  [v4 encodeObject:v11 forKey:@"rangeMax"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBSDefaultInfo requiresReinit](self, "requiresReinit")}];
  [v4 encodeObject:v12 forKey:@"requiresReinit"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SBSDefaultInfo defaultType](self, "defaultType")}];
  [v4 encodeObject:v13 forKey:@"defaultType"];
}

+ (id)defaultsName:(id)a3 asString:(id)a4 userInfo:(id)a5 requiresReinit:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_new();
  if (v12)
  {
    v13 = [v9 copy];
    v14 = *(v12 + 16);
    *(v12 + 16) = v13;

    v15 = [v11 copy];
    v16 = *(v12 + 24);
    *(v12 + 24) = v15;

    v17 = [v10 copy];
    v18 = *(v12 + 32);
    *(v12 + 32) = v17;

    *(v12 + 8) = 0;
    *(v12 + 10) = a6;
    *(v12 + 56) = 1;
    v19 = v12;
  }

  return v12;
}

+ (id)defaultsName:(id)a3 asDouble:(id)a4 rangeMin:(id)a5 rangeMax:(id)a6 userInfo:(id)a7 requiresReinit:(BOOL)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = objc_opt_new();
  if (v18)
  {
    v19 = [v13 copy];
    v20 = *(v18 + 16);
    *(v18 + 16) = v19;

    v21 = [v17 copy];
    v22 = *(v18 + 24);
    *(v18 + 24) = v21;

    objc_storeStrong((v18 + 32), a4);
    objc_storeStrong((v18 + 40), a5);
    objc_storeStrong((v18 + 48), a6);
    *(v18 + 9) = 1;
    *(v18 + 10) = a8;
    *(v18 + 56) = 2;
    v23 = v18;
  }

  return v18;
}

+ (id)defaultsName:(id)a3 asInt:(id)a4 rangeMin:(id)a5 rangeMax:(id)a6 userInfo:(id)a7 requiresReinit:(BOOL)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = objc_opt_new();
  if (v18)
  {
    v19 = [v13 copy];
    v20 = *(v18 + 16);
    *(v18 + 16) = v19;

    v21 = [v17 copy];
    v22 = *(v18 + 24);
    *(v18 + 24) = v21;

    objc_storeStrong((v18 + 32), a4);
    objc_storeStrong((v18 + 40), a5);
    objc_storeStrong((v18 + 48), a6);
    *(v18 + 10) = a8;
    *(v18 + 56) = 2;
    v23 = v18;
  }

  return v18;
}

+ (id)defaultsName:(id)a3 asBool:(id)a4 userInfo:(id)a5 requiresReinit:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_new();
  if (v12)
  {
    v13 = [v9 copy];
    v14 = *(v12 + 16);
    *(v12 + 16) = v13;

    v15 = [v11 copy];
    v16 = *(v12 + 24);
    *(v12 + 24) = v15;

    objc_storeStrong((v12 + 32), a4);
    *(v12 + 8) = 1;
    *(v12 + 10) = a6;
    *(v12 + 56) = 2;
    v17 = v12;
  }

  return v12;
}

@end