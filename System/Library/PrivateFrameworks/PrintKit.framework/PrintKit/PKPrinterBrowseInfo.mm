@interface PKPrinterBrowseInfo
+ (int)rollCacheGeneration;
+ (void)findPrinterWithBonjourEndpoint:(id)endpoint withTimeout:(double)timeout completionHandler:(id)handler;
- (BOOL)isEphemeral;
- (BOOL)isEqual:(id)equal;
- (BOOL)isIPPS;
- (NSString)debugDescription;
- (NSString)makeAndModel;
- (NSURL)printerURL;
- (NSUUID)uuid;
- (PKPrinterBrowseInfo)initWithBonjourName:(id)name txtRecord:(id)record;
- (PKPrinterBrowseInfo)initWithCoder:(id)coder;
- (PKPrinterBrowseInfo)initWithResolvedBonjourName:(id)name;
- (id)txtRecordObjectForKey:(id)key;
- (id)userCodableDictionary;
- (int64_t)compare:(id)compare;
- (int64_t)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)resolveOnMainQueue:(id)queue;
@end

@implementation PKPrinterBrowseInfo

- (PKPrinterBrowseInfo)initWithBonjourName:(id)name txtRecord:(id)record
{
  nameCopy = name;
  recordCopy = record;
  v15.receiver = self;
  v15.super_class = PKPrinterBrowseInfo;
  v9 = [(PKPrinterBrowseInfo *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bonjourName, name);
    txtRecord = [(PKPrinterBrowseInfo *)v10 txtRecord];
    objc_sync_enter(txtRecord);
    v12 = dictionaryWithLowercasedKeys(recordCopy);
    txtRecord = v10->_txtRecord;
    v10->_txtRecord = v12;

    objc_sync_exit(txtRecord);
  }

  return v10;
}

- (PKPrinterBrowseInfo)initWithResolvedBonjourName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = PKPrinterBrowseInfo;
  v6 = [(PKPrinterBrowseInfo *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bonjourName, name);
    txtRecord = [(PKPrinterBrowseInfo *)v7 txtRecord];
    objc_sync_enter(txtRecord);
    resolvedTXT = [nameCopy resolvedTXT];
    v10 = dictionaryWithLowercasedKeys(resolvedTXT);
    txtRecord = v7->_txtRecord;
    v7->_txtRecord = v10;

    objc_sync_exit(txtRecord);
  }

  return v7;
}

- (NSURL)printerURL
{
  v3 = self->_bonjourName;
  selfCopy = self;
  if (object_isClass(selfCopy))
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PKPrinterBrowseInfo printerURL]"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>: %s", objc_opt_class(), selfCopy, "-[PKPrinterBrowseInfo printerURL]"];
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

- (PKPrinterBrowseInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKPrinterBrowseInfo;
  v5 = [(PKPrinterBrowseInfo *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bonjourName"];
    bonjourName = v5->_bonjourName;
    v5->_bonjourName = v6;

    if ([coderCopy containsValueForKey:@"txt"])
    {
      v8 = objc_opt_class();
      v9 = [coderCopy decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"txt"];
      txtRecord = [(PKPrinterBrowseInfo *)v5 txtRecord];
      objc_sync_enter(txtRecord);
      v11 = dictionaryWithLowercasedKeys(v9);
      txtRecord = v5->_txtRecord;
      v5->_txtRecord = v11;

      objc_sync_exit(txtRecord);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_bonjourName forKey:@"bonjourName"];
  txtRecord = [(PKPrinterBrowseInfo *)self txtRecord];
  objc_sync_enter(txtRecord);
  txtRecord2 = [(PKPrinterBrowseInfo *)self txtRecord];

  if (txtRecord2)
  {
    txtRecord3 = [(PKPrinterBrowseInfo *)self txtRecord];
    [coderCopy encodeObject:txtRecord3 forKey:@"txt"];
  }

  objc_sync_exit(txtRecord);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKPrinterBrowseInfo *)self isEqualToBrowseInfo:equalCopy];

  return v5;
}

- (BOOL)isEphemeral
{
  bonjourName = [(PKPrinterBrowseInfo *)self bonjourName];
  provenance = [bonjourName provenance];

  return ((provenance - 16) & 0xFFFFFFEF) == 0;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = 0;
  while (1)
  {
    v6 = 0;
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        type = [(PKPrinterBrowseInfo *)self type];
        type2 = [compareCopy type];
        if (type > 3)
        {
          v24 = 100;
        }

        else
        {
          v24 = qword_25F649760[type];
        }

        if (type2 > 3)
        {
          v36 = 100;
        }

        else
        {
          v36 = qword_25F649760[type2];
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

        txtRecord = [(PKPrinterBrowseInfo *)self txtRecord];
        objc_sync_enter(txtRecord);
        txtRecord2 = [(PKPrinterBrowseInfo *)self txtRecord];
        txtRecord3 = [compareCopy txtRecord];
        v16 = txtRecord2;
        v17 = txtRecord3;
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

        objc_sync_exit(txtRecord);
        goto LABEL_61;
      }

      txtRecord = [(PKPrinterBrowseInfo *)self bonjourName];
      persistentNameRepresentationForPrintKitUI = [txtRecord persistentNameRepresentationForPrintKitUI];
      bonjourName = [compareCopy bonjourName];
      persistentNameRepresentationForPrintKitUI2 = [bonjourName persistentNameRepresentationForPrintKitUI];
      v21 = [persistentNameRepresentationForPrintKitUI compare:persistentNameRepresentationForPrintKitUI2 options:1];
      goto LABEL_24;
    }

    if (v5)
    {
      break;
    }

    txtRecord = [(PKPrinterBrowseInfo *)self bonjourName];
    persistentNameRepresentationForPrintKitUI = [txtRecord displayNameForPrintKitUI];
    bonjourName = [compareCopy bonjourName];
    persistentNameRepresentationForPrintKitUI2 = [bonjourName displayNameForPrintKitUI];
    v21 = [persistentNameRepresentationForPrintKitUI compare:persistentNameRepresentationForPrintKitUI2];
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
    isIPPS = [(PKPrinterBrowseInfo *)self isIPPS];
    isIPPS2 = [compareCopy isIPPS];
    if ((isIPPS & (isIPPS2 ^ 1)) != 0)
    {
      v27 = -1;
    }

    else
    {
      v27 = 1;
    }

    if (isIPPS != isIPPS2)
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

  bonjourName2 = [(PKPrinterBrowseInfo *)self bonjourName];
  provenance = [bonjourName2 provenance];
  bonjourName3 = [compareCopy bonjourName];
  provenance2 = [bonjourName3 provenance];
  v11 = provenance - 1;
  if (provenance - 1) < 8 && ((0x8Bu >> v11))
  {
    v12 = qword_25F649720[v11];
  }

  else
  {
    v12 = (10 * provenance + 100);
  }

  v28 = provenance2 - 1;
  if (provenance2 - 1) < 8 && ((0x8Bu >> v28))
  {
    v29 = qword_25F649720[v28];
  }

  else
  {
    v29 = (10 * provenance2 + 100);
  }

  if (v12 == v29)
  {
    txtRecord = [(PKPrinterBrowseInfo *)self bonjourName];
    provenanceIdentifier = [txtRecord provenanceIdentifier];
    bonjourName4 = [compareCopy bonjourName];
    provenanceIdentifier2 = [bonjourName4 provenanceIdentifier];
    v33 = provenanceIdentifier;
    v34 = provenanceIdentifier2;
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

        bonjourName = [(PKPrinterBrowseInfo *)self bonjourName];
        provenance = [bonjourName provenance];
        v8 = provenance - 1;
        if (provenance - 1) < 8 && ((0x8Bu >> v8))
        {
          v9 = qword_25F649720[v8];
        }

        else
        {
          v9 = (10 * provenance + 100);
        }

        bonjourName2 = [(PKPrinterBrowseInfo *)self bonjourName];
        provenanceIdentifier = [bonjourName2 provenanceIdentifier];
        v4 = v9 + v5 + [provenanceIdentifier hash];
        goto LABEL_21;
      }

      bonjourName2 = [(PKPrinterBrowseInfo *)self bonjourName];
      provenanceIdentifier = [bonjourName2 displayNameForPrintKitUI];
      v13 = [provenanceIdentifier hash];
LABEL_18:
      v4 = v13 + v5;
LABEL_21:

      goto LABEL_22;
    }

    if (v3 != 3)
    {
      break;
    }

    type = [(PKPrinterBrowseInfo *)self type];
    if (type > 3)
    {
      v15 = 100;
    }

    else
    {
      v15 = qword_25F649760[type];
    }

    v4 = v15 + v5;
LABEL_25:
    ++v3;
  }

  if (v3 == 4)
  {
    bonjourName2 = [(PKPrinterBrowseInfo *)self bonjourName];
    provenanceIdentifier = [bonjourName2 persistentNameRepresentationForPrintKitUI];
    v13 = [provenanceIdentifier hash];
    goto LABEL_18;
  }

  if (v3 == 5)
  {
    bonjourName2 = [(PKPrinterBrowseInfo *)self txtRecord];
    objc_sync_enter(bonjourName2);
    txtRecord = [(PKPrinterBrowseInfo *)self txtRecord];
    v4 = [txtRecord hash] + v5;

    objc_sync_exit(bonjourName2);
LABEL_22:

    goto LABEL_25;
  }

  return v5;
}

- (id)txtRecordObjectForKey:(id)key
{
  keyCopy = key;
  txtRecord = [(PKPrinterBrowseInfo *)self txtRecord];
  objc_sync_enter(txtRecord);
  txtRecord2 = [(PKPrinterBrowseInfo *)self txtRecord];
  lowercaseString = [keyCopy lowercaseString];
  v8 = [txtRecord2 objectForKeyedSubscript:lowercaseString];

  objc_sync_exit(txtRecord);

  return v8;
}

- (int64_t)type
{
  txtRecord = [(PKPrinterBrowseInfo *)self txtRecord];
  objc_sync_enter(txtRecord);
  txtRecord2 = [(PKPrinterBrowseInfo *)self txtRecord];

  objc_sync_exit(txtRecord);
  if (txtRecord2)
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
    if (!v4 || (uUID = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4]) == 0)
    {
      btleUUID = [(PKPrinterBrowseInfo *)self btleUUID];

      if (!btleUUID || ([(PKPrinterBrowseInfo *)self btleUUID], (uUID = objc_claimAutoreleasedReturnValue()) == 0))
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
      }
    }

    v7 = self->_cachedUUID;
    self->_cachedUUID = uUID;

    cachedUUID = self->_cachedUUID;
  }

  return cachedUUID;
}

- (BOOL)isIPPS
{
  bonjourName = [(PKPrinterBrowseInfo *)self bonjourName];
  isIPPS = [bonjourName isIPPS];

  return isIPPS;
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
  bonjourName = [(PKPrinterBrowseInfo *)self bonjourName];
  v6 = [bonjourName debugDescription];
  v7 = [v3 stringWithFormat:@"%@ { %@ }", v4, v6];

  return v7;
}

- (id)userCodableDictionary
{
  v3 = objc_opt_new();
  txtRecord = [(PKPrinterBrowseInfo *)self txtRecord];
  objc_sync_enter(txtRecord);
  txtRecord2 = [(PKPrinterBrowseInfo *)self txtRecord];
  [v3 setObject:txtRecord2 forKeyedSubscript:@"txt"];

  objc_sync_exit(txtRecord);

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

- (void)resolveOnMainQueue:(id)queue
{
  queueCopy = queue;
  bonjourName = [(PKPrinterBrowseInfo *)self bonjourName];
  if (!bonjourName)
  {
    __assert_rtn("[PKPrinterBrowseInfo(PrintKit) resolveOnMainQueue:]", "PKPrinterBrowseInfo.mm", 452, "self.bonjourName != nil");
  }

  txtRecord = [(PKPrinterBrowseInfo *)self txtRecord];
  if (!txtRecord)
  {
    __assert_rtn("[PKPrinterBrowseInfo(PrintKit) resolveOnMainQueue:]", "PKPrinterBrowseInfo.mm", 453, "self.txtRecord != nil");
  }

  v7 = findOrMakePrinter(self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__PKPrinterBrowseInfo_PrintKit__resolveOnMainQueue___block_invoke;
  v10[3] = &unk_279A91CD0;
  v11 = v7;
  v12 = queueCopy;
  v8 = v7;
  v9 = queueCopy;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

+ (void)findPrinterWithBonjourEndpoint:(id)endpoint withTimeout:(double)timeout completionHandler:(id)handler
{
  endpointCopy = endpoint;
  handlerCopy = handler;
  v9 = +[PKPrinterTool_Client sharedClient];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__PKPrinterBrowseInfo_PrintKit__findPrinterWithBonjourEndpoint_withTimeout_completionHandler___block_invoke;
  v11[3] = &unk_279A934A0;
  v10 = handlerCopy;
  v12 = v10;
  [v9 browseInfoForPrinter:endpointCopy timeout:v11 completionHandler:timeout];
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