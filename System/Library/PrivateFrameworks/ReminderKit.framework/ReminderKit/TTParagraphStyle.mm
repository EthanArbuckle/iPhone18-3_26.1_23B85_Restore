@interface TTParagraphStyle
+ (id)defaultParagraphStyle;
+ (int)paragraphStyleAlignmentForTextAlignment:(int64_t)alignment;
+ (int64_t)textAlignmentForParagraphStyleAlignment:(int)alignment;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToModelComparable:(id)comparable;
- (BOOL)isEqualToModelParagraphStyle:(id)style;
- (BOOL)isEqualToParagraphStyle:(id)style;
- (BOOL)isHeader;
- (BOOL)isList;
- (BOOL)preferSingleLine;
- (NSString)description;
- (TTParagraphStyle)init;
- (TTParagraphStyle)initWithArchive:(const void *)archive;
- (TTParagraphStyle)initWithCoder:(id)coder;
- (TTParagraphStyle)initWithData:(id)data;
- (id)listBulletInAttributedString:(id)string atIndex:(unint64_t)index;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)serialize;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)saveToArchive:(void *)archive;
@end

@implementation TTParagraphStyle

+ (int64_t)textAlignmentForParagraphStyleAlignment:(int)alignment
{
  if (alignment >= 4)
  {
    return 4;
  }

  else
  {
    return alignment;
  }
}

+ (int)paragraphStyleAlignmentForTextAlignment:(int64_t)alignment
{
  if (alignment >= 4)
  {
    return 4;
  }

  else
  {
    return alignment;
  }
}

- (TTParagraphStyle)initWithData:(id)data
{
  dataCopy = data;
  topotext::ParagraphStyle::ParagraphStyle(v10);
  bytes = [dataCopy bytes];
  v6 = TTBoundedCheckedCastNSUIntegerToUInt32([dataCopy length]);
  if (google::protobuf::MessageLite::ParseFromArray(v10, bytes, v6))
  {
    self = [(TTParagraphStyle *)self initWithArchive:v10];
    selfCopy = self;
  }

  else
  {
    v8 = +[REMLog crdt];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [TTParagraphStyle(TTParagraphStylePersistenceAdditions) initWithData:v8];
    }

    selfCopy = 0;
  }

  topotext::ParagraphStyle::~ParagraphStyle(v10);

  return selfCopy;
}

- (TTParagraphStyle)initWithArchive:(const void *)archive
{
  v4 = [(TTParagraphStyle *)self init];
  v5 = v4;
  if (v4)
  {
    if (*(archive + 8))
    {
      v6 = *(archive + 10);
    }

    else
    {
      v6 = 3;
    }

    [(TTParagraphStyle *)v4 setStyle:v6];
    if ((*(archive + 32) & 2) != 0)
    {
      v7 = [TTParagraphStyle textAlignmentForParagraphStyleAlignment:*(archive + 11)];
    }

    else
    {
      v7 = 4;
    }

    [(TTParagraphStyle *)v5 setAlignment:v7];
    if ((*(archive + 32) & 4) != 0)
    {
      v8 = [TTMergeableAttributedString writingDirectionForAttribute:*(archive + 12)];
    }

    else
    {
      v8 = -1;
    }

    [(TTParagraphStyle *)v5 setWritingDirection:v8];
    v9 = *(archive + 8);
    if ((v9 & 8) != 0)
    {
      [(TTParagraphStyle *)v5 setIndent:*(archive + 13)];
      v9 = *(archive + 8);
    }

    if ((v9 & 0x40) != 0)
    {
      [(TTParagraphStyle *)v5 setStartingItemNumber:*(archive + 17)];
      v9 = *(archive + 8);
    }

    if ((v9 & 0x20) != 0)
    {
      [(TTParagraphStyle *)v5 setHints:*(archive + 16)];
    }
  }

  return v5;
}

- (void)saveToArchive:(void *)archive
{
  if ([(TTParagraphStyle *)self style]!= 3)
  {
    style = [(TTParagraphStyle *)self style];
    *(archive + 8) |= 1u;
    *(archive + 10) = style;
  }

  if ([(TTParagraphStyle *)self alignment]!= 4)
  {
    v6 = [TTParagraphStyle paragraphStyleAlignmentForTextAlignment:[(TTParagraphStyle *)self alignment]];
    v7 = v6;
    if (!topotext::AttributeRun_WritingDirection_IsValid(v6))
    {
      [TTParagraphStyle(TTParagraphStylePersistenceAdditions) saveToArchive:];
    }

    *(archive + 8) |= 2u;
    *(archive + 11) = v7;
  }

  if ([(TTParagraphStyle *)self writingDirection]!= -1)
  {
    v8 = [TTMergeableAttributedString attributeForWritingDirection:[(TTParagraphStyle *)self writingDirection]];
    v9 = v8;
    if (!topotext::AttributeRun_WritingDirection_IsValid(v8))
    {
      [TTParagraphStyle(TTParagraphStylePersistenceAdditions) saveToArchive:];
    }

    *(archive + 8) |= 4u;
    *(archive + 12) = v9;
  }

  if ([(TTParagraphStyle *)self indent])
  {
    indent = [(TTParagraphStyle *)self indent];
    *(archive + 8) |= 8u;
    *(archive + 13) = indent;
  }

  if ([(TTParagraphStyle *)self startingItemNumber])
  {
    startingItemNumber = [(TTParagraphStyle *)self startingItemNumber];
    *(archive + 8) |= 0x40u;
    *(archive + 17) = startingItemNumber;
  }

  if ([(TTParagraphStyle *)self hints])
  {
    hints = [(TTParagraphStyle *)self hints];
    *(archive + 8) |= 0x20u;
    *(archive + 16) = hints;
  }
}

- (id)serialize
{
  [(TTParagraphStyle *)self saveToArchive:v6, topotext::ParagraphStyle::ParagraphStyle(v6)];
  v2 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:topotext::ParagraphStyle::ByteSize(v6)];
  mutableBytes = [v2 mutableBytes];
  v4 = TTBoundedCheckedCastNSUIntegerToUInt32([v2 length]);
  google::protobuf::MessageLite::SerializeToArray(v6, mutableBytes, v4);
  topotext::ParagraphStyle::~ParagraphStyle(v6);

  return v2;
}

- (TTParagraphStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufArchiveKey"];
  v6 = [(TTParagraphStyle *)self initWithData:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serialize = [(TTParagraphStyle *)self serialize];
  if (serialize)
  {
    [coderCopy encodeObject:serialize forKey:@"protobufArchiveKey"];
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

- (id)mutableCopyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TTParagraphStyle *)self isEqualToParagraphStyle:equalCopy];

  return v5;
}

- (BOOL)isEqualToParagraphStyle:(id)style
{
  styleCopy = style;
  if (-[TTParagraphStyle isEqualToModelParagraphStyle:](self, "isEqualToModelParagraphStyle:", styleCopy) && (v5 = -[TTParagraphStyle needsListCleanup](self, "needsListCleanup"), v5 == [styleCopy needsListCleanup]))
  {
    needsParagraphCleanup = [(TTParagraphStyle *)self needsParagraphCleanup];
    v6 = needsParagraphCleanup ^ [styleCopy needsParagraphCleanup] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isEqualToModelComparable:(id)comparable
{
  comparableCopy = comparable;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TTParagraphStyle *)self isEqualToModelParagraphStyle:comparableCopy];

  return v5;
}

- (BOOL)isEqualToModelParagraphStyle:(id)style
{
  styleCopy = style;
  style = [(TTParagraphStyle *)self style];
  if (style == [styleCopy style] && (v6 = -[TTParagraphStyle alignment](self, "alignment"), v6 == objc_msgSend(styleCopy, "alignment")) && (v7 = -[TTParagraphStyle writingDirection](self, "writingDirection"), v7 == objc_msgSend(styleCopy, "writingDirection")) && (v8 = -[TTParagraphStyle indent](self, "indent"), v8 == objc_msgSend(styleCopy, "indent")) && (v9 = -[TTParagraphStyle startingItemNumber](self, "startingItemNumber"), v9 == objc_msgSend(styleCopy, "startingItemNumber")))
  {
    hints = [(TTParagraphStyle *)self hints];
    v11 = hints == [styleCopy hints];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  style = [(TTParagraphStyle *)self style];
  v4 = style ^ (16 * [(TTParagraphStyle *)self indent]);
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
  style = [(TTParagraphStyle *)self style];
  if (style != 1)
  {
    LOBYTE(style) = [(TTParagraphStyle *)self style]== 2 || [(TTParagraphStyle *)self style]== 0;
  }

  return style;
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

- (id)listBulletInAttributedString:(id)string atIndex:(unint64_t)index
{
  stringCopy = string;
  style = [(TTParagraphStyle *)self style];
  if (style == 101)
  {
    v11 = @"–";
  }

  else if (style == 102)
  {
    v8 = [stringCopy attribute:TTPresentationAttributeNameItemNumber atIndex:index effectiveRange:0];
    v9 = v8;
    if (index && !v8)
    {
      v9 = [stringCopy attribute:TTPresentationAttributeNameItemNumber atIndex:index - 1 effectiveRange:0];
    }

    unsignedIntegerValue = [v9 unsignedIntegerValue];
    v11 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%ld.", unsignedIntegerValue];
  }

  else
  {
    indent = [(TTParagraphStyle *)self indent];
    if (indent >= 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = indent;
    }

    v11 = [&unk_1F0D99A60 objectAtIndexedSubscript:v13];
  }

  return v11;
}

- (NSString)description
{
  if ([(TTParagraphStyle *)self writingDirection])
  {
    writingDirection = [(TTParagraphStyle *)self writingDirection];
    v4 = @"Natural";
    if (writingDirection == 1)
    {
      v4 = @"RTL";
    }
  }

  else
  {
    v4 = @"LTR";
  }

  v5 = v4;
  needsParagraphCleanup = [(TTParagraphStyle *)self needsParagraphCleanup];
  v7 = @" needsParagraphCleanup";
  if (!needsParagraphCleanup)
  {
    v7 = &stru_1F0D67F00;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = v7;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  style = [(TTParagraphStyle *)self style];
  alignment = [(TTParagraphStyle *)self alignment];
  indent = [(TTParagraphStyle *)self indent];
  needsListCleanup = [(TTParagraphStyle *)self needsListCleanup];
  v16 = @" needsListCleanup";
  if (!needsListCleanup)
  {
    v16 = &stru_1F0D67F00;
  }

  v17 = [v8 stringWithFormat:@"<%@: %p style=%lu alignment=%lu indent=%ld %@%@%@%@>", v11, self, style, alignment, indent, v5, &stru_1F0D67F00, v9, v16];

  return v17;
}

@end