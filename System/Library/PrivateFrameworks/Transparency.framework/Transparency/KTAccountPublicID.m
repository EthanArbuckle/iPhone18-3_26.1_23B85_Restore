@interface KTAccountPublicID
+ (KTAccountPublicID)ktAccountPublicIDWithPKIString:(id)a3 error:(id *)a4;
+ (KTAccountPublicID)ktAccountPublicIDWithPublicKeyInfo:(id)a3 error:(id *)a4;
+ (KTAccountPublicID)ktAccountPublicIDWithStorageString:(id)a3 error:(id *)a4;
+ (KTAccountPublicID)ktAccountPublicIDWithString:(id)a3 error:(id *)a4;
+ (id)encodePublicKeyInfoDigestSuffix:(id)a3;
- (BOOL)isEqual:(id)a3;
- (KTAccountPublicID)initWithCoder:(id)a3;
- (KTAccountPublicID)initWithPublicKeyIdentity:(id)a3 error:(id *)a4;
- (KTAccountPublicID)initWithPublicKeyInfo:(id)a3 error:(id *)a4;
- (KTAccountPublicID)initWithStorageString:(id)a3 error:(id *)a4;
- (NSData)publicKeyInfo;
- (NSString)ktStorageString;
- (NSString)publicAccountIdentity;
- (NSString)publicAccountPKI;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KTAccountPublicID

- (void)dealloc
{
  publicIdentity = self->_publicIdentity;
  if (publicIdentity)
  {
    CFRelease(publicIdentity);
    self->_publicIdentity = 0;
  }

  v4.receiver = self;
  v4.super_class = KTAccountPublicID;
  [(KTAccountPublicID *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[KTAccountPublicID allocWithZone:](KTAccountPublicID init];
  publicIdentity = self->_publicIdentity;
  if (publicIdentity)
  {
    v7 = CFRetain(publicIdentity);
    v8 = 0;
    v5->_publicIdentity = v7;
  }

  else
  {
    v5->_publicIdentity = 0;
    v8 = [(NSString *)self->_publicID copyWithZone:a3];
  }

  publicID = v5->_publicID;
  v5->_publicID = v8;

  return v5;
}

- (NSData)publicKeyInfo
{
  publicIdentity = self->_publicIdentity;
  if (publicIdentity)
  {
    publicIdentity = PCSPublicIdentityCopyPublicKeyInfo();
    v2 = vars8;
  }

  return publicIdentity;
}

+ (id)encodePublicKeyInfoDigestSuffix:(id)a3
{
  v3 = a3;
  v4 = [v3 kt_sha256];
  if (v4)
  {
    v5 = [v3 mutableCopy];
    [v5 appendBytes:objc_msgSend(v4 length:{"bytes"), 2}];
    v6 = [v5 base64EncodedStringWithOptions:0];
    v7 = [v6 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

    v8 = [v7 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

    if (v8)
    {
      v9 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"="];
      v10 = [v8 stringByTrimmingCharactersInSet:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)publicAccountIdentity
{
  if (self->_publicIdentity)
  {
    v2 = [(KTAccountPublicID *)self publicKeyInfo];
    v3 = [v2 kt_sha256];
    v4 = [v3 mutableCopy];

    if (v4 && [v4 length] == 32)
    {
      v5 = [KTAccountPublicID encodePublicKeyInfoDigestSuffix:v4];
      if (v5)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"APKTID", v5];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"APKTID", self->_publicID];
  }

  return v6;
}

- (NSString)ktStorageString
{
  if (self->_publicIdentity)
  {
    v2 = [(KTAccountPublicID *)self publicKeyInfo];
    v3 = [v2 kt_sha256];
    v4 = [v3 mutableCopy];

    if (v4 && [v4 length] == 32)
    {
      v5 = [KTAccountPublicID encodePublicKeyInfoDigestSuffix:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v2 = [(KTAccountPublicID *)self publicID];
    v5 = [v2 copy];
  }

  return v5;
}

- (NSString)publicAccountPKI
{
  v2 = [(KTAccountPublicID *)self publicKeyInfo];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 kt_sha256];
    if (v4)
    {
      v5 = [v3 mutableCopy];
      if (v5)
      {
        [v5 appendBytes:objc_msgSend(v4 length:{"bytes"), 2}];
        v6 = [v5 base64EncodedStringWithOptions:0];
        if (v6)
        {
          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"apple-ktpki:", v6];
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (KTAccountPublicID)ktAccountPublicIDWithString:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 hasPrefix:@"apple-ktid:"] && objc_msgSend(v6, "length") >= 0x47)
  {
    v7 = [v6 stringByReplacingOccurrencesOfString:@"apple-ktid:" withString:@"apple-ktpki:"];
    v8 = [a1 ktAccountPublicIDWithPKIString:v7 error:a4];
  }

  else
  {
    v8 = [[KTAccountPublicID alloc] initWithPublicKeyIdentity:v6 error:a4];
  }

  return v8;
}

- (KTAccountPublicID)initWithPublicKeyInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    v10 = [TransparencyError errorWithDomain:@"TransparencyErrorInternal" code:-366 description:@"No publicKeyInfo"];
    if (a4 && v10)
    {
      v10 = v10;
      *a4 = v10;
    }

    goto LABEL_14;
  }

  v15.receiver = self;
  v15.super_class = KTAccountPublicID;
  v7 = [(KTAccountPublicID *)&v15 init];
  if (v7)
  {
    self = v7;
    v8 = PCSPublicIdentityCreateWithPublicKeyInfo();
    if (v8)
    {
      self->_publicIdentity = v8;
      v9 = self;
LABEL_15:

      goto LABEL_16;
    }

    v11 = [TransparencyError errorWithDomain:@"TransparencyErrorDecode" code:-296 underlyingError:0 description:@"Failed to parse publicKeyInfo"];
    v12 = v11;
    if (a4 && v11)
    {
      v13 = v11;
      *a4 = v12;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_16:

  return v9;
}

- (KTAccountPublicID)initWithPublicKeyIdentity:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([v6 hasPrefix:@"APKTID"])
  {
    v7 = [v6 substringFromIndex:{objc_msgSend(@"APKTID", "length")}];
    self = [(KTAccountPublicID *)self initWithStorageString:v7 error:a4];
    v8 = self;
  }

  else
  {
    v9 = [TransparencyError errorWithDomain:@"TransparencyErrorDecode" code:-291 description:@"kt-id prefix missing"];
    v7 = v9;
    v8 = 0;
    if (a4 && v9)
    {
      v10 = v9;
      v8 = 0;
      *a4 = v7;
    }
  }

  return v8;
}

- (KTAccountPublicID)initWithStorageString:(id)a3 error:(id *)a4
{
  v25[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"-" withString:@"+"];

  if (v8)
  {
    v9 = [v8 length] & 3;
    if (v9)
    {
      v10 = [@"====" substringToIndex:v9];
      v11 = [v8 stringByAppendingString:v10];

      v8 = v11;
    }

    v12 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBase64EncodedString:v8 options:1];
    if ([v12 length] <= 1)
    {
      v13 = [TransparencyError errorWithDomain:@"TransparencyErrorDecode" code:-292 description:@"info+signature too short"];
      if (a4 && v13)
      {
        v13 = v13;
        *a4 = v13;
      }

      v14 = 0;
      goto LABEL_22;
    }

    v15 = [v12 subdataWithRange:{0, objc_msgSend(v12, "length") - 2}];
    v16 = [v12 subdataWithRange:{objc_msgSend(v12, "length") - 2, 2}];
    v17 = [v15 kt_sha256];
    if (v17)
    {
      [v16 bytes];
      [v17 bytes];
      if (!cc_cmp_safe())
      {
        v21 = [KTAccountPublicID encodePublicKeyInfoDigestSuffix:v15];
        if (v21)
        {
          objc_storeStrong(&self->_publicID, v21);
          v14 = self;
        }

        else
        {
          v14 = 0;
        }

        goto LABEL_21;
      }

      v24[0] = *MEMORY[0x1E696A578];
      v24[1] = @"storageString";
      v25[0] = @"initWithStorageString signature wrong ";
      v25[1] = v6;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v19 = [TransparencyError errorWithDomain:@"TransparencyErrorDecode" code:-293 userInfo:v18];

      if (a4 && v19)
      {
        v20 = v19;
        *a4 = v19;
      }
    }

    v14 = 0;
LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  v14 = 0;
LABEL_23:

  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (KTAccountPublicID)ktAccountPublicIDWithPKIString:(id)a3 error:(id *)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 hasPrefix:@"apple-ktpki:"])
  {
    v6 = [v5 substringFromIndex:{objc_msgSend(@"apple-ktpki:", "length")}];
    v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBase64EncodedString:v6 options:1];
    if ([v7 length] <= 1)
    {
      v8 = [TransparencyError errorWithDomain:@"TransparencyErrorDecode" code:-292 description:@"info+signature too short"];
      if (a4 && v8)
      {
        v8 = v8;
        *a4 = v8;
      }

      v9 = 0;
      goto LABEL_27;
    }

    v11 = [v7 subdataWithRange:{0, objc_msgSend(v7, "length") - 2}];
    v12 = [v7 subdataWithRange:{objc_msgSend(v7, "length") - 2, 2}];
    v13 = [v11 kt_sha256];
    if (v13)
    {
      [v12 bytes];
      [v13 bytes];
      if (cc_cmp_safe())
      {
        v24 = *MEMORY[0x1E696A578];
        v25[0] = @"ktAccountPublicIDWithPKIString signature wrong ";
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        v15 = [TransparencyError errorWithDomain:@"TransparencyErrorDecode" code:-293 userInfo:v14];

        if (a4 && v15)
        {
          v16 = v15;
          *a4 = v15;
        }
      }

      else
      {
        v17 = PCSPublicIdentityCreateWithPublicKeyInfo();
        if (v17)
        {
          v9 = objc_alloc_init(KTAccountPublicID);
          v9->_publicIdentity = v17;
LABEL_26:

LABEL_27:
          goto LABEL_28;
        }

        v18 = [TransparencyError errorWithDomain:@"TransparencyErrorDecode" code:-294 underlyingError:0 description:@"Failed to parse kt-id", 0];
        v19 = v18;
        if (a4 && v18)
        {
          v20 = v18;
          *a4 = v19;
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }

    v9 = 0;
    goto LABEL_26;
  }

  v10 = [TransparencyError errorWithDomain:@"TransparencyErrorDecode" code:-291 description:@"kt-id prefix missing"];
  if (a4 && v10)
  {
    v10 = v10;
    *a4 = v10;
  }

  v9 = 0;
LABEL_28:

  v21 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (KTAccountPublicID)ktAccountPublicIDWithPublicKeyInfo:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[KTAccountPublicID alloc] initWithPublicKeyInfo:v5 error:a4];

  return v6;
}

+ (KTAccountPublicID)ktAccountPublicIDWithStorageString:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [[KTAccountPublicID alloc] initWithStorageString:v5 error:a4];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (self->_publicIdentity)
  {
    v7 = v4;
    v5 = PCSPublicIdentityCopyPublicKeyInfo();
    v6 = @"pki";
  }

  else
  {
    if (!self->_publicID)
    {
      goto LABEL_6;
    }

    v7 = v4;
    v5 = [(KTAccountPublicID *)self publicAccountIdentity];
    v6 = @"publicID";
  }

  [v7 encodeObject:v5 forKey:v6];

LABEL_6:

  MEMORY[0x1EEE66BB8]();
}

- (KTAccountPublicID)initWithCoder:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pki"];
  if (v5)
  {
    v6 = [(KTAccountPublicID *)self initWithPublicKeyInfo:v5 error:0];
    v7 = v6;
    if (v6)
    {
      v7 = v6;
      self = v7;
      v8 = v7;
    }

    else
    {
      if (TRANSPARENCY_DEFAULT_LOG_BLOCK_13 != -1)
      {
        [KTAccountPublicID initWithCoder:];
      }

      v13 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_13;
      if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = 0;
        _os_log_impl(&dword_1E10DB000, v13, OS_LOG_TYPE_ERROR, "[KTAccountPublicID initWithCoder:]: pki %@", buf, 0xCu);
      }

      self = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicID"];
    if (v7)
    {
      v18 = 0;
      v9 = [(KTAccountPublicID *)self initWithPublicKeyIdentity:v7 error:&v18];
      v10 = v18;
      v11 = v9;
      self = v11;
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        if (TRANSPARENCY_DEFAULT_LOG_BLOCK_13 != -1)
        {
          [KTAccountPublicID initWithCoder:];
        }

        v15 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_13;
        if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v20 = v7;
          v21 = 2112;
          v22 = v10;
          _os_log_impl(&dword_1E10DB000, v15, OS_LOG_TYPE_ERROR, "[KTAccountPublicID initWithCoder:]: publicID %@ %@", buf, 0x16u);
        }
      }

      v8 = self;
    }

    else
    {
      if (TRANSPARENCY_DEFAULT_LOG_BLOCK_13 != -1)
      {
        [KTAccountPublicID initWithCoder:];
      }

      v14 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_13;
      if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1E10DB000, v14, OS_LOG_TYPE_ERROR, "[KTAccountPublicID initWithCoder:]: unknown", buf, 2u);
      }

      v8 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __35__KTAccountPublicID_initWithCoder___block_invoke()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __35__KTAccountPublicID_initWithCoder___block_invoke_67()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __35__KTAccountPublicID_initWithCoder___block_invoke_70()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_13 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5[2];
    if (v6 && self->_publicID)
    {
      v7 = [v6 isEqual:?];
    }

    else
    {
      v8 = v5[1];
      if (v8 && (publicIdentity = self->_publicIdentity) != 0)
      {
        v7 = CFEqual(v8, publicIdentity) != 0;
      }

      else
      {
        v10 = [v5 publicAccountIdentity];
        v11 = [(KTAccountPublicID *)self publicAccountIdentity];
        v12 = v11;
        v7 = 0;
        if (v10 && v11)
        {
          v7 = [v10 isEqual:v11];
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end