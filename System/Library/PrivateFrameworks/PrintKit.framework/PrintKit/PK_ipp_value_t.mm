@interface PK_ipp_value_t
+ (id)valueWithBoolean:(int)boolean;
+ (id)valueWithInteger:(int)integer;
+ (id)valueWithString:(id)string;
- (BOOL)BOOLean;
- (NSData)unknown;
- (PK_ipp_collection_t)collection;
- (PK_ipp_value_t)init;
- (PK_ipp_value_t)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)loggingValue:(int)value;
- (int)integer;
- (ipp_value_date_t)date;
- (ipp_value_range_t)range;
- (ipp_value_resolution_t)resolution;
- (ipp_value_string_t)string;
- (void)setBoolean:(BOOL)boolean;
- (void)setDate:(ipp_value_date_t)date;
- (void)setInteger:(int)integer;
- (void)setRange:(ipp_value_range_t)range;
- (void)setResolution:(ipp_value_resolution_t)resolution;
- (void)setString:(ipp_value_string_t)string;
@end

@implementation PK_ipp_value_t

- (PK_ipp_value_t)init
{
  v3.receiver = self;
  v3.super_class = PK_ipp_value_t;
  return [(PK_ipp_value_t *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 1, self->x_payload);
  return v4;
}

- (PK_ipp_value_t)initWithCoder:(id)coder
{
  v14[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PK_ipp_value_t;
  v5 = [(PK_ipp_value_t *)&v13 init];
  if (v5)
  {
    Class = objc_getClass("PK_ipp_collection_t");
    if (!Class)
    {
      Class = objc_opt_class();
    }

    v7 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v14[2] = objc_opt_class();
    v14[3] = Class;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
    v9 = [v7 setWithArray:v8];

    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_payload"];
    x_payload = v5->x_payload;
    v5->x_payload = v10;
  }

  return v5;
}

- (int)integer
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return [self->x_payload integerValue];
  }

  else
  {
    return 0;
  }
}

- (void)setInteger:(int)integer
{
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&integer];
  x_payload = self->x_payload;
  self->x_payload = v4;
}

- (BOOL)BOOLean
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  x_payload = self->x_payload;

  return [x_payload BOOLValue];
}

- (void)setBoolean:(BOOL)boolean
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:boolean];
  x_payload = self->x_payload;
  self->x_payload = v4;
}

- (ipp_value_date_t)date
{
  v6[2] = *MEMORY[0x277D85DE8];
  memset(v6, 0, 11);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = 0;
  v5 = 0;
  if (isKindOfClass)
  {
    [self->x_payload getBytes:v6 range:0, 11];
    v5 = v6[0];
    v4 = LOWORD(v6[1]) | (BYTE2(v6[1]) << 16);
  }

  *result.var0 = v5;
  *&result.var0[8] = v4;
  result.var0[10] = BYTE2(v4);
  return result;
}

- (void)setDate:(ipp_value_date_t)date
{
  v7 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&dateCopy length:11];
  x_payload = self->x_payload;
  self->x_payload = v4;
}

- (void)setString:(ipp_value_string_t)string
{
  var0 = string.var0;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = string.var1;
  v6 = v5;
  if (var0)
  {
    v7 = var0;
    v11[0] = v6;
    v11[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
    x_payload = self->x_payload;
    self->x_payload = v8;
  }

  else
  {
    v12[0] = v5;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v7 = self->x_payload;
    self->x_payload = v10;
  }
}

- (ipp_value_string_t)string
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->x_payload;
    v4 = [v3 count];
    if (v4 == 1)
    {
      v5 = 0;
    }

    else
    {
      if (v4 != 2)
      {
        v5 = 0;
        v6 = &stru_28719ACE8;
        goto LABEL_9;
      }

      v5 = [v3 objectAtIndexedSubscript:1];
    }

    v6 = [v3 objectAtIndexedSubscript:0];
LABEL_9:

    goto LABEL_10;
  }

  v5 = 0;
  v6 = &stru_28719ACE8;
LABEL_10:
  v7 = v5;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (ipp_value_resolution_t)resolution
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    v11 = 0;
    v10 = 0;
    v12 = 0;
    goto LABEL_8;
  }

  v3 = self->x_payload;
  if ([v3 count]!= 3)
  {
    v13 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15[0] = 0;
      _os_log_impl(&dword_25F5FC000, v13, OS_LOG_TYPE_ERROR, "invalid resolution object", v15, 2u);
    }

    goto LABEL_7;
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  integerValue = [v4 integerValue];
  v6 = [v3 objectAtIndexedSubscript:1];
  integerValue2 = [v6 integerValue];
  v8 = [v3 objectAtIndexedSubscript:2];
  integerValue3 = [v8 integerValue];

  v10 = integerValue2 << 32;
  v11 = integerValue;
  v12 = integerValue3;
LABEL_8:
  v14 = v10 | v11;
  result.var0 = v14;
  result.var1 = HIDWORD(v14);
  result.var2 = v12;
  return result;
}

- (void)setResolution:(ipp_value_resolution_t)resolution
{
  v3 = *&resolution.var2;
  v4 = *&resolution.var0;
  v11[3] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{HIDWORD(v4), v6}];
  v11[1] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v11[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  x_payload = self->x_payload;
  self->x_payload = v9;
}

- (ipp_value_range_t)range
{
  v4 = v2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
LABEL_9:
    *v4 = 0;
    return isKindOfClass;
  }

  v11 = self->x_payload;
  if ([v11 count]!= 2)
  {
    v10 = _PKLogCategory(PKLogCategoryFramework);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25F5FC000, v10, OS_LOG_TYPE_ERROR, "invalid range object", buf, 2u);
    }

    goto LABEL_9;
  }

  v6 = [v11 objectAtIndexedSubscript:0];
  integerValue = [v6 integerValue];
  v8 = [v11 objectAtIndexedSubscript:1];
  integerValue2 = [v8 integerValue];
  *v4 = integerValue;
  *(v4 + 4) = integerValue2;

  return isKindOfClass;
}

- (void)setRange:(ipp_value_range_t)range
{
  v9[2] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*range.var0];
  v9[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(*&range + 4)];
  v9[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  x_payload = self->x_payload;
  self->x_payload = v7;
}

- (NSData)unknown
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->x_payload;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PK_ipp_collection_t)collection
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_getClass("PK_ipp_collection_t"), (objc_opt_isKindOfClass()))
  {
    v3 = self->x_payload;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PK_ipp_value_t;
  v4 = [(PK_ipp_value_t *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ { %@ }", v4, self->x_payload];

  return v5;
}

- (id)loggingValue:(int)value
{
  v57 = *MEMORY[0x277D85DE8];
  if (value <= 34)
  {
    if (value <= 18)
    {
      if (value && value != 16)
      {
        goto LABEL_45;
      }
    }

    else if (value != 19)
    {
      if (value == 33)
      {
        goto LABEL_39;
      }

      if (value == 34)
      {
        bOOLean = [(PK_ipp_value_t *)self BOOLean];
        x_payload = @"false";
        if (bOOLean)
        {
          x_payload = @"true";
        }

        goto LABEL_55;
      }

LABEL_45:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = self->x_payload;
        if (![v29 count])
        {

          null = @"<empty array>";
          goto LABEL_56;
        }

        v31 = [v29 objectAtIndexedSubscript:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v29 count]== 1)
          {
            null = v31;
            goto LABEL_44;
          }

          if ([v29 count]== 2)
          {
            v38 = MEMORY[0x277CCACA8];
            v33 = [v29 objectAtIndexedSubscript:1];
            null = [v38 stringWithFormat:@"%@ (%@)", v31, v33];
            goto LABEL_43;
          }
        }
      }

      x_payload = self->x_payload;
LABEL_55:
      null = x_payload;
      goto LABEL_56;
    }

    null = [MEMORY[0x277CBEB68] null];
    goto LABEL_56;
  }

  if (value <= 49)
  {
    if (value != 35)
    {
      if (value == 48)
      {
        v25 = self->x_payload;
        v26 = objc_opt_new();
        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p> - %lu bytes {", objc_opt_class(), v25, -[NSObject length](v25, "length")];
        [v26 addObject:v27];

        *&v52.tm_sec = MEMORY[0x277D85DD0];
        *&v52.tm_hour = 3221225472;
        *&v52.tm_mon = ___ZL17pretty_data_linesP6NSData_block_invoke;
        *&v52.tm_wday = &unk_279A90490;
        null = v26;
        *&v52.tm_isdst = null;
        _visitHexLines(v25, 0, &v52);
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"}"];
        [(__CFString *)null addObject:v28];

        goto LABEL_56;
      }

      if (value == 49)
      {
        date = [(PK_ipp_value_t *)self date];
        v6 = v5;
        memset(&v52.tm_wday, 0, 32);
        v52.tm_mon = BYTE2(date) - 1;
        v52.tm_year = (bswap32(date) >> 16) - 1900;
        v52.tm_hour = BYTE4(date);
        v52.tm_mday = BYTE3(date);
        *&v52.tm_sec = vand_s8(vmovn_s64(vshlq_u64(vdupq_n_s64(date), xmmword_25F6493D0)), 0xFF000000FFLL);
        v7 = mktime(&v52);
        v8 = 3600;
        if (v6 != 45)
        {
          v8 = -3600;
        }

        v9 = 60;
        if (v6 != 45)
        {
          v9 = -60;
        }

        v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:(v9 * BYTE2(v6) + v8 * BYTE1(v6) + v7)];
        null = [v10 description];

        goto LABEL_56;
      }

      goto LABEL_45;
    }

LABEL_39:
    null = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[PK_ipp_value_t integer](self, "integer")];
    goto LABEL_56;
  }

  if (value == 50)
  {
    v29 = self->x_payload;
    v34 = MEMORY[0x277CCACA8];
    v31 = [v29 objectAtIndexedSubscript:0];
    integerValue = [v31 integerValue];
    v33 = [v29 objectAtIndexedSubscript:1];
    integerValue2 = [v33 integerValue];
    v37 = [v29 objectAtIndexedSubscript:2];
    null = [v34 stringWithFormat:@"resolution<%d, %d, %d>", integerValue, integerValue2, objc_msgSend(v37, "integerValue")];

    goto LABEL_43;
  }

  if (value == 51)
  {
    v29 = self->x_payload;
    v30 = MEMORY[0x277CCACA8];
    v31 = [v29 objectAtIndexedSubscript:0];
    integerValue3 = [v31 integerValue];
    v33 = [v29 objectAtIndexedSubscript:1];
    null = [v30 stringWithFormat:@"range<%d, %d>", integerValue3, objc_msgSend(v33, "integerValue")];
LABEL_43:

LABEL_44:
    goto LABEL_56;
  }

  if (value != 52)
  {
    goto LABEL_45;
  }

  v40 = self->x_payload;
  null = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  attrs = [v40 attrs];
  obj = attrs;
  v14 = [attrs countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v14)
  {
    v42 = *v49;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v49 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v48 + 1) + 8 * i);
        name = [v16 name];
        v18 = objc_opt_new();
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        values = [v16 values];
        v20 = [values countByEnumeratingWithState:&v44 objects:v55 count:16];
        if (v20)
        {
          v21 = *v45;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v45 != v21)
              {
                objc_enumerationMutation(values);
              }

              v23 = [*(*(&v44 + 1) + 8 * j) loggingValue:{objc_msgSend(v16, "value_tag")}];
              [v18 addObject:v23];
            }

            v20 = [values countByEnumeratingWithState:&v44 objects:v55 count:16];
          }

          while (v20);
        }

        v53[0] = @"col_name";
        v53[1] = @"col_vals";
        v54[0] = name;
        v54[1] = v18;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
        [(__CFString *)null addObject:v24];
      }

      attrs = obj;
      v14 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v14);
  }

LABEL_56:

  return null;
}

+ (id)valueWithInteger:(int)integer
{
  v3 = *&integer;
  v4 = objc_opt_new();
  [v4 setInteger:v3];

  return v4;
}

+ (id)valueWithBoolean:(int)boolean
{
  v4 = objc_opt_new();
  [v4 setBoolean:boolean != 0];

  return v4;
}

+ (id)valueWithString:(id)string
{
  stringCopy = string;
  v4 = objc_opt_new();
  v5 = stringCopy;
  v6 = v5;
  if (v4)
  {
    [v4 setString:{0, v5}];
  }

  else
  {
  }

  return v4;
}

@end