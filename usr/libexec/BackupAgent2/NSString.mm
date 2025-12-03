@interface NSString
- (id)_mb_openatWithMode:(unsigned __int16)mode setupDir:(id)dir itemAccessor:(id)accessor;
- (void)mb_splitIntoBase:(int *)base andRelativePath:(const char *)path;
@end

@implementation NSString

- (void)mb_splitIntoBase:(int *)base andRelativePath:(const char *)path
{
  fileSystemRepresentation = [(NSString *)self fileSystemRepresentation];
  if (strlen(fileSystemRepresentation) < 0x400)
  {
    goto LABEL_8;
  }

  v7 = fileSystemRepresentation + 1023;
  while (*v7 != 47)
  {
    if (--v7 <= fileSystemRepresentation)
    {
      if (*v7 != 47)
      {
        goto LABEL_8;
      }

      break;
    }
  }

  v8 = malloc_type_malloc(v7 - fileSystemRepresentation + 1, 0x2F21F65DuLL);
  memcpy(v8, fileSystemRepresentation, v7 - fileSystemRepresentation);
  *(v8 + v7 - fileSystemRepresentation) = 0;
  *base = open(v8, 0);
  free(v8);
  if (*base == -1)
  {
LABEL_8:
    *base = -2;
  }

  else
  {
    fileSystemRepresentation = v7 + 1;
  }

  *path = fileSystemRepresentation;
}

- (id)_mb_openatWithMode:(unsigned __int16)mode setupDir:(id)dir itemAccessor:(id)accessor
{
  dirCopy = dir;
  accessorCopy = accessor;
  v16 = -1;
  v15 = 0;
  [(NSString *)self mb_splitIntoBase:&v16 andRelativePath:&v15];
  if (!dirCopy || (dirCopy[2](dirCopy, v16, v15), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (!accessorCopy)
    {
      v10 = 0;
      goto LABEL_15;
    }

    if ((mode & 0xF000) == 0x8000)
    {
      v11 = openat_dprotected_np(v16, v15, 256, 0, 1, 0);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = @"openat_dprotected_np() error";
LABEL_14:
        v10 = [MBError posixErrorWithCode:102 path:self format:v12];
        goto LABEL_15;
      }
    }

    else
    {
      if ((mode & 0xF000) == 0x4000)
      {
        v13 = openat(v16, v15, 0x100000);
      }

      else
      {
        v13 = openat(v16, v15, 0x200000);
      }

      v11 = v13;
      if ((v13 & 0x80000000) != 0)
      {
        v12 = @"openat() error";
        goto LABEL_14;
      }
    }

    v10 = accessorCopy[2](accessorCopy, v11);
    close(v11);
  }

LABEL_15:
  if ((v16 & 0x80000000) == 0)
  {
    close(v16);
  }

  return v10;
}

@end