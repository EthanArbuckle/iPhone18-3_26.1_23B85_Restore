@interface TSTCellSpec
+ (id)cellDiffProperties;
+ (id)cellSpecFromTSKFormat:(id)a3;
+ (id)defaultCellSpec;
+ (id)displayNameForInteractionType:(unsigned int)a3;
+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4;
+ (unsigned)interactionTypeForShimControlFormatType:(unsigned int)a3;
+ (unsigned)shimControlFormatTypeForInteractionType:(unsigned int)a3;
- (BOOL)isControl;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (TSTCellSpec)init;
- (id)initFromPropertyCommandMessage:(const Message *)a3 unarchiver:(id)a4;
- (id)objectByRemovingPropertiesInMap:(id)a3 addingPropertiesInMap:(id)a4 updateInverseResetPropertyMap:(id)a5 updateInverseSetPropertyMap:(id)a6;
- (id)propertiesMatchingThoseInMap:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSTCellSpec

- (TSTCellSpec)init
{
  v3.receiver = self;
  v3.super_class = TSTCellSpec;
  result = [(TSTCellSpec *)&v3 init];
  result->_interactionTypeFromTheFuture = 0;
  return result;
}

+ (id)defaultCellSpec
{
  if (qword_27CFB54A0 != -1)
  {
    sub_2216F7898();
  }

  v3 = qword_27CFB5498;

  return v3;
}

- (BOOL)isControl
{
  v5 = objc_msgSend_interactionType(self, a2, v2, v3, v4);

  return MEMORY[0x2821F9670](TSTCellSpec, sel_interactionTypeIsControl_, v5, v6, v7);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"<%@: %p>", v6, v7, v4, self);
}

+ (id)cellDiffProperties
{
  if (qword_27CFB54B0 != -1)
  {
    sub_2216F78AC();
  }

  v3 = qword_27CFB54A8;

  return v3;
}

- (id)objectByRemovingPropertiesInMap:(id)a3 addingPropertiesInMap:(id)a4 updateInverseResetPropertyMap:(id)a5 updateInverseSetPropertyMap:(id)a6
{
  v8 = a4;
  objc_msgSend_setObject_forProperty_(a6, v9, self, 913, v10);
  v11 = self;
  if (objc_msgSend_containsProperty_(v8, v12, 913, v13, v14))
  {
    v18 = objc_msgSend_objectForProperty_(v8, v15, 913, v16, v17);

    v11 = v18;
  }

  return v11;
}

- (id)propertiesMatchingThoseInMap:(id)a3
{
  v4 = a3;
  if (objc_msgSend_containsProperty_(v4, v5, 913, v6, v7))
  {
    v8 = objc_alloc(MEMORY[0x277D80AB8]);
    v12 = objc_msgSend_initWithPropertiesAndValues_(v8, v9, 913, v10, v11, self, 0);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (v9)
  {
    v10 = objc_msgSend_interactionType(self, v5, v6, v7, v8);
    v15 = v10 == objc_msgSend_interactionType(v9, v11, v12, v13, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)instanceWithArchive:(const void *)a3 unarchiver:(id)a4
{
  v7 = a4;
  v8 = *(a3 + 16);
  if (v8 <= 3)
  {
    if ((v8 - 1) < 3)
    {
      v9 = off_27845CE58;
      goto LABEL_12;
    }

    if (!v8)
    {
      v10 = objc_alloc_init(TSTCellSpec);
LABEL_13:
      v11 = v10;
      goto LABEL_14;
    }
  }

  else
  {
    if ((v8 - 4) < 3)
    {
      v9 = off_27845CE68;
LABEL_12:
      v10 = objc_msgSend_instanceWithArchive_unarchiver_(*v9, v5, a3, v7, v6);
      goto LABEL_13;
    }

    if (v8 == 7)
    {
      v9 = off_27845CE50;
      goto LABEL_12;
    }

    if (v8 == 8)
    {
      v9 = off_27845CE88;
      goto LABEL_12;
    }
  }

  v11 = objc_alloc_init(TSTCellSpec);
  objc_msgSend_setInteractionTypeFromTheFuture_(v11, v13, v8, v14, v15);
LABEL_14:

  return v11;
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = objc_msgSend_interactionTypeFromTheFuture(self, a2, a3, a4, v4);
  *(a3 + 4) |= 0x20u;
  *(a3 + 16) = v6;
}

- (id)initFromPropertyCommandMessage:(const Message *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v11 = objc_msgSend_init(self, v7, v8, v9, v10);
  if (LODWORD(a3[4].var0))
  {
    v12 = objc_opt_class();
    v15 = objc_msgSend_instanceWithArchive_unarchiver_(v12, v13, a3, v6, v14);

    v11 = v15;
  }

  return v11;
}

+ (id)cellSpecFromTSKFormat:(id)a3
{
  v3 = a3;
  v11 = objc_msgSend_formatType(v3, v4, v5, v6, v7) - 263;
  if (v11 >= 5)
  {
    v12 = 0;
  }

  else
  {
    v12 = objc_msgSend_cellSpecFromTSKFormat_(*off_278463C00[v11], v8, v3, v9, v10);
  }

  return v12;
}

+ (unsigned)interactionTypeForShimControlFormatType:(unsigned int)a3
{
  if (objc_msgSend_isShimControlFormatType_(a1, a2, *&a3, v3, v4))
  {
    return a3 - 100;
  }

  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSTCellSpec interactionTypeForShimControlFormatType:]", v7, v8);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSpec.mm", v13, v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 250, 0, "Unconvertible format type.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

+ (unsigned)shimControlFormatTypeForInteractionType:(unsigned int)a3
{
  if (a3 - 4 <= 4)
  {
    return a3 + 100;
  }

  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSTCellSpec shimControlFormatTypeForInteractionType:]", v3, v4);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSpec.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 259, 0, "Unconvertible interaction type.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  return 0;
}

+ (id)displayNameForInteractionType:(unsigned int)a3
{
  v5 = 0;
  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      v6 = sub_2214AAEA8(a1, a2, *&a3, v3, v4);
      v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v12, @"Stepper", &stru_2834BADA0, @"TSTables");
    }

    else
    {
      if (a3 != 5)
      {
        goto LABEL_13;
      }

      v6 = sub_2214AAEA8(a1, a2, *&a3, v3, v4);
      v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v9, @"Slider", &stru_2834BADA0, @"TSTables");
    }
  }

  else
  {
    switch(a3)
    {
      case 6u:
        v6 = sub_2214AAEA8(a1, a2, *&a3, v3, v4);
        v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v10, @"Star Rating", &stru_2834BADA0, @"TSTables");
        break;
      case 7u:
        v6 = sub_2214AAEA8(a1, a2, *&a3, v3, v4);
        v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v11, @"Pop-Up Menu", &stru_2834BADA0, @"TSTables");
        break;
      case 8u:
        v6 = sub_2214AAEA8(a1, a2, *&a3, v3, v4);
        v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v7, @"Checkbox", &stru_2834BADA0, @"TSTables");
        break;
      default:
        goto LABEL_13;
    }
  }

  v5 = v8;

LABEL_13:

  return v5;
}

@end