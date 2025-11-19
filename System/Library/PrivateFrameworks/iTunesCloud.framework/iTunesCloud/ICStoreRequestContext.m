@interface ICStoreRequestContext
+ (id)activeStoreAccountRequestContext;
- (BOOL)isEqual:(id)a3;
- (ICStoreRequestContext)initWithBlock:(id)a3;
- (ICStoreRequestContext)initWithCoder:(id)a3;
- (ICStoreRequestContext)initWithIdentity:(id)a3;
- (ICStoreRequestContext)initWithIdentity:(id)a3 clientInfo:(id)a4;
- (ICStoreRequestContext)initWithIdentity:(id)a3 identityStore:(id)a4 clientInfo:(id)a5;
- (ICStoreRequestContext)initWithIdentity:(id)a3 identityStore:(id)a4 clientInfo:(id)a5 authenticationProvider:(id)a6;
- (id)copyWithBlock:(id)a3;
- (id)description;
- (id)userAgent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAllowsExpiredBags:(BOOL)a3;
- (void)setDelegatedIdentity:(id)a3;
- (void)setIdentity:(id)a3;
- (void)setIdentityStore:(id)a3;
- (void)setPersonalizationStyle:(int64_t)a3;
- (void)setStoreDialogResponseHandler:(id)a3;
@end

@implementation ICStoreRequestContext

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(ICRequestContext *)self clientInfo];
  v6 = [v5 clientIdentifier];
  v7 = [(ICRequestContext *)self clientInfo];
  v8 = [v7 clientVersion];
  v9 = [v3 stringWithFormat:@"<%@: %p [%@/%@ %@]>", v4, self, v6, v8, self->_identity];;

  return v9;
}

- (id)userAgent
{
  v3 = [(ICRequestContext *)self deviceInfo];
  v4 = [(ICRequestContext *)self _userAgentWithPlatformVersion];
  v5 = [v4 mutableCopy];

  v6 = +[ICDeviceInfo currentDeviceInfo];
  v7 = [v6 isMac];

  if ((v7 & 1) == 0)
  {
    v8 = [v3 deviceModel];
    if ([v8 length])
    {
      [v5 appendFormat:@" model/%@", v8];
    }
  }

  v9 = [v3 hardwarePlatform];
  if ([v9 length])
  {
    [v5 appendFormat:@" hwp/%@", v9];
  }

  v10 = [v3 buildVersion];
  if ([v10 length])
  {
    [v5 appendFormat:@" build/%@", v10];
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = +[ICDeviceInfo currentDeviceInfo];
  v13 = [v12 isMac];

  if ((v13 & 1) == 0)
  {
    v14 = [v3 deviceClass] - 1;
    if (v14 <= 5 && ((0x2Fu >> v14) & 1) != 0)
    {
      [v11 addObject:off_1E7BF37C0[v14]];
    }
  }

  v15 = [v3 fairPlayDeviceType];
  if (v15)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"dt:%d", v15];
    [v11 addObject:v16];
  }

  if ([v11 count])
  {
    v17 = [v11 componentsJoinedByString:@" "];;
    [v5 appendFormat:@" (%@)", v17];
  }

  return v5;
}

- (void)setPersonalizationStyle:(int64_t)a3
{
  if (![(ICRequestContext *)self _allowsMutation])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"ICStoreRequestContext.m" lineNumber:253 description:@"Mutation not allowed beyond initialization."];
  }

  self->_personalizationStyle = a3;
}

- (void)setAllowsExpiredBags:(BOOL)a3
{
  if (![(ICRequestContext *)self _allowsMutation])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"ICStoreRequestContext.m" lineNumber:248 description:@"Mutation not allowed beyond initialization."];
  }

  self->_allowsExpiredBags = a3;
}

- (void)setStoreDialogResponseHandler:(id)a3
{
  v5 = a3;
  if (![(ICRequestContext *)self _allowsMutation])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"ICStoreRequestContext.m" lineNumber:243 description:@"Mutation not allowed beyond initialization."];
  }

  storeDialogResponseHandler = self->_storeDialogResponseHandler;
  self->_storeDialogResponseHandler = v5;
}

- (void)setIdentityStore:(id)a3
{
  v5 = a3;
  if (![(ICRequestContext *)self _allowsMutation])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"ICStoreRequestContext.m" lineNumber:238 description:@"Mutation not allowed beyond initialization."];
  }

  identityStore = self->_identityStore;
  self->_identityStore = v5;
}

- (void)setIdentity:(id)a3
{
  v8 = a3;
  if (![(ICRequestContext *)self _allowsMutation])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"ICStoreRequestContext.m" lineNumber:233 description:@"Mutation not allowed beyond initialization."];
  }

  v5 = [v8 copy];
  identity = self->_identity;
  self->_identity = v5;
}

- (void)setDelegatedIdentity:(id)a3
{
  v8 = a3;
  if (![(ICRequestContext *)self _allowsMutation])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"ICStoreRequestContext.m" lineNumber:228 description:@"Mutation not allowed beyond initialization."];
  }

  v5 = [v8 copy];
  delegatedIdentity = self->_delegatedIdentity;
  self->_delegatedIdentity = v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICStoreRequestContext;
  v4 = a3;
  [(ICRequestContext *)&v5 encodeWithCoder:v4];
  [v4 ic_encodeUserIdentity:self->_delegatedIdentity withStore:self->_identityStore forKey:{@"delegatedIdentity", v5.receiver, v5.super_class}];
  [v4 ic_encodeUserIdentity:self->_identity withStore:self->_identityStore forKey:@"identity"];
  [v4 encodeObject:self->_identityStore forKey:@"identityStore"];
  [v4 encodeObject:self->_storeDialogResponseHandler forKey:@"storeDialogResponseHandler"];
  [v4 encodeBool:self->_allowsExpiredBags forKey:@"allowsExpiredBags"];
  [v4 encodeInteger:self->_personalizationStyle forKey:@"personalizationStyle"];
}

- (ICStoreRequestContext)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ICStoreRequestContext;
  v5 = [(ICRequestContext *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"delegatedIdentity"];
    delegatedIdentity = v5->_delegatedIdentity;
    v5->_delegatedIdentity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identityStore"];
    identityStore = v5->_identityStore;
    v5->_identityStore = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeDialogResponseHandler"];
    storeDialogResponseHandler = v5->_storeDialogResponseHandler;
    v5->_storeDialogResponseHandler = v12;

    v5->_allowsExpiredBags = [v4 decodeBoolForKey:@"allowsExpiredBags"];
    v5->_personalizationStyle = [v4 decodeIntegerForKey:@"personalizationStyle"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    if ([(ICStoreRequestContext *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      v27.receiver = self;
      v27.super_class = ICStoreRequestContext;
      if (![(ICRequestContext *)&v27 isEqual:v5])
      {
        goto LABEL_22;
      }

      identityStore = v5->_identityStore;
      v7 = self->_identityStore;
      v8 = v7;
      if (v7 == identityStore)
      {
      }

      else
      {
        v9 = [(ICUserIdentityStore *)v7 isEqual:identityStore];

        if (!v9)
        {
          goto LABEL_22;
        }
      }

      delegatedIdentity = v5->_delegatedIdentity;
      v12 = self->_identityStore;
      v13 = self->_delegatedIdentity;
      v14 = delegatedIdentity;
      v15 = v12;
      v16 = v15;
      if (v13 == v14)
      {
      }

      else
      {
        if (!v13 || !v14)
        {
          goto LABEL_21;
        }

        v17 = [(ICUserIdentity *)v13 isEqualToIdentity:v14 inStore:v15];

        if (!v17)
        {
          goto LABEL_22;
        }
      }

      identity = v5->_identity;
      v19 = self->_identityStore;
      v13 = self->_identity;
      v14 = identity;
      v20 = v19;
      v16 = v20;
      if (v13 == v14)
      {

LABEL_26:
        storeDialogResponseHandler = v5->_storeDialogResponseHandler;
        v24 = self->_storeDialogResponseHandler;
        v25 = v24;
        if (v24 == storeDialogResponseHandler)
        {
        }

        else
        {
          v26 = [(ICStoreDialogResponseHandler *)v24 isEqual:storeDialogResponseHandler];

          if (!v26)
          {
            goto LABEL_22;
          }
        }

        if (self->_allowsExpiredBags == v5->_allowsExpiredBags)
        {
          v10 = self->_personalizationStyle == v5->_personalizationStyle;
          goto LABEL_23;
        }

LABEL_22:
        v10 = 0;
LABEL_23:

        goto LABEL_24;
      }

      if (v13 && v14)
      {
        v21 = [(ICUserIdentity *)v13 isEqualToIdentity:v14 inStore:v20];

        if (!v21)
        {
          goto LABEL_22;
        }

        goto LABEL_26;
      }

LABEL_21:

      goto LABEL_22;
    }

    v10 = 0;
  }

LABEL_24:

  return v10;
}

- (unint64_t)hash
{
  v375 = *MEMORY[0x1E69E9840];
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  memset(&v371.hash[3], 0, 168);
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v3 ^ 0x6C7967656E657261;
  v8 = v4 ^ 0x646F72616E646F6DLL;
  v370 = 1000;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v8) ^ __ROR8__(v8, 51);
  v14 = v7 + v12;
  v15 = (v7 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v8, 32);
  v17 = v14 + v13;
  v371.hash[0] = __ROR8__(v17, 32);
  v371.hash[1] = v16 ^ __ROR8__(v15, 43);
  v371.count[0] = v16 ^ v11;
  v371.count[1] = v17 ^ __ROR8__(v13, 47);
  v371.hash[2] = 0x800000000000000;

  v369.receiver = self;
  v369.super_class = ICStoreRequestContext;
  v18 = [(ICRequestContext *)&v369 hash];
  *&data[0] = v18;
  if (v370 <= 3000)
  {
    if (v370 > 1999)
    {
      if (v370 == 2000)
      {
        LOBYTE(v40) = 0;
        if (BYTE3(v371.count[1]) > 1u)
        {
          if (BYTE3(v371.count[1]) == 2)
          {
            v43 = v18 >> 8;
            v41 = v371.count[1];
            LODWORD(v40) = HIBYTE(LOWORD(v371.count[1]));
            LOBYTE(v42) = v18;
          }

          else
          {
            v41 = 0;
            LOBYTE(v42) = 0;
            LODWORD(v43) = 0;
            if (BYTE3(v371.count[1]) == 3)
            {
              v41 = v371.count[1];
              LODWORD(v40) = HIBYTE(LOWORD(v371.count[1]));
              LOBYTE(v42) = BYTE2(v371.count[1]);
              LODWORD(v43) = v18;
            }
          }
        }

        else if (BYTE3(v371.count[1]))
        {
          v41 = 0;
          LOBYTE(v42) = 0;
          LODWORD(v43) = 0;
          if (BYTE3(v371.count[1]) == 1)
          {
            v42 = v18 >> 8;
            v41 = v371.count[1];
            v43 = v18 >> 16;
            LOBYTE(v40) = v18;
          }
        }

        else
        {
          v40 = v18 >> 8;
          v42 = v18 >> 16;
          v41 = v18;
          v43 = v18 >> 24;
        }

        v51 = (v42 << 16) | (v43 << 24) | v41 | (v40 << 8);
        HIDWORD(v52) = (461845907 * ((380141568 * v51) | ((-862048943 * v51) >> 17))) ^ LODWORD(v371.count[0]);
        LODWORD(v52) = HIDWORD(v52);
        v53 = 5 * (v52 >> 19) - 430675100;
        LODWORD(v371.count[0]) = v53;
        v54 = data - BYTE3(v371.count[1]) + 4;
        v55 = data + ((BYTE3(v371.count[1]) + 8) & 0x1FC) - BYTE3(v371.count[1]);
        if (v54 < v55)
        {
          do
          {
            v56 = *v54;
            v54 += 4;
            HIDWORD(v57) = (461845907 * ((380141568 * v56) | ((-862048943 * v56) >> 17))) ^ v53;
            LODWORD(v57) = HIDWORD(v57);
            v53 = 5 * (v57 >> 19) - 430675100;
          }

          while (v54 < v55);
          LODWORD(v371.count[0]) = v53;
        }

        if ((BYTE3(v371.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v371.count[1]) = *v55;
          if ((BYTE3(v371.count[1]) & 3) != 2)
          {
            BYTE2(v371.count[1]) = v55[2];
          }
        }

        else if ((v371.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v371.count[1]) = *v55;
        }

        BYTE3(v371.count[1]) &= 3u;
        HIDWORD(v371.count[0]) += 8;
      }

      else if (v370 == 3000)
      {
        _MSV_XXH_XXH32_update(&v371, data, 8uLL);
      }
    }

    else if (v370)
    {
      if (v370 == 1000)
      {
        v19 = v371.hash[2];
        if ((v371.hash[2] & 0x400000000000000) != 0)
        {
          v44 = v371.hash[2] & 0xFFFFFFFFFFFFFFLL | (v18 << 32);
          v45 = (v371.count[0] + v371.count[1]) ^ __ROR8__(v371.count[1], 51);
          v46 = v371.hash[0] + (v371.hash[1] ^ v44);
          v47 = __ROR8__(v371.hash[1] ^ v44, 48);
          v48 = (v46 ^ v47) + __ROR8__(v371.count[0] + v371.count[1], 32);
          v49 = v48 ^ __ROR8__(v46 ^ v47, 43);
          v50 = v46 + v45;
          v371.hash[0] = __ROR8__(v50, 32);
          v371.hash[1] = v49;
          v371.count[0] = v48 ^ v44;
          v371.count[1] = v50 ^ __ROR8__(v45, 47);
          v37 = (v371.hash[2] & 0xFF00000000000000) + HIDWORD(v18) + 0x800000000000000;
        }

        else
        {
          v20 = v371.count[0];
          v22 = v371.hash[0];
          v21 = v371.count[1];
          v23 = v371.hash[1];
          if ((v371.hash[2] & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v24 = (v371.count[0] + v371.count[1]) ^ __ROR8__(v371.count[1], 51);
            v25 = v371.hash[0] + (v371.hash[1] ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL);
            v26 = __ROR8__(v371.hash[1] ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL, 48);
            v27 = (v25 ^ v26) + __ROR8__(v371.count[0] + v371.count[1], 32);
            v23 = v27 ^ __ROR8__(v25 ^ v26, 43);
            v28 = v25 + v24;
            v21 = v28 ^ __ROR8__(v24, 47);
            v22 = __ROR8__(v28, 32);
            v20 = v27 ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL;
            v19 = v371.hash[2] & 0xFF00000000000000;
          }

          v29 = v23 ^ v18;
          v30 = v20 + v21;
          v31 = (v20 + v21) ^ __ROR8__(v21, 51);
          v32 = v22 + v29;
          v33 = __ROR8__(v29, 48);
          v34 = (v32 ^ v33) + __ROR8__(v30, 32);
          v35 = v34 ^ __ROR8__(v32 ^ v33, 43);
          v36 = v32 + v31;
          v371.hash[0] = __ROR8__(v36, 32);
          v371.hash[1] = v35;
          v371.count[0] = v34 ^ v18;
          v371.count[1] = v36 ^ __ROR8__(v31, 47);
          v37 = v19 + 0x800000000000000;
        }

        v371.hash[2] = v37;
      }
    }

    else
    {
      v38 = [MEMORY[0x1E696AAA8] currentHandler];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [v38 handleFailureInFunction:v39 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v370 <= 4000)
  {
    if (v370 == 3001)
    {
      _MSV_XXH_XXH64_update(&v371, data, 8uLL);
    }

    else if (v370 == 4000)
    {
      CC_MD5_Update(&v371, data, 4u);
    }
  }

  else
  {
    switch(v370)
    {
      case 4001:
        CC_SHA1_Update(&v371, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v371, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v371, data, 4u);
        break;
    }
  }

  v58 = self->_identityStore;
  v59 = [(ICUserIdentityStore *)v58 hash];
  *&data[0] = v59;
  if (v370 <= 3000)
  {
    if (v370 > 1999)
    {
      if (v370 == 2000)
      {
        LOBYTE(v81) = 0;
        if (BYTE3(v371.count[1]) > 1u)
        {
          if (BYTE3(v371.count[1]) == 2)
          {
            v84 = v59 >> 8;
            v82 = v371.count[1];
            LODWORD(v81) = HIBYTE(LOWORD(v371.count[1]));
            LOBYTE(v83) = v59;
          }

          else
          {
            v82 = 0;
            LOBYTE(v83) = 0;
            LODWORD(v84) = 0;
            if (BYTE3(v371.count[1]) == 3)
            {
              v82 = v371.count[1];
              LODWORD(v81) = HIBYTE(LOWORD(v371.count[1]));
              LOBYTE(v83) = BYTE2(v371.count[1]);
              LODWORD(v84) = v59;
            }
          }
        }

        else if (BYTE3(v371.count[1]))
        {
          v82 = 0;
          LOBYTE(v83) = 0;
          LODWORD(v84) = 0;
          if (BYTE3(v371.count[1]) == 1)
          {
            v83 = v59 >> 8;
            v82 = v371.count[1];
            v84 = v59 >> 16;
            LOBYTE(v81) = v59;
          }
        }

        else
        {
          v81 = v59 >> 8;
          v83 = v59 >> 16;
          v82 = v59;
          v84 = v59 >> 24;
        }

        v92 = (v83 << 16) | (v84 << 24) | v82 | (v81 << 8);
        HIDWORD(v93) = (461845907 * ((380141568 * v92) | ((-862048943 * v92) >> 17))) ^ LODWORD(v371.count[0]);
        LODWORD(v93) = HIDWORD(v93);
        v94 = 5 * (v93 >> 19) - 430675100;
        LODWORD(v371.count[0]) = v94;
        v95 = data - BYTE3(v371.count[1]) + 4;
        v96 = data + ((BYTE3(v371.count[1]) + 8) & 0x1FC) - BYTE3(v371.count[1]);
        if (v95 < v96)
        {
          do
          {
            v97 = *v95;
            v95 += 4;
            HIDWORD(v98) = (461845907 * ((380141568 * v97) | ((-862048943 * v97) >> 17))) ^ v94;
            LODWORD(v98) = HIDWORD(v98);
            v94 = 5 * (v98 >> 19) - 430675100;
          }

          while (v95 < v96);
          LODWORD(v371.count[0]) = v94;
        }

        if ((BYTE3(v371.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v371.count[1]) = *v96;
          if ((BYTE3(v371.count[1]) & 3) != 2)
          {
            BYTE2(v371.count[1]) = v96[2];
          }
        }

        else if ((v371.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v371.count[1]) = *v96;
        }

        BYTE3(v371.count[1]) &= 3u;
        HIDWORD(v371.count[0]) += 8;
      }

      else if (v370 == 3000)
      {
        _MSV_XXH_XXH32_update(&v371, data, 8uLL);
      }
    }

    else if (v370)
    {
      if (v370 == 1000)
      {
        v60 = v371.hash[2];
        if ((v371.hash[2] & 0x400000000000000) != 0)
        {
          v85 = v371.hash[2] & 0xFFFFFFFFFFFFFFLL | (v59 << 32);
          v86 = (v371.count[0] + v371.count[1]) ^ __ROR8__(v371.count[1], 51);
          v87 = v371.hash[0] + (v371.hash[1] ^ v85);
          v88 = __ROR8__(v371.hash[1] ^ v85, 48);
          v89 = (v87 ^ v88) + __ROR8__(v371.count[0] + v371.count[1], 32);
          v90 = v89 ^ __ROR8__(v87 ^ v88, 43);
          v91 = v87 + v86;
          v371.hash[0] = __ROR8__(v91, 32);
          v371.hash[1] = v90;
          v371.count[0] = v89 ^ v85;
          v371.count[1] = v91 ^ __ROR8__(v86, 47);
          v78 = (v371.hash[2] & 0xFF00000000000000) + HIDWORD(v59) + 0x800000000000000;
        }

        else
        {
          v61 = v371.count[0];
          v63 = v371.hash[0];
          v62 = v371.count[1];
          v64 = v371.hash[1];
          if ((v371.hash[2] & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v65 = (v371.count[0] + v371.count[1]) ^ __ROR8__(v371.count[1], 51);
            v66 = v371.hash[0] + (v371.hash[1] ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL);
            v67 = __ROR8__(v371.hash[1] ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL, 48);
            v68 = (v66 ^ v67) + __ROR8__(v371.count[0] + v371.count[1], 32);
            v64 = v68 ^ __ROR8__(v66 ^ v67, 43);
            v69 = v66 + v65;
            v62 = v69 ^ __ROR8__(v65, 47);
            v63 = __ROR8__(v69, 32);
            v61 = v68 ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL;
            v60 = v371.hash[2] & 0xFF00000000000000;
          }

          v70 = v64 ^ v59;
          v71 = v61 + v62;
          v72 = (v61 + v62) ^ __ROR8__(v62, 51);
          v73 = v63 + v70;
          v74 = __ROR8__(v70, 48);
          v75 = (v73 ^ v74) + __ROR8__(v71, 32);
          v76 = v75 ^ __ROR8__(v73 ^ v74, 43);
          v77 = v73 + v72;
          v371.hash[0] = __ROR8__(v77, 32);
          v371.hash[1] = v76;
          v371.count[0] = v75 ^ v59;
          v371.count[1] = v77 ^ __ROR8__(v72, 47);
          v78 = v60 + 0x800000000000000;
        }

        v371.hash[2] = v78;
      }
    }

    else
    {
      v79 = [MEMORY[0x1E696AAA8] currentHandler];
      v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [v79 handleFailureInFunction:v80 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v370 <= 4000)
  {
    if (v370 == 3001)
    {
      _MSV_XXH_XXH64_update(&v371, data, 8uLL);
    }

    else if (v370 == 4000)
    {
      CC_MD5_Update(&v371, data, 4u);
    }
  }

  else
  {
    switch(v370)
    {
      case 4001:
        CC_SHA1_Update(&v371, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v371, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v371, data, 4u);
        break;
    }
  }

  v99 = [(ICUserIdentity *)self->_delegatedIdentity hashInStore:self->_identityStore];
  *&data[0] = v99;
  if (v370 <= 3000)
  {
    if (v370 > 1999)
    {
      if (v370 == 2000)
      {
        LOBYTE(v121) = 0;
        if (BYTE3(v371.count[1]) > 1u)
        {
          if (BYTE3(v371.count[1]) == 2)
          {
            v124 = v99 >> 8;
            v122 = v371.count[1];
            LODWORD(v121) = HIBYTE(LOWORD(v371.count[1]));
            LOBYTE(v123) = v99;
          }

          else
          {
            v122 = 0;
            LOBYTE(v123) = 0;
            LODWORD(v124) = 0;
            if (BYTE3(v371.count[1]) == 3)
            {
              v122 = v371.count[1];
              LODWORD(v121) = HIBYTE(LOWORD(v371.count[1]));
              LOBYTE(v123) = BYTE2(v371.count[1]);
              LODWORD(v124) = v99;
            }
          }
        }

        else if (BYTE3(v371.count[1]))
        {
          v122 = 0;
          LOBYTE(v123) = 0;
          LODWORD(v124) = 0;
          if (BYTE3(v371.count[1]) == 1)
          {
            v123 = v99 >> 8;
            v122 = v371.count[1];
            v124 = v99 >> 16;
            LOBYTE(v121) = v99;
          }
        }

        else
        {
          v121 = v99 >> 8;
          v123 = v99 >> 16;
          v122 = v99;
          v124 = v99 >> 24;
        }

        v132 = (v123 << 16) | (v124 << 24) | v122 | (v121 << 8);
        HIDWORD(v133) = (461845907 * ((380141568 * v132) | ((-862048943 * v132) >> 17))) ^ LODWORD(v371.count[0]);
        LODWORD(v133) = HIDWORD(v133);
        v134 = 5 * (v133 >> 19) - 430675100;
        LODWORD(v371.count[0]) = v134;
        v135 = data - BYTE3(v371.count[1]) + 4;
        v136 = data + ((BYTE3(v371.count[1]) + 8) & 0x1FC) - BYTE3(v371.count[1]);
        if (v135 < v136)
        {
          do
          {
            v137 = *v135;
            v135 += 4;
            HIDWORD(v138) = (461845907 * ((380141568 * v137) | ((-862048943 * v137) >> 17))) ^ v134;
            LODWORD(v138) = HIDWORD(v138);
            v134 = 5 * (v138 >> 19) - 430675100;
          }

          while (v135 < v136);
          LODWORD(v371.count[0]) = v134;
        }

        if ((BYTE3(v371.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v371.count[1]) = *v136;
          if ((BYTE3(v371.count[1]) & 3) != 2)
          {
            BYTE2(v371.count[1]) = v136[2];
          }
        }

        else if ((v371.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v371.count[1]) = *v136;
        }

        BYTE3(v371.count[1]) &= 3u;
        HIDWORD(v371.count[0]) += 8;
      }

      else if (v370 == 3000)
      {
        _MSV_XXH_XXH32_update(&v371, data, 8uLL);
      }
    }

    else if (v370)
    {
      if (v370 == 1000)
      {
        v100 = v371.hash[2];
        if ((v371.hash[2] & 0x400000000000000) != 0)
        {
          v125 = v371.hash[2] & 0xFFFFFFFFFFFFFFLL | (v99 << 32);
          v126 = (v371.count[0] + v371.count[1]) ^ __ROR8__(v371.count[1], 51);
          v127 = v371.hash[0] + (v371.hash[1] ^ v125);
          v128 = __ROR8__(v371.hash[1] ^ v125, 48);
          v129 = (v127 ^ v128) + __ROR8__(v371.count[0] + v371.count[1], 32);
          v130 = v129 ^ __ROR8__(v127 ^ v128, 43);
          v131 = v127 + v126;
          v371.hash[0] = __ROR8__(v131, 32);
          v371.hash[1] = v130;
          v371.count[0] = v129 ^ v125;
          v371.count[1] = v131 ^ __ROR8__(v126, 47);
          v118 = (v371.hash[2] & 0xFF00000000000000) + HIDWORD(v99) + 0x800000000000000;
        }

        else
        {
          v101 = v371.count[0];
          v103 = v371.hash[0];
          v102 = v371.count[1];
          v104 = v371.hash[1];
          if ((v371.hash[2] & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v105 = (v371.count[0] + v371.count[1]) ^ __ROR8__(v371.count[1], 51);
            v106 = v371.hash[0] + (v371.hash[1] ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL);
            v107 = __ROR8__(v371.hash[1] ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL, 48);
            v108 = (v106 ^ v107) + __ROR8__(v371.count[0] + v371.count[1], 32);
            v104 = v108 ^ __ROR8__(v106 ^ v107, 43);
            v109 = v106 + v105;
            v102 = v109 ^ __ROR8__(v105, 47);
            v103 = __ROR8__(v109, 32);
            v101 = v108 ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL;
            v100 = v371.hash[2] & 0xFF00000000000000;
          }

          v110 = v104 ^ v99;
          v111 = v101 + v102;
          v112 = (v101 + v102) ^ __ROR8__(v102, 51);
          v113 = v103 + v110;
          v114 = __ROR8__(v110, 48);
          v115 = (v113 ^ v114) + __ROR8__(v111, 32);
          v116 = v115 ^ __ROR8__(v113 ^ v114, 43);
          v117 = v113 + v112;
          v371.hash[0] = __ROR8__(v117, 32);
          v371.hash[1] = v116;
          v371.count[0] = v115 ^ v99;
          v371.count[1] = v117 ^ __ROR8__(v112, 47);
          v118 = v100 + 0x800000000000000;
        }

        v371.hash[2] = v118;
      }
    }

    else
    {
      v119 = [MEMORY[0x1E696AAA8] currentHandler];
      v120 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [v119 handleFailureInFunction:v120 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v370 <= 4000)
  {
    if (v370 == 3001)
    {
      _MSV_XXH_XXH64_update(&v371, data, 8uLL);
    }

    else if (v370 == 4000)
    {
      CC_MD5_Update(&v371, data, 4u);
    }
  }

  else
  {
    switch(v370)
    {
      case 4001:
        CC_SHA1_Update(&v371, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v371, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v371, data, 4u);
        break;
    }
  }

  v139 = [(ICUserIdentity *)self->_identity hashInStore:self->_identityStore];
  *&data[0] = v139;
  if (v370 <= 3000)
  {
    if (v370 > 1999)
    {
      if (v370 == 2000)
      {
        LOBYTE(v161) = 0;
        if (BYTE3(v371.count[1]) > 1u)
        {
          if (BYTE3(v371.count[1]) == 2)
          {
            v164 = v139 >> 8;
            v162 = v371.count[1];
            LODWORD(v161) = HIBYTE(LOWORD(v371.count[1]));
            LOBYTE(v163) = v139;
          }

          else
          {
            v162 = 0;
            LOBYTE(v163) = 0;
            LODWORD(v164) = 0;
            if (BYTE3(v371.count[1]) == 3)
            {
              v162 = v371.count[1];
              LODWORD(v161) = HIBYTE(LOWORD(v371.count[1]));
              LOBYTE(v163) = BYTE2(v371.count[1]);
              LODWORD(v164) = v139;
            }
          }
        }

        else if (BYTE3(v371.count[1]))
        {
          v162 = 0;
          LOBYTE(v163) = 0;
          LODWORD(v164) = 0;
          if (BYTE3(v371.count[1]) == 1)
          {
            v163 = v139 >> 8;
            v162 = v371.count[1];
            v164 = v139 >> 16;
            LOBYTE(v161) = v139;
          }
        }

        else
        {
          v161 = v139 >> 8;
          v163 = v139 >> 16;
          v162 = v139;
          v164 = v139 >> 24;
        }

        v172 = (v163 << 16) | (v164 << 24) | v162 | (v161 << 8);
        HIDWORD(v173) = (461845907 * ((380141568 * v172) | ((-862048943 * v172) >> 17))) ^ LODWORD(v371.count[0]);
        LODWORD(v173) = HIDWORD(v173);
        v174 = 5 * (v173 >> 19) - 430675100;
        LODWORD(v371.count[0]) = v174;
        v175 = data - BYTE3(v371.count[1]) + 4;
        v176 = data + ((BYTE3(v371.count[1]) + 8) & 0x1FC) - BYTE3(v371.count[1]);
        if (v175 < v176)
        {
          do
          {
            v177 = *v175;
            v175 += 4;
            HIDWORD(v178) = (461845907 * ((380141568 * v177) | ((-862048943 * v177) >> 17))) ^ v174;
            LODWORD(v178) = HIDWORD(v178);
            v174 = 5 * (v178 >> 19) - 430675100;
          }

          while (v175 < v176);
          LODWORD(v371.count[0]) = v174;
        }

        if ((BYTE3(v371.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v371.count[1]) = *v176;
          if ((BYTE3(v371.count[1]) & 3) != 2)
          {
            BYTE2(v371.count[1]) = v176[2];
          }
        }

        else if ((v371.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v371.count[1]) = *v176;
        }

        BYTE3(v371.count[1]) &= 3u;
        HIDWORD(v371.count[0]) += 8;
      }

      else if (v370 == 3000)
      {
        _MSV_XXH_XXH32_update(&v371, data, 8uLL);
      }
    }

    else if (v370)
    {
      if (v370 == 1000)
      {
        v140 = v371.hash[2];
        if ((v371.hash[2] & 0x400000000000000) != 0)
        {
          v165 = v371.hash[2] & 0xFFFFFFFFFFFFFFLL | (v139 << 32);
          v166 = (v371.count[0] + v371.count[1]) ^ __ROR8__(v371.count[1], 51);
          v167 = v371.hash[0] + (v371.hash[1] ^ v165);
          v168 = __ROR8__(v371.hash[1] ^ v165, 48);
          v169 = (v167 ^ v168) + __ROR8__(v371.count[0] + v371.count[1], 32);
          v170 = v169 ^ __ROR8__(v167 ^ v168, 43);
          v171 = v167 + v166;
          v371.hash[0] = __ROR8__(v171, 32);
          v371.hash[1] = v170;
          v371.count[0] = v169 ^ v165;
          v371.count[1] = v171 ^ __ROR8__(v166, 47);
          v158 = (v371.hash[2] & 0xFF00000000000000) + HIDWORD(v139) + 0x800000000000000;
        }

        else
        {
          v141 = v371.count[0];
          v143 = v371.hash[0];
          v142 = v371.count[1];
          v144 = v371.hash[1];
          if ((v371.hash[2] & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v145 = (v371.count[0] + v371.count[1]) ^ __ROR8__(v371.count[1], 51);
            v146 = v371.hash[0] + (v371.hash[1] ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL);
            v147 = __ROR8__(v371.hash[1] ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL, 48);
            v148 = (v146 ^ v147) + __ROR8__(v371.count[0] + v371.count[1], 32);
            v144 = v148 ^ __ROR8__(v146 ^ v147, 43);
            v149 = v146 + v145;
            v142 = v149 ^ __ROR8__(v145, 47);
            v143 = __ROR8__(v149, 32);
            v141 = v148 ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL;
            v140 = v371.hash[2] & 0xFF00000000000000;
          }

          v150 = v144 ^ v139;
          v151 = v141 + v142;
          v152 = (v141 + v142) ^ __ROR8__(v142, 51);
          v153 = v143 + v150;
          v154 = __ROR8__(v150, 48);
          v155 = (v153 ^ v154) + __ROR8__(v151, 32);
          v156 = v155 ^ __ROR8__(v153 ^ v154, 43);
          v157 = v153 + v152;
          v371.hash[0] = __ROR8__(v157, 32);
          v371.hash[1] = v156;
          v371.count[0] = v155 ^ v139;
          v371.count[1] = v157 ^ __ROR8__(v152, 47);
          v158 = v140 + 0x800000000000000;
        }

        v371.hash[2] = v158;
      }
    }

    else
    {
      v159 = [MEMORY[0x1E696AAA8] currentHandler];
      v160 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [v159 handleFailureInFunction:v160 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v370 <= 4000)
  {
    if (v370 == 3001)
    {
      _MSV_XXH_XXH64_update(&v371, data, 8uLL);
    }

    else if (v370 == 4000)
    {
      CC_MD5_Update(&v371, data, 4u);
    }
  }

  else
  {
    switch(v370)
    {
      case 4001:
        CC_SHA1_Update(&v371, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v371, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v371, data, 4u);
        break;
    }
  }

  v179 = self->_storeDialogResponseHandler;
  v180 = [(ICStoreDialogResponseHandler *)v179 hash];
  *&data[0] = v180;
  if (v370 <= 3000)
  {
    if (v370 > 1999)
    {
      if (v370 == 2000)
      {
        LOBYTE(v202) = 0;
        if (BYTE3(v371.count[1]) > 1u)
        {
          if (BYTE3(v371.count[1]) == 2)
          {
            v205 = v180 >> 8;
            v203 = v371.count[1];
            LODWORD(v202) = HIBYTE(LOWORD(v371.count[1]));
            LOBYTE(v204) = v180;
          }

          else
          {
            v203 = 0;
            LOBYTE(v204) = 0;
            LODWORD(v205) = 0;
            if (BYTE3(v371.count[1]) == 3)
            {
              v203 = v371.count[1];
              LODWORD(v202) = HIBYTE(LOWORD(v371.count[1]));
              LOBYTE(v204) = BYTE2(v371.count[1]);
              LODWORD(v205) = v180;
            }
          }
        }

        else if (BYTE3(v371.count[1]))
        {
          v203 = 0;
          LOBYTE(v204) = 0;
          LODWORD(v205) = 0;
          if (BYTE3(v371.count[1]) == 1)
          {
            v204 = v180 >> 8;
            v203 = v371.count[1];
            v205 = v180 >> 16;
            LOBYTE(v202) = v180;
          }
        }

        else
        {
          v202 = v180 >> 8;
          v204 = v180 >> 16;
          v203 = v180;
          v205 = v180 >> 24;
        }

        v213 = (v204 << 16) | (v205 << 24) | v203 | (v202 << 8);
        HIDWORD(v214) = (461845907 * ((380141568 * v213) | ((-862048943 * v213) >> 17))) ^ LODWORD(v371.count[0]);
        LODWORD(v214) = HIDWORD(v214);
        v215 = 5 * (v214 >> 19) - 430675100;
        LODWORD(v371.count[0]) = v215;
        v216 = data - BYTE3(v371.count[1]) + 4;
        v217 = data + ((BYTE3(v371.count[1]) + 8) & 0x1FC) - BYTE3(v371.count[1]);
        if (v216 < v217)
        {
          do
          {
            v218 = *v216;
            v216 += 4;
            HIDWORD(v219) = (461845907 * ((380141568 * v218) | ((-862048943 * v218) >> 17))) ^ v215;
            LODWORD(v219) = HIDWORD(v219);
            v215 = 5 * (v219 >> 19) - 430675100;
          }

          while (v216 < v217);
          LODWORD(v371.count[0]) = v215;
        }

        if ((BYTE3(v371.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v371.count[1]) = *v217;
          if ((BYTE3(v371.count[1]) & 3) != 2)
          {
            BYTE2(v371.count[1]) = v217[2];
          }
        }

        else if ((v371.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v371.count[1]) = *v217;
        }

        BYTE3(v371.count[1]) &= 3u;
        HIDWORD(v371.count[0]) += 8;
      }

      else if (v370 == 3000)
      {
        _MSV_XXH_XXH32_update(&v371, data, 8uLL);
      }
    }

    else if (v370)
    {
      if (v370 == 1000)
      {
        v181 = v371.hash[2];
        if ((v371.hash[2] & 0x400000000000000) != 0)
        {
          v206 = v371.hash[2] & 0xFFFFFFFFFFFFFFLL | (v180 << 32);
          v207 = (v371.count[0] + v371.count[1]) ^ __ROR8__(v371.count[1], 51);
          v208 = v371.hash[0] + (v371.hash[1] ^ v206);
          v209 = __ROR8__(v371.hash[1] ^ v206, 48);
          v210 = (v208 ^ v209) + __ROR8__(v371.count[0] + v371.count[1], 32);
          v211 = v210 ^ __ROR8__(v208 ^ v209, 43);
          v212 = v208 + v207;
          v371.hash[0] = __ROR8__(v212, 32);
          v371.hash[1] = v211;
          v371.count[0] = v210 ^ v206;
          v371.count[1] = v212 ^ __ROR8__(v207, 47);
          v199 = (v371.hash[2] & 0xFF00000000000000) + HIDWORD(v180) + 0x800000000000000;
        }

        else
        {
          v182 = v371.count[0];
          v184 = v371.hash[0];
          v183 = v371.count[1];
          v185 = v371.hash[1];
          if ((v371.hash[2] & 0x3FFFFFFFFFFFFFFLL) != 0)
          {
            v186 = (v371.count[0] + v371.count[1]) ^ __ROR8__(v371.count[1], 51);
            v187 = v371.hash[0] + (v371.hash[1] ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL);
            v188 = __ROR8__(v371.hash[1] ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL, 48);
            v189 = (v187 ^ v188) + __ROR8__(v371.count[0] + v371.count[1], 32);
            v185 = v189 ^ __ROR8__(v187 ^ v188, 43);
            v190 = v187 + v186;
            v183 = v190 ^ __ROR8__(v186, 47);
            v184 = __ROR8__(v190, 32);
            v182 = v189 ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL;
            v181 = v371.hash[2] & 0xFF00000000000000;
          }

          v191 = v185 ^ v180;
          v192 = v182 + v183;
          v193 = (v182 + v183) ^ __ROR8__(v183, 51);
          v194 = v184 + v191;
          v195 = __ROR8__(v191, 48);
          v196 = (v194 ^ v195) + __ROR8__(v192, 32);
          v197 = v196 ^ __ROR8__(v194 ^ v195, 43);
          v198 = v194 + v193;
          v371.hash[0] = __ROR8__(v198, 32);
          v371.hash[1] = v197;
          v371.count[0] = v196 ^ v180;
          v371.count[1] = v198 ^ __ROR8__(v193, 47);
          v199 = v181 + 0x800000000000000;
        }

        v371.hash[2] = v199;
      }
    }

    else
    {
      v200 = [MEMORY[0x1E696AAA8] currentHandler];
      v201 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [v200 handleFailureInFunction:v201 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v370 <= 4000)
  {
    if (v370 == 3001)
    {
      _MSV_XXH_XXH64_update(&v371, data, 8uLL);
    }

    else if (v370 == 4000)
    {
      CC_MD5_Update(&v371, data, 4u);
    }
  }

  else
  {
    switch(v370)
    {
      case 4001:
        CC_SHA1_Update(&v371, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v371, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v371, data, 4u);
        break;
    }
  }

  allowsExpiredBags = self->_allowsExpiredBags;
  LODWORD(data[0]) = self->_allowsExpiredBags;
  if (v370 <= 3000)
  {
    if (v370 > 1999)
    {
      if (v370 == 2000)
      {
        v224 = 0;
        if (BYTE3(v371.count[1]) > 1u)
        {
          if (BYTE3(v371.count[1]) == 2)
          {
            v227 = 0;
            v225 = v371.count[1];
            v224 = HIBYTE(LOWORD(v371.count[1]));
            v226 = allowsExpiredBags;
          }

          else
          {
            v225 = 0;
            v226 = 0;
            v227 = 0;
            if (BYTE3(v371.count[1]) == 3)
            {
              v225 = v371.count[1];
              v224 = HIBYTE(LOWORD(v371.count[1]));
              v226 = BYTE2(v371.count[1]);
              v227 = allowsExpiredBags << 8;
            }
          }
        }

        else if (BYTE3(v371.count[1]))
        {
          v225 = 0;
          v226 = 0;
          v227 = 0;
          if (BYTE3(v371.count[1]) == 1)
          {
            v226 = 0;
            v227 = 0;
            v225 = v371.count[1];
            v224 = allowsExpiredBags;
          }
        }

        else
        {
          v224 = 0;
          v226 = 0;
          v227 = 0;
          v225 = allowsExpiredBags;
        }

        v235 = v225 | (v224 << 8) | ((v227 | v226) << 16);
        HIDWORD(v236) = (461845907 * ((380141568 * v235) | ((-862048943 * v235) >> 17))) ^ LODWORD(v371.count[0]);
        LODWORD(v236) = HIDWORD(v236);
        v237 = 5 * (v236 >> 19) - 430675100;
        LODWORD(v371.count[0]) = v237;
        v238 = data - BYTE3(v371.count[1]) + 4;
        v239 = data + ((BYTE3(v371.count[1]) + 4) & 0x1FC) - BYTE3(v371.count[1]);
        if (v238 < v239)
        {
          do
          {
            v240 = *v238;
            v238 += 4;
            HIDWORD(v241) = (461845907 * ((380141568 * v240) | ((-862048943 * v240) >> 17))) ^ v237;
            LODWORD(v241) = HIDWORD(v241);
            v237 = 5 * (v241 >> 19) - 430675100;
          }

          while (v238 < v239);
          LODWORD(v371.count[0]) = v237;
        }

        if ((BYTE3(v371.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v371.count[1]) = *v239;
          if ((BYTE3(v371.count[1]) & 3) != 2)
          {
            BYTE2(v371.count[1]) = v239[2];
          }
        }

        else if ((v371.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v371.count[1]) = *v239;
        }

        BYTE3(v371.count[1]) &= 3u;
        HIDWORD(v371.count[0]) += 4;
      }

      else if (v370 == 3000)
      {
        _MSV_XXH_XXH32_update(&v371, data, 4uLL);
      }
    }

    else if (v370)
    {
      if (v370 == 1000)
      {
        if ((v371.hash[2] & 0x400000000000000) != 0)
        {
          v228 = v371.hash[2] & 0xFFFFFFFFFFFFFFLL | (allowsExpiredBags << 32);
          v229 = (v371.count[0] + v371.count[1]) ^ __ROR8__(v371.count[1], 51);
          v230 = v371.hash[0] + (v371.hash[1] ^ v228);
          v231 = __ROR8__(v371.hash[1] ^ v228, 48);
          v232 = (v230 ^ v231) + __ROR8__(v371.count[0] + v371.count[1], 32);
          v233 = v232 ^ __ROR8__(v230 ^ v231, 43);
          v234 = v230 + v229;
          v371.hash[0] = __ROR8__(v234, 32);
          v371.hash[1] = v233;
          v371.count[0] = v232 ^ v228;
          v371.count[1] = v234 ^ __ROR8__(v229, 47);
          v221 = (v371.hash[2] & 0xFF00000000000000) + 0x400000000000000;
        }

        else
        {
          v221 = v371.hash[2] | allowsExpiredBags | 0x400000000000000;
        }

        v371.hash[2] = v221;
      }
    }

    else
    {
      v222 = [MEMORY[0x1E696AAA8] currentHandler];
      v223 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend32(MSVHasher * _Nonnull, uint32_t)"}];
      [v222 handleFailureInFunction:v223 file:@"MSVHasher+Algorithms.h" lineNumber:192 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v370 <= 4000)
  {
    if (v370 == 3001)
    {
      _MSV_XXH_XXH64_update(&v371, data, 4uLL);
    }

    else if (v370 == 4000)
    {
      CC_MD5_Update(&v371, data, 4u);
    }
  }

  else
  {
    switch(v370)
    {
      case 4001:
        CC_SHA1_Update(&v371, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v371, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v371, data, 4u);
        break;
    }
  }

  personalizationStyle = self->_personalizationStyle;
  *&data[0] = personalizationStyle;
  v243 = v370;
  if (v370 <= 3000)
  {
    if (v370 > 1999)
    {
      if (v370 == 2000)
      {
        LOBYTE(v265) = 0;
        if (BYTE3(v371.count[1]) > 1u)
        {
          if (BYTE3(v371.count[1]) == 2)
          {
            v268 = personalizationStyle >> 8;
            v266 = v371.count[1];
            LODWORD(v265) = HIBYTE(LOWORD(v371.count[1]));
            LOBYTE(v267) = personalizationStyle;
          }

          else
          {
            v266 = 0;
            LOBYTE(v267) = 0;
            LODWORD(v268) = 0;
            if (BYTE3(v371.count[1]) == 3)
            {
              v266 = v371.count[1];
              LODWORD(v265) = HIBYTE(LOWORD(v371.count[1]));
              LOBYTE(v267) = BYTE2(v371.count[1]);
              LODWORD(v268) = personalizationStyle;
            }
          }
        }

        else if (BYTE3(v371.count[1]))
        {
          v266 = 0;
          LOBYTE(v267) = 0;
          LODWORD(v268) = 0;
          if (BYTE3(v371.count[1]) == 1)
          {
            v267 = personalizationStyle >> 8;
            v266 = v371.count[1];
            v268 = personalizationStyle >> 16;
            LOBYTE(v265) = personalizationStyle;
          }
        }

        else
        {
          v265 = personalizationStyle >> 8;
          v267 = personalizationStyle >> 16;
          v266 = personalizationStyle;
          v268 = personalizationStyle >> 24;
        }

        v276 = (v267 << 16) | (v268 << 24) | v266 | (v265 << 8);
        HIDWORD(v277) = (461845907 * ((380141568 * v276) | ((-862048943 * v276) >> 17))) ^ LODWORD(v371.count[0]);
        LODWORD(v277) = HIDWORD(v277);
        v278 = 5 * (v277 >> 19) - 430675100;
        LODWORD(v371.count[0]) = v278;
        v279 = data - BYTE3(v371.count[1]) + 4;
        v280 = data + ((BYTE3(v371.count[1]) + 8) & 0x1FC) - BYTE3(v371.count[1]);
        if (v279 < v280)
        {
          do
          {
            v281 = *v279;
            v279 += 4;
            HIDWORD(v282) = (461845907 * ((380141568 * v281) | ((-862048943 * v281) >> 17))) ^ v278;
            LODWORD(v282) = HIDWORD(v282);
            v278 = 5 * (v282 >> 19) - 430675100;
          }

          while (v279 < v280);
          LODWORD(v371.count[0]) = v278;
        }

        if ((BYTE3(v371.count[1]) & 3u) > 1uLL)
        {
          LOWORD(v371.count[1]) = *v280;
          if ((BYTE3(v371.count[1]) & 3) != 2)
          {
            BYTE2(v371.count[1]) = v280[2];
          }
        }

        else if ((v371.count[1] & 0x3000000) != 0)
        {
          LOBYTE(v371.count[1]) = *v280;
        }

        BYTE3(v371.count[1]) &= 3u;
        HIDWORD(v371.count[0]) += 8;
      }

      else
      {
        if (v370 != 3000)
        {
          goto LABEL_301;
        }

        _MSV_XXH_XXH32_update(&v371, data, 8uLL);
      }
    }

    else if (v370)
    {
      if (v370 != 1000)
      {
        goto LABEL_301;
      }

      v244 = v371.hash[2];
      if ((v371.hash[2] & 0x400000000000000) != 0)
      {
        v269 = v371.hash[2] & 0xFFFFFFFFFFFFFFLL | (personalizationStyle << 32);
        v270 = (v371.count[0] + v371.count[1]) ^ __ROR8__(v371.count[1], 51);
        v271 = v371.hash[0] + (v371.hash[1] ^ v269);
        v272 = __ROR8__(v371.hash[1] ^ v269, 48);
        v273 = (v271 ^ v272) + __ROR8__(v371.count[0] + v371.count[1], 32);
        v274 = v273 ^ __ROR8__(v271 ^ v272, 43);
        v275 = v271 + v270;
        v371.hash[0] = __ROR8__(v275, 32);
        v371.hash[1] = v274;
        v371.count[0] = v273 ^ v269;
        v371.count[1] = v275 ^ __ROR8__(v270, 47);
        v262 = (v371.hash[2] & 0xFF00000000000000) + HIDWORD(personalizationStyle) + 0x800000000000000;
      }

      else
      {
        v245 = v371.count[0];
        v247 = v371.hash[0];
        v246 = v371.count[1];
        v248 = v371.hash[1];
        if ((v371.hash[2] & 0x3FFFFFFFFFFFFFFLL) != 0)
        {
          v249 = (v371.count[0] + v371.count[1]) ^ __ROR8__(v371.count[1], 51);
          v250 = v371.hash[0] + (v371.hash[1] ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL);
          v251 = __ROR8__(v371.hash[1] ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL, 48);
          v252 = (v250 ^ v251) + __ROR8__(v371.count[0] + v371.count[1], 32);
          v248 = v252 ^ __ROR8__(v250 ^ v251, 43);
          v253 = v250 + v249;
          v246 = v253 ^ __ROR8__(v249, 47);
          v247 = __ROR8__(v253, 32);
          v245 = v252 ^ v371.hash[2] & 0xFFFFFFFFFFFFFFLL;
          v244 = v371.hash[2] & 0xFF00000000000000;
        }

        v254 = v248 ^ personalizationStyle;
        v255 = v245 + v246;
        v256 = (v245 + v246) ^ __ROR8__(v246, 51);
        v257 = v247 + v254;
        v258 = __ROR8__(v254, 48);
        v259 = (v257 ^ v258) + __ROR8__(v255, 32);
        v260 = v259 ^ __ROR8__(v257 ^ v258, 43);
        v261 = v257 + v256;
        v371.hash[0] = __ROR8__(v261, 32);
        v371.hash[1] = v260;
        v371.count[0] = v259 ^ personalizationStyle;
        v371.count[1] = v261 ^ __ROR8__(v256, 47);
        v262 = v244 + 0x800000000000000;
      }

      v371.hash[2] = v262;
    }

    else
    {
      v263 = [MEMORY[0x1E696AAA8] currentHandler];
      v264 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MSVHasherAppend64(MSVHasher * _Nonnull, uint64_t)"}];
      [v263 handleFailureInFunction:v264 file:@"MSVHasher+Algorithms.h" lineNumber:227 description:@"Cannot append to unknown hasher algorithm"];
    }
  }

  else if (v370 <= 4000)
  {
    if (v370 == 3001)
    {
      _MSV_XXH_XXH64_update(&v371, data, 8uLL);
    }

    else
    {
      if (v370 != 4000)
      {
        goto LABEL_301;
      }

      CC_MD5_Update(&v371, data, 4u);
    }
  }

  else
  {
    switch(v370)
    {
      case 4001:
        CC_SHA1_Update(&v371, data, 4u);
        break;
      case 4256:
        CC_SHA256_Update(&v371, data, 4u);
        break;
      case 4512:
        CC_SHA512_Update(&v371, data, 4u);
        break;
      default:
        goto LABEL_301;
    }
  }

  v243 = v370;
LABEL_301:
  memset(&v372[8], 0, 64);
  *v372 = v243;
  if (v243 <= 3000)
  {
    if (v243 <= 1999)
    {
      if (!v243)
      {
        v316 = [MEMORY[0x1E696AAA8] currentHandler];
        v317 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
        [v316 handleFailureInFunction:v317 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];

        goto LABEL_348;
      }

      if (v243 != 1000)
      {
        goto LABEL_348;
      }

      v283 = (v371.count[0] + v371.count[1]) ^ __ROR8__(v371.count[1], 51);
      v284 = v371.hash[0] + (v371.hash[1] ^ v371.hash[2]);
      v285 = __ROR8__(v371.hash[1] ^ v371.hash[2], 48);
      v286 = (v284 ^ v285) + __ROR8__(v371.count[0] + v371.count[1], 32);
      v287 = v286 ^ __ROR8__(v284 ^ v285, 43);
      v288 = v284 + v283;
      v289 = v288 ^ __ROR8__(v283, 47);
      v290 = (v286 ^ v371.hash[2]) + v289;
      v291 = v290 ^ __ROR8__(v289, 51);
      v292 = (__ROR8__(v288, 32) ^ 0xFFLL) + v287;
      v293 = __ROR8__(v287, 48);
      v294 = __ROR8__(v290, 32) + (v292 ^ v293);
      v295 = v294 ^ __ROR8__(v292 ^ v293, 43);
      v296 = v291 + v292;
      v297 = v296 ^ __ROR8__(v291, 47);
      v298 = v297 + v294;
      v299 = v298 ^ __ROR8__(v297, 51);
      v300 = __ROR8__(v296, 32) + v295;
      v301 = __ROR8__(v295, 48);
      v302 = __ROR8__(v298, 32) + (v300 ^ v301);
      v303 = v302 ^ __ROR8__(v300 ^ v301, 43);
      v304 = v299 + v300;
      v305 = v304 ^ __ROR8__(v299, 47);
      v306 = v305 + v302;
      v307 = v306 ^ __ROR8__(v305, 51);
      v308 = __ROR8__(v304, 32) + v303;
      v309 = __ROR8__(v303, 48);
      v310 = __ROR8__(v306, 32) + (v308 ^ v309);
      v311 = v310 ^ __ROR8__(v308 ^ v309, 43);
      v312 = v307 + v308;
      v371.count[0] = v310;
      v371.count[1] = v312 ^ __ROR8__(v307, 47);
      v371.hash[0] = __ROR8__(v312, 32);
      v371.hash[1] = v311;
      v313 = v371.count[1] ^ v310 ^ v371.hash[0] ^ v311;
      goto LABEL_335;
    }

    if (v243 != 2000)
    {
      if (v243 != 3000)
      {
        goto LABEL_348;
      }

      v314 = &v371.hash[1];
      if (HIDWORD(v371.count[0]))
      {
        v315 = vaddvq_s32(vorrq_s8(vshlq_u32(*&v371.count[1], xmmword_1B4755590), vshlq_u32(*&v371.count[1], xmmword_1B4755580)));
      }

      else
      {
        v315 = LODWORD(v371.hash[0]) + 374761393;
      }

      v327 = LODWORD(v371.count[0]) + v315;
      v328 = v371.hash[3] & 0xF;
      if (v328 >= 4)
      {
        do
        {
          v329 = *v314;
          v314 = (v314 + 4);
          HIDWORD(v330) = v327 - 1028477379 * v329;
          LODWORD(v330) = HIDWORD(v330);
          v327 = 668265263 * (v330 >> 15);
          v328 -= 4;
        }

        while (v328 > 3);
      }

      for (; v328; --v328)
      {
        v331 = *v314;
        v314 = (v314 + 1);
        HIDWORD(v332) = v327 + 374761393 * v331;
        LODWORD(v332) = HIDWORD(v332);
        v327 = -1640531535 * (v332 >> 21);
      }

      v333 = -1028477379 * ((-2048144777 * (v327 ^ (v327 >> 15))) ^ ((-2048144777 * (v327 ^ (v327 >> 15))) >> 13));
      v334 = v333 ^ HIWORD(v333);
      goto LABEL_347;
    }

    switch(BYTE3(v371.count[1]))
    {
      case 1u:
        v318 = LOBYTE(v371.count[1]);
        break;
      case 2u:
        v318 = LOWORD(v371.count[1]);
        break;
      case 3u:
        v318 = LOWORD(v371.count[1]) | (BYTE2(v371.count[1]) << 16);
        break;
      default:
        v335 = v371.count[0];
        goto LABEL_346;
    }

    v335 = (461845907 * ((380141568 * v318) | ((-862048943 * v318) >> 17))) ^ LODWORD(v371.count[0]);
LABEL_346:
    v336 = -2048144789 * (v335 ^ HIDWORD(v371.count[0]) ^ ((v335 ^ HIDWORD(v371.count[0])) >> 16));
    v334 = (-1028477387 * (v336 ^ (v336 >> 13))) ^ ((-1028477387 * (v336 ^ (v336 >> 13))) >> 16);
    LODWORD(v371.count[0]) = v334;
LABEL_347:
    *&v372[8] = v334;
    goto LABEL_348;
  }

  if (v243 > 4000)
  {
    switch(v243)
    {
      case 4001:
        CC_SHA1_Final(&v372[8], &v371);
        break;
      case 4256:
        CC_SHA256_Final(&v372[8], &v371);
        break;
      case 4512:
        CC_SHA512_Final(&v372[8], &v371);
        break;
    }

    goto LABEL_348;
  }

  if (v243 == 3001)
  {
    v319 = &v371.hash[3];
    if (v371.count[0] < 0x20)
    {
      v320 = v371.hash[1] + 0x27D4EB2F165667C5;
    }

    else
    {
      v320 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((__ROR8__(v371.hash[0], 57) + __ROR8__(v371.count[1], 63) + __ROR8__(v371.hash[1], 52) + __ROR8__(v371.hash[2], 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v371.count[1], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v371.hash[0], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v371.hash[1], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v371.hash[2], 33)));
    }

    v321 = v320 + v371.count[0];
    v322 = v371.count[0] & 0x1F;
    if (v322 >= 8)
    {
      do
      {
        v323 = *v319++;
        v321 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v323, 33)) ^ v321, 37);
        v322 -= 8;
      }

      while (v322 > 7);
    }

    if (v322 >= 4)
    {
      v324 = *v319;
      v319 = (v319 + 4);
      v321 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v324) ^ v321, 41);
      v322 -= 4;
    }

    for (; v322; --v322)
    {
      v325 = *v319;
      v319 = (v319 + 1);
      v321 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v325) ^ v321, 53);
    }

    v326 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v321 ^ (v321 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v321 ^ (v321 >> 33))) >> 29));
    v313 = v326 ^ HIDWORD(v326);
LABEL_335:
    *&v372[8] = v313;
    goto LABEL_348;
  }

  if (v243 == 4000)
  {
    CC_MD5_Final(&v372[8], &v371);
  }

LABEL_348:
  data[0] = *v372;
  data[1] = *&v372[16];
  data[2] = *&v372[32];
  data[3] = *&v372[48];
  v374 = *&v372[64];
  if (*v372 > 3999)
  {
    if (*&data[0] > 4255)
    {
      if (*&data[0] == 4256)
      {
        v359 = data + 8;
        v360 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v361 = v360;
        for (i = 0; i != 64; i += 2)
        {
          v363 = *v359++;
          v364 = &v360[i];
          *v364 = MSVFastHexStringFromBytes_hexCharacters_41965[v363 >> 4];
          v364[1] = MSVFastHexStringFromBytes_hexCharacters_41965[v363 & 0xF];
        }

        v343 = objc_alloc(MEMORY[0x1E696AEC0]);
        v344 = v361;
        v345 = 64;
      }

      else
      {
        if (*&data[0] != 4512)
        {
          goto LABEL_376;
        }

        v347 = data + 8;
        v348 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v349 = v348;
        for (j = 0; j != 128; j += 2)
        {
          v351 = *v347++;
          v352 = &v348[j];
          *v352 = MSVFastHexStringFromBytes_hexCharacters_41965[v351 >> 4];
          v352[1] = MSVFastHexStringFromBytes_hexCharacters_41965[v351 & 0xF];
        }

        v343 = objc_alloc(MEMORY[0x1E696AEC0]);
        v344 = v349;
        v345 = 128;
      }
    }

    else if (*&data[0] == 4000)
    {
      v353 = data + 8;
      v354 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v355 = v354;
      for (k = 0; k != 32; k += 2)
      {
        v357 = *v353++;
        v358 = &v354[k];
        *v358 = MSVFastHexStringFromBytes_hexCharacters_41965[v357 >> 4];
        v358[1] = MSVFastHexStringFromBytes_hexCharacters_41965[v357 & 0xF];
      }

      v343 = objc_alloc(MEMORY[0x1E696AEC0]);
      v344 = v355;
      v345 = 32;
    }

    else
    {
      if (*&data[0] != 4001)
      {
        goto LABEL_376;
      }

      v337 = data + 8;
      v338 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v339 = v338;
      for (m = 0; m != 40; m += 2)
      {
        v341 = *v337++;
        v342 = &v338[m];
        *v342 = MSVFastHexStringFromBytes_hexCharacters_41965[v341 >> 4];
        v342[1] = MSVFastHexStringFromBytes_hexCharacters_41965[v341 & 0xF];
      }

      v343 = objc_alloc(MEMORY[0x1E696AEC0]);
      v344 = v339;
      v345 = 40;
    }

    v365 = [v343 initWithBytesNoCopy:v344 length:v345 encoding:4 freeWhenDone:1];
    v346 = [v365 hash];

    return v346;
  }

  if (*&data[0] <= 2999)
  {
    if (*&data[0] != 1000)
    {
      if (*&data[0] != 2000)
      {
        goto LABEL_376;
      }

      return DWORD2(data[0]);
    }

    return *(&data[0] + 1);
  }

  if (*&data[0] == 3000)
  {
    return DWORD2(data[0]);
  }

  if (*&data[0] != 3001)
  {
LABEL_376:
    v367 = [MEMORY[0x1E696AAA8] currentHandler];
    v368 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSUInteger _MSVHashGetHash(MSVHash)"];
    [v367 handleFailureInFunction:v368 file:@"MSVHasher+Algorithms.h" lineNumber:301 description:@"Cannot obtain hash from unknown hasher algorithm"];

    return 0;
  }

  return *(&data[0] + 1);
}

- (id)copyWithBlock:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__ICStoreRequestContext_copyWithBlock___block_invoke;
  v9[3] = &unk_1E7BF37A0;
  v9[4] = self;
  v10 = v4;
  v8.receiver = self;
  v8.super_class = ICStoreRequestContext;
  v5 = v4;
  v6 = [(ICRequestContext *)&v8 copyWithBlock:v9];

  return v6;
}

void __39__ICStoreRequestContext_copyWithBlock___block_invoke(uint64_t a1, id *a2)
{
  objc_storeStrong(a2 + 7, *(*(a1 + 32) + 56));
  v4 = a2;
  objc_storeStrong(v4 + 8, *(*(a1 + 32) + 64));
  objc_storeStrong(v4 + 9, *(*(a1 + 32) + 72));
  objc_storeStrong(v4 + 10, *(*(a1 + 32) + 80));
  *(v4 + 96) = *(*(a1 + 32) + 96);
  v4[11] = *(*(a1 + 32) + 88);
  (*(*(a1 + 40) + 16))();
}

- (ICStoreRequestContext)initWithBlock:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__ICStoreRequestContext_initWithBlock___block_invoke;
  v9[3] = &unk_1E7BF3778;
  v10 = v4;
  v8.receiver = self;
  v8.super_class = ICStoreRequestContext;
  v5 = v4;
  v6 = [(ICRequestContext *)&v8 initWithBlock:v9];

  return v6;
}

void __39__ICStoreRequestContext_initWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [(ICURLResponseAuthenticationProvider *)[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:2];
  [v11 setAuthenticationProvider:v3];

  v4 = +[ICUserIdentity nullIdentity];
  v5 = *(v11 + 8);
  *(v11 + 8) = v4;

  v6 = +[ICUserIdentityStore nullIdentityStore];
  v7 = *(v11 + 9);
  *(v11 + 9) = v6;

  *(v11 + 96) = 1;
  *(v11 + 11) = 1;
  (*(*(a1 + 32) + 16))();
  v8 = +[ICUserIdentityStore nullIdentityStore];
  LODWORD(v3) = [v8 isEqual:*(v11 + 9)];

  if (v3)
  {
    v9 = +[ICUserIdentityStore defaultIdentityStore];
    v10 = *(v11 + 9);
    *(v11 + 9) = v9;
  }
}

- (ICStoreRequestContext)initWithIdentity:(id)a3 identityStore:(id)a4 clientInfo:(id)a5 authenticationProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11 || !v12)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"ICStoreRequestContext.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"identityStore != nil && identity != nil"}];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __90__ICStoreRequestContext_initWithIdentity_identityStore_clientInfo_authenticationProvider___block_invoke;
  v22[3] = &unk_1E7BF3750;
  v23 = v13;
  v24 = v11;
  v25 = v12;
  v26 = v14;
  v15 = v14;
  v16 = v12;
  v17 = v11;
  v18 = v13;
  v19 = [(ICStoreRequestContext *)self initWithBlock:v22];

  return v19;
}

void __90__ICStoreRequestContext_initWithIdentity_identityStore_clientInfo_authenticationProvider___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setClientInfo:v3];
  [v4 setIdentity:a1[5]];
  [v4 setIdentityStore:a1[6]];
  [v4 setAuthenticationProvider:a1[7]];
}

- (ICStoreRequestContext)initWithIdentity:(id)a3 identityStore:(id)a4 clientInfo:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = +[ICUserIdentityStore defaultIdentityStore];
  v10 = [(ICURLResponseAuthenticationProvider *)[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:2];
  v11 = [(ICStoreRequestContext *)self initWithIdentity:v8 identityStore:v9 clientInfo:v7 authenticationProvider:v10];

  return v11;
}

- (ICStoreRequestContext)initWithIdentity:(id)a3 clientInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[ICUserIdentityStore defaultIdentityStore];
  v9 = [(ICStoreRequestContext *)self initWithIdentity:v7 identityStore:v8 clientInfo:v6];

  return v9;
}

- (ICStoreRequestContext)initWithIdentity:(id)a3
{
  v4 = a3;
  v5 = +[ICClientInfo defaultInfo];
  v6 = [(ICStoreRequestContext *)self initWithIdentity:v4 clientInfo:v5];

  return v6;
}

+ (id)activeStoreAccountRequestContext
{
  v2 = [a1 alloc];
  v3 = +[ICUserIdentity activeAccount];
  v4 = [v2 initWithIdentity:v3];

  return v4;
}

@end