@interface GQZEntry
- (_xmlDoc)recoverXmlDocument;
- (_xmlDoc)xmlDocument;
- (_xmlTextReader)xmlReader:(BOOL)reader;
- (id)data;
- (id)initFromCentralFileHeader:(const char *)header inputStream:(id)stream;
- (id)inputStream;
- (void)dealloc;
- (void)readZip64ExtraField:(const char *)field size:(unint64_t)size;
@end

@implementation GQZEntry

- (id)initFromCentralFileHeader:(const char *)header inputStream:(id)stream
{
  v6 = [(GQZEntry *)self init];
  if (!v6)
  {
    return v6;
  }

  v6->mInput = stream;
  if (*(header + 2))
  {
    [GQZException raise:@"GQZCentralFileHeaderError" format:@"Encrypted files are not supported"];
  }

  v7 = 0;
  v8 = *(header + 3);
  if (v8 > 0x636A)
  {
    if (v8 != 25451)
    {
      if (v8 != 25452)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

LABEL_11:
    v6->mCompressionMethod = v7;
    goto LABEL_12;
  }

  if (!*(header + 3))
  {
    goto LABEL_11;
  }

  if (v8 == 8)
  {
LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

LABEL_7:
  [GQZException raise:@"GQZCentralFileHeaderError" format:@"Unsupported compression method"];
LABEL_12:
  v6->mCrc = *(header + 3);
  v9 = *(header + 2);
  *&v10 = v9;
  *(&v10 + 1) = HIDWORD(v9);
  *&v6->mCompressedSize = v10;
  if (*(header + 15))
  {
    [GQZException raise:@"GQZCentralFileHeaderError" format:@"No multi-disk support"];
  }

  v6->mOffset = *(header + 38);
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQZEntry;
  [(GQZEntry *)&v3 dealloc];
}

- (id)inputStream
{
  v3 = [(GQZArchiveInputStream *)self->mInput dataAtOffset:self->mOffset size:30 end:self->mOffset + 30 readSize:0];
  if (*v3 != 67324752)
  {
    [GQZException raise:@"GQZEntryError" format:@"Local file header record signature not found"];
  }

  v4 = v3[13] + self->mOffset + v3[14] + 30;
  mCompressionMethod = self->mCompressionMethod;
  if (mCompressionMethod == 1)
  {
    v6 = [[GQZEntryInflateInputStream alloc] initWithOffset:v4 end:self->mCompressedSize + v4 uncompressedSize:self->mUncompressedSize crc:self->mCrc input:self->mInput];
  }

  else
  {
    if (mCompressionMethod)
    {
      return 0;
    }

    v6 = [[GQZEntryUncompressedInputStream alloc] initWithOffset:v4 end:self->mUncompressedSize + v4 input:self->mInput];
  }

  return v6;
}

- (id)data
{
  v3 = [NSMutableData dataWithLength:self->mUncompressedSize];
  if (!v3)
  {
    [GQZException raise:@"GQZEntryError" format:@"Couldn't allocate NSMutableData with size: %qu", self->mUncompressedSize];
  }

  v4 = objc_alloc_init(NSAutoreleasePool);
  if ([-[GQZEntry inputStream](self "inputStream")] != self->mUncompressedSize)
  {
    [GQZException raise:@"GQZEntryError" format:@"Couldn't read data with size: %qu", self->mUncompressedSize];
  }

  return v3;
}

- (_xmlDoc)xmlDocument
{
  v3 = objc_alloc_init(NSAutoreleasePool);
  inputStream = [(GQZEntry *)self inputStream];
  chunk = 0;
  *size = 0;
  [inputStream readToOwnBuffer:&chunk size:size];
  PushParserCtxt = xmlCreatePushParserCtxt(0, 0, chunk, size[0], 0);
  if (!PushParserCtxt)
  {
    [GQZException raise:@"GQZEntryError" format:@"xmlCreatePushParserCtxt() failed"];
  }

  while (1)
  {
    [inputStream readToOwnBuffer:&chunk size:size];
    if (!*size)
    {
      break;
    }

    v6 = xmlParseChunk(PushParserCtxt, chunk, size[0], 0);
    if (v6)
    {
      [GQZException raise:@"GQZEntryError" format:@"xmlParseChunk() failed: %d", v6];
    }
  }

  v7 = xmlParseChunk(PushParserCtxt, chunk, 0, 1);
  if (v7)
  {
    [GQZException raise:@"GQZEntryError" format:@"xmlParseChunk() failed: %d", v7];
  }

  myDoc = PushParserCtxt->myDoc;
  if (!PushParserCtxt->wellFormed)
  {
    [GQZException raise:@"GQZEntryError" format:@"XML document is not well formed."];
  }

  xmlFreeParserCtxt(PushParserCtxt);

  return myDoc;
}

- (_xmlDoc)recoverXmlDocument
{
  inputStream = [(GQZEntry *)self inputStream];

  return xmlReadIO(sub_44744, sub_447B8, inputStream, 0, 0, 97);
}

- (_xmlTextReader)xmlReader:(BOOL)reader
{
  readerCopy = reader;
  inputStream = [(GQZEntry *)self inputStream];
  v5 = inputStream;
  if (!readerCopy)
  {
    v7 = inputStream;
    return xmlReaderForIO(sub_44744, sub_447B8, v5, 0, 0, 0);
  }

  if ([(GQZInflateInputStream *)inputStream readToBuffer:v11 size:10]== 10)
  {
    v6 = v12;
    if ((v12 & 4) != 0)
    {
      v10 = 0;
      if ([(GQZInflateInputStream *)v5 readToBuffer:&v10 size:2]!= &dword_0 + 2)
      {
        return 0;
      }

      if (v10)
      {
        v9 = 0;
        while ([(GQZInflateInputStream *)v5 readToBuffer:v11 size:1]== &dword_0 + 1)
        {
          if (++v9 >= v10)
          {
            goto LABEL_4;
          }
        }

        return 0;
      }
    }

LABEL_4:
    if ((v6 & 8) != 0)
    {
      v11[0] = 1;
      while ([(GQZInflateInputStream *)v5 readToBuffer:v11 size:1]== &dword_0 + 1)
      {
        if (!v11[0])
        {
          goto LABEL_8;
        }
      }

      return 0;
    }

LABEL_8:
    if ((v6 & 0x10) != 0)
    {
      v11[0] = 1;
      while ([(GQZInflateInputStream *)v5 readToBuffer:v11 size:1]== &dword_0 + 1)
      {
        if (!v11[0])
        {
          goto LABEL_12;
        }
      }

      return 0;
    }

LABEL_12:
    if ((v6 & 2) == 0 || [(GQZInflateInputStream *)v5 readToBuffer:v11 size:2]== &dword_0 + 2)
    {
      v5 = [[GQZInflateInputStream alloc] initWithInput:v5];
      return xmlReaderForIO(sub_44744, sub_447B8, v5, 0, 0, 0);
    }
  }

  return 0;
}

- (void)readZip64ExtraField:(const char *)field size:(unint64_t)size
{
  fieldCopy = field;
  if (self->mUncompressedSize == 0xFFFFFFFF)
  {
    fieldCopy = field + 8;
    if (size <= 7)
    {
      [GQZException raise:@"GQZCentralFileHeaderError" format:@"Not enough room for Zip64 uncompressed size"];
    }

    self->mUncompressedSize = *field;
  }

  v8 = &field[size];
  if (self->mCompressedSize == 0xFFFFFFFF)
  {
    if (fieldCopy + 8 > v8)
    {
      [GQZException raise:@"GQZCentralFileHeaderError" format:@"Not enough room for Zip64 compressed size"];
    }

    self->mCompressedSize = *fieldCopy;
    fieldCopy += 8;
  }

  if (self->mOffset == 0xFFFFFFFF)
  {
    if (fieldCopy + 8 > v8)
    {
      [GQZException raise:@"GQZCentralFileHeaderError" format:@"Not enough room for Zip64 offset"];
    }

    self->mOffset = *fieldCopy;
  }
}

@end