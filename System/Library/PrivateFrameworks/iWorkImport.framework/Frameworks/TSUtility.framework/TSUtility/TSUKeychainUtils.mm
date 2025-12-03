@interface TSUKeychainUtils
+ (BOOL)isBiometryEnabledByDefault;
+ (BOOL)lookupGenericItem:(id)item account:(id *)account passphrase:(id *)passphrase options:(unint64_t)options error:(id *)error;
+ (BOOL)removeGenericItem:(id)item error:(id *)error;
+ (BOOL)setPassphrase:(id)passphrase forGenericItem:(id)item service:(id)service description:(id)description label:(id)label account:(id)account options:(unint64_t)options error:(id *)self0;
+ (id)defaultDocumentPasswordDescriptionString;
+ (id)defaultServiceForGenericItem:(id)item;
+ (id)errorForStatus:(int)status;
+ (id)mutableQueryForGenericItem:(id)item returnData:(BOOL)data;
+ (id)mutableQueryForSearch:(BOOL)search withParameters:(id)parameters;
+ (void)authenticateAndUpgradeKeychainResult:(id)result localizedReason:(id)reason completionQueue:(id)queue completionHandler:(id)handler;
+ (void)cryptoProcessData:(id)data encrypt:(BOOL)encrypt localizedReason:(id)reason completionQueue:(id)queue completionHandler:(id)handler;
+ (void)lookupGenericItem:(id)item localizedReason:(id)reason completionQueue:(id)queue completionHandler:(id)handler;
+ (void)setBiometryEnabledByDefault:(BOOL)default;
+ (void)setPassphrase:(id)passphrase forGenericItem:(id)item service:(id)service description:(id)description label:(id)label account:(id)account options:(unint64_t)options completionQueue:(id)self0 completionHandler:(id)self1;
@end

@implementation TSUKeychainUtils

+ (BOOL)setPassphrase:(id)passphrase forGenericItem:(id)item service:(id)service description:(id)description label:(id)label account:(id)account options:(unint64_t)options error:(id *)self0
{
  v63[4] = *MEMORY[0x277D85DE8];
  passphraseCopy = passphrase;
  itemCopy = item;
  serviceCopy = service;
  descriptionCopy = description;
  labelCopy = label;
  accountCopy = account;
  if (passphraseCopy && itemCopy && serviceCopy)
  {
    v58 = 0;
    v59 = 0;
    v57 = 0;
    v20 = [self lookupGenericItem:itemCopy account:&v59 passphrase:&v58 options:options error:&v57];
    v43 = v59;
    v21 = v58;
    v41 = v57;
    v44 = v21;
    if (v20)
    {
      if (v21 && v43)
      {
        v22 = 1;
      }

      else
      {
        v24 = [self removeGenericItem:itemCopy error:0];

        v44 = 0;
        v22 = v24 ^ 1;
      }

      v42 = v22;
    }

    else
    {
      v42 = 0;
    }

    v45 = [passphraseCopy dataUsingEncoding:4];
    v25 = *MEMORY[0x277CDC228];
    v26 = *MEMORY[0x277CDC238];
    v27 = *MEMORY[0x277CDBFB8];
    v62[0] = *MEMORY[0x277CDC228];
    v62[1] = v27;
    v39 = v27;
    v40 = v26;
    v63[0] = v26;
    v63[1] = itemCopy;
    v28 = *MEMORY[0x277CDC5E8];
    v62[2] = *MEMORY[0x277CDC120];
    v62[3] = v28;
    v63[2] = serviceCopy;
    v63[3] = v45;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:4];
    v30 = [self mutableQueryForSearch:0 withParameters:v29];

    if ((options & 2) != 0 && [self shouldUseBiometry])
    {
      v31 = dispatch_semaphore_create(0);
      v51 = 0;
      v52 = &v51;
      v53 = 0x3032000000;
      v54 = sub_2770C9D64;
      v55 = sub_2770C9D74;
      v56 = 0;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = sub_2770C9D7C;
      v48[3] = &unk_27A702CE0;
      v50 = &v51;
      v32 = v31;
      v49 = v32;
      [self cryptoProcessData:v45 encrypt:1 localizedReason:0 completionQueue:0 completionHandler:v48];
      dispatch_semaphore_wait(v32, 0xFFFFFFFFFFFFFFFFLL);
      if (v52[5])
      {
        if (descriptionCopy)
        {
          v33 = descriptionCopy;
        }

        else
        {
          v33 = &stru_28862C2A0;
        }

        v34 = [(__CFString *)v33 stringByAppendingString:@" (Encrypted)"];

        [v30 setObject:v52[5] forKeyedSubscript:v28];
        descriptionCopy = v34;
      }

      _Block_object_dispose(&v51, 8);
    }

    if (accountCopy)
    {
      [v30 setObject:accountCopy forKeyedSubscript:*MEMORY[0x277CDBF20]];
    }

    if (labelCopy)
    {
      [v30 setObject:labelCopy forKeyedSubscript:*MEMORY[0x277CDC080]];
    }

    if (descriptionCopy)
    {
      [v30 setObject:descriptionCopy forKeyedSubscript:*MEMORY[0x277CDBFA0]];
    }

    if ((v42 & 1) != 0 || (v35 = SecItemAdd(v30, 0), v35 == -25299))
    {
      v60[0] = v25;
      v60[1] = v39;
      v61[0] = v40;
      v61[1] = itemCopy;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
      v37 = [self queryForSearch:1 withParameters:v36];

      [v30 removeObjectForKey:v25];
      v35 = SecItemUpdate(v37, v30);
    }

    v23 = v35 == 0;
    if (error && v35)
    {
      *error = [self errorForStatus:v35];
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
    *error = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (void)setPassphrase:(id)passphrase forGenericItem:(id)item service:(id)service description:(id)description label:(id)label account:(id)account options:(unint64_t)options completionQueue:(id)self0 completionHandler:(id)self1
{
  passphraseCopy = passphrase;
  itemCopy = item;
  serviceCopy = service;
  descriptionCopy = description;
  labelCopy = label;
  accountCopy = account;
  queueCopy = queue;
  handlerCopy = handler;
  v24 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770CA028;
  block[3] = &unk_27A702D30;
  v35 = passphraseCopy;
  v36 = itemCopy;
  v37 = serviceCopy;
  v38 = descriptionCopy;
  v39 = labelCopy;
  v40 = accountCopy;
  selfCopy = self;
  optionsCopy = options;
  v41 = queueCopy;
  v42 = handlerCopy;
  v25 = queueCopy;
  v26 = handlerCopy;
  v27 = accountCopy;
  v28 = labelCopy;
  v29 = descriptionCopy;
  v30 = serviceCopy;
  v31 = itemCopy;
  v32 = passphraseCopy;
  dispatch_async(v24, block);
}

+ (void)lookupGenericItem:(id)item localizedReason:(id)reason completionQueue:(id)queue completionHandler:(id)handler
{
  itemCopy = item;
  reasonCopy = reason;
  queueCopy = queue;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (itemCopy)
  {
    v15 = [self mutableQueryForGenericItem:itemCopy returnData:1];
    result = 0;
    v16 = SecItemCopyMatching(v15, &result);
    v17 = v16 == 0;
    if (v16)
    {
      if (v14)
      {
        v18 = v16;
        if (queueCopy)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_2770CAAAC;
          block[3] = &unk_27A702DF8;
          v31 = v14;
          selfCopy = self;
          v33 = v18;
          dispatch_async(queueCopy, block);
          v19 = v31;
        }

        else
        {
          v19 = [self errorForStatus:v16];
          (v14)[2](v14, 0, 0, 0, v19);
        }

        goto LABEL_30;
      }

LABEL_31:

      goto LABEL_32;
    }

    v19 = result;
    v20 = [result objectForKeyedSubscript:*MEMORY[0x277CDBF20]];
    v21 = [v19 objectForKeyedSubscript:*MEMORY[0x277CDC5E8]];
    if (!v21)
    {
LABEL_29:

LABEL_30:
      goto LABEL_31;
    }

    v28 = v20;
    v29 = v21;
    v27 = [v19 objectForKeyedSubscript:*MEMORY[0x277CDBFA0]];
    v22 = [v27 hasSuffix:@" (Encrypted)"];
    shouldUseBiometry = [self shouldUseBiometry];
    v24 = shouldUseBiometry;
    if (v22)
    {
      if (shouldUseBiometry)
      {
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = sub_2770CA7B4;
        v47[3] = &unk_27A702D80;
        selfCopy2 = self;
        v48 = itemCopy;
        v51 = v14;
        v49 = queueCopy;
        v20 = v28;
        v50 = v28;
        [self cryptoProcessData:v29 encrypt:0 localizedReason:reasonCopy completionQueue:0 completionHandler:v47];

        v25 = v48;
      }

      else
      {
        v20 = v28;
        if (!v14)
        {
LABEL_28:

          v21 = v29;
          goto LABEL_29;
        }

        if (queueCopy)
        {
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = sub_2770CA98C;
          v43[3] = &unk_27A702DA8;
          v45 = v14;
          v44 = v28;
          selfCopy3 = self;
          dispatch_async(queueCopy, v43);

          v25 = v45;
        }

        else
        {
          v25 = [self errorForStatus:4294967246];
          (v14)[2](v14, 0, v28, 0, v25);
        }
      }
    }

    else
    {
      v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v29 encoding:4];
      if (v24)
      {
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = sub_2770CA9FC;
        v39[3] = &unk_27A702DD0;
        v42 = v14;
        v20 = v28;
        v40 = v28;
        v25 = v25;
        v41 = v25;
        [self authenticateAndUpgradeKeychainResult:v19 localizedReason:reasonCopy completionQueue:queueCopy completionHandler:v39];

        v26 = v42;
      }

      else
      {
        if (!v14)
        {
          v20 = v28;
          goto LABEL_27;
        }

        v20 = v28;
        if (!queueCopy)
        {
          (v14)[2](v14, 1, v28, v25, 0);
          goto LABEL_27;
        }

        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = sub_2770CAA8C;
        v34[3] = &unk_27A7018C8;
        v37 = v14;
        v38 = v17;
        v35 = v28;
        v25 = v25;
        v36 = v25;
        dispatch_async(queueCopy, v34);

        v26 = v37;
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  if (handlerCopy)
  {
    if (!queueCopy)
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
      (v14)[2](v14, 0, 0, 0, v15);
      goto LABEL_31;
    }

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = sub_2770CA730;
    v54[3] = &unk_27A702350;
    v55 = handlerCopy;
    dispatch_async(queueCopy, v54);
  }

LABEL_32:
}

+ (BOOL)lookupGenericItem:(id)item account:(id *)account passphrase:(id *)passphrase options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  itemCopy = item;
  if (itemCopy)
  {
    v13 = [self mutableQueryForGenericItem:itemCopy returnData:passphrase != 0];
    v14 = v13;
    if (optionsCopy)
    {
      [(__CFDictionary *)v13 setObject:*MEMORY[0x277CBED28] forKeyedSubscript:*MEMORY[0x277CDC140]];
    }

    result = 0;
    v15 = SecItemCopyMatching(v14, &result);
    v16 = result;
    if (v15)
    {
      v17 = 0;
      if (error && v15 != -25300)
      {
        [self errorForStatus:v15];
        *error = v17 = 0;
      }

      goto LABEL_24;
    }

    if (account)
    {
      v18 = [result objectForKeyedSubscript:*MEMORY[0x277CDBF20]];
      *account = [v18 copy];
    }

    if (!passphrase)
    {
      v17 = 1;
LABEL_24:

      goto LABEL_25;
    }

    v19 = [v16 objectForKeyedSubscript:*MEMORY[0x277CDC5E8]];
    if (!v19)
    {
      v17 = 1;
LABEL_23:

      goto LABEL_24;
    }

    v20 = [v16 objectForKeyedSubscript:*MEMORY[0x277CDBFA0]];
    v21 = [v20 hasSuffix:@" (Encrypted)"];
    if (v21)
    {
      if (!error)
      {
LABEL_22:
        v17 = v21 ^ 1;

        goto LABEL_23;
      }

      v22 = [self errorForStatus:4294941988];
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v19 encoding:4];
      error = passphrase;
    }

    *error = v22;
    goto LABEL_22;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_25:

  return v17;
}

+ (id)mutableQueryForGenericItem:(id)item returnData:(BOOL)data
{
  dataCopy = data;
  v15[3] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CDC238];
  v7 = *MEMORY[0x277CDBFB8];
  v14[0] = *MEMORY[0x277CDC228];
  v14[1] = v7;
  v15[0] = v6;
  v15[1] = item;
  v14[2] = *MEMORY[0x277CDC550];
  v8 = *MEMORY[0x277CBED28];
  v15[2] = *MEMORY[0x277CBED28];
  v9 = MEMORY[0x277CBEAC0];
  itemCopy = item;
  v11 = [v9 dictionaryWithObjects:v15 forKeys:v14 count:3];

  v12 = [self mutableQueryForSearch:1 withParameters:v11];

  if (dataCopy)
  {
    [v12 setObject:v8 forKeyedSubscript:*MEMORY[0x277CDC558]];
  }

  return v12;
}

+ (BOOL)removeGenericItem:(id)item error:(id *)error
{
  v16[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v7 = itemCopy;
  if (itemCopy)
  {
    v8 = *MEMORY[0x277CDC238];
    v9 = *MEMORY[0x277CDBFB8];
    v15[0] = *MEMORY[0x277CDC228];
    v15[1] = v9;
    v16[0] = v8;
    v16[1] = itemCopy;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v11 = [self queryForSearch:1 withParameters:v10];

    v12 = SecItemDelete(v11);
    v13 = v12 == 0;
    if (error && v12)
    {
      *error = [self errorForStatus:v12];
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
    *error = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (void)authenticateAndUpgradeKeychainResult:(id)result localizedReason:(id)reason completionQueue:(id)queue completionHandler:(id)handler
{
  resultCopy = result;
  reasonCopy = reason;
  queueCopy = queue;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (handlerCopy)
  {
    if (queueCopy)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_2770CB0E8;
      v16[3] = &unk_27A702E20;
      v17 = handlerCopy;
      selfCopy = self;
      dispatch_async(queueCopy, v16);
    }

    else
    {
      v15 = [self errorForStatus:4294967246];
      (v14)[2](v14, 0, v15);
    }
  }
}

+ (id)defaultServiceForGenericItem:(id)item
{
  v3 = MEMORY[0x277CCACA8];
  itemCopy = item;
  v5 = [[v3 alloc] initWithData:itemCopy encoding:4];

  return v5;
}

+ (id)defaultDocumentPasswordDescriptionString
{
  v2 = SFUMainBundle();
  v3 = [v2 localizedStringForKey:@"iWork Document Password" value:&stru_28862C2A0 table:@"TSUtility"];

  return v3;
}

+ (void)cryptoProcessData:(id)data encrypt:(BOOL)encrypt localizedReason:(id)reason completionQueue:(id)queue completionHandler:(id)handler
{
  dataCopy = data;
  reasonCopy = reason;
  queueCopy = queue;
  handlerCopy = handler;
  v15 = handlerCopy;
  if (handlerCopy)
  {
    if (queueCopy)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_2770CB328;
      v17[3] = &unk_27A702E20;
      v18 = handlerCopy;
      selfCopy = self;
      dispatch_async(queueCopy, v17);
    }

    else
    {
      v16 = [self errorForStatus:4294967246];
      (v15)[2](v15, 0, 0, v16);
    }
  }
}

+ (BOOL)isBiometryEnabledByDefault
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"TSUKeychainUtilsBiometryOptOut"];

  if (v4)
  {
    return 0;
  }

  return [self shouldUseBiometry];
}

+ (void)setBiometryEnabledByDefault:(BOOL)default
{
  defaultCopy = default;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = standardUserDefaults;
  if (defaultCopy)
  {
    [standardUserDefaults removeObjectForKey:@"TSUKeychainUtilsBiometryOptOut"];
  }

  else
  {
    [standardUserDefaults setBool:1 forKey:@"TSUKeychainUtilsBiometryOptOut"];
  }
}

+ (id)errorForStatus:(int)status
{
  if (status)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:status userInfo:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)mutableQueryForSearch:(BOOL)search withParameters:(id)parameters
{
  v4 = [parameters mutableCopy];

  return v4;
}

@end