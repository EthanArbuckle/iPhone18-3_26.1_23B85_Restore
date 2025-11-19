@interface TTFont
- (BOOL)isEqual:(id)a3;
- (TTFont)initWithArchive:(const void *)a3;
- (TTFont)initWithCoder:(id)a3;
- (TTFont)initWithData:(id)a3;
- (TTFont)initWithName:(id)a3 size:(double)a4 hints:(unsigned int)a5;
- (id)description;
- (id)serialize;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)saveToArchive:(void *)a3;
@end

@implementation TTFont

- (TTFont)initWithName:(id)a3 size:(double)a4 hints:(unsigned int)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = TTFont;
  v9 = [(TTFont *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    fontName = v9->_fontName;
    v9->_fontName = v10;

    v9->_pointSize = a4;
    v9->_fontHints = a5;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(TTFont *)self fontName];
    v9 = [v7 fontName];
    if (v8 == v9 || (-[TTFont fontName](self, "fontName"), v3 = objc_claimAutoreleasedReturnValue(), [v7 fontName], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", v4)))
    {
      [(TTFont *)self pointSize];
      v12 = v11;
      [v7 pointSize];
      if (v12 == v13)
      {
        v14 = [(TTFont *)self fontHints];
        v10 = v14 == [v7 fontHints];
      }

      else
      {
        v10 = 0;
      }

      if (v8 == v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(TTFont *)self fontName];
  v4 = [v3 hash];
  [(TTFont *)self pointSize];
  v6 = v5;
  v7 = v4 ^ [(TTFont *)self fontHints];

  return v7 ^ v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TTFont *)self fontName];
  [(TTFont *)self pointSize];
  v8 = v7;
  if (([(TTFont *)self fontHints]& 1) != 0)
  {
    v9 = @" bold";
  }

  else
  {
    v9 = &stru_1F0D67F00;
  }

  v10 = [(TTFont *)self fontHints];
  v11 = @" italic";
  if ((v10 & 2) == 0)
  {
    v11 = &stru_1F0D67F00;
  }

  v12 = [v3 stringWithFormat:@"<%@: %p %@ %0.1f%@%@>", v5, self, v6, v8, v9, v11];

  return v12;
}

- (TTFont)initWithData:(id)a3
{
  v4 = a3;
  topotext::Font::Font(v10);
  v5 = [v4 bytes];
  v6 = TTBoundedCheckedCastNSUIntegerToUInt32([v4 length]);
  if (google::protobuf::MessageLite::ParseFromArray(v10, v5, v6))
  {
    self = [(TTFont *)self initWithArchive:v10];
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

  topotext::Font::~Font(v10);

  return v7;
}

- (TTFont)initWithArchive:(const void *)a3
{
  v5 = *(a3 + 8);
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = *(a3 + 5);
    v9 = *(v8 + 23);
    if (v9 < 0)
    {
      v8 = *v8;
      v9 = *(*(a3 + 5) + 8);
    }

    v10 = [v7 initWithBytes:v8 length:v9 encoding:4];
    v5 = *(a3 + 8);
    v6 = v10;
  }

  else
  {
    v6 = 0;
  }

  v11 = *(a3 + 12);
  v12 = [TTFont alloc];
  v13 = v11;
  if ((v5 & 2) == 0)
  {
    v13 = 0.0;
  }

  v14 = [(TTFont *)v12 initWithName:v6 size:*(a3 + 13) & ((*(a3 + 8) << 29) >> 31) hints:v13];

  return v14;
}

- (void)saveToArchive:(void *)a3
{
  v5 = [(TTFont *)self fontName];

  if (v5)
  {
    v6 = [(TTFont *)self fontName];
    [v6 UTF8String];
    *(a3 + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    if (*(a3 + 5) == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    MEMORY[0x19A8FCFE0]();
  }

  [(TTFont *)self pointSize];
  if (v7 > 0.0)
  {
    [(TTFont *)self pointSize];
    *&v8 = v8;
    *(a3 + 8) |= 2u;
    *(a3 + 12) = LODWORD(v8);
  }

  if ([(TTFont *)self fontHints])
  {
    v9 = [(TTFont *)self fontHints];
    *(a3 + 8) |= 4u;
    *(a3 + 13) = v9;
  }
}

- (id)serialize
{
  topotext::Font::Font(v7);
  [(TTFont *)self saveToArchive:v7];
  v3 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:topotext::Font::ByteSize(v7)];
  v4 = [v3 mutableBytes];
  v5 = TTBoundedCheckedCastNSUIntegerToUInt32([v3 length]);
  google::protobuf::MessageLite::SerializeToArray(v7, v4, v5);
  topotext::Font::~Font(v7);

  return v3;
}

- (TTFont)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufArchiveKey"];
  v6 = [(TTFont *)self initWithData:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(TTFont *)self serialize];
  if (v4)
  {
    [v5 encodeObject:v4 forKey:@"protobufArchiveKey"];
  }
}

@end