@interface TTMergeableAttributedString
+ (id)allowlistedAttributesForModel;
+ (id)allowlistedAttributesForStyle;
+ (id)allowlistedTypingAttributes;
+ (id)attributesForRun:(const void *)run;
+ (int)attributeForWritingDirection:(int64_t)direction;
+ (int64_t)writingDirectionForAttribute:(int)attribute;
+ (void)saveAttributes:(id)attributes toArchive:(void *)archive;
+ (void)saveAttributesOfString:(id)string toArchive:(void *)archive;
- (BOOL)attributesEqual:(id)equal to:(id)to modelEqual:(BOOL *)modelEqual;
- (BOOL)attributesEqual:(id)equal toRange:(_NSRange)range modelEqual:(BOOL *)modelEqual;
- (TTMergeableAttributedString)initWithArchive:(const void *)archive andReplicaID:(id)d withOrderedSubstrings:(void *)substrings timestamp:(id)timestamp;
- (TTMergeableAttributedString)initWithCRCoder:(id)coder;
- (TTMergeableAttributedString)initWithCRCoder:(id)coder string:(const void *)string;
- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)serialize;
- (void)encodeWithCRCoder:(id)coder;
- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string;
- (void)saveDeltaSinceTimestamp:(id)timestamp toArchive:(void *)archive;
- (void)saveToArchive:(void *)archive;
- (void)setAttributes:(id)attributes range:(_NSRange)range;
- (void)setAttributes:(id)attributes substring:(void *)substring;
@end

@implementation TTMergeableAttributedString

- (TTMergeableAttributedString)initWithCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 10)
  {
    v6 = objc_opt_class();
    document = [coderCopy document];
    v8 = REMCheckedDynamicCast(v6, document);

    if (*(currentDocumentObjectForDecoding + 48) == 10)
    {
      v10 = *(currentDocumentObjectForDecoding + 40);
    }

    else
    {
      v10 = topotext::String::default_instance(v9);
    }

    replica = [v8 replica];
    sharedTopotextTimestamp = [v8 sharedTopotextTimestamp];
    v11 = [(TTMergeableString *)self initWithArchive:v10 andReplicaID:replica andSharedTimestamp:sharedTopotextTimestamp];
  }

  else
  {
    v11 = [(TTMergeableString *)self init];
  }

  document2 = [coderCopy document];
  [(TTMergeableString *)v11 setDocument:document2];

  return v11;
}

- (TTMergeableAttributedString)initWithCRCoder:(id)coder string:(const void *)string
{
  coderCopy = coder;
  v7 = objc_opt_class();
  document = [coderCopy document];
  v9 = REMCheckedDynamicCast(v7, document);

  if (v9)
  {
    replica = [v9 replica];
    sharedTopotextTimestamp = [v9 sharedTopotextTimestamp];
    v12 = [(TTMergeableString *)self initWithArchive:string andReplicaID:replica andSharedTimestamp:sharedTopotextTimestamp];
  }

  else
  {
    v13 = +[REMLog crdt];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [TTMergeableAttributedString(CRDataType) initWithCRCoder:v13 string:?];
    }

    v12 = [(TTMergeableString *)self init];
  }

  return v12;
}

- (void)encodeWithCRCoder:(id)coder
{
  coderCopy = coder;
  document = [(TTMergeableString *)self document];
  sharedTopotextTimestamp = [document sharedTopotextTimestamp];
  timestamp = [(TTMergeableString *)self timestamp];

  if (sharedTopotextTimestamp != timestamp)
  {
    v10 = +[REMLog crdt];
    [TTMergeableAttributedString(CRDataType) encodeWithCRCoder:v10];
  }

  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v9 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 10)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v9 + 48) = 10;
    operator new();
  }

  [(TTMergeableAttributedString *)self encodeWithCRCoder:coderCopy string:*(currentDocumentObjectForEncoding + 40)];
}

+ (int64_t)writingDirectionForAttribute:(int)attribute
{
  if ((attribute - 1) >= 4)
  {
    return -1;
  }

  else
  {
    return (attribute - 1);
  }
}

+ (int)attributeForWritingDirection:(int64_t)direction
{
  if (direction < 4)
  {
    return direction + 1;
  }

  else
  {
    return 0;
  }
}

- (TTMergeableAttributedString)initWithArchive:(const void *)archive andReplicaID:(id)d withOrderedSubstrings:(void *)substrings timestamp:(id)timestamp
{
  v25.receiver = self;
  v25.super_class = TTMergeableAttributedString;
  v7 = [(TTMergeableString *)&v25 initWithArchive:archive andReplicaID:d withOrderedSubstrings:substrings timestamp:timestamp];
  v8 = v7;
  if (!v7)
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  v9 = *(archive + 22);
  attributedString = [(TTMergeableString *)v7 attributedString];
  v11 = [attributedString length];

  if (v9)
  {
    v24 = v8;
    v12 = 0;
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v15 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::AttributeRun>::TypeHandler>(archive + 80, v13);
      v16 = [TTMergeableAttributedString attributesForRun:v15];
      if (!v16 || (*(v15 + 32) & 1) == 0)
      {
        break;
      }

      v26.length = *(v15 + 48);
      v26.location = v12;
      v27.location = 0;
      v27.length = v11;
      v17 = NSIntersectionRange(v26, v27);
      attributedString2 = [(TTMergeableString *)v24 attributedString];
      [attributedString2 setAttributes:v16 range:{v17.location, v17.length}];

      v12 += *(v15 + 48);
      v14 = ++v13 < v9;
      if (v9 == v13)
      {
        v14 = 0;
        goto LABEL_11;
      }
    }

    v19 = +[REMLog crdt];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [TTMergeableAttributedString(TTAttributedStringPersistenceAdditions) initWithArchive:andReplicaID:withOrderedSubstrings:timestamp:];
    }

LABEL_11:
    v8 = v24;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  if (v12 != v11)
  {
    v21 = +[REMLog crdt];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [TTMergeableAttributedString(TTAttributedStringPersistenceAdditions) initWithArchive:andReplicaID:withOrderedSubstrings:timestamp:];
    }

    goto LABEL_20;
  }

  if (v14)
  {
    v20 = 0;
  }

  else
  {
    v20 = v8;
  }

LABEL_21:
  v22 = v20;

  return v22;
}

+ (id)attributesForRun:(const void *)run
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v4;
  v6 = *(run + 8);
  if ((v6 & 4) != 0)
  {
    v7 = [TTFont alloc];
    v8 = v7;
    v9 = *(run + 7);
    if (!v9)
    {
      v9 = *(topotext::AttributeRun::default_instance(v7) + 56);
    }

    v10 = [(TTFont *)v8 initWithArchive:v9];
    [(topotext::AttributeRun *)v5 setObject:v10 forKeyedSubscript:TTAttributeNameFont];

    v6 = *(run + 8);
  }

  if ((v6 & 8) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(run + 13)];
    [(topotext::AttributeRun *)v5 setObject:v11 forKeyedSubscript:TTAttributeNameFontHints];

    v6 = *(run + 8);
  }

  if ((v6 & 0x10) != 0 && *(run + 16))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [(topotext::AttributeRun *)v5 setObject:v12 forKeyedSubscript:TTAttributeNameUnderline];

    v6 = *(run + 8);
  }

  if ((v6 & 0x20) != 0 && *(run + 17))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [(topotext::AttributeRun *)v5 setObject:v13 forKeyedSubscript:TTAttributeNameStrikethrough];

    v6 = *(run + 8);
  }

  if ((v6 & 0x40) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:*(run + 20)];
    [(topotext::AttributeRun *)v5 setObject:v14 forKeyedSubscript:TTAttributeNameSuperscript];

    v6 = *(run + 8);
  }

  if ((v6 & 0x80) != 0)
  {
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = *(run + 9);
    v17 = *(v16 + 23);
    if (v17 < 0)
    {
      v16 = *v16;
      v17 = *(*(run + 9) + 8);
    }

    v18 = [v15 initWithBytes:v16 length:v17 encoding:4];
    v19 = [MEMORY[0x1E695DFF8] URLWithString:v18];
    [(topotext::AttributeRun *)v5 setObject:v19 forKeyedSubscript:@"NSLink"];

    v6 = *(run + 8);
  }

  if ((v6 & 2) != 0)
  {
    v20 = [TTParagraphStyle alloc];
    v21 = v20;
    v22 = *(run + 5);
    if (!v22)
    {
      v22 = *(topotext::AttributeRun::default_instance(v20) + 40);
    }

    v23 = [(TTParagraphStyle *)v21 initWithArchive:v22];
    [(topotext::AttributeRun *)v5 setObject:v23 forKeyedSubscript:TTAttributeNameParagraphStyle];

    v6 = *(run + 8);
  }

  if ((v6 & 0x100) != 0)
  {
    v24 = *(run + 11);
    if (v24)
    {
      components = v24[10];
    }

    else
    {
      v25 = topotext::AttributeRun::default_instance(v4);
      v24 = *(run + 11);
      components = *(*(v25 + 11) + 40);
      if (!v24)
      {
        v38 = topotext::AttributeRun::default_instance(v25);
        v24 = *(run + 11);
        v42 = *(*(v38 + 11) + 44);
        if (!v24)
        {
          v39 = topotext::AttributeRun::default_instance(v38);
          v24 = *(run + 11);
          v43 = *(*(v39 + 11) + 48);
          if (!v24)
          {
            v24 = *(topotext::AttributeRun::default_instance(v39) + 88);
          }

          goto LABEL_29;
        }

LABEL_28:
        v43 = v24[12];
LABEL_29:
        v44 = v24[13];
        if (TSUDeviceRGBColorSpace(void)::sDeviceRGBDispatchOnce != -1)
        {
          +[TTMergeableAttributedString(TTAttributedStringPersistenceAdditions) attributesForRun:];
        }

        v26 = CGColorCreate(TSUDeviceRGBColorSpace(void)::sDeviceRGBColorSpace, &components);
        [(topotext::AttributeRun *)v5 setObject:v26 forKeyedSubscript:TTAttributeNameForegroundColor];
        CGColorRelease(v26);
        v6 = *(run + 8);
        goto LABEL_32;
      }
    }

    v42 = v24[11];
    goto LABEL_28;
  }

LABEL_32:
  if ((v6 & 0x200) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithInteger:{+[TTMergeableAttributedString writingDirectionForAttribute:](TTMergeableAttributedString, "writingDirectionForAttribute:", *(run + 21))}];
    v40 = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
    [(topotext::AttributeRun *)v5 setObject:v28 forKeyedSubscript:@"NSWritingDirection"];

    v6 = *(run + 8);
  }

  if ((v6 & 0x800) != 0)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(run + 13)];
    [(topotext::AttributeRun *)v5 setObject:v29 forKeyedSubscript:TTAttributeNameTimestamp];

    v6 = *(run + 8);
  }

  if ((v6 & 0x1000) == 0)
  {
    goto LABEL_46;
  }

  v30 = *(run + 14);
  if (!v30)
  {
    v30 = *(topotext::AttributeRun::default_instance(v4) + 112);
  }

  if (*(v30 + 32))
  {
    v33 = objc_alloc_init(TTREMHashtag);
    v34 = *(v30 + 40);
    if (*(v34 + 23) < 0)
    {
      v34 = *v34;
    }

    v35 = [MEMORY[0x1E696AEC0] stringWithCString:v34 encoding:{objc_msgSend(MEMORY[0x1E696AEC0], "defaultCStringEncoding")}];
    [(TTREMHashtag *)v33 setObjectIdentifier:v35];

    [(topotext::AttributeRun *)v5 setObject:v33 forKeyedSubscript:@"_TTREMHashtag"];
LABEL_46:
    v32 = v5;
    goto LABEL_47;
  }

  v31 = +[REMLog crdt];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
  {
    +[TTMergeableAttributedString(TTAttributedStringPersistenceAdditions) attributesForRun:];
  }

  v32 = 0;
LABEL_47:

  v36 = *MEMORY[0x1E69E9840];

  return v32;
}

+ (void)saveAttributes:(id)attributes toArchive:(void *)archive
{
  attributesCopy = attributes;
  v6 = [attributesCopy objectForKeyedSubscript:TTAttributeNameFont];
  if (v6)
  {
    *(archive + 8) |= 4u;
    v7 = *(archive + 7);
    if (!v7)
    {
      operator new();
    }

    [v6 saveToArchive:v7];
  }

  v8 = [attributesCopy objectForKeyedSubscript:TTAttributeNameFontHints];

  if (v8)
  {
    v9 = [attributesCopy objectForKeyedSubscript:TTAttributeNameFontHints];
    intValue = [v9 intValue];
    *(archive + 8) |= 8u;
    *(archive + 13) = intValue;
  }

  v11 = [attributesCopy objectForKeyedSubscript:TTAttributeNameUnderline];

  if (v11)
  {
    v12 = [attributesCopy objectForKeyedSubscript:TTAttributeNameUnderline];
    intValue2 = [v12 intValue];
    *(archive + 8) |= 0x10u;
    *(archive + 16) = intValue2;
  }

  v14 = [attributesCopy objectForKeyedSubscript:TTAttributeNameStrikethrough];

  if (v14)
  {
    v15 = [attributesCopy objectForKeyedSubscript:TTAttributeNameStrikethrough];
    intValue3 = [v15 intValue];
    *(archive + 8) |= 0x20u;
    *(archive + 17) = intValue3;
  }

  v17 = [attributesCopy objectForKeyedSubscript:@"NSLink"];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      absoluteString = [v17 absoluteString];
      if (!absoluteString)
      {
        goto LABEL_22;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        absoluteString = 0;
LABEL_22:

        goto LABEL_23;
      }

      absoluteString = v17;
    }

    [absoluteString UTF8String];
    *(archive + 8) |= 0x80u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    if (*(archive + 9) == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    MEMORY[0x19A8FCFE0]();
    goto LABEL_22;
  }

LABEL_23:
  v19 = [attributesCopy objectForKeyedSubscript:TTAttributeNameSuperscript];
  if (v19)
  {
    v20 = [attributesCopy objectForKeyedSubscript:TTAttributeNameSuperscript];
    integerValue = [v20 integerValue];

    if (integerValue)
    {
      v22 = [attributesCopy objectForKeyedSubscript:TTAttributeNameSuperscript];
      intValue4 = [v22 intValue];
      *(archive + 8) |= 0x40u;
      *(archive + 20) = intValue4;
    }
  }

  v24 = [attributesCopy objectForKeyedSubscript:TTAttributeNameParagraphStyle];
  if (v24)
  {
    *(archive + 8) |= 2u;
    v25 = *(archive + 5);
    if (!v25)
    {
      operator new();
    }

    [v24 saveToArchive:v25];
  }

  v26 = [attributesCopy objectForKeyedSubscript:TTAttributeNameForegroundColor];

  if (v26)
  {
    Components = CGColorGetComponents(v26);
    NumberOfComponents = CGColorGetNumberOfComponents(v26);
    v29 = NumberOfComponents;
    if (NumberOfComponents == 4)
    {
      v30 = *Components;
      v31 = *(Components + 2);
      *(archive + 8) |= 0x100u;
      v32 = *(archive + 11);
      if (!v32)
      {
        operator new();
      }

      *(v32 + 32) |= 1u;
      *(archive + 8) |= 0x100u;
      *(v32 + 32) |= 2u;
      *(archive + 8) |= 0x100u;
      *(v32 + 32) |= 4u;
      *(archive + 8) |= 0x100u;
      *(v32 + 32) |= 8u;
      *(v32 + 40) = vcvt_hight_f32_f64(vcvt_f32_f64(v30), v31);
    }

    else
    {
      v33 = +[REMLog crdt];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        [TTMergeableAttributedString(TTAttributedStringPersistenceAdditions) saveAttributes:v29 toArchive:v33];
      }
    }
  }

  v34 = [attributesCopy objectForKeyedSubscript:@"NSWritingDirection"];
  v35 = v34;
  if (v34 && [v34 count])
  {
    firstObject = [v35 firstObject];
    integerValue2 = [firstObject integerValue];

    v38 = [TTMergeableAttributedString attributeForWritingDirection:integerValue2];
    v39 = v38;
    if (!topotext::AttributeRun_WritingDirection_IsValid(v38))
    {
      __assert_rtn("set_writingdirection", "topotext.pb.h", 4117, "::topotext::AttributeRun_WritingDirection_IsValid(value)");
    }

    *(archive + 8) |= 0x200u;
    *(archive + 21) = v39;
  }

  v40 = [attributesCopy objectForKeyedSubscript:TTAttributeNameTimestamp];

  if (v40)
  {
    v41 = [attributesCopy objectForKeyedSubscript:TTAttributeNameTimestamp];
    unsignedLongValue = [v41 unsignedLongValue];
    *(archive + 8) |= 0x800u;
    *(archive + 13) = unsignedLongValue;
  }

  v43 = [attributesCopy objectForKeyedSubscript:@"_TTREMHashtag"];

  if (v43)
  {
    v44 = [attributesCopy objectForKeyedSubscript:@"_TTREMHashtag"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectIdentifier = [v44 objectIdentifier];

      if (objectIdentifier)
      {
        *(archive + 8) |= 0x1000u;
        v46 = *(archive + 14);
        if (!v46)
        {
          operator new();
        }

        objectIdentifier2 = [v44 objectIdentifier];
        [objectIdentifier2 UTF8String];
        *(v46 + 32) |= 1u;
        if (!google::protobuf::internal::empty_string_)
        {
          __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
        }

        if (*(v46 + 40) == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        MEMORY[0x19A8FCFE0]();
      }

      else
      {
        objectIdentifier2 = +[REMLog crdt];
        if (os_log_type_enabled(objectIdentifier2, OS_LOG_TYPE_FAULT))
        {
          +[TTMergeableAttributedString(TTAttributedStringPersistenceAdditions) saveAttributes:toArchive:];
        }
      }
    }
  }
}

- (void)saveToArchive:(void *)archive
{
  v6.receiver = self;
  v6.super_class = TTMergeableAttributedString;
  [(TTMergeableString *)&v6 saveToArchive:?];
  attributedString = [(TTMergeableString *)self attributedString];
  [TTMergeableAttributedString saveAttributesOfString:attributedString toArchive:archive];
}

+ (void)saveAttributesOfString:(id)string toArchive:(void *)archive
{
  stringCopy = string;
  v6 = [stringCopy length];
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [stringCopy attributesAtIndex:v7 longestEffectiveRange:&v14 inRange:{0, v6}];
      v9 = *(archive + 23);
      v10 = *(archive + 22);
      if (v10 >= v9)
      {
        if (v9 == *(archive + 24))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 10, v9 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<topotext::AttributeRun>::New();
      }

      v11 = *(archive + 10);
      *(archive + 22) = v10 + 1;
      v12 = *(v11 + 8 * v10);
      v13 = TTBoundedCheckedCastNSUIntegerToUInt32(v15);
      *(v12 + 32) |= 1u;
      *(v12 + 48) = v13;
      [TTMergeableAttributedString saveAttributes:v8 toArchive:v12];
      v7 += v15;
    }

    while (v7 < v6);
  }
}

- (id)serialize
{
  topotext::String::String(v5);
  [(TTMergeableAttributedString *)self saveToArchive:v5];
  v3 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:topotext::String::ByteSize(v5)];
  google::protobuf::MessageLite::SerializeToArray(v5, [v3 mutableBytes], objc_msgSend(v3, "length"));
  topotext::String::~String(v5);

  return v3;
}

- (void)saveDeltaSinceTimestamp:(id)timestamp toArchive:(void *)archive
{
  v6.receiver = self;
  v6.super_class = TTMergeableAttributedString;
  v5 = [(TTMergeableString *)&v6 i_saveDeltasSinceTimestamp:timestamp toArchive:?];
  [TTMergeableAttributedString saveAttributesOfString:v5 toArchive:archive];
}

+ (id)allowlistedAttributesForModel
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__TTMergeableAttributedString_allowlistedAttributesForModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l_0;
  block[4] = self;
  if (+[TTMergeableAttributedString allowlistedAttributesForModel]::once != -1)
  {
    dispatch_once(&+[TTMergeableAttributedString allowlistedAttributesForModel]::once, block);
  }

  v2 = +[TTMergeableAttributedString allowlistedAttributesForModel]::attributeAllowList;

  return v2;
}

void __60__TTMergeableAttributedString_allowlistedAttributesForModel__block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) allowlistedTypingAttributes];
  v6[0] = @"NSAttachment";
  v6[1] = @"_TTREMHashtag";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v3 = [v1 setByAddingObjectsFromArray:v2];
  v4 = +[TTMergeableAttributedString allowlistedAttributesForModel]::attributeAllowList;
  +[TTMergeableAttributedString allowlistedAttributesForModel]::attributeAllowList = v3;

  v5 = *MEMORY[0x1E69E9840];
}

+ (id)allowlistedAttributesForStyle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__TTMergeableAttributedString_allowlistedAttributesForStyle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l_0;
  block[4] = self;
  if (+[TTMergeableAttributedString allowlistedAttributesForStyle]::once != -1)
  {
    dispatch_once(&+[TTMergeableAttributedString allowlistedAttributesForStyle]::once, block);
  }

  v2 = +[TTMergeableAttributedString allowlistedAttributesForStyle]::attributeAllowList;

  return v2;
}

void __60__TTMergeableAttributedString_allowlistedAttributesForStyle__block_invoke(uint64_t a1)
{
  v7[6] = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) allowlistedTypingAttributes];
  v2 = *MEMORY[0x1E6999A70];
  v7[0] = @"NSAttachment";
  v7[1] = v2;
  v7[2] = kDDFoundExistingLinkAttributeName;
  v7[3] = kUITextInputDictationResultMetadataAttributeName;
  v7[4] = TTPresentationAttributeNameApproxMaxItemNumber;
  v7[5] = @"NSTextAlternatives";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:6];
  v4 = [v1 setByAddingObjectsFromArray:v3];
  v5 = +[TTMergeableAttributedString allowlistedAttributesForStyle]::attributeAllowList;
  +[TTMergeableAttributedString allowlistedAttributesForStyle]::attributeAllowList = v4;

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)allowlistedTypingAttributes
{
  if (+[TTMergeableAttributedString allowlistedTypingAttributes]::once != -1)
  {
    +[TTMergeableAttributedString allowlistedTypingAttributes];
  }

  v3 = +[TTMergeableAttributedString allowlistedTypingAttributes]::typingAllowList;

  return v3;
}

void __58__TTMergeableAttributedString_allowlistedTypingAttributes__block_invoke()
{
  v5[10] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = TTAttributeNameFont;
  v5[1] = TTAttributeNameFontHints;
  v5[2] = TTAttributeNameUnderline;
  v5[3] = TTAttributeNameStrikethrough;
  v5[4] = TTAttributeNameForegroundColor;
  v5[5] = TTAttributeNameParagraphStyle;
  v5[6] = @"NSLink";
  v5[7] = TTAttributeNameSuperscript;
  v5[8] = @"NSWritingDirection";
  v5[9] = TTAttributeNameTimestamp;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:10];
  v2 = [v0 setWithArray:v1];
  v3 = +[TTMergeableAttributedString allowlistedTypingAttributes]::typingAllowList;
  +[TTMergeableAttributedString allowlistedTypingAttributes]::typingAllowList = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (void)replaceCharactersInRange:(_NSRange)range withString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  if ([(TTMergeableString *)self length])
  {
    attributedString = [(TTMergeableString *)self attributedString];
    v9 = attributedString;
    v10 = location - 1;
    if (!location)
    {
      v10 = 0;
    }

    if (length)
    {
      v11 = location;
    }

    else
    {
      v11 = v10;
    }

    v12 = [attributedString attributesAtIndex:v11 effectiveRange:0];
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy attributes:v12];
  v14.receiver = self;
  v14.super_class = TTMergeableAttributedString;
  [(TTMergeableString *)&v14 replaceCharactersInRange:location withAttributedString:length, v13];
}

- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  attributedString = [(TTMergeableString *)self attributedString];
  v7 = [attributedString attributesAtIndex:index effectiveRange:range];

  return v7;
}

- (void)setAttributes:(id)attributes range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v39 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  if (length)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __51__TTMergeableAttributedString_setAttributes_range___block_invoke;
    v36[3] = &unk_1E7509E08;
    v36[4] = self;
    v28 = v8;
    v37 = v28;
    [attributesCopy enumerateKeysAndObjectsUsingBlock:v36];
    v9 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E6999A70]];
    if (v9)
    {
      v10 = [attributesCopy objectForKeyedSubscript:kDDFoundExistingLinkAttributeName];
      if (v10)
      {
      }

      else
      {
        v11 = [v28 objectForKeyedSubscript:@"NSLink"];
        v12 = v11 == 0;

        if (!v12)
        {
          [v28 removeObjectForKey:@"NSLink"];
        }
      }
    }

    v13 = [attributesCopy objectForKeyedSubscript:TTAttributeNameParagraphStyle];
    if (v13)
    {
      v14 = objc_opt_class();
      v15 = [attributesCopy objectForKeyedSubscript:TTAttributeNameParagraphStyle];
      v16 = REMDynamicCast(v14, v15);
      v17 = +[TTParagraphStyle defaultParagraphStyle];
      v18 = [v16 isEqualToModelComparable:v17];

      if (v18)
      {
        [v28 removeObjectForKey:TTAttributeNameParagraphStyle];
      }
    }

    v19 = v28;

    attributesCopy = v19;
    v35 = 0;
    v20 = [(TTMergeableAttributedString *)self attributesEqual:v19 toRange:location modelEqual:length, &v35];
    if (v35 == 1)
    {
      if (!v20)
      {
        attributedString = [(TTMergeableString *)self attributedString];
        [attributedString setAttributes:attributesCopy range:{location, length}];

        delegate = [(TTMergeableString *)self delegate];
        [delegate edited:1 range:location changeInLength:{length, 0}];
      }
    }

    else
    {
      delegate2 = [(TTMergeableString *)self delegate];
      [delegate2 beginEditing];

      [(TTMergeableString *)self beginEditing];
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v38[0] = location;
      v38[1] = length;
      v30 = 0;
      v31 = 0;
      __p = 0;
      std::vector<_NSRange>::__init_with_size[abi:ne200100]<_NSRange const*,_NSRange const*>(&__p, v38, &v39, 1uLL);
      [(TTMergeableString *)self getSubstrings:&v32 forCharacterRange:location, length];
      v24 = v32;
      v25 = v33;
      while (v24 != v25)
      {
        [(TTMergeableAttributedString *)self setAttributes:attributesCopy substring:*v24++];
      }

      [(TTMergeableString *)self endEditing];
      delegate3 = [(TTMergeableString *)self delegate];
      [delegate3 endEditing];

      if (__p)
      {
        v30 = __p;
        operator delete(__p);
      }

      if (v32)
      {
        v33 = v32;
        operator delete(v32);
      }
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __51__TTMergeableAttributedString_setAttributes_range___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() allowlistedAttributesForModel];
  v8 = [v7 containsObject:v9];

  if (v8)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v9];
  }
}

- (BOOL)attributesEqual:(id)equal toRange:(_NSRange)range modelEqual:(BOOL *)modelEqual
{
  length = range.length;
  location = range.location;
  equalCopy = equal;
  attributedString = [(TTMergeableString *)self attributedString];
  v11 = [attributedString attributesAtIndex:location effectiveRange:v16];

  v15 = 0;
  if (v16[1] + v16[0] >= location + length)
  {
    v13 = [(TTMergeableAttributedString *)self attributesEqual:equalCopy to:v11 modelEqual:&v15];
    v12 = v15;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *modelEqual = v12;

  return v13;
}

- (BOOL)attributesEqual:(id)equal to:(id)to modelEqual:(BOOL *)modelEqual
{
  v34 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  toCopy = to;
  *modelEqual = 1;
  v28 = equalCopy;
  v9 = [equalCopy count];
  if (v9 == [toCopy count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    keyEnumerator = [equalCopy keyEnumerator];
    v11 = [keyEnumerator countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = *v30;
      v13 = 1;
      obj = keyEnumerator;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [toCopy objectForKeyedSubscript:{v15, obj}];
          v17 = [toCopy objectForKeyedSubscript:v15];
          v18 = v17 == 0;

          if (v18)
          {
            *modelEqual = 0;
LABEL_18:

            LOBYTE(v13) = 0;
            keyEnumerator = obj;
            goto LABEL_19;
          }

          v19 = [v28 objectForKeyedSubscript:v15];
          v20 = [v19 isEqual:v16];
          v21 = [v19 conformsToProtocol:&unk_1F0DB83D8];
          v22 = v20;
          if (v21)
          {
            v23 = [v16 conformsToProtocol:&unk_1F0DB83D8];
            v22 = v20;
            if (v23)
            {
              v22 = [v19 isEqualToModelComparable:v16];
            }
          }

          v24 = *modelEqual & v22;
          *modelEqual &= v22;

          v13 &= v20;
          if (((v13 | v24) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        keyEnumerator = obj;
        v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      LOBYTE(v13) = 1;
    }

LABEL_19:
  }

  else
  {
    LOBYTE(v13) = 0;
    *modelEqual = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (void)setAttributes:(id)attributes substring:(void *)substring
{
  v42 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  if (substring && (*(substring + 44) & 1) == 0)
  {
    v40 = 0;
    v7 = [(TTMergeableAttributedString *)self attributesEqual:attributesCopy toRange:*(substring + 10) modelEqual:*(substring + 4), &v40];
    if ((v40 & 1) == 0)
    {
      delegate = [(TTMergeableString *)self delegate];
      if (delegate)
      {
        delegate2 = [(TTMergeableString *)self delegate];
        wantsUndoCommands = [delegate2 wantsUndoCommands];

        if (wantsUndoCommands)
        {
          v11 = objc_alloc_init(TTMergeableStringUndoAttributeCommand);
          if (*(substring + 44))
          {
            v12 = 0;
          }

          else
          {
            v12 = *(substring + 4);
          }

          v13 = *(substring + 10);
          attributedString = [(TTMergeableString *)self attributedString];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __55__TTMergeableAttributedString_setAttributes_substring___block_invoke;
          v35[3] = &unk_1E7509E30;
          substringCopy = substring;
          v38 = v13;
          v39 = v12;
          v15 = v11;
          v36 = v15;
          [attributedString enumerateAttributesInRange:v13 options:v12 usingBlock:{0, v35}];

          [(TTMergeableUndoString *)self addUndoCommand:v15];
        }
      }
    }

    if (!v7)
    {
      attributedString2 = [(TTMergeableString *)self attributedString];
      v17 = attributedString2;
      if (*(substring + 44))
      {
        v18 = 0;
      }

      else
      {
        v18 = *(substring + 4);
      }

      [attributedString2 setAttributes:attributesCopy range:{*(substring + 10), v18}];
    }

    if ((v40 & 1) == 0)
    {
      v19 = +[TTMergeableString unserialisedReplicaID];
      v20 = *(substring + 3);
      *(substring + 3) = v19;

      delegate3 = [(TTMergeableString *)self delegate];
      v22 = delegate3 == 0;

      if (!v22)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        substringCopy2 = substring;
        v30 = 0;
        v31 = 0;
        __p = 0;
        std::vector<TopoSubstring *>::__init_with_size[abi:ne200100]<TopoSubstring * const*,TopoSubstring * const*>(&__p, &substringCopy2, &v42, 1uLL);
        [(TTMergeableString *)self getCharacterRanges:&v32 forSubstrings:&__p];
        v23 = v32;
        v24 = v33;
        while (v23 != v24)
        {
          v25 = *v23;
          v26 = v23[1];
          delegate4 = [(TTMergeableString *)self delegate];
          [delegate4 edited:1 range:v25 changeInLength:{v26, 0}];

          v23 += 2;
        }

        if (__p)
        {
          v30 = __p;
          operator delete(__p);
        }

        if (v32)
        {
          v33 = v32;
          operator delete(v32);
        }
      }

      [(TTMergeableString *)self setHasLocalChanges:1];
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __55__TTMergeableAttributedString_setAttributes_substring___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = *(a1 + 40);
  LODWORD(a3) = TTBoundedCheckedCastNSUIntegerToUInt32(a3 - *(a1 + 48));
  v9 = TTBoundedCheckedCastNSUIntegerToUInt32(a4);
  v10 = *v8;
  v11 = *(v8 + 8);
  v12 = [*(a1 + 32) attributeRanges];
  v13 = v10;
  v15 = v13;
  v16 = v11 + a3;
  v17 = v9;
  v14 = v7;
  v18 = v14;
  std::vector<std::pair<TopoIDRange,NSDictionary * {__strong}>>::push_back[abi:ne200100](v12, &v15);
}

@end