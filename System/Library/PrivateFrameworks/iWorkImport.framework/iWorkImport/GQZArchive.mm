@interface GQZArchive
- (GQZArchive)initWithData:(id)a3 collapseCommonRootDirectory:(BOOL)a4;
- (GQZArchive)initWithPath:(id)a3 collapseCommonRootDirectory:(BOOL)a4;
- (GQZEndOfCentralDirectory)readEndOfCentralDirectory;
- (GQZEndOfCentralDirectory)readZip64EndOfCentralDirectoryFromOffset:(SEL)a3;
- (GQZEndOfCentralDirectory)readZip64EndOfCentralDirectoryWithEocdOffset:(SEL)a3;
- (const)searchForEndOfCentralDirectoryOffset:(int64_t *)a3;
- (id)readFilenameFromBuffer:(const char *)a3 size:(unint64_t)a4;
- (void)collapseCommonRootDirectory;
- (void)dealloc;
- (void)readEntries;
- (void)readExtraFieldFromBuffer:(const char *)a3 size:(unint64_t)a4 entry:(id)a5;
@end

@implementation GQZArchive

- (GQZArchive)initWithPath:(id)a3 collapseCommonRootDirectory:(BOOL)a4
{
  v4 = a4;
  v6 = [(GQZArchive *)self init];
  if (v6)
  {
    v6->mFilename = [a3 lastPathComponent];
    v6->mEntries = objc_alloc_init(NSMutableDictionary);
    v6->mInput = [[GQZArchiveFileInputStream alloc] initWithPath:a3];
    [(GQZArchive *)v6 readEntries];
    if (v4)
    {
      [(GQZArchive *)v6 collapseCommonRootDirectory];
    }
  }

  return v6;
}

- (GQZArchive)initWithData:(id)a3 collapseCommonRootDirectory:(BOOL)a4
{
  v4 = a4;
  v6 = [(GQZArchive *)self init];
  if (v6)
  {
    v6->mEntries = objc_alloc_init(NSMutableDictionary);
    v6->mInput = [[GQZArchiveMemoryInputStream alloc] initWithData:a3];
    [(GQZArchive *)v6 readEntries];
    if (v4)
    {
      [(GQZArchive *)v6 collapseCommonRootDirectory];
    }
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQZArchive;
  [(GQZArchive *)&v3 dealloc];
}

- (void)readEntries
{
  if (self)
  {
    [(GQZArchive *)self readEndOfCentralDirectory];
  }
}

- (void)collapseCommonRootDirectory
{
  v3 = objc_alloc_init(NSAutoreleasePool);
  v4 = [(GQZArchive *)self entryNames];
  v5 = [v4 count];
  v6 = v5;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = [objc_msgSend(v4 objectAtIndex:{v7), "pathComponents"}];
      if ([v9 count] < 2)
      {
        break;
      }

      v10 = [v9 objectAtIndex:0];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      if (([v10 isEqualToString:@"__MACOSX"] & 1) == 0)
      {
        if (v8)
        {
          if (![v11 isEqualToString:v8])
          {
            break;
          }
        }

        else
        {
          v8 = v11;
        }
      }

      if (v6 == ++v7)
      {
        goto LABEL_13;
      }
    }
  }

  v8 = 0;
LABEL_13:
  v12 = v8;

  v13 = objc_alloc_init(NSAutoreleasePool);
  if (v8)
  {
    v22 = v13;
    v14 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSMutableDictionary count](self->mEntries, "count")}];
    v15 = [v8 length];
    v16 = [(GQZArchive *)self entryNames];
    v17 = [v16 count];
    v18 = v17;
    if (v17)
    {
      v19 = 0;
      v20 = (v15 + 1);
      do
      {
        v21 = [v16 objectAtIndex:v19];
        if ([v21 length] != v20 && (objc_msgSend(v21, "hasPrefix:", @"__MACOSX") & 1) == 0)
        {
          -[NSMutableDictionary setObject:forKey:](v14, "setObject:forKey:", -[NSMutableDictionary objectForKey:](self->mEntries, "objectForKey:", v21), [v21 substringFromIndex:v20]);
        }

        ++v19;
      }

      while (v18 != v19);
    }

    self->mEntries = v14;
    v13 = v22;
  }
}

- (GQZEndOfCentralDirectory)readEndOfCentralDirectory
{
  v14 = [(GQZArchiveInputStream *)self->mInput size]- 22;
  result = [GQZArchiveInputStream dataAtOffset:"dataAtOffset:size:end:readSize:" size:? end:? readSize:?];
  v6 = (&result->var0 + 4);
  if (LODWORD(result->var0) != 101010256)
  {
    result = [(GQZArchive *)self searchForEndOfCentralDirectoryOffset:&v14];
    v6 = result;
  }

  if (LOWORD(v6->var0) | WORD1(v6->var0))
  {
    result = [GQZException raise:@"GQZEndOfCentralDirectoryError" format:@"No multi-disk support"];
  }

  var0_high = HIWORD(v6->var0);
  var1_low = LODWORD(v6->var1);
  var1_high = HIDWORD(v6->var1);
  retstr->var0 = var0_high;
  retstr->var1 = var1_low;
  retstr->var2 = var1_high;
  if (var0_high == 0xFFFF || var1_low == -1 || var1_high == -1)
  {
    v12 = 0uLL;
    v13 = 0;
    result = [(GQZArchive *)self readZip64EndOfCentralDirectoryWithEocdOffset:v14];
    if (*(&v12 + 1))
    {
      *&retstr->var0 = v12;
      retstr->var2 = v13;
    }
  }

  return result;
}

- (const)searchForEndOfCentralDirectoryOffset:(int64_t *)a3
{
  v5 = [(GQZArchiveInputStream *)self->mInput size];
  if (v5 >= 65557)
  {
    v6 = 65557;
  }

  else
  {
    v6 = v5;
  }

  v7 = &v5[-v6];
  v8 = [(GQZArchiveInputStream *)self->mInput dataAtOffset:&v5[-v6] size:v6 end:v5 readSize:0];
  v9 = v6 & 0x3FF | 0x400;
  if (v9 >= v6)
  {
    v9 = v6;
  }

  v10 = &v8[v6 - v9];
  if (v10 < v8)
  {
LABEL_7:
    [GQZException raise:@"GQZEndOfCentralDirectoryError" format:@"Could not find the end of central directory record"];
    return 0;
  }

  v12 = v8;
  v13 = v9 - 21;
  while (v13 < 1)
  {
LABEL_18:
    v10 -= 1024;
    v13 = 1024;
    if (v10 < v12)
    {
      goto LABEL_7;
    }
  }

  v14 = &v10[v13];
  v15 = v10;
  while (1)
  {
    v16 = memchr(v15, 80, v14 - v15);
    v17 = v14;
    if (v16)
    {
      if (*(v16 + 1) != 75 || *(v16 + 2) != 5)
      {
        v17 = v16;
        goto LABEL_17;
      }

      v17 = v16;
      if (*(v16 + 3) == 6)
      {
        break;
      }
    }

LABEL_17:
    v15 = v17 + 4;
    if ((v17 + 4) >= v14)
    {
      goto LABEL_18;
    }
  }

  v11 = v16 + 4;
  if (a3)
  {
    *a3 = &v7[v16] - v12;
  }

  return v11;
}

- (GQZEndOfCentralDirectory)readZip64EndOfCentralDirectoryWithEocdOffset:(SEL)a3
{
  if (a4 <= 19)
  {
    [GQZException raise:@"GQZEndOfCentralDirectoryError" format:@"File isn't long enough for Zip64 locator"];
  }

  v6 = [(GQZArchiveInputStream *)self->mInput dataAtOffset:a4 - 20 size:20 end:0 readSize:0];
  if (*v6 != 117853008)
  {
    [GQZException raise:@"GQZEndOfCentralDirectoryError" format:@"Zip64 end of central directory locator record signature not found"];
  }

  if (v6[1])
  {
    [GQZException raise:@"GQZEndOfCentralDirectoryError" format:@"No multi-disk support"];
  }

  v7 = *(v6 + 1);
  if (v6[4] != 1)
  {
    [GQZException raise:@"GQZEndOfCentralDirectoryError" format:@"No multi-disk support"];
  }

  return [(GQZArchive *)self readZip64EndOfCentralDirectoryFromOffset:v7];
}

- (GQZEndOfCentralDirectory)readZip64EndOfCentralDirectoryFromOffset:(SEL)a3
{
  result = [(GQZArchiveInputStream *)self->mInput dataAtOffset:a4 size:56 end:0 readSize:0];
  v6 = result;
  if (LODWORD(result->var0) != 101075792)
  {
    result = [GQZException raise:@"GQZEndOfCentralDirectoryError" format:@"Zip64 end of central directory record signature not found"];
  }

  if (LODWORD(v6->var2))
  {
    result = [GQZException raise:@"GQZEndOfCentralDirectoryError" format:@"No multi-disk support"];
  }

  if (HIDWORD(v6->var2))
  {
    result = [GQZException raise:@"GQZEndOfCentralDirectoryError" format:@"No multi-disk support"];
  }

  *&retstr->var0 = *&v6[1].var1;
  retstr->var2 = v6[2].var0;
  return result;
}

- (id)readFilenameFromBuffer:(const char *)a3 size:(unint64_t)a4
{
  result = [[NSString alloc] initWithBytes:a3 length:a4 encoding:4];
  if (!result)
  {
    SystemEncoding = CFStringGetSystemEncoding();
    result = [[NSString alloc] initWithBytes:a3 length:a4 encoding:CFStringConvertEncodingToNSStringEncoding(SystemEncoding)];
    if (!result)
    {
      [GQZException raise:@"GQZFilenameError" format:@"Could not read filename."];
      return 0;
    }
  }

  return result;
}

- (void)readExtraFieldFromBuffer:(const char *)a3 size:(unint64_t)a4 entry:(id)a5
{
  if (a4 >= 4)
  {
    v6 = a3;
    v8 = &a3[a4];
    do
    {
      v9 = *(v6 + 1);
      v10 = v6 + 4;
      v11 = &v6[v9 + 4];
      if (v11 > v8)
      {
        break;
      }

      v12 = *v6;
      if (v12 == 25453)
      {
        if (v9 >= 4 && !self->mIsEncrypted && *v10 == 1987082089)
        {
          self->mIsEncrypted = 1;
        }
      }

      else if (v12 == 1)
      {
        [a5 readZip64ExtraField:? size:?];
      }

      v6 = v11;
    }

    while (v11 + 4 <= v8);
  }
}

@end