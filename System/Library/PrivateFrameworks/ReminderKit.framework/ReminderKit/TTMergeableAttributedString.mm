@interface TTMergeableAttributedString
+ (id)allowlistedAttributesForModel;
+ (id)allowlistedAttributesForStyle;
+ (id)allowlistedTypingAttributes;
+ (id)attributesForRun:(const void *)a3;
+ (int)attributeForWritingDirection:(int64_t)a3;
+ (int64_t)writingDirectionForAttribute:(int)a3;
+ (void)saveAttributes:(id)a3 toArchive:(void *)a4;
+ (void)saveAttributesOfString:(id)a3 toArchive:(void *)a4;
- (BOOL)attributesEqual:(id)a3 to:(id)a4 modelEqual:(BOOL *)a5;
- (BOOL)attributesEqual:(id)a3 toRange:(_NSRange)a4 modelEqual:(BOOL *)a5;
- (TTMergeableAttributedString)initWithArchive:(const void *)a3 andReplicaID:(id)a4 withOrderedSubstrings:(void *)a5 timestamp:(id)a6;
- (TTMergeableAttributedString)initWithCRCoder:(id)a3;
- (TTMergeableAttributedString)initWithCRCoder:(id)a3 string:(const void *)a4;
- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)serialize;
- (void)encodeWithCRCoder:(id)a3;
- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4;
- (void)saveDeltaSinceTimestamp:(id)a3 toArchive:(void *)a4;
- (void)saveToArchive:(void *)a3;
- (void)setAttributes:(id)a3 range:(_NSRange)a4;
- (void)setAttributes:(id)a3 substring:(void *)a4;
@end

@implementation TTMergeableAttributedString

- (TTMergeableAttributedString)initWithCRCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 currentDocumentObjectForDecoding];
  if (*(v5 + 48) == 10)
  {
    v6 = objc_opt_class();
    v7 = [v4 document];
    v8 = REMCheckedDynamicCast(v6, v7);

    if (*(v5 + 48) == 10)
    {
      v10 = *(v5 + 40);
    }

    else
    {
      v10 = topotext::String::default_instance(v9);
    }

    v12 = [v8 replica];
    v13 = [v8 sharedTopotextTimestamp];
    v11 = [(TTMergeableString *)self initWithArchive:v10 andReplicaID:v12 andSharedTimestamp:v13];
  }

  else
  {
    v11 = [(TTMergeableString *)self init];
  }

  v14 = [v4 document];
  [(TTMergeableString *)v11 setDocument:v14];

  return v11;
}

- (TTMergeableAttributedString)initWithCRCoder:(id)a3 string:(const void *)a4
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [v6 document];
  v9 = REMCheckedDynamicCast(v7, v8);

  if (v9)
  {
    v10 = [v9 replica];
    v11 = [v9 sharedTopotextTimestamp];
    v12 = [(TTMergeableString *)self initWithArchive:a4 andReplicaID:v10 andSharedTimestamp:v11];
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

- (void)encodeWithCRCoder:(id)a3
{
  v4 = a3;
  v5 = [(TTMergeableString *)self document];
  v6 = [v5 sharedTopotextTimestamp];
  v7 = [(TTMergeableString *)self timestamp];

  if (v6 != v7)
  {
    v10 = +[REMLog crdt];
    [TTMergeableAttributedString(CRDataType) encodeWithCRCoder:v10];
  }

  v8 = [v4 currentDocumentObjectForEncoding];
  v9 = v8;
  if (*(v8 + 48) != 10)
  {
    CRDT::Document_DocObject::clear_contents(v8);
    *(v9 + 48) = 10;
    operator new();
  }

  [(TTMergeableAttributedString *)self encodeWithCRCoder:v4 string:*(v8 + 40)];
}

+ (int64_t)writingDirectionForAttribute:(int)a3
{
  if ((a3 - 1) >= 4)
  {
    return -1;
  }

  else
  {
    return (a3 - 1);
  }
}

+ (int)attributeForWritingDirection:(int64_t)a3
{
  if (a3 < 4)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

- (TTMergeableAttributedString)initWithArchive:(const void *)a3 andReplicaID:(id)a4 withOrderedSubstrings:(void *)a5 timestamp:(id)a6
{
  v25.receiver = self;
  v25.super_class = TTMergeableAttributedString;
  v7 = [(TTMergeableString *)&v25 initWithArchive:a3 andReplicaID:a4 withOrderedSubstrings:a5 timestamp:a6];
  v8 = v7;
  if (!v7)
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  v9 = *(a3 + 22);
  v10 = [(TTMergeableString *)v7 attributedString];
  v11 = [v10 length];

  if (v9)
  {
    v24 = v8;
    v12 = 0;
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v15 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::AttributeRun>::TypeHandler>(a3 + 80, v13);
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
      v18 = [(TTMergeableString *)v24 attributedString];
      [v18 setAttributes:v16 range:{v17.location, v17.length}];

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

+ (id)attributesForRun:(const void *)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = v4;
  v6 = *(a3 + 8);
  if ((v6 & 4) != 0)
  {
    v7 = [TTFont alloc];
    v8 = v7;
    v9 = *(a3 + 7);
    if (!v9)
    {
      v9 = *(topotext::AttributeRun::default_instance(v7) + 56);
    }

    v10 = [(TTFont *)v8 initWithArchive:v9];
    [(topotext::AttributeRun *)v5 setObject:v10 forKeyedSubscript:TTAttributeNameFont];

    v6 = *(a3 + 8);
  }

  if ((v6 & 8) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a3 + 13)];
    [(topotext::AttributeRun *)v5 setObject:v11 forKeyedSubscript:TTAttributeNameFontHints];

    v6 = *(a3 + 8);
  }

  if ((v6 & 0x10) != 0 && *(a3 + 16))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [(topotext::AttributeRun *)v5 setObject:v12 forKeyedSubscript:TTAttributeNameUnderline];

    v6 = *(a3 + 8);
  }

  if ((v6 & 0x20) != 0 && *(a3 + 17))
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    [(topotext::AttributeRun *)v5 setObject:v13 forKeyedSubscript:TTAttributeNameStrikethrough];

    v6 = *(a3 + 8);
  }

  if ((v6 & 0x40) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithInt:*(a3 + 20)];
    [(topotext::AttributeRun *)v5 setObject:v14 forKeyedSubscript:TTAttributeNameSuperscript];

    v6 = *(a3 + 8);
  }

  if ((v6 & 0x80) != 0)
  {
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = *(a3 + 9);
    v17 = *(v16 + 23);
    if (v17 < 0)
    {
      v16 = *v16;
      v17 = *(*(a3 + 9) + 8);
    }

    v18 = [v15 initWithBytes:v16 length:v17 encoding:4];
    v19 = [MEMORY[0x1E695DFF8] URLWithString:v18];
    [(topotext::AttributeRun *)v5 setObject:v19 forKeyedSubscript:@"NSLink"];

    v6 = *(a3 + 8);
  }

  if ((v6 & 2) != 0)
  {
    v20 = [TTParagraphStyle alloc];
    v21 = v20;
    v22 = *(a3 + 5);
    if (!v22)
    {
      v22 = *(topotext::AttributeRun::default_instance(v20) + 40);
    }

    v23 = [(TTParagraphStyle *)v21 initWithArchive:v22];
    [(topotext::AttributeRun *)v5 setObject:v23 forKeyedSubscript:TTAttributeNameParagraphStyle];

    v6 = *(a3 + 8);
  }

  if ((v6 & 0x100) != 0)
  {
    v24 = *(a3 + 11);
    if (v24)
    {
      components = v24[10];
    }

    else
    {
      v25 = topotext::AttributeRun::default_instance(v4);
      v24 = *(a3 + 11);
      components = *(*(v25 + 11) + 40);
      if (!v24)
      {
        v38 = topotext::AttributeRun::default_instance(v25);
        v24 = *(a3 + 11);
        v42 = *(*(v38 + 11) + 44);
        if (!v24)
        {
          v39 = topotext::AttributeRun::default_instance(v38);
          v24 = *(a3 + 11);
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
        v6 = *(a3 + 8);
        goto LABEL_32;
      }
    }

    v42 = v24[11];
    goto LABEL_28;
  }

LABEL_32:
  if ((v6 & 0x200) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithInteger:{+[TTMergeableAttributedString writingDirectionForAttribute:](TTMergeableAttributedString, "writingDirectionForAttribute:", *(a3 + 21))}];
    v40 = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
    [(topotext::AttributeRun *)v5 setObject:v28 forKeyedSubscript:@"NSWritingDirection"];

    v6 = *(a3 + 8);
  }

  if ((v6 & 0x800) != 0)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a3 + 13)];
    [(topotext::AttributeRun *)v5 setObject:v29 forKeyedSubscript:TTAttributeNameTimestamp];

    v6 = *(a3 + 8);
  }

  if ((v6 & 0x1000) == 0)
  {
    goto LABEL_46;
  }

  v30 = *(a3 + 14);
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

+ (void)saveAttributes:(id)a3 toArchive:(void *)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:TTAttributeNameFont];
  if (v6)
  {
    *(a4 + 8) |= 4u;
    v7 = *(a4 + 7);
    if (!v7)
    {
      operator new();
    }

    [v6 saveToArchive:v7];
  }

  v8 = [v5 objectForKeyedSubscript:TTAttributeNameFontHints];

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:TTAttributeNameFontHints];
    v10 = [v9 intValue];
    *(a4 + 8) |= 8u;
    *(a4 + 13) = v10;
  }

  v11 = [v5 objectForKeyedSubscript:TTAttributeNameUnderline];

  if (v11)
  {
    v12 = [v5 objectForKeyedSubscript:TTAttributeNameUnderline];
    v13 = [v12 intValue];
    *(a4 + 8) |= 0x10u;
    *(a4 + 16) = v13;
  }

  v14 = [v5 objectForKeyedSubscript:TTAttributeNameStrikethrough];

  if (v14)
  {
    v15 = [v5 objectForKeyedSubscript:TTAttributeNameStrikethrough];
    v16 = [v15 intValue];
    *(a4 + 8) |= 0x20u;
    *(a4 + 17) = v16;
  }

  v17 = [v5 objectForKeyedSubscript:@"NSLink"];
  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 absoluteString];
      if (!v18)
      {
        goto LABEL_22;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v18 = v17;
    }

    [v18 UTF8String];
    *(a4 + 8) |= 0x80u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    if (*(a4 + 9) == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    MEMORY[0x19A8FCFE0]();
    goto LABEL_22;
  }

LABEL_23:
  v19 = [v5 objectForKeyedSubscript:TTAttributeNameSuperscript];
  if (v19)
  {
    v20 = [v5 objectForKeyedSubscript:TTAttributeNameSuperscript];
    v21 = [v20 integerValue];

    if (v21)
    {
      v22 = [v5 objectForKeyedSubscript:TTAttributeNameSuperscript];
      v23 = [v22 intValue];
      *(a4 + 8) |= 0x40u;
      *(a4 + 20) = v23;
    }
  }

  v24 = [v5 objectForKeyedSubscript:TTAttributeNameParagraphStyle];
  if (v24)
  {
    *(a4 + 8) |= 2u;
    v25 = *(a4 + 5);
    if (!v25)
    {
      operator new();
    }

    [v24 saveToArchive:v25];
  }

  v26 = [v5 objectForKeyedSubscript:TTAttributeNameForegroundColor];

  if (v26)
  {
    Components = CGColorGetComponents(v26);
    NumberOfComponents = CGColorGetNumberOfComponents(v26);
    v29 = NumberOfComponents;
    if (NumberOfComponents == 4)
    {
      v30 = *Components;
      v31 = *(Components + 2);
      *(a4 + 8) |= 0x100u;
      v32 = *(a4 + 11);
      if (!v32)
      {
        operator new();
      }

      *(v32 + 32) |= 1u;
      *(a4 + 8) |= 0x100u;
      *(v32 + 32) |= 2u;
      *(a4 + 8) |= 0x100u;
      *(v32 + 32) |= 4u;
      *(a4 + 8) |= 0x100u;
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

  v34 = [v5 objectForKeyedSubscript:@"NSWritingDirection"];
  v35 = v34;
  if (v34 && [v34 count])
  {
    v36 = [v35 firstObject];
    v37 = [v36 integerValue];

    v38 = [TTMergeableAttributedString attributeForWritingDirection:v37];
    v39 = v38;
    if (!topotext::AttributeRun_WritingDirection_IsValid(v38))
    {
      __assert_rtn("set_writingdirection", "topotext.pb.h", 4117, "::topotext::AttributeRun_WritingDirection_IsValid(value)");
    }

    *(a4 + 8) |= 0x200u;
    *(a4 + 21) = v39;
  }

  v40 = [v5 objectForKeyedSubscript:TTAttributeNameTimestamp];

  if (v40)
  {
    v41 = [v5 objectForKeyedSubscript:TTAttributeNameTimestamp];
    v42 = [v41 unsignedLongValue];
    *(a4 + 8) |= 0x800u;
    *(a4 + 13) = v42;
  }

  v43 = [v5 objectForKeyedSubscript:@"_TTREMHashtag"];

  if (v43)
  {
    v44 = [v5 objectForKeyedSubscript:@"_TTREMHashtag"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [v44 objectIdentifier];

      if (v45)
      {
        *(a4 + 8) |= 0x1000u;
        v46 = *(a4 + 14);
        if (!v46)
        {
          operator new();
        }

        v47 = [v44 objectIdentifier];
        [v47 UTF8String];
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
        v47 = +[REMLog crdt];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
        {
          +[TTMergeableAttributedString(TTAttributedStringPersistenceAdditions) saveAttributes:toArchive:];
        }
      }
    }
  }
}

- (void)saveToArchive:(void *)a3
{
  v6.receiver = self;
  v6.super_class = TTMergeableAttributedString;
  [(TTMergeableString *)&v6 saveToArchive:?];
  v5 = [(TTMergeableString *)self attributedString];
  [TTMergeableAttributedString saveAttributesOfString:v5 toArchive:a3];
}

+ (void)saveAttributesOfString:(id)a3 toArchive:(void *)a4
{
  v5 = a3;
  v6 = [v5 length];
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [v5 attributesAtIndex:v7 longestEffectiveRange:&v14 inRange:{0, v6}];
      v9 = *(a4 + 23);
      v10 = *(a4 + 22);
      if (v10 >= v9)
      {
        if (v9 == *(a4 + 24))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a4 + 10, v9 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<topotext::AttributeRun>::New();
      }

      v11 = *(a4 + 10);
      *(a4 + 22) = v10 + 1;
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

- (void)saveDeltaSinceTimestamp:(id)a3 toArchive:(void *)a4
{
  v6.receiver = self;
  v6.super_class = TTMergeableAttributedString;
  v5 = [(TTMergeableString *)&v6 i_saveDeltasSinceTimestamp:a3 toArchive:?];
  [TTMergeableAttributedString saveAttributesOfString:v5 toArchive:a4];
}

+ (id)allowlistedAttributesForModel
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__TTMergeableAttributedString_allowlistedAttributesForModel__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l_0;
  block[4] = a1;
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
  block[4] = a1;
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

- (void)replaceCharactersInRange:(_NSRange)a3 withString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  if ([(TTMergeableString *)self length])
  {
    v8 = [(TTMergeableString *)self attributedString];
    v9 = v8;
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

    v12 = [v8 attributesAtIndex:v11 effectiveRange:0];
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v12];
  v14.receiver = self;
  v14.super_class = TTMergeableAttributedString;
  [(TTMergeableString *)&v14 replaceCharactersInRange:location withAttributedString:length, v13];
}

- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = [(TTMergeableString *)self attributedString];
  v7 = [v6 attributesAtIndex:a3 effectiveRange:a4];

  return v7;
}

- (void)setAttributes:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
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
    [v7 enumerateKeysAndObjectsUsingBlock:v36];
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6999A70]];
    if (v9)
    {
      v10 = [v7 objectForKeyedSubscript:kDDFoundExistingLinkAttributeName];
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

    v13 = [v7 objectForKeyedSubscript:TTAttributeNameParagraphStyle];
    if (v13)
    {
      v14 = objc_opt_class();
      v15 = [v7 objectForKeyedSubscript:TTAttributeNameParagraphStyle];
      v16 = REMDynamicCast(v14, v15);
      v17 = +[TTParagraphStyle defaultParagraphStyle];
      v18 = [v16 isEqualToModelComparable:v17];

      if (v18)
      {
        [v28 removeObjectForKey:TTAttributeNameParagraphStyle];
      }
    }

    v19 = v28;

    v7 = v19;
    v35 = 0;
    v20 = [(TTMergeableAttributedString *)self attributesEqual:v19 toRange:location modelEqual:length, &v35];
    if (v35 == 1)
    {
      if (!v20)
      {
        v21 = [(TTMergeableString *)self attributedString];
        [v21 setAttributes:v7 range:{location, length}];

        v22 = [(TTMergeableString *)self delegate];
        [v22 edited:1 range:location changeInLength:{length, 0}];
      }
    }

    else
    {
      v23 = [(TTMergeableString *)self delegate];
      [v23 beginEditing];

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
        [(TTMergeableAttributedString *)self setAttributes:v7 substring:*v24++];
      }

      [(TTMergeableString *)self endEditing];
      v26 = [(TTMergeableString *)self delegate];
      [v26 endEditing];

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

- (BOOL)attributesEqual:(id)a3 toRange:(_NSRange)a4 modelEqual:(BOOL *)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = [(TTMergeableString *)self attributedString];
  v11 = [v10 attributesAtIndex:location effectiveRange:v16];

  v15 = 0;
  if (v16[1] + v16[0] >= location + length)
  {
    v13 = [(TTMergeableAttributedString *)self attributesEqual:v9 to:v11 modelEqual:&v15];
    v12 = v15;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *a5 = v12;

  return v13;
}

- (BOOL)attributesEqual:(id)a3 to:(id)a4 modelEqual:(BOOL *)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  *a5 = 1;
  v28 = v7;
  v9 = [v7 count];
  if (v9 == [v8 count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = [v7 keyEnumerator];
    v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = *v30;
      v13 = 1;
      obj = v10;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [v8 objectForKeyedSubscript:{v15, obj}];
          v17 = [v8 objectForKeyedSubscript:v15];
          v18 = v17 == 0;

          if (v18)
          {
            *a5 = 0;
LABEL_18:

            LOBYTE(v13) = 0;
            v10 = obj;
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

          v24 = *a5 & v22;
          *a5 &= v22;

          v13 &= v20;
          if (((v13 | v24) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        v10 = obj;
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
    *a5 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (void)setAttributes:(id)a3 substring:(void *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4 && (*(a4 + 44) & 1) == 0)
  {
    v40 = 0;
    v7 = [(TTMergeableAttributedString *)self attributesEqual:v6 toRange:*(a4 + 10) modelEqual:*(a4 + 4), &v40];
    if ((v40 & 1) == 0)
    {
      v8 = [(TTMergeableString *)self delegate];
      if (v8)
      {
        v9 = [(TTMergeableString *)self delegate];
        v10 = [v9 wantsUndoCommands];

        if (v10)
        {
          v11 = objc_alloc_init(TTMergeableStringUndoAttributeCommand);
          if (*(a4 + 44))
          {
            v12 = 0;
          }

          else
          {
            v12 = *(a4 + 4);
          }

          v13 = *(a4 + 10);
          v14 = [(TTMergeableString *)self attributedString];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __55__TTMergeableAttributedString_setAttributes_substring___block_invoke;
          v35[3] = &unk_1E7509E30;
          v37 = a4;
          v38 = v13;
          v39 = v12;
          v15 = v11;
          v36 = v15;
          [v14 enumerateAttributesInRange:v13 options:v12 usingBlock:{0, v35}];

          [(TTMergeableUndoString *)self addUndoCommand:v15];
        }
      }
    }

    if (!v7)
    {
      v16 = [(TTMergeableString *)self attributedString];
      v17 = v16;
      if (*(a4 + 44))
      {
        v18 = 0;
      }

      else
      {
        v18 = *(a4 + 4);
      }

      [v16 setAttributes:v6 range:{*(a4 + 10), v18}];
    }

    if ((v40 & 1) == 0)
    {
      v19 = +[TTMergeableString unserialisedReplicaID];
      v20 = *(a4 + 3);
      *(a4 + 3) = v19;

      v21 = [(TTMergeableString *)self delegate];
      v22 = v21 == 0;

      if (!v22)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v41 = a4;
        v30 = 0;
        v31 = 0;
        __p = 0;
        std::vector<TopoSubstring *>::__init_with_size[abi:ne200100]<TopoSubstring * const*,TopoSubstring * const*>(&__p, &v41, &v42, 1uLL);
        [(TTMergeableString *)self getCharacterRanges:&v32 forSubstrings:&__p];
        v23 = v32;
        v24 = v33;
        while (v23 != v24)
        {
          v25 = *v23;
          v26 = v23[1];
          v27 = [(TTMergeableString *)self delegate];
          [v27 edited:1 range:v25 changeInLength:{v26, 0}];

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