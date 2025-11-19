@interface ICMusicKitTokensResponse
- (BOOL)isEqual:(id)a3;
- (ICMusicKitTokensResponse)initWithCoder:(id)a3;
- (ICMusicKitTokensResponse)initWithDeveloperToken:(id)a3 userToken:(id)a4 userTokenFetchingError:(id)a5;
- (id)_descriptionForDebugging:(BOOL)a3;
- (id)_descriptionOfToken:(id)a3 forDebugging:(BOOL)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICMusicKitTokensResponse

- (void)encodeWithCoder:(id)a3
{
  developerToken = self->_developerToken;
  v5 = a3;
  [v5 encodeObject:developerToken forKey:@"d"];
  [v5 encodeObject:self->_userToken forKey:@"u"];
  v6 = [(NSError *)self->_userTokenFetchingError msv_errorByRemovingUnsafeUserInfo];
  [v5 encodeObject:v6 forKey:@"e"];
}

- (ICMusicKitTokensResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"u"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"e"];
  if (v5)
  {
    v8 = [(ICMusicKitTokensResponse *)self initWithDeveloperToken:v5 userToken:v6 userTokenFetchingError:v7];
  }

  else
  {
    v9 = os_log_create("com.apple.amp.iTunesCloud", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_ERROR, "Failed to decode valid developer token while initializing instance of ICMusicKitTokensResponse from decoder.", v12, 2u);
    }

    v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-7005 debugDescription:@"Failed to decode valid developer token while initializing instance of ICMusicKitTokensResponse from decoder."];
    [v4 failWithError:v10];

    v8 = 0;
  }

  return v8;
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
    if ([(ICMusicKitTokensResponse *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      developerToken = v5->_developerToken;
      v7 = self->_developerToken;
      v8 = v7;
      if (v7 == developerToken)
      {
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:developerToken];

        if (!v9)
        {
          goto LABEL_11;
        }
      }

      userToken = v5->_userToken;
      v12 = self->_userToken;
      v13 = v12;
      if (v12 == userToken)
      {
      }

      else
      {
        v14 = [(NSString *)v12 isEqual:userToken];

        if (!v14)
        {
LABEL_11:
          v10 = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      userTokenFetchingError = self->_userTokenFetchingError;
      v16 = v5->_userTokenFetchingError;
      v17 = userTokenFetchingError;
      v18 = v17;
      if (v17 == v16)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(NSError *)v17 isEqual:v16];
      }

      goto LABEL_17;
    }

    v10 = 0;
  }

LABEL_18:

  return v10;
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v4 ^ 0x646F72616E646F6DLL;
  v8 = v3 ^ 0x6C7967656E657261;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v7) ^ __ROR8__(v7, 51);
  v14 = v8 + v12;
  v15 = (v8 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v7, 32);
  v78 = __ROR8__(v14 + v13, 32);
  v82 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v74 = (v14 + v13) ^ __ROR8__(v13, 47);

  v18 = self->_developerToken;
  v19 = [(NSString *)v18 hash];
  v20 = (v17 + v74) ^ __ROR8__(v74, 51);
  v21 = v78 + (v82 ^ v19);
  v22 = __ROR8__(v82 ^ v19, 48);
  v23 = (v21 ^ v22) + __ROR8__(v17 + v74, 32);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v21 + v20;
  v79 = __ROR8__(v25, 32);
  v83 = v24;
  v71 = v23 ^ v19;
  v75 = v25 ^ __ROR8__(v20, 47);

  v26 = self->_userToken;
  v27 = [(NSString *)v26 hash];
  v28 = (v71 + v75) ^ __ROR8__(v75, 51);
  v29 = v79 + (v83 ^ v27);
  v30 = __ROR8__(v83 ^ v27, 48);
  v31 = (v29 ^ v30) + __ROR8__(v71 + v75, 32);
  v32 = v31 ^ __ROR8__(v29 ^ v30, 43);
  v33 = v29 + v28;
  v80 = __ROR8__(v33, 32);
  v84 = v32;
  v72 = v31 ^ v27;
  v76 = v33 ^ __ROR8__(v28, 47);

  v34 = self->_userTokenFetchingError;
  v35 = [(NSError *)v34 hash];
  v36 = (v72 + v76) ^ __ROR8__(v76, 51);
  v37 = v80 + (v84 ^ v35);
  v38 = __ROR8__(v84 ^ v35, 48);
  v39 = (v37 ^ v38) + __ROR8__(v72 + v76, 32);
  v40 = v39 ^ __ROR8__(v37 ^ v38, 43);
  v41 = v37 + v36;
  v81 = __ROR8__(v41, 32);
  v85 = v40;
  v73 = v39 ^ v35;
  v77 = v41 ^ __ROR8__(v36, 47);

  v42 = (v73 + v77) ^ __ROR8__(v77, 51);
  v43 = v81 + (v85 ^ 0x2000000000000000);
  v44 = __ROR8__(v85 ^ 0x2000000000000000, 48);
  v45 = (v43 ^ v44) + __ROR8__(v73 + v77, 32);
  v46 = v45 ^ __ROR8__(v43 ^ v44, 43);
  v47 = v43 + v42;
  v48 = v47 ^ __ROR8__(v42, 47);
  v49 = (v45 ^ 0x2000000000000000) + v48;
  v50 = v49 ^ __ROR8__(v48, 51);
  v51 = (__ROR8__(v47, 32) ^ 0xFFLL) + v46;
  v52 = __ROR8__(v46, 48);
  v53 = __ROR8__(v49, 32) + (v51 ^ v52);
  v54 = v53 ^ __ROR8__(v51 ^ v52, 43);
  v55 = v50 + v51;
  v56 = v55 ^ __ROR8__(v50, 47);
  v57 = v56 + v53;
  v58 = v57 ^ __ROR8__(v56, 51);
  v59 = __ROR8__(v55, 32) + v54;
  v60 = __ROR8__(v54, 48);
  v61 = __ROR8__(v57, 32) + (v59 ^ v60);
  v62 = v61 ^ __ROR8__(v59 ^ v60, 43);
  v63 = v58 + v59;
  v64 = v63 ^ __ROR8__(v58, 47);
  v65 = v64 + v61;
  v66 = v65 ^ __ROR8__(v64, 51);
  v67 = __ROR8__(v63, 32) + v62;
  v68 = __ROR8__(v62, 48);
  v69 = __ROR8__(v65, 32) + (v67 ^ v68);
  return (v66 + v67) ^ __ROR8__(v66, 47) ^ v69 ^ __ROR8__(v66 + v67, 32) ^ v69 ^ __ROR8__(v67 ^ v68, 43);
}

- (id)_descriptionForDebugging:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc(MEMORY[0x1E696AD60]);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 initWithFormat:@"<%@: %p; {", v7, self];

  v9 = [(ICMusicKitTokensResponse *)self _descriptionOfToken:self->_developerToken forDebugging:v3];
  [v8 appendFormat:@"\n    developerToken: %@, ", v9];
  userToken = self->_userToken;
  if (userToken)
  {
    v11 = [(ICMusicKitTokensResponse *)self _descriptionOfToken:userToken forDebugging:v3];
    [v8 appendFormat:@"\n    userToken: %@, ", v11];
  }

  if (self->_userTokenFetchingError)
  {
    [v8 appendFormat:@"\n    userTokenFetchingError: %@", self->_userTokenFetchingError];
  }

  [v8 appendString:@"\n}>"];

  return v8;
}

- (id)_descriptionOfToken:(id)a3 forDebugging:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  v7 = v5;
  if (!a4)
  {
    v8 = [v5 length];
    v7 = v6;
    if (v8 >= 0x15)
    {
      v9 = v8;
      v10 = [v6 substringWithRange:{0, 12}];
      v11 = [v6 substringWithRange:{v9 - 8, 8}];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@…%@", v10, v11];
    }
  }

  return v7;
}

- (ICMusicKitTokensResponse)initWithDeveloperToken:(id)a3 userToken:(id)a4 userTokenFetchingError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = ICMusicKitTokensResponse;
  v11 = [(ICMusicKitTokensResponse *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    developerToken = v11->_developerToken;
    v11->_developerToken = v12;

    v14 = [v9 copy];
    userToken = v11->_userToken;
    v11->_userToken = v14;

    v16 = [v10 copy];
    userTokenFetchingError = v11->_userTokenFetchingError;
    v11->_userTokenFetchingError = v16;
  }

  return v11;
}

@end