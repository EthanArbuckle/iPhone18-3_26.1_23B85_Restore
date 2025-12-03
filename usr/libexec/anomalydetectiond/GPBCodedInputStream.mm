@interface GPBCodedInputStream
+ (id)streamWithData:(id)data;
- (BOOL)skipField:(int)field;
- (GPBCodedInputStream)initWithData:(id)data;
- (double)readDouble;
- (float)readFloat;
- (id)readBytes;
- (id)readString;
- (int)readSFixed32;
- (int64_t)readSFixed64;
- (unint64_t)pushLimit:(unint64_t)limit;
- (unint64_t)readFixed64;
- (unsigned)readFixed32;
- (void)checkLastTagWas:(int)was;
- (void)dealloc;
- (void)readGroup:(int)group message:(id)message extensionRegistry:(id)registry;
- (void)readMapEntry:(id)entry extensionRegistry:(id)registry field:(id)field parentMessage:(id)message;
- (void)readMessage:(id)message extensionRegistry:(id)registry;
- (void)readUnknownGroup:(int)group message:(id)message;
- (void)skipMessage;
@end

@implementation GPBCodedInputStream

+ (id)streamWithData:(id)data
{
  v3 = [[self alloc] initWithData:data];

  return v3;
}

- (GPBCodedInputStream)initWithData:(id)data
{
  v7.receiver = self;
  v7.super_class = GPBCodedInputStream;
  v4 = [(GPBCodedInputStream *)&v7 init];
  if (v4)
  {
    v4->buffer_ = data;
    v4->state_.bytes = [data bytes];
    v5 = [data length];
    v4->state_.bufferSize = v5;
    v4->state_.currentLimit = v5;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GPBCodedInputStream;
  [(GPBCodedInputStream *)&v3 dealloc];
}

- (void)checkLastTagWas:(int)was
{
  if (self->state_.lastTag != was)
  {
    sub_10030AB68(-103, @"Unexpected tag read");
  }
}

- (BOOL)skipField:(int)field
{
  if (!GPBWireFormatIsValidTag(field))
  {
    sub_10030B734(a2, self);
  }

  TagWireType = GPBWireFormatGetTagWireType(field);
  result = 0;
  if (TagWireType <= 1)
  {
    if (!TagWireType)
    {
      GPBCodedInputStreamReadInt64_0(&self->state_);
      return 1;
    }

    if (TagWireType != 1)
    {
      return result;
    }

    sub_10030ACF4(&self->state_.bytes, 8);
    v8 = self->state_.bufferPos + 8;
  }

  else
  {
    switch(TagWireType)
    {
      case 2:
        Int64_0 = GPBCodedInputStreamReadInt64_0(&self->state_);
        sub_10030ACF4(&self->state_.bytes, Int64_0);
        v8 = self->state_.bufferPos + Int64_0;
        break;
      case 3:
        [(GPBCodedInputStream *)self skipMessage];
        TagFieldNumber = GPBWireFormatGetTagFieldNumber(field);
        if (self->state_.lastTag != GPBWireFormatMakeTag(TagFieldNumber, 4))
        {
          sub_10030AB68(-103, @"Unexpected tag read");
        }

        return 1;
      case 5:
        sub_10030ACF4(&self->state_.bytes, 4);
        v8 = self->state_.bufferPos + 4;
        break;
      default:
        return result;
    }
  }

  self->state_.bufferPos = v8;
  return 1;
}

- (void)skipMessage
{
  do
  {
    Tag = GPBCodedInputStreamReadTag(&self->state_);
  }

  while (Tag && [(GPBCodedInputStream *)self skipField:Tag]);
}

- (unint64_t)pushLimit:(unint64_t)limit
{
  currentLimit = self->state_.currentLimit;
  v5 = self->state_.bufferPos + limit;
  if (v5 > currentLimit)
  {
    sub_10030AB68(-102, 0);
  }

  self->state_.currentLimit = v5;
  return currentLimit;
}

- (double)readDouble
{
  sub_10030ACF4(&self->state_.bytes, 8);
  bufferPos = self->state_.bufferPos;
  result = *&self->state_.bytes[bufferPos];
  self->state_.bufferPos = bufferPos + 8;
  return result;
}

- (float)readFloat
{
  sub_10030ACF4(&self->state_.bytes, 4);
  bufferPos = self->state_.bufferPos;
  result = *&self->state_.bytes[bufferPos];
  self->state_.bufferPos = bufferPos + 4;
  return result;
}

- (unint64_t)readFixed64
{
  sub_10030ACF4(&self->state_.bytes, 8);
  bufferPos = self->state_.bufferPos;
  result = *&self->state_.bytes[bufferPos];
  self->state_.bufferPos = bufferPos + 8;
  return result;
}

- (unsigned)readFixed32
{
  sub_10030ACF4(&self->state_.bytes, 4);
  bufferPos = self->state_.bufferPos;
  result = *&self->state_.bytes[bufferPos];
  self->state_.bufferPos = bufferPos + 4;
  return result;
}

- (id)readString
{
  RetainedString = GPBCodedInputStreamReadRetainedString(&self->state_);

  return RetainedString;
}

- (void)readGroup:(int)group message:(id)message extensionRegistry:(id)registry
{
  recursionDepth = self->state_.recursionDepth;
  if (recursionDepth >= 0x64)
  {
    sub_10030AB68(-106, 0);
    recursionDepth = self->state_.recursionDepth;
  }

  self->state_.recursionDepth = recursionDepth + 1;
  [message mergeFromCodedInputStream:self extensionRegistry:registry];
  if (self->state_.lastTag != GPBWireFormatMakeTag(group, 4))
  {
    sub_10030AB68(-103, @"Unexpected tag read");
  }

  --self->state_.recursionDepth;
}

- (void)readUnknownGroup:(int)group message:(id)message
{
  recursionDepth = self->state_.recursionDepth;
  if (recursionDepth >= 0x64)
  {
    sub_10030AB68(-106, 0);
    recursionDepth = self->state_.recursionDepth;
  }

  self->state_.recursionDepth = recursionDepth + 1;
  [message mergeFromCodedInputStream:self];
  if (self->state_.lastTag != GPBWireFormatMakeTag(group, 4))
  {
    sub_10030AB68(-103, @"Unexpected tag read");
  }

  --self->state_.recursionDepth;
}

- (void)readMessage:(id)message extensionRegistry:(id)registry
{
  if (self->state_.recursionDepth >= 0x64)
  {
    sub_10030AB68(-106, 0);
  }

  Int64_0 = GPBCodedInputStreamReadInt64_0(&self->state_);
  currentLimit = self->state_.currentLimit;
  v9 = self->state_.bufferPos + Int64_0;
  if (v9 > currentLimit)
  {
    sub_10030AB68(-102, 0);
  }

  self->state_.currentLimit = v9;
  ++self->state_.recursionDepth;
  [message mergeFromCodedInputStream:self extensionRegistry:registry];
  if (self->state_.lastTag)
  {
    sub_10030AB68(-103, @"Unexpected tag read");
  }

  --self->state_.recursionDepth;
  self->state_.currentLimit = currentLimit;
}

- (void)readMapEntry:(id)entry extensionRegistry:(id)registry field:(id)field parentMessage:(id)message
{
  if (self->state_.recursionDepth >= 0x64)
  {
    sub_10030AB68(-106, 0);
  }

  Int64_0 = GPBCodedInputStreamReadInt64_0(&self->state_);
  currentLimit = self->state_.currentLimit;
  v13 = self->state_.bufferPos + Int64_0;
  if (v13 > currentLimit)
  {
    sub_10030AB68(-102, 0);
  }

  self->state_.currentLimit = v13;
  ++self->state_.recursionDepth;
  GPBDictionaryReadEntry(entry, self, registry, field, message);
  if (self->state_.lastTag)
  {
    sub_10030AB68(-103, @"Unexpected tag read");
  }

  --self->state_.recursionDepth;
  self->state_.currentLimit = currentLimit;
}

- (id)readBytes
{
  RetainedBytes = GPBCodedInputStreamReadRetainedBytes(&self->state_);

  return RetainedBytes;
}

- (int)readSFixed32
{
  sub_10030ACF4(&self->state_.bytes, 4);
  bufferPos = self->state_.bufferPos;
  result = *&self->state_.bytes[bufferPos];
  self->state_.bufferPos = bufferPos + 4;
  return result;
}

- (int64_t)readSFixed64
{
  sub_10030ACF4(&self->state_.bytes, 8);
  bufferPos = self->state_.bufferPos;
  result = *&self->state_.bytes[bufferPos];
  self->state_.bufferPos = bufferPos + 8;
  return result;
}

@end