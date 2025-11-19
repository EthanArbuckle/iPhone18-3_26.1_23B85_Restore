@interface GPBCodedOutputStream
+ (id)streamWithData:(id)a3;
+ (id)streamWithOutputStream:(id)a3;
- (GPBCodedOutputStream)initWithOutputStream:(id)a3;
- (GPBCodedOutputStream)initWithOutputStream:(id)a3 data:(id)a4;
- (void)dealloc;
- (void)flush;
- (void)writeBool:(int)a3 value:(BOOL)a4;
- (void)writeBoolNoTag:(BOOL)a3;
- (void)writeBytes:(int)a3 value:(id)a4;
- (void)writeBytesNoTag:(id)a3;
- (void)writeDouble:(int)a3 value:(double)a4;
- (void)writeEnum:(int)a3 value:(int)a4;
- (void)writeFixed32:(int)a3 value:(unsigned int)a4;
- (void)writeFixed64:(int)a3 value:(unint64_t)a4;
- (void)writeFloat:(int)a3 value:(float)a4;
- (void)writeGroupNoTag:(int)a3 value:(id)a4;
- (void)writeInt32:(int)a3 value:(int)a4;
- (void)writeInt64:(int)a3 value:(int64_t)a4;
- (void)writeMessage:(int)a3 value:(id)a4;
- (void)writeMessageNoTag:(id)a3;
- (void)writeMessageSetExtension:(int)a3 value:(id)a4;
- (void)writeRawByte:(unsigned __int8)a3;
- (void)writeRawData:(id)a3;
- (void)writeRawMessageSetExtension:(int)a3 value:(id)a4;
- (void)writeRawPtr:(const void *)a3 offset:(unint64_t)a4 length:(unint64_t)a5;
- (void)writeSFixed32:(int)a3 value:(int)a4;
- (void)writeSFixed64:(int)a3 value:(int64_t)a4;
- (void)writeSInt32:(int)a3 value:(int)a4;
- (void)writeSInt64:(int)a3 value:(int64_t)a4;
- (void)writeString:(int)a3 value:(id)a4;
- (void)writeStringNoTag:(id)a3;
- (void)writeTag:(unsigned int)a3 format:(int)a4;
- (void)writeUInt64:(int)a3 value:(unint64_t)a4;
- (void)writeUnknownGroupNoTag:(int)a3 value:(id)a4;
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

- (GPBCodedOutputStream)initWithOutputStream:(id)a3
{
  v5 = [NSMutableData dataWithLength:vm_page_size];

  return [(GPBCodedOutputStream *)self initWithOutputStream:a3 data:v5];
}

- (GPBCodedOutputStream)initWithOutputStream:(id)a3 data:(id)a4
{
  v9.receiver = self;
  v9.super_class = GPBCodedOutputStream;
  v6 = [(GPBCodedOutputStream *)&v9 init];
  if (v6)
  {
    v6->buffer_ = a4;
    v6->state_.bytes = [a4 mutableBytes];
    v6->state_.size = [a4 length];
    v7 = a3;
    v6->state_.output = v7;
    [(NSOutputStream *)v7 open];
  }

  return v6;
}

+ (id)streamWithOutputStream:(id)a3
{
  v3 = [[a1 alloc] initWithOutputStream:a3 data:{+[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", vm_page_size)}];

  return v3;
}

+ (id)streamWithData:(id)a3
{
  v3 = [[a1 alloc] initWithData:a3];

  return v3;
}

- (void)writeDouble:(int)a3 value:(double)a4
{
  Tag = GPBWireFormatMakeTag(a3, 1);
  sub_10033D800(&self->state_, Tag);

  sub_10033CFD8(&self->state_, *&a4);
}

- (void)writeFloat:(int)a3 value:(float)a4
{
  Tag = GPBWireFormatMakeTag(a3, 5);
  sub_10033D800(&self->state_, Tag);

  sub_10033D1C0(&self->state_, SLODWORD(a4));
}

- (void)writeUInt64:(int)a3 value:(unint64_t)a4
{
  Tag = GPBWireFormatMakeTag(a3, 0);
  sub_10033D800(&self->state_, Tag);

  sub_10033D2F8(&self->state_, a4);
}

- (void)writeInt64:(int)a3 value:(int64_t)a4
{
  Tag = GPBWireFormatMakeTag(a3, 0);
  sub_10033D800(&self->state_, Tag);

  sub_10033D2F8(&self->state_, a4);
}

- (void)writeInt32:(int)a3 value:(int)a4
{
  Tag = GPBWireFormatMakeTag(a3, 0);
  sub_10033D800(&self->state_, Tag);

  sub_10033D458(&self->state_, a4);
}

- (void)writeFixed64:(int)a3 value:(unint64_t)a4
{
  Tag = GPBWireFormatMakeTag(a3, 1);
  sub_10033D800(&self->state_, Tag);

  sub_10033CFD8(&self->state_, a4);
}

- (void)writeFixed32:(int)a3 value:(unsigned int)a4
{
  Tag = GPBWireFormatMakeTag(a3, 5);
  sub_10033D800(&self->state_, Tag);

  sub_10033D1C0(&self->state_, a4);
}

- (void)writeBoolNoTag:(BOOL)a3
{
  position = self->state_.position;
  if (position == self->state_.size)
  {
    sub_1003400C8(&self->state_.bytes);
    position = self->state_.position;
  }

  bytes = self->state_.bytes;
  self->state_.position = position + 1;
  bytes[position] = a3;
}

- (void)writeBool:(int)a3 value:(BOOL)a4
{
  Tag = GPBWireFormatMakeTag(a3, 0);
  sub_10033D800(&self->state_, Tag);
  position = self->state_.position;
  if (position == self->state_.size)
  {
    sub_1003400C8(&self->state_.bytes);
    position = self->state_.position;
  }

  bytes = self->state_.bytes;
  self->state_.position = position + 1;
  bytes[position] = a4;
}

- (void)writeStringNoTag:(id)a3
{
  v6 = [a3 lengthOfBytesUsingEncoding:4];
  sub_10033D800(&self->state_, v6);
  if (v6)
  {
    CStringPtr = CFStringGetCStringPtr(a3, 0x8000100u);
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
        if (![a3 getBytes:&bytes[position] maxLength:v9 usedLength:&v13 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(a3, "length"), 0}])
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
      v11 = [a3 dataUsingEncoding:4];
      if ([v11 length] != v6)
      {
        sub_100341040(v11, a2, self, v6);
      }

      [(GPBCodedOutputStream *)self writeRawData:v11];
    }
  }
}

- (void)writeString:(int)a3 value:(id)a4
{
  Tag = GPBWireFormatMakeTag(a3, 2);
  sub_10033D800(&self->state_, Tag);

  [(GPBCodedOutputStream *)self writeStringNoTag:a4];
}

- (void)writeGroupNoTag:(int)a3 value:(id)a4
{
  [a4 writeToCodedOutputStream:self];
  Tag = GPBWireFormatMakeTag(a3, 4);

  sub_10033D800(&self->state_, Tag);
}

- (void)writeUnknownGroupNoTag:(int)a3 value:(id)a4
{
  [a4 writeToCodedOutputStream:self];
  Tag = GPBWireFormatMakeTag(a3, 4);

  sub_10033D800(&self->state_, Tag);
}

- (void)writeMessageNoTag:(id)a3
{
  sub_10033D800(&self->state_, [a3 serializedSize]);

  [a3 writeToCodedOutputStream:self];
}

- (void)writeMessage:(int)a3 value:(id)a4
{
  Tag = GPBWireFormatMakeTag(a3, 2);
  sub_10033D800(&self->state_, Tag);

  [(GPBCodedOutputStream *)self writeMessageNoTag:a4];
}

- (void)writeBytesNoTag:(id)a3
{
  sub_10033D800(&self->state_, [a3 length]);

  [(GPBCodedOutputStream *)self writeRawData:a3];
}

- (void)writeBytes:(int)a3 value:(id)a4
{
  Tag = GPBWireFormatMakeTag(a3, 2);
  sub_10033D800(&self->state_, Tag);

  [(GPBCodedOutputStream *)self writeBytesNoTag:a4];
}

- (void)writeEnum:(int)a3 value:(int)a4
{
  Tag = GPBWireFormatMakeTag(a3, 0);
  sub_10033D800(&self->state_, Tag);

  sub_10033D458(&self->state_, a4);
}

- (void)writeSFixed32:(int)a3 value:(int)a4
{
  Tag = GPBWireFormatMakeTag(a3, 5);
  sub_10033D800(&self->state_, Tag);

  sub_10033D1C0(&self->state_, a4);
}

- (void)writeSFixed64:(int)a3 value:(int64_t)a4
{
  Tag = GPBWireFormatMakeTag(a3, 1);
  sub_10033D800(&self->state_, Tag);

  sub_10033CFD8(&self->state_, a4);
}

- (void)writeSInt32:(int)a3 value:(int)a4
{
  Tag = GPBWireFormatMakeTag(a3, 0);
  sub_10033D800(&self->state_, Tag);

  sub_10033D800(&self->state_, (2 * a4) ^ (a4 >> 31));
}

- (void)writeSInt64:(int)a3 value:(int64_t)a4
{
  Tag = GPBWireFormatMakeTag(a3, 0);
  sub_10033D800(&self->state_, Tag);

  sub_10033D2F8(&self->state_, (2 * a4) ^ (a4 >> 63));
}

- (void)writeMessageSetExtension:(int)a3 value:(id)a4
{
  Tag = GPBWireFormatMakeTag(1, 3);
  sub_10033D800(&self->state_, Tag);
  sub_10033DBC8(&self->state_, 2, a3);
  [(GPBCodedOutputStream *)self writeMessage:3 value:a4];
  v8 = GPBWireFormatMakeTag(1, 4);

  sub_10033D800(&self->state_, v8);
}

- (void)writeRawMessageSetExtension:(int)a3 value:(id)a4
{
  Tag = GPBWireFormatMakeTag(1, 3);
  sub_10033D800(&self->state_, Tag);
  sub_10033DBC8(&self->state_, 2, a3);
  [(GPBCodedOutputStream *)self writeBytes:3 value:a4];
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

- (void)writeRawByte:(unsigned __int8)a3
{
  position = self->state_.position;
  if (position == self->state_.size)
  {
    sub_1003400C8(&self->state_.bytes);
    position = self->state_.position;
  }

  bytes = self->state_.bytes;
  self->state_.position = position + 1;
  bytes[position] = a3;
}

- (void)writeRawData:(id)a3
{
  v5 = [a3 bytes];
  v6 = [a3 length];

  [(GPBCodedOutputStream *)self writeRawPtr:v5 offset:0 length:v6];
}

- (void)writeRawPtr:(const void *)a3 offset:(unint64_t)a4 length:(unint64_t)a5
{
  if (a3 && a5)
  {
    size = self->state_.size;
    p_state = &self->state_;
    position = self->state_.position;
    v12 = size - position;
    v13 = &self->state_.bytes[position];
    v14 = (a5 - (size - position));
    if (a5 <= size - position)
    {
      memcpy(v13, a3 + a4, a5);
      self->state_.position += a5;
    }

    else
    {
      memcpy(v13, a3 + a4, size - position);
      v15 = v12 + a4;
      self->state_.position = size;
      sub_1003400C8(p_state);
      if (v14 <= self->state_.size)
      {
        memcpy(self->state_.bytes, a3 + v15, v14);
        self->state_.position = v14;
      }

      else if ([(NSOutputStream *)self->state_.output write:a3 + v15 maxLength:v14]!= v14)
      {

        [NSException raise:@"WriteFailed" format:&stru_100436548];
      }
    }
  }
}

- (void)writeTag:(unsigned int)a3 format:(int)a4
{
  Tag = GPBWireFormatMakeTag(a3, a4);

  sub_10033D800(&self->state_, Tag);
}

@end