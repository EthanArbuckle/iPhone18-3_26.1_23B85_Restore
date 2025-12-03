@interface PKTXTRecord
+ (id)txtRecordDictionaryForTxtRecord:(id)record;
- (NSString)printerProduct;
- (PKTXTRecord)initWithCoder:(id)coder;
- (PKTXTRecord)initWithDictionary:(id)dictionary;
- (PKTXTRecord)initWithNWTXTRecord:(id)record;
- (PKTXTRecord)initWithTXTRecordData:(id)data;
- (id)_checkMake:(id)make propertyName:(id)name maker:(id)maker;
- (id)_checkMakeString:(id)string propertyName:(id)name;
- (id)_checkMakeStringArray:(id)array propertyName:(id)name;
- (id)_checkMakeURL:(id)l propertyName:(id)name;
- (id)_checkMakeUUID:(id)d propertyName:(id)name;
- (id)_initWithLowercasedDictionary:(id)dictionary;
- (id)_stringValueForKey:(id)key;
- (id)_wrapProduct:(id)product;
- (int64_t)_checkMakeInt:(id)int propertyName:(id)name;
- (unint64_t)_checkMakeAvail:(id)avail propertyName:(id)name;
- (unsigned)_checkMakeTLS:(id)s propertyName:(id)name;
@end

@implementation PKTXTRecord

+ (id)txtRecordDictionaryForTxtRecord:(id)record
{
  recordCopy = record;
  v4 = objc_opt_new();
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __47__PKTXTRecord_txtRecordDictionaryForTxtRecord___block_invoke;
  applier[3] = &unk_279A93408;
  v5 = v4;
  v8 = v5;
  nw_txt_record_apply(recordCopy, applier);

  return v5;
}

uint64_t __47__PKTXTRecord_txtRecordDictionaryForTxtRecord___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v9 = [v8 lowercaseString];

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a4 length:a5 encoding:4];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:v9];

  return 1;
}

- (id)_initWithLowercasedDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PKTXTRecord;
  v5 = [(PKTXTRecord *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    stringDict = v5->_stringDict;
    v5->_stringDict = v6;

    v8 = objc_opt_new();
    seenDict = v5->_seenDict;
    v5->_seenDict = v8;
  }

  return v5;
}

- (PKTXTRecord)initWithDictionary:(id)dictionary
{
  v20 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [dictionaryCopy objectForKey:v10];
        lowercaseString = [v10 lowercaseString];
        [v5 setObject:v11 forKey:lowercaseString];
      }

      v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [(PKTXTRecord *)self _initWithLowercasedDictionary:v5];
  return v13;
}

- (PKTXTRecord)initWithTXTRecordData:(id)data
{
  v4 = [MEMORY[0x277CBAB60] dictionaryFromTXTRecordData:data];
  v5 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__PKTXTRecord_initWithTXTRecordData___block_invoke;
  v9[3] = &unk_279A93430;
  v6 = v5;
  v10 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = [(PKTXTRecord *)self initWithDictionary:v6];

  return v7;
}

void __37__PKTXTRecord_initWithTXTRecordData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(v5 length:"bytes") encoding:{objc_msgSend(v5, "length"), 4}];
  [*(a1 + 32) setObject:v6 forKey:v7];
}

- (PKTXTRecord)initWithNWTXTRecord:(id)record
{
  v4 = [PKTXTRecord txtRecordDictionaryForTxtRecord:record];
  v5 = [(PKTXTRecord *)self _initWithLowercasedDictionary:v4];

  return v5;
}

- (PKTXTRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() forKey:@"txtDict"];
  v7 = [(PKTXTRecord *)self initWithDictionary:v6];

  return v7;
}

- (id)_stringValueForKey:(id)key
{
  keyCopy = key;
  lowercaseString = [keyCopy lowercaseString];
  if (([lowercaseString isEqualToString:keyCopy] & 1) == 0)
  {
    __assert_rtn("[PKTXTRecord _stringValueForKey:]", "PKTXTRecord.m", 89, "[[key lowercaseString] isEqualToString:key]");
  }

  v6 = [(NSDictionary *)self->_stringDict objectForKey:keyCopy];

  return v6;
}

- (id)_checkMake:(id)make propertyName:(id)name maker:(id)maker
{
  makeCopy = make;
  nameCopy = name;
  makerCopy = maker;
  null = [(NSMutableDictionary *)self->_seenDict objectForKeyedSubscript:nameCopy];
  if (!null)
  {
    v12 = [(PKTXTRecord *)self _stringValueForKey:makeCopy];
    if (!v12 || (makerCopy[2](makerCopy, v12), (null = objc_claimAutoreleasedReturnValue()) == 0))
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    [(NSMutableDictionary *)self->_seenDict setObject:null forKeyedSubscript:nameCopy];
  }

  null2 = [MEMORY[0x277CBEB68] null];

  if (null == null2)
  {
    v14 = 0;
  }

  else
  {
    v14 = null;
  }

  return v14;
}

- (int64_t)_checkMakeInt:(id)int propertyName:(id)name
{
  v4 = [(PKTXTRecord *)self _checkMake:int propertyName:name maker:&__block_literal_global_12];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

id __42__PKTXTRecord__checkMakeInt_propertyName___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v2, "integerValue")}];

  return v3;
}

- (id)_checkMakeString:(id)string propertyName:(id)name
{
  v4 = [(PKTXTRecord *)self _checkMake:string propertyName:name maker:&__block_literal_global_13];

  return v4;
}

- (id)_checkMakeStringArray:(id)array propertyName:(id)name
{
  v4 = [(PKTXTRecord *)self _checkMake:array propertyName:name maker:&__block_literal_global_16_0];

  return v4;
}

id __50__PKTXTRecord__checkMakeStringArray_propertyName___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 componentsSeparatedByString:{@", "}];

  return v2;
}

- (unint64_t)_checkMakeAvail:(id)avail propertyName:(id)name
{
  v4 = [(PKTXTRecord *)self _checkMake:avail propertyName:name maker:&__block_literal_global_21_0];
  v5 = v4;
  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 2;
  }

  return bOOLValue;
}

id __44__PKTXTRecord__checkMakeAvail_propertyName___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 lowercaseString];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "isEqualToString:", @"t"}];

  return v4;
}

- (id)_checkMakeUUID:(id)d propertyName:(id)name
{
  v4 = [(PKTXTRecord *)self _checkMake:d propertyName:name maker:&__block_literal_global_27];

  return v4;
}

id __43__PKTXTRecord__checkMakeUUID_propertyName___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v2];

  return v3;
}

- (id)_checkMakeURL:(id)l propertyName:(id)name
{
  v4 = [(PKTXTRecord *)self _checkMake:l propertyName:name maker:&__block_literal_global_31];

  return v4;
}

id __42__PKTXTRecord__checkMakeURL_propertyName___block_invoke(uint64_t a1, void *a2)
{
  v2 = PKURLWithString(a2);

  return v2;
}

- (unsigned)_checkMakeTLS:(id)s propertyName:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  sCopy = s;
  nameCopy = name;
  v8 = [(PKTXTRecord *)self _checkMakeString:sCopy propertyName:nameCopy];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  if (([v8 isEqualToString:@"1.1"] & 1) == 0)
  {
    if ([v9 isEqualToString:@"1.2"])
    {
      v10 = 771;
      goto LABEL_12;
    }

    if ([v9 isEqualToString:@"1.3"])
    {
      v10 = 772;
      goto LABEL_12;
    }

    v11 = _PKLogCategory(PKLogCategoryNetwork[0]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = v9;
      _os_log_impl(&dword_25F5FC000, v11, OS_LOG_TYPE_ERROR, "Unknown tls level '%{public}@', returning 0", &v13, 0xCu);
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = 770;
LABEL_12:

  return v10;
}

- (id)_wrapProduct:(id)product
{
  productCopy = product;
  if (!productCopy)
  {
    printerType = [(PKTXTRecord *)self printerType];
    if (printerType)
    {
      productCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", printerType];
    }

    else
    {
      productCopy = 0;
    }
  }

  return productCopy;
}

- (NSString)printerProduct
{
  v3 = [(PKTXTRecord *)self _checkMakeString:@"product" propertyName:@"printerProduct"];
  v4 = [(PKTXTRecord *)self _wrapProduct:v3];

  return v4;
}

@end