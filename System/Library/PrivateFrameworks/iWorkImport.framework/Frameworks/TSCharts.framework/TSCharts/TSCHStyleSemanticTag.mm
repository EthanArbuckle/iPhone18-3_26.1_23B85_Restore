@interface TSCHStyleSemanticTag
+ (TSCHStyleSemanticTag)styleSemanticTagWithType:(int)type index:(unint64_t)index;
- (BOOL)isEqual:(id)equal;
- (Class)styleClass;
- (TSCHStyleSemanticTag)initWithType:(int)type index:(unint64_t)index;
- (id)description;
@end

@implementation TSCHStyleSemanticTag

+ (TSCHStyleSemanticTag)styleSemanticTagWithType:(int)type index:(unint64_t)index
{
  v5 = *&type;
  v6 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend_initWithType_index_(v6, v7, v8, v9, v10, v5, index);

  return v11;
}

- (TSCHStyleSemanticTag)initWithType:(int)type index:(unint64_t)index
{
  v7.receiver = self;
  v7.super_class = TSCHStyleSemanticTag;
  result = [(TSCHStyleSemanticTag *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_index = index;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v26.receiver = self;
  v26.super_class = TSCHStyleSemanticTag;
  if ([(TSCHStyleSemanticTag *)&v26 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = TSUDynamicCast();
    if (v7 && (v11 = objc_msgSend_type(self, v6, v8, v9, v10), v11 == objc_msgSend_type(v7, v12, v13, v14, v15)))
    {
      v20 = objc_msgSend_index(self, v16, v17, v18, v19);
      v5 = v20 == objc_msgSend_index(v7, v21, v22, v23, v24);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)description
{
  v42.receiver = self;
  v42.super_class = TSCHStyleSemanticTag;
  v3 = [(TSCHStyleSemanticTag *)&v42 description];
  v8 = objc_msgSend_mutableCopy(v3, v4, v5, v6, v7);

  v9 = MEMORY[0x277CCACA8];
  v14 = objc_msgSend_type(self, v10, v11, v12, v13);
  v15 = sub_2762E6140(v14);
  v16 = MEMORY[0x277CCABB0];
  v21 = objc_msgSend_index(self, v17, v18, v19, v20);
  v26 = objc_msgSend_numberWithUnsignedInteger_(v16, v22, v23, v24, v25, v21);
  v31 = objc_msgSend_stringWithFormat_(v9, v27, v28, v29, v30, @" type: %@ index: %@", v15, v26);

  v36 = objc_msgSend_length(v8, v32, v33, v34, v35);
  objc_msgSend_insertString_atIndex_(v8, v37, v38, v39, v40, v31, v36 - 1);

  return v8;
}

- (Class)styleClass
{
  switch(self->_type)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      v20 = objc_opt_class();
      break;
    default:
      v5 = MEMORY[0x277D81150];
      v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCHStyleSemanticTag styleClass]");
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleSemanticTag.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v12, v13, v14, v15, v6, v11, 155, 0, "Why are we here?");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18, v19);
      v20 = 0;
      break;
  }

  return v20;
}

@end