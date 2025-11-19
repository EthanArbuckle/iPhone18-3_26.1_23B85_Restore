@interface TSCHChartAxisID
+ (TSCHChartAxisID)axisIDWithType:(int)a3 ordinal:(unint64_t)a4;
- (BOOL)intersectsAxisID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)debuggingName;
- (TSCHChartAxisID)initWithArchive:(const void *)a3;
- (TSCHChartAxisID)initWithType:(int)a3 ordinal:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)displayNameWithOrdinal:(BOOL)a3;
- (int64_t)compare:(id)a3;
- (void)saveToArchive:(void *)a3;
@end

@implementation TSCHChartAxisID

+ (TSCHChartAxisID)axisIDWithType:(int)a3 ordinal:(unint64_t)a4
{
  v5 = *&a3;
  v6 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend_initWithType_ordinal_(v6, v7, v8, v9, v10, v5, a4);

  return v11;
}

- (TSCHChartAxisID)initWithType:(int)a3 ordinal:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = TSCHChartAxisID;
  result = [(TSCHChartAxisID *)&v7 init];
  if (result)
  {
    result->_type = a3;
    result->_ordinal = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7 = objc_msgSend_allocWithZone_(TSCHChartAxisID, a2, v3, v4, v5, a3);
  type = self->_type;
  ordinal = self->_ordinal;

  return objc_msgSend_initWithType_ordinal_(v7, v8, v9, v10, v11, type, ordinal);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v6 = v5 && *(v5 + 8) == self->_type && *(v5 + 16) == self->_ordinal;

  return v6;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 0;
  }

  else
  {
    type = self->_type;
    v6 = v4->_type;
    if (type >= v6)
    {
      if (type <= v6)
      {
        ordinal = self->_ordinal;
        v9 = v4->_ordinal;
        v10 = ordinal >= v9;
        v11 = ordinal > v9;
        if (v10)
        {
          v7 = v11;
        }

        else
        {
          v7 = -1;
        }
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

- (BOOL)intersectsAxisID:(id)a3
{
  v4 = a3;
  v25 = objc_msgSend_type(self, v5, v6, v7, v8) == 1 && objc_msgSend_type(v4, v9, v10, v11, v12) == 2 || objc_msgSend_type(self, v9, v10, v11, v12) == 2 && objc_msgSend_type(v4, v13, v14, v15, v16) == 1 || objc_msgSend_type(self, v13, v14, v15, v16) == 5 && objc_msgSend_type(v4, v17, v18, v19, v20) == 6 || objc_msgSend_type(self, v17, v18, v19, v20) == 6 && objc_msgSend_type(v4, v21, v22, v23, v24) == 5;

  return v25;
}

- (id)displayNameWithOrdinal:(BOOL)a3
{
  if (a3)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_msgSend_type(self, a2, v3, v4, v5);
    v9 = sub_27622C5DC(v8);
    v14 = objc_msgSend_ordinal(self, v10, v11, v12, v13);
    v19 = objc_msgSend_stringWithFormat_(v7, v15, v16, v17, v18, @"%@%lu", v9, v14 + 1);
  }

  else
  {
    v20 = objc_msgSend_type(self, a2, v3, v4, v5);
    v19 = sub_27622C5DC(v20);
  }

  return v19;
}

- (NSString)debuggingName
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_type(self, a2, v2, v3, v4);
  v8 = sub_27622C5DC(v7);
  v13 = objc_msgSend_ordinal(self, v9, v10, v11, v12);
  v18 = objc_msgSend_stringWithFormat_(v6, v14, v15, v16, v17, @"%@%lu", v8, v13);

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_debuggingName(self, v6, v7, v8, v9);
  v15 = objc_msgSend_stringWithFormat_(v3, v11, v12, v13, v14, @"<%@: %p %@>", v5, self, v10);

  return v15;
}

- (TSCHChartAxisID)initWithArchive:(const void *)a3
{
  v6 = *(a3 + 6);
  if (v6 - 1 >= 6)
  {
    v6 = 0;
  }

  return objc_msgSend_initWithType_ordinal_(self, a2, v3, v4, v5, ((*(a3 + 4) << 31) >> 31) & v6, *(a3 + 7) & ((*(a3 + 4) << 30) >> 31));
}

- (void)saveToArchive:(void *)a3
{
  v8 = objc_msgSend_type(self, a2, v3, v4, v5);
  if ((v8 - 1) >= 6)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8;
  }

  *(a3 + 4) |= 1u;
  *(a3 + 6) = v13;
  v14 = objc_msgSend_ordinal(self, v9, v10, v11, v12);
  *(a3 + 4) |= 2u;
  *(a3 + 7) = v14;
}

@end