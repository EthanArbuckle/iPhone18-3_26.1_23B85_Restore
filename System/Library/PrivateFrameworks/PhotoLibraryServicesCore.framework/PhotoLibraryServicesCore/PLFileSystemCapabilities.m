@interface PLFileSystemCapabilities
+ (PLFileSystemCapabilities)capabilitiesWithURL:(id)a3;
- (BOOL)determineCapabilitiesWithURL:(id)a3 error:(id *)a4;
- (BOOL)isCentralizedCacheDeleteCapable;
- (id)description;
@end

@implementation PLFileSystemCapabilities

- (id)description
{
  v3 = [(PLFileSystemCapabilities *)self isValid];
  v4 = MEMORY[0x1E696AEC0];
  if (v3)
  {
    v5 = [(PLFileSystemCapabilities *)self fileSystemTypeName];
    [v4 stringWithFormat:@"type:%@ readOnly:%d clone:%d flock:%d genCount:%d seclude:%d local:%d internal:%d", v5, -[PLFileSystemCapabilities isReadOnly](self, "isReadOnly"), -[PLFileSystemCapabilities isCloneCapable](self, "isCloneCapable"), -[PLFileSystemCapabilities isWholeFileLockCapable](self, "isWholeFileLockCapable"), -[PLFileSystemCapabilities isGenCountCapable](self, "isGenCountCapable"), -[PLFileSystemCapabilities isSecludeRenameCapable](self, "isSecludeRenameCapable"), -[PLFileSystemCapabilities isLocalVolume](self, "isLocalVolume"), -[PLFileSystemCapabilities isInternalVolume](self, "isInternalVolume")];
    v7 = LABEL_5:;

    goto LABEL_6;
  }

  error = self->_error;
  if (error)
  {
    v5 = [(NSError *)error localizedDescription];
    [v4 stringWithFormat:@"invalid: %@", v5, v9, v10, v11, v12, v13, v14, v15];
    goto LABEL_5;
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid: %@", @"uninitialized"];
LABEL_6:

  return v7;
}

- (BOOL)determineCapabilitiesWithURL:(id)a3 error:(id *)a4
{
  v66[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A798];
    v23 = *MEMORY[0x1E696A588];
    v65[0] = *MEMORY[0x1E696A278];
    v65[1] = v23;
    v66[0] = @"nil URL";
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:strerror(22)];
    v66[1] = v8;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
    v25 = [v21 errorWithDomain:v22 code:22 userInfo:v24];
    error = self->_error;
    self->_error = v25;

    v27 = v25;
    if (a4)
    {
      *a4 = v25;
    }

    goto LABEL_9;
  }

  v8 = [v6 URLByDeletingLastPathComponent];
  memset(&v64, 0, 512);
  if (!statfs([v8 fileSystemRepresentation], &v64))
  {
    v57 = 0u;
    memset(v58, 0, sizeof(v58));
    v55 = 0u;
    v56 = 0u;
    v53 = xmmword_1AAA8F5D8;
    v54 = 0;
    if (getattrlist(v64.f_mntonname, &v53, &v55, 0x4CuLL, 0))
    {
      v29 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A798];
      v31 = *__error();
      v32 = *MEMORY[0x1E696A278];
      v61[0] = @"error finding volume attributes";
      v33 = *MEMORY[0x1E696A588];
      v60[0] = v32;
      v60[1] = v33;
      v34 = MEMORY[0x1E696AEC0];
      v35 = __error();
      v36 = [v34 stringWithUTF8String:strerror(*v35)];
      v60[2] = *MEMORY[0x1E696A998];
      v61[1] = v36;
      v61[2] = v7;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:3];
      v38 = [v29 errorWithDomain:v30 code:v31 userInfo:v37];
      v39 = self->_error;
      self->_error = v38;

      v40 = v38;
      if (a4)
      {
        v28 = 0;
        *a4 = v38;
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v41 = *MEMORY[0x1E695DDA8];
      v42 = *MEMORY[0x1E695DD98];
      v59[0] = *MEMORY[0x1E695DDA8];
      v59[1] = v42;
      v51 = *MEMORY[0x1E695DDC0];
      v59[2] = *MEMORY[0x1E695DDC0];
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:3];
      v52 = 0;
      v37 = [v8 resourceValuesForKeys:v43 error:&v52];
      v44 = v52;
      v36 = v52;

      if (v37)
      {
        strlcpy(self->_fstypename, v64.f_fstypename, 0x10uLL);
        self->_isReadOnly = v64.f_flags & 1;
        v45 = v58[2];
        self->_interfacesCapabilities = DWORD2(v55) & DWORD2(v56);
        self->_nativeCommonAttributes = v45;
        v46 = [v37 objectForKeyedSubscript:v41];
        self->_isLocalVolume = [v46 BOOLValue];

        v47 = [v37 objectForKeyedSubscript:v42];
        self->_isInternalVolume = [v47 BOOLValue];

        v48 = [v37 objectForKeyedSubscript:v51];
        self->_isRootFileSystemVolume = [v48 BOOLValue];

        self->_supportsDataProtection = (v64.f_flags & 0x80) != 0;
        v28 = 1;
        self->_isValid = 1;
        goto LABEL_18;
      }

      objc_storeStrong(&self->_error, v44);
      v49 = v36;
      v37 = 0;
      if (a4)
      {
        v28 = 0;
        *a4 = v36;
        goto LABEL_18;
      }
    }

    v28 = 0;
    goto LABEL_18;
  }

  v9 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A798];
  v11 = *__error();
  v12 = *MEMORY[0x1E696A278];
  v63[0] = @"error finding filesystem information";
  v13 = *MEMORY[0x1E696A588];
  v62[0] = v12;
  v62[1] = v13;
  v14 = MEMORY[0x1E696AEC0];
  v15 = __error();
  v16 = [v14 stringWithUTF8String:strerror(*v15)];
  v62[2] = *MEMORY[0x1E696A998];
  v63[1] = v16;
  v63[2] = v7;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:3];
  v18 = [v9 errorWithDomain:v10 code:v11 userInfo:v17];
  v19 = self->_error;
  self->_error = v18;

  v20 = v18;
  if (a4)
  {
    *a4 = v18;
  }

LABEL_9:
  v28 = 0;
LABEL_19:

  return v28;
}

- (BOOL)isCentralizedCacheDeleteCapable
{
  if (isCentralizedCacheDeleteCapable_onceToken != -1)
  {
    dispatch_once(&isCentralizedCacheDeleteCapable_onceToken, &__block_literal_global_8568);
  }

  if (isCentralizedCacheDeleteCapable_supportsCCDDefault != 1)
  {
    return 0;
  }

  return [(PLFileSystemCapabilities *)self isValid];
}

uint64_t __59__PLFileSystemCapabilities_isCentralizedCacheDeleteCapable__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v0 objectForKey:@"PLSupportsCCD"];

  if (v3)
  {
    v1 = [v3 BOOLValue];
  }

  else
  {
    v1 = 1;
  }

  isCentralizedCacheDeleteCapable_supportsCCDDefault = v1;

  return MEMORY[0x1EEE66BB8]();
}

+ (PLFileSystemCapabilities)capabilitiesWithURL:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PLFileSystemCapabilities);
  [(PLFileSystemCapabilities *)v4 determineCapabilitiesWithURL:v3 error:0];

  return v4;
}

@end