@interface PKTXTRecord
+ (id)txtRecordDictionaryForTxtRecord:(id)a3;
- (NSString)printerProduct;
- (PKTXTRecord)initWithCoder:(id)a3;
- (PKTXTRecord)initWithDictionary:(id)a3;
- (PKTXTRecord)initWithNWTXTRecord:(id)a3;
- (PKTXTRecord)initWithTXTRecordData:(id)a3;
- (id)_checkMake:(id)a3 propertyName:(id)a4 maker:(id)a5;
- (id)_checkMakeString:(id)a3 propertyName:(id)a4;
- (id)_checkMakeStringArray:(id)a3 propertyName:(id)a4;
- (id)_checkMakeURL:(id)a3 propertyName:(id)a4;
- (id)_checkMakeUUID:(id)a3 propertyName:(id)a4;
- (id)_initWithLowercasedDictionary:(id)a3;
- (id)_stringValueForKey:(id)a3;
- (id)_wrapProduct:(id)a3;
- (int64_t)_checkMakeInt:(id)a3 propertyName:(id)a4;
- (unint64_t)_checkMakeAvail:(id)a3 propertyName:(id)a4;
- (unsigned)_checkMakeTLS:(id)a3 propertyName:(id)a4;
@end

@implementation PKTXTRecord

+ (id)txtRecordDictionaryForTxtRecord:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __47__PKTXTRecord_txtRecordDictionaryForTxtRecord___block_invoke;
  applier[3] = &unk_279A93408;
  v5 = v4;
  v8 = v5;
  nw_txt_record_apply(v3, applier);

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

- (id)_initWithLowercasedDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKTXTRecord;
  v5 = [(PKTXTRecord *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    stringDict = v5->_stringDict;
    v5->_stringDict = v6;

    v8 = objc_opt_new();
    seenDict = v5->_seenDict;
    v5->_seenDict = v8;
  }

  return v5;
}

- (PKTXTRecord)initWithDictionary:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v4 objectForKey:v10];
        v12 = [v10 lowercaseString];
        [v5 setObject:v11 forKey:v12];
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [(PKTXTRecord *)self _initWithLowercasedDictionary:v5];
  return v13;
}

- (PKTXTRecord)initWithTXTRecordData:(id)a3
{
  v4 = [MEMORY[0x277CBAB60] dictionaryFromTXTRecordData:a3];
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

- (PKTXTRecord)initWithNWTXTRecord:(id)a3
{
  v4 = [PKTXTRecord txtRecordDictionaryForTxtRecord:a3];
  v5 = [(PKTXTRecord *)self _initWithLowercasedDictionary:v4];

  return v5;
}

- (PKTXTRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeDictionaryWithKeysOfClass:v5 objectsOfClass:objc_opt_class() forKey:@"txtDict"];
  v7 = [(PKTXTRecord *)self initWithDictionary:v6];

  return v7;
}

- (id)_stringValueForKey:(id)a3
{
  v4 = a3;
  v5 = [v4 lowercaseString];
  if (([v5 isEqualToString:v4] & 1) == 0)
  {
    __assert_rtn("[PKTXTRecord _stringValueForKey:]", "PKTXTRecord.m", 89, "[[key lowercaseString] isEqualToString:key]");
  }

  v6 = [(NSDictionary *)self->_stringDict objectForKey:v4];

  return v6;
}

- (id)_checkMake:(id)a3 propertyName:(id)a4 maker:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSMutableDictionary *)self->_seenDict objectForKeyedSubscript:v9];
  if (!v11)
  {
    v12 = [(PKTXTRecord *)self _stringValueForKey:v8];
    if (!v12 || (v10[2](v10, v12), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v11 = [MEMORY[0x277CBEB68] null];
    }

    [(NSMutableDictionary *)self->_seenDict setObject:v11 forKeyedSubscript:v9];
  }

  v13 = [MEMORY[0x277CBEB68] null];

  if (v11 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  return v14;
}

- (int64_t)_checkMakeInt:(id)a3 propertyName:(id)a4
{
  v4 = [(PKTXTRecord *)self _checkMake:a3 propertyName:a4 maker:&__block_literal_global_12];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

id __42__PKTXTRecord__checkMakeInt_propertyName___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v2, "integerValue")}];

  return v3;
}

- (id)_checkMakeString:(id)a3 propertyName:(id)a4
{
  v4 = [(PKTXTRecord *)self _checkMake:a3 propertyName:a4 maker:&__block_literal_global_13];

  return v4;
}

- (id)_checkMakeStringArray:(id)a3 propertyName:(id)a4
{
  v4 = [(PKTXTRecord *)self _checkMake:a3 propertyName:a4 maker:&__block_literal_global_16_0];

  return v4;
}

id __50__PKTXTRecord__checkMakeStringArray_propertyName___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 componentsSeparatedByString:{@", "}];

  return v2;
}

- (unint64_t)_checkMakeAvail:(id)a3 propertyName:(id)a4
{
  v4 = [(PKTXTRecord *)self _checkMake:a3 propertyName:a4 maker:&__block_literal_global_21_0];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 BOOLValue];
  }

  else
  {
    v6 = 2;
  }

  return v6;
}

id __44__PKTXTRecord__checkMakeAvail_propertyName___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 lowercaseString];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "isEqualToString:", @"t"}];

  return v4;
}

- (id)_checkMakeUUID:(id)a3 propertyName:(id)a4
{
  v4 = [(PKTXTRecord *)self _checkMake:a3 propertyName:a4 maker:&__block_literal_global_27];

  return v4;
}

id __43__PKTXTRecord__checkMakeUUID_propertyName___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v2];

  return v3;
}

- (id)_checkMakeURL:(id)a3 propertyName:(id)a4
{
  v4 = [(PKTXTRecord *)self _checkMake:a3 propertyName:a4 maker:&__block_literal_global_31];

  return v4;
}

id __42__PKTXTRecord__checkMakeURL_propertyName___block_invoke(uint64_t a1, void *a2)
{
  v2 = PKURLWithString(a2);

  return v2;
}

- (unsigned)_checkMakeTLS:(id)a3 propertyName:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PKTXTRecord *)self _checkMakeString:v6 propertyName:v7];
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

- (id)_wrapProduct:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = [(PKTXTRecord *)self printerType];
    if (v5)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v5];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (NSString)printerProduct
{
  v3 = [(PKTXTRecord *)self _checkMakeString:@"product" propertyName:@"printerProduct"];
  v4 = [(PKTXTRecord *)self _wrapProduct:v3];

  return v4;
}

@end