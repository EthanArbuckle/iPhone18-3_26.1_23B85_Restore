@interface KNBuildAttributeValue
+ (id)emptyValue;
+ (id)valueWithBool:(BOOL)a3;
+ (id)valueWithColor:(id)a3;
+ (id)valueWithDouble:(double)a3;
+ (id)valueWithInteger:(int64_t)a3;
+ (id)valueWithPathSource:(id)a3;
+ (id)valueWithString:(id)a3;
- (BOOL)BOOLValue;
- (BOOL)isEqual:(id)a3;
- (KNBuildAttributeValue)initWithBoolValue:(BOOL)a3;
- (KNBuildAttributeValue)initWithColorValue:(id)a3;
- (KNBuildAttributeValue)initWithDoubleValue:(double)a3;
- (KNBuildAttributeValue)initWithIntegerValue:(int64_t)a3;
- (KNBuildAttributeValue)initWithPathSourceValue:(id)a3;
- (KNBuildAttributeValue)initWithStringValue:(id)a3;
- (NSObject)objectValue;
- (NSString)stringValue;
- (TSDPathSource)pathSourceValue;
- (TSUColor)colorValue;
- (double)doubleValue;
- (id)description;
- (int64_t)integerValue;
- (unint64_t)hash;
- (unint64_t)type;
@end

@implementation KNBuildAttributeValue

+ (id)emptyValue
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)valueWithInteger:(int64_t)a3
{
  v4 = [a1 alloc];
  v6 = objc_msgSend_initWithIntegerValue_(v4, v5, a3);

  return v6;
}

+ (id)valueWithDouble:(double)a3
{
  v4 = [a1 alloc];
  v7 = objc_msgSend_initWithDoubleValue_(v4, v5, v6, a3);

  return v7;
}

+ (id)valueWithBool:(BOOL)a3
{
  v3 = a3;
  v4 = [a1 alloc];
  v6 = objc_msgSend_initWithBoolValue_(v4, v5, v3);

  return v6;
}

+ (id)valueWithString:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v7 = objc_msgSend_initWithStringValue_(v5, v6, v4);

  return v7;
}

+ (id)valueWithPathSource:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v7 = objc_msgSend_initWithPathSourceValue_(v5, v6, v4);

  return v7;
}

+ (id)valueWithColor:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v7 = objc_msgSend_initWithColorValue_(v5, v6, v4);

  return v7;
}

- (KNBuildAttributeValue)initWithIntegerValue:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = KNBuildAttributeValue;
  v4 = [(KNBuildAttributeValue *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_definedIntegerValue = 1;
    if (a3 >= 0x80000000)
    {
      sub_275E60674();
      LODWORD(a3) = 0x7FFFFFFF;
    }

    else if (a3 <= 0xFFFFFFFF7FFFFFFFLL)
    {
      sub_275E605F8();
      LODWORD(a3) = 0x80000000;
    }

    v5->_integerValue = a3;
  }

  return v5;
}

- (KNBuildAttributeValue)initWithDoubleValue:(double)a3
{
  v5.receiver = self;
  v5.super_class = KNBuildAttributeValue;
  result = [(KNBuildAttributeValue *)&v5 init];
  if (result)
  {
    result->_definedDoubleValue = 1;
    result->_doubleValue = a3;
  }

  return result;
}

- (KNBuildAttributeValue)initWithBoolValue:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = KNBuildAttributeValue;
  result = [(KNBuildAttributeValue *)&v5 init];
  if (result)
  {
    result->_definedBoolValue = 1;
    result->_BOOLValue = a3;
  }

  return result;
}

- (KNBuildAttributeValue)initWithStringValue:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = KNBuildAttributeValue;
  v5 = [(KNBuildAttributeValue *)&v12 init];
  v8 = v5;
  if (v5)
  {
    v5->_definedStringValue = 1;
    v9 = objc_msgSend_copy(v4, v6, v7);
    stringValue = v8->_stringValue;
    v8->_stringValue = v9;
  }

  return v8;
}

- (KNBuildAttributeValue)initWithPathSourceValue:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = KNBuildAttributeValue;
  v5 = [(KNBuildAttributeValue *)&v12 init];
  v8 = v5;
  if (v5)
  {
    v5->_definedPathSourceValue = 1;
    v9 = objc_msgSend_copy(v4, v6, v7);
    pathSourceValue = v8->_pathSourceValue;
    v8->_pathSourceValue = v9;
  }

  return v8;
}

- (KNBuildAttributeValue)initWithColorValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KNBuildAttributeValue;
  v6 = [(KNBuildAttributeValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_definedColorValue = 1;
    objc_storeStrong(&v6->_colorValue, a3);
  }

  return v7;
}

- (unint64_t)type
{
  if (self->_definedIntegerValue)
  {
    return 0;
  }

  if (self->_definedDoubleValue)
  {
    return 1;
  }

  if (self->_definedBoolValue)
  {
    return 2;
  }

  if (self->_definedStringValue)
  {
    return 3;
  }

  if (self->_definedPathSourceValue)
  {
    return 4;
  }

  if (self->_definedColorValue)
  {
    return 5;
  }

  return 6;
}

- (NSObject)objectValue
{
  v6 = objc_msgSend_type(self, a2, v2);
  v7 = 0;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = 32;
        break;
      case 4:
        v8 = 40;
        break;
      case 5:
        v8 = 48;
        break;
      default:
        goto LABEL_15;
    }

    v7 = *(&self->super.super.isa + v8);
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      v7 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v4, v5, self->_doubleValue);
    }

    else if (v6 == 2)
    {
      v7 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_BOOLValue);
    }
  }

  else
  {
    v7 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_integerValue);
  }

LABEL_15:

  return v7;
}

- (int64_t)integerValue
{
  if (!self->_definedIntegerValue && (objc_msgSend_p_attributesAreEmpty(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNBuildAttributeValue integerValue]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeValue.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 161, 0, "Illegal attribute value access.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  result = self->_integerValue;
  if ((result & 0x80000000) != 0)
  {
    sub_275E606F0();
    return 0;
  }

  return result;
}

- (double)doubleValue
{
  if (!self->_definedDoubleValue && (objc_msgSend_p_attributesAreEmpty(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNBuildAttributeValue doubleValue]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeValue.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 167, 0, "Illegal attribute value access.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  return self->_doubleValue;
}

- (BOOL)BOOLValue
{
  if (!self->_definedBoolValue && (objc_msgSend_p_attributesAreEmpty(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNBuildAttributeValue BOOLValue]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeValue.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 173, 0, "Illegal attribute value access.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  return self->_BOOLValue;
}

- (NSString)stringValue
{
  if (!self->_definedStringValue && (objc_msgSend_p_attributesAreEmpty(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNBuildAttributeValue stringValue]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeValue.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 179, 0, "Illegal attribute value access.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  stringValue = self->_stringValue;

  return stringValue;
}

- (TSDPathSource)pathSourceValue
{
  if (!self->_definedPathSourceValue && (objc_msgSend_p_attributesAreEmpty(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNBuildAttributeValue pathSourceValue]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeValue.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 185, 0, "Illegal attribute value access.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  pathSourceValue = self->_pathSourceValue;

  return pathSourceValue;
}

- (TSUColor)colorValue
{
  if (!self->_definedColorValue && (objc_msgSend_p_attributesAreEmpty(self, a2, v2) & 1) == 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNBuildAttributeValue colorValue]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeValue.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 191, 0, "Illegal attribute value access.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  colorValue = self->_colorValue;

  return colorValue;
}

- (id)description
{
  v4 = objc_msgSend_type(self, a2, v2);
  v6 = @"(none)";
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(string, %@)", self->_stringValue);
        break;
      case 4:
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(path source, %@)", self->_pathSourceValue);
        break;
      case 5:
        objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(color, %@)", self->_colorValue);
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(double, %lf)", *&self->_doubleValue);
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_18;
      }

      if (self->_BOOLValue)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(BOOLean, %@)", v7);
    }
  }

  else
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(integer, %d)", self->_integerValue);
  }
  v6 = ;
LABEL_18:
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"<KNBuildAttributeValue %p : %@>", self, v6);

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  objc_opt_class();
  v8 = objc_msgSend_objectValue(self, v6, v7);
  v9 = TSUDynamicCast();

  if (v9 && (objc_opt_class(), objc_msgSend_pathSourceValue(v5, v12, v13), v14 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(), v15 = objc_claimAutoreleasedReturnValue(), v14, v15))
  {
    isEqualWithStrictComparison = objc_msgSend_isEqualWithStrictComparison_(v9, v10, v15);
  }

  else
  {
    v15 = objc_msgSend_objectValue(self, v10, v11);
    v19 = objc_msgSend_objectValue(v5, v17, v18);
    isEqualWithStrictComparison = objc_msgSend_isEqual_(v15, v20, v19);
  }

  return isEqualWithStrictComparison;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_objectValue(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

@end