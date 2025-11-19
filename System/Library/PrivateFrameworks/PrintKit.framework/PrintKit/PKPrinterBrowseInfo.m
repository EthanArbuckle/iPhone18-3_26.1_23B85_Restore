@interface PKPrinterBrowseInfo
+ (int)rollCacheGeneration;
+ (void)findPrinterWithBonjourEndpoint:(id)a3 withTimeout:(double)a4 completionHandler:(id)a5;
- (BOOL)isEphemeral;
- (BOOL)isEqual:(id)a3;
- (BOOL)isIPPS;
- (NSString)debugDescription;
- (NSString)makeAndModel;
- (NSURL)printerURL;
- (NSUUID)uuid;
- (PKPrinterBrowseInfo)initWithBonjourName:(id)a3 txtRecord:(id)a4;
- (PKPrinterBrowseInfo)initWithCoder:(id)a3;
- (PKPrinterBrowseInfo)initWithResolvedBonjourName:(id)a3;
- (id)txtRecordObjectForKey:(id)a3;
- (id)userCodableDictionary;
- (int64_t)compare:(id)a3;
- (int64_t)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)resolveOnMainQueue:(id)a3;
@end

@implementation PKPrinterBrowseInfo

- (PKPrinterBrowseInfo)initWithBonjourName:(id)a3 txtRecord:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = PKPrinterBrowseInfo;
  v9 = [(PKPrinterBrowseInfo *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bonjourName, a3);
    v11 = [(PKPrinterBrowseInfo *)v10 txtRecord];
    objc_sync_enter(v11);
    v12 = dictionaryWithLowercasedKeys(v8);
    txtRecord = v10->_txtRecord;
    v10->_txtRecord = v12;

    objc_sync_exit(v11);
  }

  return v10;
}

- (PKPrinterBrowseInfo)initWithResolvedBonjourName:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PKPrinterBrowseInfo;
  v6 = [(PKPrinterBrowseInfo *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bonjourName, a3);
    v8 = [(PKPrinterBrowseInfo *)v7 txtRecord];
    objc_sync_enter(v8);
    v9 = [v5 resolvedTXT];
    v10 = dictionaryWithLowercasedKeys(v9);
    txtRecord = v7->_txtRecord;
    v7->_txtRecord = v10;

    objc_sync_exit(v8);
  }

  return v7;
}

- (NSURL)printerURL
{
  v3 = self->_bonjourName;
  v4 = self;
  if (object_isClass(v4))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PKPrinterBrowseInfo printerURL]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), v4, "-[PKPrinterBrowseInfo printerURL]"];
  }
  v5 = ;

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__PKPrinterBrowseInfo_printerURL__block_invoke;
  v9[3] = &unk_279A91E38;
  v6 = v3;
  v10 = v6;
  v7 = withDebuggableSemaphore<NSURL * {__strong}>(v5, v9, 10.0);

  return v7;
}

- (PKPrinterBrowseInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPrinterBrowseInfo;
  v5 = [(PKPrinterBrowseInfo *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bonjourName"];
    bonjourName = v5->_bonjourName;
    v5->_bonjourName = v6;

    if ([v4 containsValueForKey:@"txt"])
    {
      v8 = objc_opt_class();
      v9 = [v4 decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"txt"];
      v10 = [(PKPrinterBrowseInfo *)v5 txtRecord];
      objc_sync_enter(v10);
      v11 = dictionaryWithLowercasedKeys(v9);
      txtRecord = v5->_txtRecord;
      v5->_txtRecord = v11;

      objc_sync_exit(v10);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeObject:self->_bonjourName forKey:@"bonjourName"];
  v4 = [(PKPrinterBrowseInfo *)self txtRecord];
  objc_sync_enter(v4);
  v5 = [(PKPrinterBrowseInfo *)self txtRecord];

  if (v5)
  {
    v6 = [(PKPrinterBrowseInfo *)self txtRecord];
    [v7 encodeObject:v6 forKey:@"txt"];
  }

  objc_sync_exit(v4);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPrinterBrowseInfo *)self isEqualToBrowseInfo:v4];

  return v5;
}

- (BOOL)isEphemeral
{
  v2 = [(PKPrinterBrowseInfo *)self bonjourName];
  v3 = [v2 provenance];

  return ((v3 - 16) & 0xFFFFFFEF) == 0;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = 0;
  while (1)
  {
    v6 = 0;
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v22 = [(PKPrinterBrowseInfo *)self type];
        v23 = [v4 type];
        if (v22 > 3)
        {
          v24 = 100;
        }

        else
        {
          v24 = qword_25F649760[v22];
        }

        if (v23 > 3)
        {
          v36 = 100;
        }

        else
        {
          v36 = qword_25F649760[v23];
        }

        v37 = v24 == v36;
        if (v24 < v36)
        {
          v38 = -1;
        }

        else
        {
          v38 = 1;
        }

        if (v37)
        {
          v6 = 0;
        }

        else
        {
          v6 = v38;
        }

        goto LABEL_62;
      }

      if (v5 != 4)
      {
        if (v5 != 5)
        {
          goto LABEL_63;
        }

        v13 = [(PKPrinterBrowseInfo *)self txtRecord];
        objc_sync_enter(v13);
        v14 = [(PKPrinterBrowseInfo *)self txtRecord];
        v15 = [v4 txtRecord];
        v16 = v14;
        v17 = v15;
        if ([v16 isEqualToDictionary:v17])
        {
          v6 = 0;
        }

        else
        {
          v39 = [v16 hash];
          v40 = [v17 hash];
          if (v39 < v40)
          {
            v41 = -1;
          }

          else
          {
            v41 = 1;
          }

          if (v39 == v40)
          {
            v6 = 0;
          }

          else
          {
            v6 = v41;
          }
        }

        objc_sync_exit(v13);
        goto LABEL_61;
      }

      v13 = [(PKPrinterBrowseInfo *)self bonjourName];
      v18 = [v13 persistentNameRepresentationForPrintKitUI];
      v19 = [v4 bonjourName];
      v20 = [v19 persistentNameRepresentationForPrintKitUI];
      v21 = [v18 compare:v20 options:1];
      goto LABEL_24;
    }

    if (v5)
    {
      break;
    }

    v13 = [(PKPrinterBrowseInfo *)self bonjourName];
    v18 = [v13 displayNameForPrintKitUI];
    v19 = [v4 bonjourName];
    v20 = [v19 displayNameForPrintKitUI];
    v21 = [v18 compare:v20];
LABEL_24:
    v6 = v21;

LABEL_61:
LABEL_62:
    ++v5;
    if (v6)
    {
      goto LABEL_63;
    }
  }

  if (v5 == 1)
  {
    v25 = [(PKPrinterBrowseInfo *)self isIPPS];
    v26 = [v4 isIPPS];
    if ((v25 & (v26 ^ 1)) != 0)
    {
      v27 = -1;
    }

    else
    {
      v27 = 1;
    }

    if (v25 != v26)
    {
      v6 = v27;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_62;
  }

  if (v5 != 2)
  {
    goto LABEL_63;
  }

  v7 = [(PKPrinterBrowseInfo *)self bonjourName];
  v8 = [v7 provenance];
  v9 = [v4 bonjourName];
  v10 = [v9 provenance];
  v11 = v8 - 1;
  if (v8 - 1) < 8 && ((0x8Bu >> v11))
  {
    v12 = qword_25F649720[v11];
  }

  else
  {
    v12 = (10 * v8 + 100);
  }

  v28 = v10 - 1;
  if (v10 - 1) < 8 && ((0x8Bu >> v28))
  {
    v29 = qword_25F649720[v28];
  }

  else
  {
    v29 = (10 * v10 + 100);
  }

  if (v12 == v29)
  {
    v13 = [(PKPrinterBrowseInfo *)self bonjourName];
    v30 = [v13 provenanceIdentifier];
    v31 = [v4 bonjourName];
    v32 = [v31 provenanceIdentifier];
    v33 = v30;
    v34 = v32;
    v35 = v34;
    if (v33 && v34)
    {
      v6 = [v33 compare:v34];
    }

    else if (!v33 || v34)
    {
      if (v33)
      {
        v42 = 1;
      }

      else
      {
        v42 = v34 == 0;
      }

      v6 = !v42;
    }

    else
    {
      v6 = -1;
    }

    goto LABEL_61;
  }

  if (v12 < v29)
  {
    v6 = -1;
  }

  else
  {
    v6 = 1;
  }

LABEL_63:

  return v6;
}

- (unint64_t)hash
{
  v3 = 0;
  v4 = 65537;
  while (1)
  {
    v5 = v4 << v3;
    if (v3 <= 2)
    {
      if (v3)
      {
        if (v3 == 1)
        {
          v4 = v5 + [(PKPrinterBrowseInfo *)self isIPPS];
          goto LABEL_25;
        }

        if (v3 != 2)
        {
          return v5;
        }

        v6 = [(PKPrinterBrowseInfo *)self bonjourName];
        v7 = [v6 provenance];
        v8 = v7 - 1;
        if (v7 - 1) < 8 && ((0x8Bu >> v8))
        {
          v9 = qword_25F649720[v8];
        }

        else
        {
          v9 = (10 * v7 + 100);
        }

        v10 = [(PKPrinterBrowseInfo *)self bonjourName];
        v12 = [v10 provenanceIdentifier];
        v4 = v9 + v5 + [v12 hash];
        goto LABEL_21;
      }

      v10 = [(PKPrinterBrowseInfo *)self bonjourName];
      v12 = [v10 displayNameForPrintKitUI];
      v13 = [v12 hash];
LABEL_18:
      v4 = v13 + v5;
LABEL_21:

      goto LABEL_22;
    }

    if (v3 != 3)
    {
      break;
    }

    v14 = [(PKPrinterBrowseInfo *)self type];
    if (v14 > 3)
    {
      v15 = 100;
    }

    else
    {
      v15 = qword_25F649760[v14];
    }

    v4 = v15 + v5;
LABEL_25:
    ++v3;
  }

  if (v3 == 4)
  {
    v10 = [(PKPrinterBrowseInfo *)self bonjourName];
    v12 = [v10 persistentNameRepresentationForPrintKitUI];
    v13 = [v12 hash];
    goto LABEL_18;
  }

  if (v3 == 5)
  {
    v10 = [(PKPrinterBrowseInfo *)self txtRecord];
    objc_sync_enter(v10);
    v11 = [(PKPrinterBrowseInfo *)self txtRecord];
    v4 = [v11 hash] + v5;

    objc_sync_exit(v10);
LABEL_22:

    goto LABEL_25;
  }

  return v5;
}

- (id)txtRecordObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(PKPrinterBrowseInfo *)self txtRecord];
  objc_sync_enter(v5);
  v6 = [(PKPrinterBrowseInfo *)self txtRecord];
  v7 = [v4 lowercaseString];
  v8 = [v6 objectForKeyedSubscript:v7];

  objc_sync_exit(v5);

  return v8;
}

- (int64_t)type
{
  v3 = [(PKPrinterBrowseInfo *)self txtRecord];
  objc_sync_enter(v3);
  v4 = [(PKPrinterBrowseInfo *)self txtRecord];

  objc_sync_exit(v3);
  if (v4)
  {
    v5 = [(PKPrinterBrowseInfo *)self txtRecordObjectForKey:@"Color"];
    v6 = [(PKPrinterBrowseInfo *)self txtRecordObjectForKey:@"Duplex"];
    v7 = [(PKPrinterBrowseInfo *)self txtRecordObjectForKey:@"product"];
    if (v5 && ([v5 isEqual:@"T"] & 1) != 0)
    {
      v8 = 1;
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    else if (v7)
    {
      v8 = [v7 rangeOfString:@"Color"] != 0x7FFFFFFFFFFFFFFFLL;
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v8 = 0;
      if (!v6)
      {
LABEL_13:

        return v8;
      }
    }

    if ([v6 isEqual:@"T"])
    {
      v8 |= 2uLL;
    }

    goto LABEL_13;
  }

  return -1;
}

- (NSUUID)uuid
{
  cachedUUID = self->_cachedUUID;
  if (!cachedUUID)
  {
    v4 = [(PKPrinterBrowseInfo *)self txtRecordObjectForKey:@"UUID"];
    if (!v4 || (v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4]) == 0)
    {
      v6 = [(PKPrinterBrowseInfo *)self btleUUID];

      if (!v6 || ([(PKPrinterBrowseInfo *)self btleUUID], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v5 = [MEMORY[0x277CCAD78] UUID];
      }
    }

    v7 = self->_cachedUUID;
    self->_cachedUUID = v5;

    cachedUUID = self->_cachedUUID;
  }

  return cachedUUID;
}

- (BOOL)isIPPS
{
  v2 = [(PKPrinterBrowseInfo *)self bonjourName];
  v3 = [v2 isIPPS];

  return v3;
}

- (NSString)makeAndModel
{
  v2 = [(PKPrinterBrowseInfo *)self txtRecordObjectForKey:@"product"];
  v3 = v2;
  if (v2 && [v2 hasPrefix:{@"(", "hasSuffix:", @")"}])
  {
    v4 = [v3 substringWithRange:{1, objc_msgSend(v3, "length") - 2}];

    v3 = v4;
  }

  return v3;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = PKPrinterBrowseInfo;
  v4 = [(PKPrinterBrowseInfo *)&v9 description];
  v5 = [(PKPrinterBrowseInfo *)self bonjourName];
  v6 = [v5 debugDescription];
  v7 = [v3 stringWithFormat:@"%@ { %@ }", v4, v6];

  return v7;
}

- (id)userCodableDictionary
{
  v3 = objc_opt_new();
  v4 = [(PKPrinterBrowseInfo *)self txtRecord];
  objc_sync_enter(v4);
  v5 = [(PKPrinterBrowseInfo *)self txtRecord];
  [v3 setObject:v5 forKeyedSubscript:@"txt"];

  objc_sync_exit(v4);

  return v3;
}

+ (int)rollCacheGeneration
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = gPrinterCacheGeneration++;
  objc_sync_exit(v2);

  return v3;
}

- (void)resolveOnMainQueue:(id)a3
{
  v4 = a3;
  v5 = [(PKPrinterBrowseInfo *)self bonjourName];
  if (!v5)
  {
    __assert_rtn("[PKPrinterBrowseInfo(PrintKit) resolveOnMainQueue:]", "PKPrinterBrowseInfo.mm", 452, "self.bonjourName != nil");
  }

  v6 = [(PKPrinterBrowseInfo *)self txtRecord];
  if (!v6)
  {
    __assert_rtn("[PKPrinterBrowseInfo(PrintKit) resolveOnMainQueue:]", "PKPrinterBrowseInfo.mm", 453, "self.txtRecord != nil");
  }

  v7 = findOrMakePrinter(self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__PKPrinterBrowseInfo_PrintKit__resolveOnMainQueue___block_invoke;
  v10[3] = &unk_279A91CD0;
  v11 = v7;
  v12 = v4;
  v8 = v7;
  v9 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

+ (void)findPrinterWithBonjourEndpoint:(id)a3 withTimeout:(double)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[PKPrinterTool_Client sharedClient];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__PKPrinterBrowseInfo_PrintKit__findPrinterWithBonjourEndpoint_withTimeout_completionHandler___block_invoke;
  v11[3] = &unk_279A934A0;
  v10 = v8;
  v12 = v10;
  [v9 browseInfoForPrinter:v7 timeout:v11 completionHandler:a4];
}

void __94__PKPrinterBrowseInfo_PrintKit__findPrinterWithBonjourEndpoint_withTimeout_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v4 = findOrMakePrinter(v3);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end