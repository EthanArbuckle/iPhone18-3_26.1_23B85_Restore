@interface KTAccountPublicID
+ (KTAccountPublicID)ktAccountPublicIDWithPKIString:(id)string error:(id *)error;
+ (KTAccountPublicID)ktAccountPublicIDWithPublicKeyInfo:(id)info error:(id *)error;
+ (KTAccountPublicID)ktAccountPublicIDWithStorageString:(id)string error:(id *)error;
+ (KTAccountPublicID)ktAccountPublicIDWithString:(id)string error:(id *)error;
+ (id)encodePublicKeyInfoDigestSuffix:(id)suffix;
- (BOOL)isEqual:(id)equal;
- (KTAccountPublicID)initWithCoder:(id)coder;
- (KTAccountPublicID)initWithPublicKeyIdentity:(id)identity error:(id *)error;
- (KTAccountPublicID)initWithPublicKeyInfo:(id)info error:(id *)error;
- (KTAccountPublicID)initWithStorageString:(id)string error:(id *)error;
- (NSData)publicKeyInfo;
- (NSString)ktStorageString;
- (NSString)publicAccountIdentity;
- (NSString)publicAccountPKI;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
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
    v8 = [(NSString *)self->_publicID copyWithZone:zone];
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

+ (id)encodePublicKeyInfoDigestSuffix:(id)suffix
{
  suffixCopy = suffix;
  kt_sha256 = [suffixCopy kt_sha256];
  if (kt_sha256)
  {
    v5 = [suffixCopy mutableCopy];
    [v5 appendBytes:objc_msgSend(kt_sha256 length:{"bytes"), 2}];
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
    publicKeyInfo = [(KTAccountPublicID *)self publicKeyInfo];
    kt_sha256 = [publicKeyInfo kt_sha256];
    v4 = [kt_sha256 mutableCopy];

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
    publicKeyInfo = [(KTAccountPublicID *)self publicKeyInfo];
    kt_sha256 = [publicKeyInfo kt_sha256];
    v4 = [kt_sha256 mutableCopy];

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
    publicKeyInfo = [(KTAccountPublicID *)self publicID];
    v5 = [publicKeyInfo copy];
  }

  return v5;
}

- (NSString)publicAccountPKI
{
  publicKeyInfo = [(KTAccountPublicID *)self publicKeyInfo];
  v3 = publicKeyInfo;
  if (publicKeyInfo)
  {
    kt_sha256 = [publicKeyInfo kt_sha256];
    if (kt_sha256)
    {
      v5 = [v3 mutableCopy];
      if (v5)
      {
        [v5 appendBytes:objc_msgSend(kt_sha256 length:{"bytes"), 2}];
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

+ (KTAccountPublicID)ktAccountPublicIDWithString:(id)string error:(id *)error
{
  stringCopy = string;
  if ([stringCopy hasPrefix:@"apple-ktid:"] && objc_msgSend(stringCopy, "length") >= 0x47)
  {
    v7 = [stringCopy stringByReplacingOccurrencesOfString:@"apple-ktid:" withString:@"apple-ktpki:"];
    v8 = [self ktAccountPublicIDWithPKIString:v7 error:error];
  }

  else
  {
    v8 = [[KTAccountPublicID alloc] initWithPublicKeyIdentity:stringCopy error:error];
  }

  return v8;
}

- (KTAccountPublicID)initWithPublicKeyInfo:(id)info error:(id *)error
{
  infoCopy = info;
  if (!infoCopy)
  {
    v10 = [TransparencyError errorWithDomain:@"TransparencyErrorInternal" code:-366 description:@"No publicKeyInfo"];
    if (error && v10)
    {
      v10 = v10;
      *error = v10;
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
      selfCopy = self;
LABEL_15:

      goto LABEL_16;
    }

    v11 = [TransparencyError errorWithDomain:@"TransparencyErrorDecode" code:-296 underlyingError:0 description:@"Failed to parse publicKeyInfo"];
    v12 = v11;
    if (error && v11)
    {
      v13 = v11;
      *error = v12;
    }

LABEL_14:
    selfCopy = 0;
    goto LABEL_15;
  }

  selfCopy = 0;
LABEL_16:

  return selfCopy;
}

- (KTAccountPublicID)initWithPublicKeyIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  if ([identityCopy hasPrefix:@"APKTID"])
  {
    v7 = [identityCopy substringFromIndex:{objc_msgSend(@"APKTID", "length")}];
    self = [(KTAccountPublicID *)self initWithStorageString:v7 error:error];
    selfCopy = self;
  }

  else
  {
    v9 = [TransparencyError errorWithDomain:@"TransparencyErrorDecode" code:-291 description:@"kt-id prefix missing"];
    v7 = v9;
    selfCopy = 0;
    if (error && v9)
    {
      v10 = v9;
      selfCopy = 0;
      *error = v7;
    }
  }

  return selfCopy;
}

- (KTAccountPublicID)initWithStorageString:(id)string error:(id *)error
{
  v25[2] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v7 = [stringCopy stringByReplacingOccurrencesOfString:@"_" withString:@"/"];
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
      if (error && v13)
      {
        v13 = v13;
        *error = v13;
      }

      selfCopy = 0;
      goto LABEL_22;
    }

    v15 = [v12 subdataWithRange:{0, objc_msgSend(v12, "length") - 2}];
    v16 = [v12 subdataWithRange:{objc_msgSend(v12, "length") - 2, 2}];
    kt_sha256 = [v15 kt_sha256];
    if (kt_sha256)
    {
      [v16 bytes];
      [kt_sha256 bytes];
      if (!cc_cmp_safe())
      {
        v21 = [KTAccountPublicID encodePublicKeyInfoDigestSuffix:v15];
        if (v21)
        {
          objc_storeStrong(&self->_publicID, v21);
          selfCopy = self;
        }

        else
        {
          selfCopy = 0;
        }

        goto LABEL_21;
      }

      v24[0] = *MEMORY[0x1E696A578];
      v24[1] = @"storageString";
      v25[0] = @"initWithStorageString signature wrong ";
      v25[1] = stringCopy;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v19 = [TransparencyError errorWithDomain:@"TransparencyErrorDecode" code:-293 userInfo:v18];

      if (error && v19)
      {
        v20 = v19;
        *error = v19;
      }
    }

    selfCopy = 0;
LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  selfCopy = 0;
LABEL_23:

  v22 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

+ (KTAccountPublicID)ktAccountPublicIDWithPKIString:(id)string error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ([stringCopy hasPrefix:@"apple-ktpki:"])
  {
    v6 = [stringCopy substringFromIndex:{objc_msgSend(@"apple-ktpki:", "length")}];
    v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBase64EncodedString:v6 options:1];
    if ([v7 length] <= 1)
    {
      v8 = [TransparencyError errorWithDomain:@"TransparencyErrorDecode" code:-292 description:@"info+signature too short"];
      if (error && v8)
      {
        v8 = v8;
        *error = v8;
      }

      v9 = 0;
      goto LABEL_27;
    }

    v11 = [v7 subdataWithRange:{0, objc_msgSend(v7, "length") - 2}];
    v12 = [v7 subdataWithRange:{objc_msgSend(v7, "length") - 2, 2}];
    kt_sha256 = [v11 kt_sha256];
    if (kt_sha256)
    {
      [v12 bytes];
      [kt_sha256 bytes];
      if (cc_cmp_safe())
      {
        v24 = *MEMORY[0x1E696A578];
        v25[0] = @"ktAccountPublicIDWithPKIString signature wrong ";
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        v15 = [TransparencyError errorWithDomain:@"TransparencyErrorDecode" code:-293 userInfo:v14];

        if (error && v15)
        {
          v16 = v15;
          *error = v15;
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
        if (error && v18)
        {
          v20 = v18;
          *error = v19;
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
  if (error && v10)
  {
    v10 = v10;
    *error = v10;
  }

  v9 = 0;
LABEL_28:

  v21 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (KTAccountPublicID)ktAccountPublicIDWithPublicKeyInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v6 = [[KTAccountPublicID alloc] initWithPublicKeyInfo:infoCopy error:error];

  return v6;
}

+ (KTAccountPublicID)ktAccountPublicIDWithStorageString:(id)string error:(id *)error
{
  stringCopy = string;
  v6 = [[KTAccountPublicID alloc] initWithStorageString:stringCopy error:error];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self->_publicIdentity)
  {
    v7 = coderCopy;
    publicAccountIdentity = PCSPublicIdentityCopyPublicKeyInfo();
    v6 = @"pki";
  }

  else
  {
    if (!self->_publicID)
    {
      goto LABEL_6;
    }

    v7 = coderCopy;
    publicAccountIdentity = [(KTAccountPublicID *)self publicAccountIdentity];
    v6 = @"publicID";
  }

  [v7 encodeObject:publicAccountIdentity forKey:v6];

LABEL_6:

  MEMORY[0x1EEE66BB8]();
}

- (KTAccountPublicID)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pki"];
  if (v5)
  {
    v6 = [(KTAccountPublicID *)self initWithPublicKeyInfo:v5 error:0];
    v7 = v6;
    if (v6)
    {
      v7 = v6;
      self = v7;
      selfCopy = v7;
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
      selfCopy = 0;
    }
  }

  else
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicID"];
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

      selfCopy = self;
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

      selfCopy = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return selfCopy;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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
        publicAccountIdentity = [v5 publicAccountIdentity];
        publicAccountIdentity2 = [(KTAccountPublicID *)self publicAccountIdentity];
        v12 = publicAccountIdentity2;
        v7 = 0;
        if (publicAccountIdentity && publicAccountIdentity2)
        {
          v7 = [publicAccountIdentity isEqual:publicAccountIdentity2];
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