@interface NSData(SBKAdditions)
+ (__CFString)SBKStringByMD5HashingString:()SBKAdditions;
+ (id)SBKStringFromDigestData:()SBKAdditions;
- (id)SBKDataByDeflatingWithGZip;
- (id)SBKDataByInflatingWithGZip;
- (id)_SBKDataByDeflatingWithNoZipHeaderWithCompression:()SBKAdditions;
- (id)_SBKDataByInflatingWithNoZipHeader;
@end

@implementation NSData(SBKAdditions)

- (id)SBKDataByDeflatingWithGZip
{
  v0 = ISCopyGzippedDataForData();

  return v0;
}

- (id)SBKDataByInflatingWithGZip
{
  v0 = ISCopyDecompressedGZipDataForData();

  return v0;
}

- (id)_SBKDataByDeflatingWithNoZipHeaderWithCompression:()SBKAdditions
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a1;
  if ([v4 length] >= 0xFFFFFFFF)
  {
    NSLog(&cfstr_ErrorUnableToZ.isa, [v4 length] / 1000000000.0);
    v5 = 0;
    goto LABEL_23;
  }

  v6 = [v4 bytes];
  v7 = [v4 length];
  v8 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:(v7 >> 1) + 1];
  v5 = 0;
  if (v6 && v7)
  {
    memset(&strm, 0, sizeof(strm));
    if (a3 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    strm.avail_out = 0x4000;
    if (a3 == 2)
    {
      v10 = 9;
    }

    else
    {
      v10 = v9;
    }

    strm.next_out = v19;
    if (deflateInit2_(&strm, v10, 8, -15, 9, 0, "1.2.12", 112))
    {
      NSLog(&cfstr_Deflateinit2Fa.isa, strm.msg);
    }

    else
    {
      strm.avail_in = v7;
      strm.next_in = v6;
      do
      {
        if (!strm.avail_out)
        {
          [v8 appendBytes:v19 length:0x4000];
          strm.avail_out = 0x4000;
          strm.next_out = v19;
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
            v14 = deflate(&strm, 4);
            next_out = strm.next_out;
            [v8 appendBytes:v19 length:strm.next_out - v19];
            v16 = next_out > v19 && v14 == -5;
            strm.avail_out = 0x4000;
            strm.next_out = v19;
          }

          while (v16 || v14 == 0);
          strm.avail_out = 0;
          strm.next_out = 0;
          deflateEnd(&strm);
          if (v14 != -5 && v14 != 1)
          {
            NSLog(&cfstr_DeflateFailedS.isa, strm.msg);
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

      NSLog(&cfstr_DeflateFailedS.isa, strm.msg);
    }

    deflateEnd(&strm);
LABEL_21:
    v5 = 0;
  }

LABEL_22:

LABEL_23:
  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_SBKDataByInflatingWithNoZipHeader
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 length] >> 32)
  {
    NSLog(&cfstr_ErrorUnableToZ.isa, [v1 length] / 1000000000.0);
LABEL_3:
    v2 = 0;
    goto LABEL_11;
  }

  memset(&strm.avail_in, 0, 104);
  strm.avail_in = [v1 length];
  strm.next_in = [v1 bytes];
  v2 = 0;
  if (!inflateInit2_(&strm, -15, "1.2.12", 112))
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB28]);
    while (1)
    {
      strm.avail_out = 0x4000;
      strm.next_out = v8;
      v3 = inflate(&strm, 0);
      if (v3 > 1)
      {
        break;
      }

      v4 = v3;
      if (strm.avail_out != 0x4000)
      {
        [v2 appendBytes:v8 length:0x4000 - strm.avail_out];
      }

      if (v4)
      {
        inflateEnd(&strm);
        goto LABEL_11;
      }
    }

    inflateEnd(&strm);

    goto LABEL_3;
  }

LABEL_11:

  v5 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (__CFString)SBKStringByMD5HashingString:()SBKAdditions
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a3;
  memset(v57, 0, sizeof(v57));
  CC_MD5_Init(v57);
  v4 = v3;
  CC_MD5_Update(v57, [v4 UTF8String], objc_msgSend(v4, "length"));

  memset(&v58[8], 0, 64);
  *v58 = 4000;
  CC_MD5_Final(&v58[8], v57);
  v59[0] = *v58;
  v59[1] = *&v58[16];
  v59[2] = *&v58[32];
  v59[3] = *&v58[48];
  v60 = *&v58[64];
  if (*v58 > 3999)
  {
    if (*v58 > 4255)
    {
      if (*v58 == 4256)
      {
        v46 = v59 + 8;
        v47 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v48 = v47;
        for (i = 0; i != 64; i += 2)
        {
          v50 = *v46++;
          v51 = &v47[i];
          *v51 = MSVFastHexStringFromBytes_hexCharacters[v50 >> 4];
          v51[1] = MSVFastHexStringFromBytes_hexCharacters[v50 & 0xF];
        }

        v17 = objc_alloc(MEMORY[0x277CCACA8]);
        v18 = v48;
        v19 = 64;
      }

      else
      {
        if (*v58 != 4512)
        {
          goto LABEL_52;
        }

        v24 = v59 + 8;
        v25 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v26 = v25;
        for (j = 0; j != 128; j += 2)
        {
          v28 = *v24++;
          v29 = &v25[j];
          *v29 = MSVFastHexStringFromBytes_hexCharacters[v28 >> 4];
          v29[1] = MSVFastHexStringFromBytes_hexCharacters[v28 & 0xF];
        }

        v17 = objc_alloc(MEMORY[0x277CCACA8]);
        v18 = v26;
        v19 = 128;
      }
    }

    else if (*v58 == 4000)
    {
      v36 = v59 + 8;
      v37 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v38 = v37;
      for (k = 0; k != 32; k += 2)
      {
        v40 = *v36++;
        v41 = &v37[k];
        *v41 = MSVFastHexStringFromBytes_hexCharacters[v40 >> 4];
        v41[1] = MSVFastHexStringFromBytes_hexCharacters[v40 & 0xF];
      }

      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = v38;
      v19 = 32;
    }

    else
    {
      if (*v58 != 4001)
      {
        goto LABEL_52;
      }

      v11 = v59 + 8;
      v12 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v13 = v12;
      for (m = 0; m != 40; m += 2)
      {
        v15 = *v11++;
        v16 = &v12[m];
        *v16 = MSVFastHexStringFromBytes_hexCharacters[v15 >> 4];
        v16[1] = MSVFastHexStringFromBytes_hexCharacters[v15 & 0xF];
      }

      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = v13;
      v19 = 40;
    }

LABEL_47:
    v35 = [v17 initWithBytesNoCopy:v18 length:v19 encoding:4 freeWhenDone:{1, 4000, *v57}];
    goto LABEL_48;
  }

  if (*v58 > 2999)
  {
    if (*v58 == 3000)
    {
      LODWORD(v61[0]) = bswap32(DWORD2(v59[0]));
      v42 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v43 = 0;
      v44 = v42 + 1;
      do
      {
        v45 = *(v61 + v43);
        *(v44 - 1) = MSVFastHexStringFromBytes_hexCharacters[v45 >> 4];
        *v44 = MSVFastHexStringFromBytes_hexCharacters[v45 & 0xF];
        v44 += 2;
        ++v43;
      }

      while (v43 != 4);
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = v42;
      v19 = 8;
    }

    else
    {
      if (*v58 != 3001)
      {
        goto LABEL_52;
      }

      v61[0] = bswap64(*(&v59[0] + 1));
      v20 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v21 = 0;
      v22 = v20 + 1;
      do
      {
        v23 = *(v61 + v21);
        *(v22 - 1) = MSVFastHexStringFromBytes_hexCharacters[v23 >> 4];
        *v22 = MSVFastHexStringFromBytes_hexCharacters[v23 & 0xF];
        v22 += 2;
        ++v21;
      }

      while (v21 != 8);
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = v20;
      v19 = 16;
    }

    goto LABEL_47;
  }

  if (*v58 == 1000)
  {
    v30 = *(&v59[0] + 1);
    if (*(&v59[0] + 1))
    {
      v31 = &v62 + 1;
      quot = *(&v59[0] + 1);
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

      v9 = (&v62 - v10);
      goto LABEL_37;
    }

    goto LABEL_53;
  }

  if (*v58 != 2000)
  {
LABEL_52:
    v55 = [MEMORY[0x277CCA890] currentHandler];
    v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [v55 handleFailureInFunction:v56 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    v52 = &stru_287C9CB50;
    goto LABEL_49;
  }

  v5 = DWORD2(v59[0]);
  if (DWORD2(v59[0]))
  {
    v6 = &v62;
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
    v9 = (&v62 - v6);
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

  v53 = *MEMORY[0x277D85DE8];

  return v52;
}

+ (id)SBKStringFromDigestData:()SBKAdditions
{
  v3 = a3;
  v4 = [v3 bytes];
  v5 = [v3 length];
  v6 = 2 * v5;
  v7 = malloc_type_calloc(2 * v5, 1uLL, 0x100004077774924uLL);
  if (v5 >= 1)
  {
    v8 = v7 + 1;
    do
    {
      *(v8 - 1) = MSVFastHexStringFromBytes_hexCharacters[*v4 >> 4];
      v9 = *v4++;
      *v8 = MSVFastHexStringFromBytes_hexCharacters[v9 & 0xF];
      v8 += 2;
      --v5;
    }

    while (v5);
  }

  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v7 length:v6 encoding:4 freeWhenDone:1];

  return v10;
}

@end