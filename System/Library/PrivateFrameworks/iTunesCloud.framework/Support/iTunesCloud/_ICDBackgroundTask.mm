@interface _ICDBackgroundTask
+ (id)taskWithType:(int64_t)type configuration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (_ICDBackgroundTask)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ICDBackgroundTask

- (_ICDBackgroundTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"config"];

  v7 = [_ICDBackgroundTask taskWithType:v5 configuration:v6];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[_ICDBackgroundTask type](self forKey:{"type"), @"type"}];
  configuration = [(_ICDBackgroundTask *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"config"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      name = [(_ICDBackgroundTask *)equalCopy name];
      name2 = [(_ICDBackgroundTask *)self name];
      v7 = [name isEqualToString:name2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)taskWithType:(int64_t)type configuration:(id)configuration
{
  configurationCopy = configuration;
  v6 = objc_alloc_init(_ICDBackgroundTask);
  v6->_type = type;
  v7 = [configurationCopy copy];
  configuration = v6->_configuration;
  v6->_configuration = v7;

  userIdentity = [configurationCopy userIdentity];
  accountDSID = [userIdentity accountDSID];
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  memset(&v65, 0, sizeof(v65));
  CC_SHA1_Init(&v65);
  v11 = accountDSID;
  CC_SHA1_Update(&v65, [v11 UTF8String], objc_msgSend(v11, "length"));

  memset(&v73[8], 0, 64);
  *v73 = 4001;
  CC_SHA1_Final(&v73[8], &v65);
  v74[0] = *v73;
  v74[1] = *&v73[16];
  v74[2] = *&v73[32];
  v74[3] = *&v73[48];
  v75 = *&v73[64];
  if (*v73 > 3999)
  {
    if (*v73 > 4255)
    {
      if (*v73 == 4256)
      {
        v53 = v74 + 8;
        v54 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v55 = v54;
        for (i = 0; i != 64; i += 2)
        {
          v57 = *v53++;
          v58 = &v54[i];
          *v58 = a0123456789abcd[v57 >> 4];
          v58[1] = a0123456789abcd[v57 & 0xF];
        }

        v23 = [NSString alloc];
        v24 = v55;
        v25 = 64;
      }

      else
      {
        if (*v73 != 4512)
        {
          goto LABEL_53;
        }

        v30 = v74 + 8;
        v31 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v32 = v31;
        for (j = 0; j != 128; j += 2)
        {
          v34 = *v30++;
          v35 = &v31[j];
          *v35 = a0123456789abcd[v34 >> 4];
          v35[1] = a0123456789abcd[v34 & 0xF];
        }

        v23 = [NSString alloc];
        v24 = v32;
        v25 = 128;
      }
    }

    else if (*v73 == 4000)
    {
      v43 = v74 + 8;
      v44 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v45 = v44;
      for (k = 0; k != 32; k += 2)
      {
        v47 = *v43++;
        v48 = &v44[k];
        *v48 = a0123456789abcd[v47 >> 4];
        v48[1] = a0123456789abcd[v47 & 0xF];
      }

      v23 = [NSString alloc];
      v24 = v45;
      v25 = 32;
    }

    else
    {
      if (*v73 != 4001)
      {
        goto LABEL_53;
      }

      v17 = v74 + 8;
      v18 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v19 = v18;
      for (m = 0; m != 40; m += 2)
      {
        v21 = *v17++;
        v22 = &v18[m];
        *v22 = a0123456789abcd[v21 >> 4];
        v22[1] = a0123456789abcd[v21 & 0xF];
      }

      v23 = [NSString alloc];
      v24 = v19;
      v25 = 40;
    }

LABEL_46:
    v16 = [v23 initWithBytesNoCopy:v24 length:v25 encoding:4 freeWhenDone:1];
LABEL_47:
    v42 = v16;
    goto LABEL_48;
  }

  if (*v73 > 2999)
  {
    if (*v73 == 3000)
    {
      LODWORD(v76[0]) = bswap32(DWORD2(v74[0]));
      v49 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v50 = 0;
      v51 = v49 + 1;
      do
      {
        v52 = *(v76 + v50);
        *(v51 - 1) = a0123456789abcd[v52 >> 4];
        *v51 = a0123456789abcd[v52 & 0xF];
        v51 += 2;
        ++v50;
      }

      while (v50 != 4);
      v23 = [NSString alloc];
      v24 = v49;
      v25 = 8;
    }

    else
    {
      if (*v73 != 3001)
      {
        goto LABEL_53;
      }

      v76[0] = bswap64(*(&v74[0] + 1));
      v26 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v27 = 0;
      v28 = v26 + 1;
      do
      {
        v29 = *(v76 + v27);
        *(v28 - 1) = a0123456789abcd[v29 >> 4];
        *v28 = a0123456789abcd[v29 & 0xF];
        v28 += 2;
        ++v27;
      }

      while (v27 != 8);
      v23 = [NSString alloc];
      v24 = v26;
      v25 = 16;
    }

    goto LABEL_46;
  }

  if (*v73 != 1000)
  {
    if (*v73 == 2000)
    {
      quot = DWORD2(v74[0]);
      if (DWORD2(v74[0]))
      {
        v13 = v77;
        do
        {
          v14 = ldiv(quot, 10);
          quot = v14.quot;
          if (v14.rem >= 0)
          {
            LOBYTE(v15) = v14.rem;
          }

          else
          {
            v15 = -v14.rem;
          }

          *--v13 = v15 + 48;
        }

        while (v14.quot);
        v16 = CFStringCreateWithBytes(0, v13, v77 - v13, 0x8000100u, 0);
        goto LABEL_47;
      }

      goto LABEL_54;
    }

LABEL_53:
    v63 = +[NSAssertionHandler currentHandler];
    v64 = [NSString stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
    [v63 handleFailureInFunction:v64 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

    v42 = &stru_1001E0388;
    goto LABEL_48;
  }

  v36 = *(&v74[0] + 1);
  if (!*(&v74[0] + 1))
  {
LABEL_54:
    v42 = @"0";
    goto LABEL_48;
  }

  v37 = v77 + 1;
  v38 = *(&v74[0] + 1);
  do
  {
    v39 = lldiv(v38, 10);
    v38 = v39.quot;
    if (v39.rem >= 0)
    {
      LOBYTE(v40) = v39.rem;
    }

    else
    {
      v40 = -v39.rem;
    }

    *(v37 - 2) = v40 + 48;
    v41 = (v37 - 2);
    --v37;
  }

  while (v39.quot);
  if (v36 < 0)
  {
    *(v37 - 2) = 45;
    v41 = (v37 - 2);
  }

  v42 = CFStringCreateWithBytes(0, v41, v77 - v41, 0x8000100u, 0);
LABEL_48:

  v59 = @"com.apple.itunescloudd.deferredPushUpdate.jalisco";
  if (!type)
  {
    v59 = @"com.apple.itunescloudd.deferredPushUpdate.saga";
  }

  v60 = [NSString stringWithFormat:@"%@.%@", v59, v42];
  name = v6->_name;
  v6->_name = v60;

  return v6;
}

@end