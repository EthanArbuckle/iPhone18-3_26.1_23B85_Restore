@interface GPBCodedOutputStream
+ (id)streamWithData:(id)data;
+ (id)streamWithOutputStream:(id)stream;
- (GPBCodedOutputStream)initWithOutputStream:(id)stream;
- (GPBCodedOutputStream)initWithOutputStream:(id)stream data:(id)data;
- (void)dealloc;
- (void)flush;
- (void)writeBool:(int)bool value:(BOOL)value;
- (void)writeBoolNoTag:(BOOL)tag;
- (void)writeBytes:(int)bytes value:(id)value;
- (void)writeBytesNoTag:(id)tag;
- (void)writeDouble:(int)double value:(double)value;
- (void)writeEnum:(int)enum value:(int)value;
- (void)writeFixed32:(int)fixed32 value:(unsigned int)value;
- (void)writeFixed64:(int)fixed64 value:(unint64_t)value;
- (void)writeFloat:(int)float value:(float)value;
- (void)writeGroupNoTag:(int)tag value:(id)value;
- (void)writeInt32:(int)int32 value:(int)value;
- (void)writeInt64:(int)int64 value:(int64_t)value;
- (void)writeMessage:(int)message value:(id)value;
- (void)writeMessageNoTag:(id)tag;
- (void)writeMessageSetExtension:(int)extension value:(id)value;
- (void)writeRawByte:(unsigned __int8)byte;
- (void)writeRawData:(id)data;
- (void)writeRawMessageSetExtension:(int)extension value:(id)value;
- (void)writeRawPtr:(const void *)ptr offset:(unint64_t)offset length:(unint64_t)length;
- (void)writeSFixed32:(int)fixed32 value:(int)value;
- (void)writeSFixed64:(int)fixed64 value:(int64_t)value;
- (void)writeSInt32:(int)int32 value:(int)value;
- (void)writeSInt64:(int)int64 value:(int64_t)value;
- (void)writeString:(int)string value:(id)value;
- (void)writeStringNoTag:(id)tag;
- (void)writeTag:(unsigned int)tag format:(int)format;
- (void)writeUInt64:(int)int64 value:(unint64_t)value;
- (void)writeUnknownGroupNoTag:(int)tag value:(id)value;
@end

@implementation GPBCodedOutputStream

- (void)dealloc
{
  [(GPBCodedOutputStream *)self flush];
  [(NSOutputStream *)self->state_.output close];

  v3.receiver = self;
  v3.super_class = GPBCodedOutputStream;
  [(GPBCodedOutputStream *)&v3 dealloc];
}

- (GPBCodedOutputStream)initWithOutputStream:(id)stream
{
  v5 = [NSMutableData dataWithLength:vm_page_size];

  return [(GPBCodedOutputStream *)self initWithOutputStream:stream data:v5];
}

- (GPBCodedOutputStream)initWithOutputStream:(id)stream data:(id)data
{
  v9.receiver = self;
  v9.super_class = GPBCodedOutputStream;
  v6 = [(GPBCodedOutputStream *)&v9 init];
  if (v6)
  {
    v6->buffer_ = data;
    v6->state_.bytes = [data mutableBytes];
    v6->state_.size = [data length];
    streamCopy = stream;
    v6->state_.output = streamCopy;
    [(NSOutputStream *)streamCopy open];
  }

  return v6;
}

+ (id)streamWithOutputStream:(id)stream
{
  v3 = [[self alloc] initWithOutputStream:stream data:{+[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", vm_page_size)}];

  return v3;
}

+ (id)streamWithData:(id)data
{
  v3 = [[self alloc] initWithData:data];

  return v3;
}

- (void)writeDouble:(int)double value:(double)value
{
  Tag = GPBWireFormatMakeTag(double, 1);
  sub_10033D800(&self->state_, Tag);

  sub_10033CFD8(&self->state_, *&value);
}

- (void)writeFloat:(int)float value:(float)value
{
  Tag = GPBWireFormatMakeTag(float, 5);
  sub_10033D800(&self->state_, Tag);

  sub_10033D1C0(&self->state_, SLODWORD(value));
}

- (void)writeUInt64:(int)int64 value:(unint64_t)value
{
  Tag = GPBWireFormatMakeTag(int64, 0);
  sub_10033D800(&self->state_, Tag);

  sub_10033D2F8(&self->state_, value);
}

- (void)writeInt64:(int)int64 value:(int64_t)value
{
  Tag = GPBWireFormatMakeTag(int64, 0);
  sub_10033D800(&self->state_, Tag);

  sub_10033D2F8(&self->state_, value);
}

- (void)writeInt32:(int)int32 value:(int)value
{
  Tag = GPBWireFormatMakeTag(int32, 0);
  sub_10033D800(&self->state_, Tag);

  sub_10033D458(&self->state_, value);
}

- (void)writeFixed64:(int)fixed64 value:(unint64_t)value
{
  Tag = GPBWireFormatMakeTag(fixed64, 1);
  sub_10033D800(&self->state_, Tag);

  sub_10033CFD8(&self->state_, value);
}

- (void)writeFixed32:(int)fixed32 value:(unsigned int)value
{
  Tag = GPBWireFormatMakeTag(fixed32, 5);
  sub_10033D800(&self->state_, Tag);

  sub_10033D1C0(&self->state_, value);
}

- (void)writeBoolNoTag:(BOOL)tag
{
  position = self->state_.position;
  if (position == self->state_.size)
  {
    sub_1003400C8(&self->state_.bytes);
    position = self->state_.position;
  }

  bytes = self->state_.bytes;
  self->state_.position = position + 1;
  bytes[position] = tag;
}

- (void)writeBool:(int)bool value:(BOOL)value
{
  Tag = GPBWireFormatMakeTag(bool, 0);
  sub_10033D800(&self->state_, Tag);
  position = self->state_.position;
  if (position == self->state_.size)
  {
    sub_1003400C8(&self->state_.bytes);
    position = self->state_.position;
  }

  bytes = self->state_.bytes;
  self->state_.position = position + 1;
  bytes[position] = value;
}

- (void)writeStringNoTag:(id)tag
{
  v6 = [tag lengthOfBytesUsingEncoding:4];
  sub_10033D800(&self->state_, v6);
  if (v6)
  {
    CStringPtr = CFStringGetCStringPtr(tag, 0x8000100u);
    position = self->state_.position;
    v9 = self->state_.size - position;
    if (v9 >= v6)
    {
      v13 = 0;
      bytes = self->state_.bytes;
      if (CStringPtr)
      {
        memcpy(&bytes[position], CStringPtr, v6);
      }

      else
      {
        if (![tag getBytes:&bytes[position] maxLength:v9 usedLength:&v13 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(tag, "length"), 0}])
        {
          return;
        }

        if (v13 != v6)
        {
          v12 = +[NSAssertionHandler currentHandler];
          [(NSAssertionHandler *)v12 handleFailureInMethod:a2 object:self file:@"GPBCodedOutputStream.m" lineNumber:305 description:@"Our UTF8 calc was wrong? %tu vs %zd", v13, v6];
          v6 = v13;
        }
      }

      self->state_.position += v6;
    }

    else if (CStringPtr)
    {

      [GPBCodedOutputStream writeRawPtr:"writeRawPtr:offset:length:" offset:CStringPtr length:?];
    }

    else
    {
      v11 = [tag dataUsingEncoding:4];
      if ([v11 length] != v6)
      {
        sub_100341040(v11, a2, self, v6);
      }

      [(GPBCodedOutputStream *)self writeRawData:v11];
    }
  }
}

- (void)writeString:(int)string value:(id)value
{
  Tag = GPBWireFormatMakeTag(string, 2);
  sub_10033D800(&self->state_, Tag);

  [(GPBCodedOutputStream *)self writeStringNoTag:value];
}

- (void)writeGroupNoTag:(int)tag value:(id)value
{
  [value writeToCodedOutputStream:self];
  Tag = GPBWireFormatMakeTag(tag, 4);

  sub_10033D800(&self->state_, Tag);
}

- (void)writeUnknownGroupNoTag:(int)tag value:(id)value
{
  [value writeToCodedOutputStream:self];
  Tag = GPBWireFormatMakeTag(tag, 4);

  sub_10033D800(&self->state_, Tag);
}

- (void)writeMessageNoTag:(id)tag
{
  sub_10033D800(&self->state_, [tag serializedSize]);

  [tag writeToCodedOutputStream:self];
}

- (void)writeMessage:(int)message value:(id)value
{
  Tag = GPBWireFormatMakeTag(message, 2);
  sub_10033D800(&self->state_, Tag);

  [(GPBCodedOutputStream *)self writeMessageNoTag:value];
}

- (void)writeBytesNoTag:(id)tag
{
  sub_10033D800(&self->state_, [tag length]);

  [(GPBCodedOutputStream *)self writeRawData:tag];
}

- (void)writeBytes:(int)bytes value:(id)value
{
  Tag = GPBWireFormatMakeTag(bytes, 2);
  sub_10033D800(&self->state_, Tag);

  [(GPBCodedOutputStream *)self writeBytesNoTag:value];
}

- (void)writeEnum:(int)enum value:(int)value
{
  Tag = GPBWireFormatMakeTag(enum, 0);
  sub_10033D800(&self->state_, Tag);

  sub_10033D458(&self->state_, value);
}

- (void)writeSFixed32:(int)fixed32 value:(int)value
{
  Tag = GPBWireFormatMakeTag(fixed32, 5);
  sub_10033D800(&self->state_, Tag);

  sub_10033D1C0(&self->state_, value);
}

- (void)writeSFixed64:(int)fixed64 value:(int64_t)value
{
  Tag = GPBWireFormatMakeTag(fixed64, 1);
  sub_10033D800(&self->state_, Tag);

  sub_10033CFD8(&self->state_, value);
}

- (void)writeSInt32:(int)int32 value:(int)value
{
  Tag = GPBWireFormatMakeTag(int32, 0);
  sub_10033D800(&self->state_, Tag);

  sub_10033D800(&self->state_, (2 * value) ^ (value >> 31));
}

- (void)writeSInt64:(int)int64 value:(int64_t)value
{
  Tag = GPBWireFormatMakeTag(int64, 0);
  sub_10033D800(&self->state_, Tag);

  sub_10033D2F8(&self->state_, (2 * value) ^ (value >> 63));
}

- (void)writeMessageSetExtension:(int)extension value:(id)value
{
  Tag = GPBWireFormatMakeTag(1, 3);
  sub_10033D800(&self->state_, Tag);
  sub_10033DBC8(&self->state_, 2, extension);
  [(GPBCodedOutputStream *)self writeMessage:3 value:value];
  v8 = GPBWireFormatMakeTag(1, 4);

  sub_10033D800(&self->state_, v8);
}

- (void)writeRawMessageSetExtension:(int)extension value:(id)value
{
  Tag = GPBWireFormatMakeTag(1, 3);
  sub_10033D800(&self->state_, Tag);
  sub_10033DBC8(&self->state_, 2, extension);
  [(GPBCodedOutputStream *)self writeBytes:3 value:value];
  v8 = GPBWireFormatMakeTag(1, 4);

  sub_10033D800(&self->state_, v8);
}

- (void)flush
{
  if (self->state_.output)
  {
    sub_1003400C8(&self->state_.bytes);
  }
}

- (void)writeRawByte:(unsigned __int8)byte
{
  position = self->state_.position;
  if (position == self->state_.size)
  {
    sub_1003400C8(&self->state_.bytes);
    position = self->state_.position;
  }

  bytes = self->state_.bytes;
  self->state_.position = position + 1;
  bytes[position] = byte;
}

- (void)writeRawData:(id)data
{
  bytes = [data bytes];
  v6 = [data length];

  [(GPBCodedOutputStream *)self writeRawPtr:bytes offset:0 length:v6];
}

- (void)writeRawPtr:(const void *)ptr offset:(unint64_t)offset length:(unint64_t)length
{
  if (ptr && length)
  {
    size = self->state_.size;
    p_state = &self->state_;
    position = self->state_.position;
    v12 = size - position;
    v13 = &self->state_.bytes[position];
    v14 = (length - (size - position));
    if (length <= size - position)
    {
      memcpy(v13, ptr + offset, length);
      self->state_.position += length;
    }

    else
    {
      memcpy(v13, ptr + offset, size - position);
      v15 = v12 + offset;
      self->state_.position = size;
      sub_1003400C8(p_state);
      if (v14 <= self->state_.size)
      {
        memcpy(self->state_.bytes, ptr + v15, v14);
        self->state_.position = v14;
      }

      else if ([(NSOutputStream *)self->state_.output write:ptr + v15 maxLength:v14]!= v14)
      {

        [NSException raise:@"WriteFailed" format:&stru_100436548];
      }
    }
  }
}

- (void)writeTag:(unsigned int)tag format:(int)format
{
  Tag = GPBWireFormatMakeTag(tag, format);

  sub_10033D800(&self->state_, Tag);
}

@end