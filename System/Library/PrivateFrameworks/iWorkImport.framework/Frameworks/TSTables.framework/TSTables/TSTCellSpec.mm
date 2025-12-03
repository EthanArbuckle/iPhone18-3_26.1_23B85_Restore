@interface TSTCellSpec
+ (id)cellDiffProperties;
+ (id)cellSpecFromTSKFormat:(id)format;
+ (id)defaultCellSpec;
+ (id)displayNameForInteractionType:(unsigned int)type;
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
+ (unsigned)interactionTypeForShimControlFormatType:(unsigned int)type;
+ (unsigned)shimControlFormatTypeForInteractionType:(unsigned int)type;
- (BOOL)isControl;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (TSTCellSpec)init;
- (id)initFromPropertyCommandMessage:(const Message *)message unarchiver:(id)unarchiver;
- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap;
- (id)propertiesMatchingThoseInMap:(id)map;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
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

- (id)objectByRemovingPropertiesInMap:(id)map addingPropertiesInMap:(id)inMap updateInverseResetPropertyMap:(id)propertyMap updateInverseSetPropertyMap:(id)setPropertyMap
{
  inMapCopy = inMap;
  objc_msgSend_setObject_forProperty_(setPropertyMap, v9, self, 913, v10);
  selfCopy = self;
  if (objc_msgSend_containsProperty_(inMapCopy, v12, 913, v13, v14))
  {
    v18 = objc_msgSend_objectForProperty_(inMapCopy, v15, 913, v16, v17);

    selfCopy = v18;
  }

  return selfCopy;
}

- (id)propertiesMatchingThoseInMap:(id)map
{
  mapCopy = map;
  if (objc_msgSend_containsProperty_(mapCopy, v5, 913, v6, v7))
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v8 = *(archive + 16);
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
      v10 = objc_msgSend_instanceWithArchive_unarchiver_(*v9, v5, archive, unarchiverCopy, v6);
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

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  v6 = objc_msgSend_interactionTypeFromTheFuture(self, a2, archive, archiver, v4);
  *(archive + 4) |= 0x20u;
  *(archive + 16) = v6;
}

- (id)initFromPropertyCommandMessage:(const Message *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v11 = objc_msgSend_init(self, v7, v8, v9, v10);
  if (LODWORD(message[4].var0))
  {
    v12 = objc_opt_class();
    v15 = objc_msgSend_instanceWithArchive_unarchiver_(v12, v13, message, unarchiverCopy, v14);

    v11 = v15;
  }

  return v11;
}

+ (id)cellSpecFromTSKFormat:(id)format
{
  formatCopy = format;
  v11 = objc_msgSend_formatType(formatCopy, v4, v5, v6, v7) - 263;
  if (v11 >= 5)
  {
    v12 = 0;
  }

  else
  {
    v12 = objc_msgSend_cellSpecFromTSKFormat_(*off_278463C00[v11], v8, formatCopy, v9, v10);
  }

  return v12;
}

+ (unsigned)interactionTypeForShimControlFormatType:(unsigned int)type
{
  if (objc_msgSend_isShimControlFormatType_(self, a2, *&type, v3, v4))
  {
    return type - 100;
  }

  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSTCellSpec interactionTypeForShimControlFormatType:]", v7, v8);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSpec.mm", v13, v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v15, 250, 0, "Unconvertible format type.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  return 0;
}

+ (unsigned)shimControlFormatTypeForInteractionType:(unsigned int)type
{
  if (type - 4 <= 4)
  {
    return type + 100;
  }

  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSTCellSpec shimControlFormatTypeForInteractionType:]", v3, v4);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellSpec.mm", v9, v10);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v11, 259, 0, "Unconvertible interaction type.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15, v16);
  return 0;
}

+ (id)displayNameForInteractionType:(unsigned int)type
{
  v5 = 0;
  if (type <= 5)
  {
    if (type == 4)
    {
      v6 = sub_2214AAEA8(self, a2, *&type, v3, v4);
      v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v12, @"Stepper", &stru_2834BADA0, @"TSTables");
    }

    else
    {
      if (type != 5)
      {
        goto LABEL_13;
      }

      v6 = sub_2214AAEA8(self, a2, *&type, v3, v4);
      v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v9, @"Slider", &stru_2834BADA0, @"TSTables");
    }
  }

  else
  {
    switch(type)
    {
      case 6u:
        v6 = sub_2214AAEA8(self, a2, *&type, v3, v4);
        v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v10, @"Star Rating", &stru_2834BADA0, @"TSTables");
        break;
      case 7u:
        v6 = sub_2214AAEA8(self, a2, *&type, v3, v4);
        v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v11, @"Pop-Up Menu", &stru_2834BADA0, @"TSTables");
        break;
      case 8u:
        v6 = sub_2214AAEA8(self, a2, *&type, v3, v4);
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