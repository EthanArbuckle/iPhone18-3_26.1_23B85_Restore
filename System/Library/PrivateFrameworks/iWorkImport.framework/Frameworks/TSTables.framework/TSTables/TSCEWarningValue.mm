@interface TSCEWarningValue
+ (id)valueWithNumber:(id)a3;
+ (id)valueWithString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TSCEWarningValue

+ (id)valueWithNumber:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(TSCEWarningValue);
  objc_msgSend_setNumber_(v4, v5, v3, v6, v7);

  return v4;
}

+ (id)valueWithString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(TSCEWarningValue);
  objc_msgSend_setString_(v4, v5, v3, v6, v7);

  return v4;
}

- (unint64_t)hash
{
  string = self->_string;
  if (!string)
  {
    string = self->_number;
  }

  return objc_msgSend_hash(string, a2, v2, v3, v4);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v10 = v5;
  if (v5)
  {
    string = self->_string;
    if (string)
    {
      objc_msgSend_string(v5, v6, v7, v8, v9);
    }

    else
    {
      string = self->_number;
      objc_msgSend_number(v5, v6, v7, v8, v9);
    }
    v12 = ;
    isEqual = objc_msgSend_isEqual_(string, v13, v12, v14, v15);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (id)description
{
  v6 = MEMORY[0x277CCACA8];
  string = self->_string;
  v8 = string;
  if (!string)
  {
    v8 = objc_msgSend_stringValue(self->_number, a2, v2, v3, v4);
  }

  v9 = objc_msgSend_stringWithFormat_(v6, a2, @"(TSCEWarningValue *) %p %@", v3, v4, self, v8);
  if (!string)
  {
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6 = objc_msgSend_allocWithZone_(TSCEWarningValue, a2, a3, v3, v4);
  v11 = objc_msgSend_init(v6, v7, v8, v9, v10);
  objc_msgSend_setNumber_(v11, v12, self->_number, v13, v14);
  objc_msgSend_setString_(v11, v15, self->_string, v16, v17);
  return v11;
}

@end