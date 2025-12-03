@interface NSData
+ (id)mappedDataWithContentsOfTemporaryFileURL:(id)l error:(id *)error;
+ (id)stringByMD5HashingString:(id)string;
+ (id)stringFromDigestData:(id)data;
- (id)_dataByDeflatingWithNoZipHeaderWithCompression:(unint64_t)compression;
- (id)_dataByInflatingWithNoZipHeader;
@end

@implementation NSData

- (id)_dataByDeflatingWithNoZipHeaderWithCompression:(unint64_t)compression
{
  selfCopy = self;
  if ([(NSData *)selfCopy length]>= 0xFFFFFFFF)
  {
    NSLog(@"ERROR: unable to zip large data of size ~%.3f GB", [(NSData *)selfCopy length]/ 1000000000.0);
    v5 = 0;
    goto LABEL_23;
  }

  bytes = [(NSData *)selfCopy bytes];
  v7 = [(NSData *)selfCopy length];
  v8 = [[NSMutableData alloc] initWithCapacity:(v7 >> 1) + 1];
  v5 = 0;
  if (bytes && v7)
  {
    memset(&strm, 0, sizeof(strm));
    if (compression == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    strm.avail_out = 0x4000;
    if (compression == 2)
    {
      v10 = 9;
    }

    else
    {
      v10 = v9;
    }

    strm.next_out = v18;
    if (deflateInit2_(&strm, v10, 8, -15, 9, 0, "1.2.12", 112))
    {
      NSLog(@"deflateInit2() failed: %s", strm.msg);
    }

    else
    {
      strm.avail_in = v7;
      strm.next_in = bytes;
      do
      {
        if (!strm.avail_out)
        {
          [v8 appendBytes:v18 length:0x4000];
          strm.avail_out = 0x4000;
          strm.next_out = v18;
        }

        v11 = deflate(&strm, 0);
      }

      while (!v11 && strm.avail_in);
      if (!v11)
      {
        if (strm.next_out)
        {
          do
          {
            v13 = deflate(&strm, 4);
            next_out = strm.next_out;
            [v8 appendBytes:v18 length:strm.next_out - v18];
            v15 = next_out > v18 && v13 == -5;
            strm.avail_out = 0x4000;
            strm.next_out = v18;
          }

          while (v15 || v13 == 0);
          strm.avail_out = 0;
          strm.next_out = 0;
          deflateEnd(&strm);
          if (v13 != -5 && v13 != 1)
          {
            NSLog(@"deflate() failed: %s", strm.msg);
            goto LABEL_21;
          }
        }

        else
        {
          deflateEnd(&strm);
        }

        v5 = v8;
        goto LABEL_22;
      }

      NSLog(@"deflate() failed: %s", strm.msg);
    }

    deflateEnd(&strm);
LABEL_21:
    v5 = 0;
  }

LABEL_22:

LABEL_23:

  return v5;
}

- (id)_dataByInflatingWithNoZipHeader
{
  selfCopy = self;
  if ([(NSData *)selfCopy length]>> 32)
  {
    NSLog(@"ERROR: unable to zip large data of size ~%.3f GB", [(NSData *)selfCopy length]/ 1000000000.0);
LABEL_3:
    v3 = 0;
    goto LABEL_11;
  }

  memset(&strm.avail_in, 0, 104);
  strm.avail_in = [(NSData *)selfCopy length];
  strm.next_in = [(NSData *)selfCopy bytes];
  v3 = 0;
  if (!inflateInit2_(&strm, -15, "1.2.12", 112))
  {
    v3 = objc_alloc_init(NSMutableData);
    while (1)
    {
      strm.avail_out = 0x4000;
      strm.next_out = v8;
      v4 = inflate(&strm, 0);
      if (v4 > 1)
      {
        break;
      }

      v5 = v4;
      if (strm.avail_out != 0x4000)
      {
        [v3 appendBytes:v8 length:0x4000 - strm.avail_out];
      }

      if (v5)
      {
        inflateEnd(&strm);
        goto LABEL_11;
      }
    }

    inflateEnd(&strm);

    goto LABEL_3;
  }

LABEL_11:

  return v3;
}

+ (id)stringByMD5HashingString:(id)string
{
  stringCopy = string;
  memset(v56, 0, sizeof(v56));
  CC_MD5_Init(v56);
  v4 = stringCopy;
  CC_MD5_Update(v56, [v4 UTF8String], objc_msgSend(v4, "length"));

  memset(&v57[8], 0, 64);
  *v57 = 4000;
  CC_MD5_Final(&v57[8], v56);
  v58[0] = *v57;
  v58[1] = *&v57[16];
  v58[2] = *&v57[32];
  v58[3] = *&v57[48];
  v59 = *&v57[64];
  if (*v57 > 3999)
  {
    if (*v57 > 4255)
    {
      if (*v57 == 4256)
      {
        v46 = v58 + 8;
        v47 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v48 = v47;
        for (i = 0; i != 64; i += 2)
        {
          v50 = *v46++;
          v51 = &v47[i];
          *v51 = a0123456789abcd[v50 >> 4];
          v51[1] = a0123456789abcd[v50 & 0xF];
        }

        v17 = [NSString alloc];
        v18 = v48;
        v19 = 64;
      }

      else
      {
        if (*v57 != 4512)
        {
          goto LABEL_52;
        }

        v24 = v58 + 8;
        v25 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v26 = v25;
        for (j = 0; j != 128; j += 2)
        {
          v28 = *v24++;
          v29 = &v25[j];
          *v29 = a0123456789abcd[v28 >> 4];
          v29[1] = a0123456789abcd[v28 & 0xF];
        }

        v17 = [NSString alloc];
        v18 = v26;
        v19 = 128;
      }
    }

    else if (*v57 == 4000)
    {
      v36 = v58 + 8;
      v37 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v38 = v37;
      for (k = 0; k != 32; k += 2)
      {
        v40 = *v36++;
        v41 = &v37[k];
        *v41 = a0123456789abcd[v40 >> 4];
        v41[1] = a0123456789abcd[v40 & 0xF];
      }

      v17 = [NSString alloc];
      v18 = v38;
      v19 = 32;
    }

    else
    {
      if (*v57 != 4001)
      {
        goto LABEL_52;
      }

      v11 = v58 + 8;
      v12 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v13 = v12;
      for (m = 0; m != 40; m += 2)
      {
        v15 = *v11++;
        v16 = &v12[m];
        *v16 = a0123456789abcd[v15 >> 4];
        v16[1] = a0123456789abcd[v15 & 0xF];
      }

      v17 = [NSString alloc];
      v18 = v13;
      v19 = 40;
    }

LABEL_47:
    v35 = [v17 initWithBytesNoCopy:v18 length:v19 encoding:4 freeWhenDone:{1, 4000, *v56}];
    goto LABEL_48;
  }

  if (*v57 > 2999)
  {
    if (*v57 == 3000)
    {
      LODWORD(v60[0]) = bswap32(DWORD2(v58[0]));
      v42 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v43 = 0;
      v44 = v42 + 1;
      do
      {
        v45 = *(v60 + v43);
        *(v44 - 1) = a0123456789abcd[v45 >> 4];
        *v44 = a0123456789abcd[v45 & 0xF];
        v44 += 2;
        ++v43;
      }

      while (v43 != 4);
      v17 = [NSString alloc];
      v18 = v42;
      v19 = 8;
    }

    else
    {
      if (*v57 != 3001)
      {
        goto LABEL_52;
      }

      v60[0] = bswap64(*(&v58[0] + 1));
      v20 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v21 = 0;
      v22 = v20 + 1;
      do
      {
        v23 = *(v60 + v21);
        *(v22 - 1) = a0123456789abcd[v23 >> 4];
        *v22 = a0123456789abcd[v23 & 0xF];
        v22 += 2;
        ++v21;
      }

      while (v21 != 8);
      v17 = [NSString alloc];
      v18 = v20;
      v19 = 16;
    }

    goto LABEL_47;
  }

  if (*v57 == 1000)
  {
    v30 = *(&v58[0] + 1);
    if (*(&v58[0] + 1))
    {
      v31 = &v61 + 1;
      quot = *(&v58[0] + 1);
      do
      {
        v33 = lldiv(quot, 10);
        quot = v33.quot;
        if (v33.rem >= 0)
        {
          LOBYTE(v34) = v33.rem;
        }

        else
        {
          v34 = -v33.rem;
        }

        *(v31 - 2) = v34 + 48;
        v10 = (v31 - 2);
        --v31;
      }

      while (v33.quot);
      if (v30 < 0)
      {
        *(v31 - 2) = 45;
        v10 = (v31 - 2);
      }

      v9 = (&v61 - v10);
      goto LABEL_37;
    }

    goto LABEL_53;
  }

  if (*v57 != 2000)
  {
LABEL_52:
    v54 = [NSAssertionHandler currentHandler:4000];
    v55 = [NSString stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [v54 handleFailureInFunction:v55 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    v52 = &stru_1001E0388;
    goto LABEL_49;
  }

  v5 = DWORD2(v58[0]);
  if (DWORD2(v58[0]))
  {
    v6 = &v61;
    do
    {
      v7 = ldiv(v5, 10);
      v5 = v7.quot;
      if (v7.rem >= 0)
      {
        LOBYTE(v8) = v7.rem;
      }

      else
      {
        v8 = -v7.rem;
      }

      *(v6 - 1) = v8 + 48;
      v6 = (v6 - 1);
    }

    while (v7.quot);
    v9 = (&v61 - v6);
    v10 = v6;
LABEL_37:
    v35 = CFStringCreateWithBytes(0, v10, v9, 0x8000100u, 0);
LABEL_48:
    v52 = v35;
    goto LABEL_49;
  }

LABEL_53:
  v52 = @"0";
LABEL_49:

  return v52;
}

+ (id)stringFromDigestData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v5 = [dataCopy length];
  v6 = 2 * v5;
  v7 = malloc_type_calloc(2 * v5, 1uLL, 0x100004077774924uLL);
  if (v5 >= 1)
  {
    v8 = v7 + 1;
    do
    {
      *(v8 - 1) = a0123456789abcd[*bytes >> 4];
      v9 = *bytes++;
      *v8 = a0123456789abcd[v9 & 0xF];
      v8 += 2;
      --v5;
    }

    while (v5);
  }

  v10 = [[NSString alloc] initWithBytesNoCopy:v7 length:v6 encoding:4 freeWhenDone:1];

  return v10;
}

+ (id)mappedDataWithContentsOfTemporaryFileURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = [NSData dataWithContentsOfURL:lCopy options:1 error:error];
  v7 = [[ICDDeleteOnDeallocTemporaryFile alloc] initWithTemporaryFileURL:lCopy];

  if (v7)
  {
    objc_setAssociatedObject(v6, @"_NSDataCloudAdditionsTemporaryFileKey", v7, 1);
  }

  return v6;
}

@end