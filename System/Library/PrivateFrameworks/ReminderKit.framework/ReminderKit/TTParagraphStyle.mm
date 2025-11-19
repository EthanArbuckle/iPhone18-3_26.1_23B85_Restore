@interface TTParagraphStyle
+ (id)defaultParagraphStyle;
+ (int)paragraphStyleAlignmentForTextAlignment:(int64_t)a3;
+ (int64_t)textAlignmentForParagraphStyleAlignment:(int)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToModelComparable:(id)a3;
- (BOOL)isEqualToModelParagraphStyle:(id)a3;
- (BOOL)isEqualToParagraphStyle:(id)a3;
- (BOOL)isHeader;
- (BOOL)isList;
- (BOOL)preferSingleLine;
- (NSString)description;
- (TTParagraphStyle)init;
- (TTParagraphStyle)initWithArchive:(const void *)a3;
- (TTParagraphStyle)initWithCoder:(id)a3;
- (TTParagraphStyle)initWithData:(id)a3;
- (id)listBulletInAttributedString:(id)a3 atIndex:(unint64_t)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)serialize;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)saveToArchive:(void *)a3;
@end

@implementation TTParagraphStyle

+ (int64_t)textAlignmentForParagraphStyleAlignment:(int)a3
{
  if (a3 >= 4)
  {
    return 4;
  }

  else
  {
    return a3;
  }
}

+ (int)paragraphStyleAlignmentForTextAlignment:(int64_t)a3
{
  if (a3 >= 4)
  {
    return 4;
  }

  else
  {
    return a3;
  }
}

- (TTParagraphStyle)initWithData:(id)a3
{
  v4 = a3;
  topotext::ParagraphStyle::ParagraphStyle(v10);
  v5 = [v4 bytes];
  v6 = TTBoundedCheckedCastNSUIntegerToUInt32([v4 length]);
  if (google::protobuf::MessageLite::ParseFromArray(v10, v5, v6))
  {
    self = [(TTParagraphStyle *)self initWithArchive:v10];
    v7 = self;
  }

  else
  {
    v8 = +[REMLog crdt];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [TTParagraphStyle(TTParagraphStylePersistenceAdditions) initWithData:v8];
    }

    v7 = 0;
  }

  topotext::ParagraphStyle::~ParagraphStyle(v10);

  return v7;
}

- (TTParagraphStyle)initWithArchive:(const void *)a3
{
  v4 = [(TTParagraphStyle *)self init];
  v5 = v4;
  if (v4)
  {
    if (*(a3 + 8))
    {
      v6 = *(a3 + 10);
    }

    else
    {
      v6 = 3;
    }

    [(TTParagraphStyle *)v4 setStyle:v6];
    if ((*(a3 + 32) & 2) != 0)
    {
      v7 = [TTParagraphStyle textAlignmentForParagraphStyleAlignment:*(a3 + 11)];
    }

    else
    {
      v7 = 4;
    }

    [(TTParagraphStyle *)v5 setAlignment:v7];
    if ((*(a3 + 32) & 4) != 0)
    {
      v8 = [TTMergeableAttributedString writingDirectionForAttribute:*(a3 + 12)];
    }

    else
    {
      v8 = -1;
    }

    [(TTParagraphStyle *)v5 setWritingDirection:v8];
    v9 = *(a3 + 8);
    if ((v9 & 8) != 0)
    {
      [(TTParagraphStyle *)v5 setIndent:*(a3 + 13)];
      v9 = *(a3 + 8);
    }

    if ((v9 & 0x40) != 0)
    {
      [(TTParagraphStyle *)v5 setStartingItemNumber:*(a3 + 17)];
      v9 = *(a3 + 8);
    }

    if ((v9 & 0x20) != 0)
    {
      [(TTParagraphStyle *)v5 setHints:*(a3 + 16)];
    }
  }

  return v5;
}

- (void)saveToArchive:(void *)a3
{
  if ([(TTParagraphStyle *)self style]!= 3)
  {
    v5 = [(TTParagraphStyle *)self style];
    *(a3 + 8) |= 1u;
    *(a3 + 10) = v5;
  }

  if ([(TTParagraphStyle *)self alignment]!= 4)
  {
    v6 = [TTParagraphStyle paragraphStyleAlignmentForTextAlignment:[(TTParagraphStyle *)self alignment]];
    v7 = v6;
    if (!topotext::AttributeRun_WritingDirection_IsValid(v6))
    {
      [TTParagraphStyle(TTParagraphStylePersistenceAdditions) saveToArchive:];
    }

    *(a3 + 8) |= 2u;
    *(a3 + 11) = v7;
  }

  if ([(TTParagraphStyle *)self writingDirection]!= -1)
  {
    v8 = [TTMergeableAttributedString attributeForWritingDirection:[(TTParagraphStyle *)self writingDirection]];
    v9 = v8;
    if (!topotext::AttributeRun_WritingDirection_IsValid(v8))
    {
      [TTParagraphStyle(TTParagraphStylePersistenceAdditions) saveToArchive:];
    }

    *(a3 + 8) |= 4u;
    *(a3 + 12) = v9;
  }

  if ([(TTParagraphStyle *)self indent])
  {
    v10 = [(TTParagraphStyle *)self indent];
    *(a3 + 8) |= 8u;
    *(a3 + 13) = v10;
  }

  if ([(TTParagraphStyle *)self startingItemNumber])
  {
    v11 = [(TTParagraphStyle *)self startingItemNumber];
    *(a3 + 8) |= 0x40u;
    *(a3 + 17) = v11;
  }

  if ([(TTParagraphStyle *)self hints])
  {
    v12 = [(TTParagraphStyle *)self hints];
    *(a3 + 8) |= 0x20u;
    *(a3 + 16) = v12;
  }
}

- (id)serialize
{
  [(TTParagraphStyle *)self saveToArchive:v6, topotext::ParagraphStyle::ParagraphStyle(v6)];
  v2 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:topotext::ParagraphStyle::ByteSize(v6)];
  v3 = [v2 mutableBytes];
  v4 = TTBoundedCheckedCastNSUIntegerToUInt32([v2 length]);
  google::protobuf::MessageLite::SerializeToArray(v6, v3, v4);
  topotext::ParagraphStyle::~ParagraphStyle(v6);

  return v2;
}

- (TTParagraphStyle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufArchiveKey"];
  v6 = [(TTParagraphStyle *)self initWithData:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(TTParagraphStyle *)self serialize];
  if (v4)
  {
    [v5 encodeObject:v4 forKey:@"protobufArchiveKey"];
  }
}

+ (id)defaultParagraphStyle
{
  if (defaultParagraphStyle_onceToken != -1)
  {
    +[TTParagraphStyle defaultParagraphStyle];
  }

  v3 = defaultParagraphStyle_defaultParagraphStyle;

  return v3;
}

uint64_t __41__TTParagraphStyle_defaultParagraphStyle__block_invoke()
{
  defaultParagraphStyle_defaultParagraphStyle = objc_alloc_init(TTParagraphStyle);

  return MEMORY[0x1EEE66BB8]();
}

- (TTParagraphStyle)init
{
  v3.receiver = self;
  v3.super_class = TTParagraphStyle;
  result = [(TTParagraphStyle *)&v3 init];
  if (result)
  {
    result->_style = 3;
    *&result->_alignment = xmmword_19A2313F0;
  }

  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TTMutableParagraphStyle);
  [(TTParagraphStyle *)v4 setStyle:[(TTParagraphStyle *)self style]];
  [(TTParagraphStyle *)v4 setAlignment:self->_alignment];
  [(TTParagraphStyle *)v4 setWritingDirection:self->_writingDirection];
  [(TTParagraphStyle *)v4 setIndent:[(TTParagraphStyle *)self indent]];
  [(TTParagraphStyle *)v4 setStartingItemNumber:[(TTParagraphStyle *)self startingItemNumber]];
  [(TTParagraphStyle *)v4 setHints:[(TTParagraphStyle *)self hints]];
  [(TTParagraphStyle *)v4 setNeedsParagraphCleanup:[(TTParagraphStyle *)self needsParagraphCleanup]];
  [(TTParagraphStyle *)v4 setNeedsListCleanup:[(TTParagraphStyle *)self needsListCleanup]];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TTParagraphStyle *)self isEqualToParagraphStyle:v4];

  return v5;
}

- (BOOL)isEqualToParagraphStyle:(id)a3
{
  v4 = a3;
  if (-[TTParagraphStyle isEqualToModelParagraphStyle:](self, "isEqualToModelParagraphStyle:", v4) && (v5 = -[TTParagraphStyle needsListCleanup](self, "needsListCleanup"), v5 == [v4 needsListCleanup]))
  {
    v7 = [(TTParagraphStyle *)self needsParagraphCleanup];
    v6 = v7 ^ [v4 needsParagraphCleanup] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isEqualToModelComparable:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TTParagraphStyle *)self isEqualToModelParagraphStyle:v4];

  return v5;
}

- (BOOL)isEqualToModelParagraphStyle:(id)a3
{
  v4 = a3;
  v5 = [(TTParagraphStyle *)self style];
  if (v5 == [v4 style] && (v6 = -[TTParagraphStyle alignment](self, "alignment"), v6 == objc_msgSend(v4, "alignment")) && (v7 = -[TTParagraphStyle writingDirection](self, "writingDirection"), v7 == objc_msgSend(v4, "writingDirection")) && (v8 = -[TTParagraphStyle indent](self, "indent"), v8 == objc_msgSend(v4, "indent")) && (v9 = -[TTParagraphStyle startingItemNumber](self, "startingItemNumber"), v9 == objc_msgSend(v4, "startingItemNumber")))
  {
    v10 = [(TTParagraphStyle *)self hints];
    v11 = v10 == [v4 hints];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(TTParagraphStyle *)self style];
  v4 = v3 ^ (16 * [(TTParagraphStyle *)self indent]);
  v5 = v4 ^ ([(TTParagraphStyle *)self alignment]<< 6);
  v6 = v5 ^ ([(TTParagraphStyle *)self writingDirection]<< 8);
  return v6 ^ [(TTParagraphStyle *)self hints];
}

- (BOOL)isList
{
  if ([(TTParagraphStyle *)self isUnknownStyle])
  {
    return [(TTParagraphStyle *)self hints]& 1;
  }

  if ([(TTParagraphStyle *)self style]== 100 || [(TTParagraphStyle *)self style]== 101)
  {
    return 1;
  }

  return [(TTParagraphStyle *)self style]== 102;
}

- (BOOL)isHeader
{
  v3 = [(TTParagraphStyle *)self style];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(TTParagraphStyle *)self style]== 2 || [(TTParagraphStyle *)self style]== 0;
  }

  return v3;
}

- (BOOL)preferSingleLine
{
  if ([(TTParagraphStyle *)self isUnknownStyle])
  {
    return ([(TTParagraphStyle *)self hints]>> 1) & 1;
  }

  else if ([(TTParagraphStyle *)self style]== 3 || [(TTParagraphStyle *)self style]== 4)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    LOBYTE(v3) = ![(TTParagraphStyle *)self isList];
  }

  return v3;
}

- (id)listBulletInAttributedString:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(TTParagraphStyle *)self style];
  if (v7 == 101)
  {
    v11 = @"–";
  }

  else if (v7 == 102)
  {
    v8 = [v6 attribute:TTPresentationAttributeNameItemNumber atIndex:a4 effectiveRange:0];
    v9 = v8;
    if (a4 && !v8)
    {
      v9 = [v6 attribute:TTPresentationAttributeNameItemNumber atIndex:a4 - 1 effectiveRange:0];
    }

    v10 = [v9 unsignedIntegerValue];
    v11 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%ld.", v10];
  }

  else
  {
    v12 = [(TTParagraphStyle *)self indent];
    if (v12 >= 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = v12;
    }

    v11 = [&unk_1F0D99A60 objectAtIndexedSubscript:v13];
  }

  return v11;
}

- (NSString)description
{
  if ([(TTParagraphStyle *)self writingDirection])
  {
    v3 = [(TTParagraphStyle *)self writingDirection];
    v4 = @"Natural";
    if (v3 == 1)
    {
      v4 = @"RTL";
    }
  }

  else
  {
    v4 = @"LTR";
  }

  v5 = v4;
  v6 = [(TTParagraphStyle *)self needsParagraphCleanup];
  v7 = @" needsParagraphCleanup";
  if (!v6)
  {
    v7 = &stru_1F0D67F00;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = v7;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [(TTParagraphStyle *)self style];
  v13 = [(TTParagraphStyle *)self alignment];
  v14 = [(TTParagraphStyle *)self indent];
  v15 = [(TTParagraphStyle *)self needsListCleanup];
  v16 = @" needsListCleanup";
  if (!v15)
  {
    v16 = &stru_1F0D67F00;
  }

  v17 = [v8 stringWithFormat:@"<%@: %p style=%lu alignment=%lu indent=%ld %@%@%@%@>", v11, self, v12, v13, v14, v5, &stru_1F0D67F00, v9, v16];

  return v17;
}

@end