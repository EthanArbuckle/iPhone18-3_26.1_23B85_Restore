@interface GQUFileOutputBundle
- (BOOL)setData:(__CFData *)a3 mimeType:(__CFString *)a4 forNamedResource:(__CFString *)a5;
- (GQUFileOutputBundle)initWithOutputPath:(__CFString *)a3;
- (void)dealloc;
@end

@implementation GQUFileOutputBundle

- (GQUFileOutputBundle)initWithOutputPath:(__CFString *)a3
{
  if (a3)
  {
    v8.receiver = self;
    v8.super_class = GQUFileOutputBundle;
    v4 = [(GQUFileOutputBundle *)&v8 init];
    if (v4)
    {
      v4->mOutputUrl = CFURLCreateWithFileSystemPath(0, a3, kCFURLPOSIXPathStyle, 1u);
      MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(a3);
      v6 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation + 1, 0x100004077774924uLL);
      CFStringGetFileSystemRepresentation(a3, v6, MaximumSizeOfFileSystemRepresentation);
      mkdir(v6, 0x1E4u);
      free(v6);
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  mOutputUrl = self->mOutputUrl;
  if (mOutputUrl)
  {
    CFRelease(mOutputUrl);
  }

  v4.receiver = self;
  v4.super_class = GQUFileOutputBundle;
  [(GQUFileOutputBundle *)&v4 dealloc];
}

- (BOOL)setData:(__CFData *)a3 mimeType:(__CFString *)a4 forNamedResource:(__CFString *)a5
{
  v6 = CFURLCreateCopyAppendingPathComponent(0, self->mOutputUrl, a5, 0);
  v7 = CFURLCopyFileSystemPath(v6, kCFURLPOSIXPathStyle);
  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v7);
  v9 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation + 1, 0x100004077774924uLL);
  CFStringGetFileSystemRepresentation(v7, v9, MaximumSizeOfFileSystemRepresentation);
  CFRelease(v7);
  Length = CFDataGetLength(a3);
  if (Length)
  {
    BytePtr = CFDataGetBytePtr(a3);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    BytePtr = 0;
    if (v9)
    {
LABEL_3:
      if (stat(v9, &v17))
      {
        v12 = *__error();
        if (v12 != 2)
        {
          goto LABEL_17;
        }
      }

      v13 = open(v9, 1537, 438);
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v12 = *__error();
      if (v12 != 13)
      {
        goto LABEL_17;
      }

      if ((~v17.st_mode & 0x180) == 0)
      {
        v12 = 13;
        goto LABEL_17;
      }

      if (!chmod(v9, v17.st_mode | 0x180))
      {
        v13 = open(v9, 1537, 438);
        if ((v13 & 0x80000000) == 0)
        {
LABEL_6:
          v14 = v13;
          if (Length && write(v13, BytePtr, Length) != Length)
          {
            v12 = *__error();
            close(v14);
            goto LABEL_17;
          }

          fsync(v14);
          if (!close(v14))
          {
            v12 = 0;
            goto LABEL_17;
          }
        }
      }

      v12 = *__error();
LABEL_17:
      v15 = v12 == 0;
      goto LABEL_18;
    }
  }

  v15 = 0;
LABEL_18:
  free(v9);
  CFRelease(v6);
  return v15;
}

@end