@interface TSCHChartAxisID
+ (TSCHChartAxisID)axisIDWithType:(int)type ordinal:(unint64_t)ordinal;
- (BOOL)intersectsAxisID:(id)d;
- (BOOL)isEqual:(id)equal;
- (NSString)debuggingName;
- (TSCHChartAxisID)initWithArchive:(const void *)archive;
- (TSCHChartAxisID)initWithType:(int)type ordinal:(unint64_t)ordinal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)displayNameWithOrdinal:(BOOL)ordinal;
- (int64_t)compare:(id)compare;
- (void)saveToArchive:(void *)archive;
@end

@implementation TSCHChartAxisID

+ (TSCHChartAxisID)axisIDWithType:(int)type ordinal:(unint64_t)ordinal
{
  v5 = *&type;
  v6 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend_initWithType_ordinal_(v6, v7, v8, v9, v10, v5, ordinal);

  return v11;
}

- (TSCHChartAxisID)initWithType:(int)type ordinal:(unint64_t)ordinal
{
  v7.receiver = self;
  v7.super_class = TSCHChartAxisID;
  result = [(TSCHChartAxisID *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_ordinal = ordinal;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7 = objc_msgSend_allocWithZone_(TSCHChartAxisID, a2, v3, v4, v5, zone);
  type = self->_type;
  ordinal = self->_ordinal;

  return objc_msgSend_initWithType_ordinal_(v7, v8, v9, v10, v11, type, ordinal);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v6 = v5 && *(v5 + 8) == self->_type && *(v5 + 16) == self->_ordinal;

  return v6;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (self == compareCopy)
  {
    v7 = 0;
  }

  else
  {
    type = self->_type;
    v6 = compareCopy->_type;
    if (type >= v6)
    {
      if (type <= v6)
      {
        ordinal = self->_ordinal;
        v9 = compareCopy->_ordinal;
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

- (BOOL)intersectsAxisID:(id)d
{
  dCopy = d;
  v25 = objc_msgSend_type(self, v5, v6, v7, v8) == 1 && objc_msgSend_type(dCopy, v9, v10, v11, v12) == 2 || objc_msgSend_type(self, v9, v10, v11, v12) == 2 && objc_msgSend_type(dCopy, v13, v14, v15, v16) == 1 || objc_msgSend_type(self, v13, v14, v15, v16) == 5 && objc_msgSend_type(dCopy, v17, v18, v19, v20) == 6 || objc_msgSend_type(self, v17, v18, v19, v20) == 6 && objc_msgSend_type(dCopy, v21, v22, v23, v24) == 5;

  return v25;
}

- (id)displayNameWithOrdinal:(BOOL)ordinal
{
  if (ordinal)
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

- (TSCHChartAxisID)initWithArchive:(const void *)archive
{
  v6 = *(archive + 6);
  if (v6 - 1 >= 6)
  {
    v6 = 0;
  }

  return objc_msgSend_initWithType_ordinal_(self, a2, v3, v4, v5, ((*(archive + 4) << 31) >> 31) & v6, *(archive + 7) & ((*(archive + 4) << 30) >> 31));
}

- (void)saveToArchive:(void *)archive
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

  *(archive + 4) |= 1u;
  *(archive + 6) = v13;
  v14 = objc_msgSend_ordinal(self, v9, v10, v11, v12);
  *(archive + 4) |= 2u;
  *(archive + 7) = v14;
}

@end