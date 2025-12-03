@interface SBSDefaultInfo
+ (id)defaultsName:(id)name asBool:(id)bool userInfo:(id)info requiresReinit:(BOOL)reinit;
+ (id)defaultsName:(id)name asDouble:(id)double rangeMin:(id)min rangeMax:(id)max userInfo:(id)info requiresReinit:(BOOL)reinit;
+ (id)defaultsName:(id)name asInt:(id)int rangeMin:(id)min rangeMax:(id)max userInfo:(id)info requiresReinit:(BOOL)reinit;
+ (id)defaultsName:(id)name asString:(id)string userInfo:(id)info requiresReinit:(BOOL)reinit;
- (NSString)valueType;
- (SBSDefaultInfo)initWithCoder:(id)coder;
- (id)getHumanReadable:(id)readable isDefaultSet:(BOOL)set;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSDefaultInfo

- (id)getHumanReadable:(id)readable isDefaultSet:(BOOL)set
{
  setCopy = set;
  v47 = *MEMORY[0x277D85DE8];
  readableCopy = readable;
  stringForUserDefault = [(SBSDefaultInfo *)self stringForUserDefault];
  [stringForUserDefault getCString:v46 maxLength:128 encoding:1];

  defaultValue = [(SBSDefaultInfo *)self defaultValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = readableCopy;
    }

    else
    {
      stringValue = [readableCopy stringValue];
    }

    rangeMin = stringValue;
  }

  else
  {
    rangeMin = 0;
  }

  defaultValue2 = [(SBSDefaultInfo *)self defaultValue];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  if (v13)
  {
    if ([(SBSDefaultInfo *)self isBool])
    {
      bOOLValue = [readableCopy BOOLValue];
      v15 = @"NO";
      if (bOOLValue)
      {
        v15 = @"YES";
      }

      v16 = v15;
      goto LABEL_17;
    }

    isDouble = [(SBSDefaultInfo *)self isDouble];
    v18 = MEMORY[0x277CCACA8];
    if (isDouble)
    {
      [readableCopy doubleValue];
      v20 = [v18 stringWithFormat:@"%-4.2f", v19];

      rangeMax = [(SBSDefaultInfo *)self rangeMax];

      if (rangeMax)
      {
        v22 = MEMORY[0x277CCACA8];
        rangeMin = [(SBSDefaultInfo *)self rangeMin];
        [(__CFString *)rangeMin doubleValue];
        v24 = v23;
        rangeMax2 = [(SBSDefaultInfo *)self rangeMax];
        [rangeMax2 doubleValue];
        v16 = [v22 stringWithFormat:@"%@ [%.2f..%.2f]", v20, v24, v26];

LABEL_17:
        rangeMin = v16;
        goto LABEL_18;
      }
    }

    else
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%-4ld", objc_msgSend(readableCopy, "integerValue")];

      rangeMax3 = [(SBSDefaultInfo *)self rangeMax];

      if (rangeMax3)
      {
        v28 = MEMORY[0x277CCACA8];
        rangeMin = [(SBSDefaultInfo *)self rangeMin];
        integerValue = [(__CFString *)rangeMin integerValue];
        rangeMax4 = [(SBSDefaultInfo *)self rangeMax];
        v16 = [v28 stringWithFormat:@"%@ [%ld..%ld]", v20, integerValue, objc_msgSend(rangeMax4, "integerValue")];

        goto LABEL_17;
      }
    }

    rangeMin = v20;
  }

LABEL_18:
  defaultValue3 = [(SBSDefaultInfo *)self defaultValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isBool = [(SBSDefaultInfo *)self isBool];

    if (!isBool)
    {
      goto LABEL_24;
    }

    bOOLValue2 = [readableCopy BOOLValue];
    v34 = @"NO";
    if (bOOLValue2)
    {
      v34 = @"YES";
    }

    defaultValue3 = rangeMin;
    rangeMin = v34;
  }

LABEL_24:
  [(__CFString *)rangeMin getCString:v45 maxLength:128 encoding:1];
  stringForUserDefault2 = [(SBSDefaultInfo *)self stringForUserDefault];
  userDescription = [(SBSDefaultInfo *)self userDescription];
  v37 = [stringForUserDefault2 isEqualToString:userDescription];

  v38 = MEMORY[0x277CCACA8];
  if (setCopy)
  {
    v39 = "*";
  }

  else
  {
    v39 = "";
  }

  if (setCopy)
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
    userDescription2 = [(SBSDefaultInfo *)self userDescription];
    v41 = [v38 stringWithFormat:@"%s%-40s%s : %-16s%@%@", v39, v46, v40, v45, @" : ", userDescription2];
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

  defaultType = [(SBSDefaultInfo *)self defaultType];
  if (defaultType < 4)
  {
    return &off_279CD5228[defaultType]->isa;
  }

  defaultValue = [(SBSDefaultInfo *)self defaultValue];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return @"array";
  }

  defaultValue2 = [(SBSDefaultInfo *)self defaultValue];
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

- (SBSDefaultInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = SBSDefaultInfo;
  v5 = [(SBSDefaultInfo *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringForUserDefault"];
    stringForUserDefault = v5->_stringForUserDefault;
    v5->_stringForUserDefault = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userDescription"];
    userDescription = v5->_userDescription;
    v5->_userDescription = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultType"];
    v5->_defaultType = [v10 unsignedIntegerValue];

    defaultType = v5->_defaultType;
    if (defaultType <= 3)
    {
      v12 = **(&unk_279CD5208 + defaultType);
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];
      defaultValue = v5->_defaultValue;
      v5->_defaultValue = v13;
    }

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isBool"];
    v5->_isBool = [v15 BOOLValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isDouble"];
    v5->_isDouble = [v16 BOOLValue];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rangeMin"];
    rangeMin = v5->_rangeMin;
    v5->_rangeMin = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rangeMax"];
    rangeMax = v5->_rangeMax;
    v5->_rangeMax = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requiresReinit"];
    v5->_requiresReinit = [v21 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stringForUserDefault = [(SBSDefaultInfo *)self stringForUserDefault];
  [coderCopy encodeObject:stringForUserDefault forKey:@"stringForUserDefault"];

  userDescription = [(SBSDefaultInfo *)self userDescription];
  [coderCopy encodeObject:userDescription forKey:@"userDescription"];

  defaultValue = [(SBSDefaultInfo *)self defaultValue];
  [coderCopy encodeObject:defaultValue forKey:@"defaultValue"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBSDefaultInfo isBool](self, "isBool")}];
  [coderCopy encodeObject:v8 forKey:@"isBool"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBSDefaultInfo isDouble](self, "isDouble")}];
  [coderCopy encodeObject:v9 forKey:@"isDouble"];

  rangeMin = [(SBSDefaultInfo *)self rangeMin];
  [coderCopy encodeObject:rangeMin forKey:@"rangeMin"];

  rangeMax = [(SBSDefaultInfo *)self rangeMax];
  [coderCopy encodeObject:rangeMax forKey:@"rangeMax"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBSDefaultInfo requiresReinit](self, "requiresReinit")}];
  [coderCopy encodeObject:v12 forKey:@"requiresReinit"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SBSDefaultInfo defaultType](self, "defaultType")}];
  [coderCopy encodeObject:v13 forKey:@"defaultType"];
}

+ (id)defaultsName:(id)name asString:(id)string userInfo:(id)info requiresReinit:(BOOL)reinit
{
  nameCopy = name;
  stringCopy = string;
  infoCopy = info;
  v12 = objc_opt_new();
  if (v12)
  {
    v13 = [nameCopy copy];
    v14 = *(v12 + 16);
    *(v12 + 16) = v13;

    v15 = [infoCopy copy];
    v16 = *(v12 + 24);
    *(v12 + 24) = v15;

    v17 = [stringCopy copy];
    v18 = *(v12 + 32);
    *(v12 + 32) = v17;

    *(v12 + 8) = 0;
    *(v12 + 10) = reinit;
    *(v12 + 56) = 1;
    v19 = v12;
  }

  return v12;
}

+ (id)defaultsName:(id)name asDouble:(id)double rangeMin:(id)min rangeMax:(id)max userInfo:(id)info requiresReinit:(BOOL)reinit
{
  nameCopy = name;
  doubleCopy = double;
  minCopy = min;
  maxCopy = max;
  infoCopy = info;
  v18 = objc_opt_new();
  if (v18)
  {
    v19 = [nameCopy copy];
    v20 = *(v18 + 16);
    *(v18 + 16) = v19;

    v21 = [infoCopy copy];
    v22 = *(v18 + 24);
    *(v18 + 24) = v21;

    objc_storeStrong((v18 + 32), double);
    objc_storeStrong((v18 + 40), min);
    objc_storeStrong((v18 + 48), max);
    *(v18 + 9) = 1;
    *(v18 + 10) = reinit;
    *(v18 + 56) = 2;
    v23 = v18;
  }

  return v18;
}

+ (id)defaultsName:(id)name asInt:(id)int rangeMin:(id)min rangeMax:(id)max userInfo:(id)info requiresReinit:(BOOL)reinit
{
  nameCopy = name;
  intCopy = int;
  minCopy = min;
  maxCopy = max;
  infoCopy = info;
  v18 = objc_opt_new();
  if (v18)
  {
    v19 = [nameCopy copy];
    v20 = *(v18 + 16);
    *(v18 + 16) = v19;

    v21 = [infoCopy copy];
    v22 = *(v18 + 24);
    *(v18 + 24) = v21;

    objc_storeStrong((v18 + 32), int);
    objc_storeStrong((v18 + 40), min);
    objc_storeStrong((v18 + 48), max);
    *(v18 + 10) = reinit;
    *(v18 + 56) = 2;
    v23 = v18;
  }

  return v18;
}

+ (id)defaultsName:(id)name asBool:(id)bool userInfo:(id)info requiresReinit:(BOOL)reinit
{
  nameCopy = name;
  boolCopy = bool;
  infoCopy = info;
  v12 = objc_opt_new();
  if (v12)
  {
    v13 = [nameCopy copy];
    v14 = *(v12 + 16);
    *(v12 + 16) = v13;

    v15 = [infoCopy copy];
    v16 = *(v12 + 24);
    *(v12 + 24) = v15;

    objc_storeStrong((v12 + 32), bool);
    *(v12 + 8) = 1;
    *(v12 + 10) = reinit;
    *(v12 + 56) = 2;
    v17 = v12;
  }

  return v12;
}

@end