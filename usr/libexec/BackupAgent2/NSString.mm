@interface NSString
- (id)_mb_openatWithMode:(unsigned __int16)a3 setupDir:(id)a4 itemAccessor:(id)a5;
- (void)mb_splitIntoBase:(int *)a3 andRelativePath:(const char *)a4;
@end

@implementation NSString

- (void)mb_splitIntoBase:(int *)a3 andRelativePath:(const char *)a4
{
  v6 = [(NSString *)self fileSystemRepresentation];
  if (strlen(v6) < 0x400)
  {
    goto LABEL_8;
  }

  v7 = v6 + 1023;
  while (*v7 != 47)
  {
    if (--v7 <= v6)
    {
      if (*v7 != 47)
      {
        goto LABEL_8;
      }

      break;
    }
  }

  v8 = malloc_type_malloc(v7 - v6 + 1, 0x2F21F65DuLL);
  memcpy(v8, v6, v7 - v6);
  *(v8 + v7 - v6) = 0;
  *a3 = open(v8, 0);
  free(v8);
  if (*a3 == -1)
  {
LABEL_8:
    *a3 = -2;
  }

  else
  {
    v6 = v7 + 1;
  }

  *a4 = v6;
}

- (id)_mb_openatWithMode:(unsigned __int16)a3 setupDir:(id)a4 itemAccessor:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16 = -1;
  v15 = 0;
  [(NSString *)self mb_splitIntoBase:&v16 andRelativePath:&v15];
  if (!v8 || (v8[2](v8, v16, v15), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (!v9)
    {
      v10 = 0;
      goto LABEL_15;
    }

    if ((a3 & 0xF000) == 0x8000)
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
      if ((a3 & 0xF000) == 0x4000)
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

    v10 = v9[2](v9, v11);
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