@interface STDynamicActivityAttribution
+ (id)attributionForClientAuditToken:(id *)a3 clientExecutablePath:(id)a4 bundleID:(id)a5 localizationKey:(id)a6;
+ (id)attributionForClientAuditToken:(id *)a3 maskingClientAuditToken:(id *)a4 clientExecutablePath:(id)a5 maskingClientExecutablePath:(id)a6 localizationKey:(id)a7;
+ (id)attributionForClientAuditToken:(id *)a3 maskingClientAuditToken:(id *)a4 clientExecutablePath:(id)a5 maskingClientExecutablePath:(id)a6 stringWithFormat:(id)a7;
+ (id)attributionForClientAuditToken:(id *)a3 maskingClientAuditToken:(id *)a4 clientExecutablePath:(id)a5 maskingClientExecutablePath:(id)a6 website:(id)a7;
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- ($115C4C562B26FF47E01F9F4EA65B5887)maskingClientAuditToken;
- (BOOL)isEqual:(id)a3;
- (STDynamicActivityAttribution)initWithCoder:(id)a3;
- (id)description;
- (void)_initWithClientAuditToken:(void *)a3 clientExecutablePath:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STDynamicActivityAttribution

+ (id)attributionForClientAuditToken:(id *)a3 clientExecutablePath:(id)a4 bundleID:(id)a5 localizationKey:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(a2);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138544642;
        *&buf[4] = v24;
        *&buf[12] = 2114;
        *&buf[14] = v26;
        *&buf[22] = 2048;
        *&buf[24] = a1;
        v32 = 2114;
        v33 = @"STDynamicActivityAttribution.m";
        v34 = 1024;
        v35 = 17;
        v36 = 2114;
        v37 = v23;
        _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v23 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1DA9FC440);
    }

    if (!v12)
    {
      goto LABEL_8;
    }
  }

  else if (!v12)
  {
    v16 = 0;
    goto LABEL_11;
  }

  NSClassFromString(&cfstr_Nsstring.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = NSStringFromSelector(a2);
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138544642;
      *&buf[4] = v28;
      *&buf[12] = 2114;
      *&buf[14] = v30;
      *&buf[22] = 2048;
      *&buf[24] = a1;
      v32 = 2114;
      v33 = @"STDynamicActivityAttribution.m";
      v34 = 1024;
      v35 = 18;
      v36 = 2114;
      v37 = v27;
      _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v27 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1DA9FC538);
  }

LABEL_8:
  v14 = [STDynamicActivityAttribution alloc];
  v15 = *&a3->var0[4];
  *buf = *a3->var0;
  *&buf[16] = v15;
  v16 = [(STDynamicActivityAttribution *)v14 _initWithClientAuditToken:buf clientExecutablePath:v11];
  if (v16)
  {
    v17 = [v12 copy];
    v18 = v16[1];
    v16[1] = v17;

    v19 = [v13 copy];
    v20 = v16[2];
    v16[2] = v19;
  }

LABEL_11:

  v21 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)_initWithClientAuditToken:(void *)a3 clientExecutablePath:
{
  v6 = a3;
  if (a1)
  {
    v7 = [a1 init];
    a1 = v7;
    if (v7)
    {
      v8 = *a2;
      *(v7 + 72) = a2[1];
      *(v7 + 56) = v8;
      objc_storeStrong((v7 + 40), a3);
    }
  }

  return a1;
}

+ (id)attributionForClientAuditToken:(id *)a3 maskingClientAuditToken:(id *)a4 clientExecutablePath:(id)a5 maskingClientExecutablePath:(id)a6 localizationKey:(id)a7
{
  v38 = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v15)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v28 = NSStringFromSelector(a2);
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *buf = 138544642;
        *&buf[4] = v28;
        *&buf[12] = 2114;
        *&buf[14] = v30;
        *&buf[22] = 2048;
        *&buf[24] = a1;
        v32 = 2114;
        v33 = @"STDynamicActivityAttribution.m";
        v34 = 1024;
        v35 = 32;
        v36 = 2114;
        v37 = v27;
        _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v27 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1DA9FC7E0);
    }

    v16 = [STDynamicActivityAttribution alloc];
    v17 = *&a3->var0[4];
    *buf = *a3->var0;
    *&buf[16] = v17;
    v18 = [(STDynamicActivityAttribution *)v16 _initWithClientAuditToken:buf clientExecutablePath:v13];
    v19 = v18;
    if (v18)
    {
      v20 = *a4->var0;
      *(v18 + 104) = *&a4->var0[4];
      *(v18 + 88) = v20;
      v21 = [v14 copy];
      v22 = v19[6];
      v19[6] = v21;

      v23 = [v15 copy];
      v24 = v19[2];
      v19[2] = v23;
    }
  }

  else
  {
    v19 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)attributionForClientAuditToken:(id *)a3 maskingClientAuditToken:(id *)a4 clientExecutablePath:(id)a5 maskingClientExecutablePath:(id)a6 stringWithFormat:(id)a7
{
  v38 = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v15)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v28 = NSStringFromSelector(a2);
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *buf = 138544642;
        *&buf[4] = v28;
        *&buf[12] = 2114;
        *&buf[14] = v30;
        *&buf[22] = 2048;
        *&buf[24] = a1;
        v32 = 2114;
        v33 = @"STDynamicActivityAttribution.m";
        v34 = 1024;
        v35 = 47;
        v36 = 2114;
        v37 = v27;
        _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v27 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1DA9FCA1CLL);
    }

    v16 = [STDynamicActivityAttribution alloc];
    v17 = *&a3->var0[4];
    *buf = *a3->var0;
    *&buf[16] = v17;
    v18 = [(STDynamicActivityAttribution *)v16 _initWithClientAuditToken:buf clientExecutablePath:v13];
    v19 = v18;
    if (v18)
    {
      v20 = *a4->var0;
      *(v18 + 104) = *&a4->var0[4];
      *(v18 + 88) = v20;
      v21 = [v14 copy];
      v22 = v19[6];
      v19[6] = v21;

      v23 = [v15 copy];
      v24 = v19[3];
      v19[3] = v23;
    }
  }

  else
  {
    v19 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)attributionForClientAuditToken:(id *)a3 maskingClientAuditToken:(id *)a4 clientExecutablePath:(id)a5 maskingClientExecutablePath:(id)a6 website:(id)a7
{
  v38 = *MEMORY[0x1E69E9840];
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v15)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v28 = NSStringFromSelector(a2);
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        *buf = 138544642;
        *&buf[4] = v28;
        *&buf[12] = 2114;
        *&buf[14] = v30;
        *&buf[22] = 2048;
        *&buf[24] = a1;
        v32 = 2114;
        v33 = @"STDynamicActivityAttribution.m";
        v34 = 1024;
        v35 = 62;
        v36 = 2114;
        v37 = v27;
        _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v27 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1DA9FCC58);
    }

    v16 = [STDynamicActivityAttribution alloc];
    v17 = *&a3->var0[4];
    *buf = *a3->var0;
    *&buf[16] = v17;
    v18 = [(STDynamicActivityAttribution *)v16 _initWithClientAuditToken:buf clientExecutablePath:v13];
    v19 = v18;
    if (v18)
    {
      v20 = *a4->var0;
      *(v18 + 104) = *&a4->var0[4];
      *(v18 + 88) = v20;
      v21 = [v14 copy];
      v22 = v19[6];
      v19[6] = v21;

      v23 = [v15 copy];
      v24 = v19[4];
      v19[4] = v23;
    }
  }

  else
  {
    v19 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v21 = *self->_clientAuditToken.val;
  v25 = *&self->_clientAuditToken.val[4];
  v5 = BSVersionedPIDForAuditToken();
  v22 = *(v4 + 56);
  v26 = *(v4 + 72);
  if (v5 != BSVersionedPIDForAuditToken())
  {
    goto LABEL_10;
  }

  v23 = *self->_maskingClientAuditToken.val;
  v27 = *&self->_maskingClientAuditToken.val[4];
  v6 = BSVersionedPIDForAuditToken();
  v24 = *(v4 + 88);
  v28 = *(v4 + 104);
  if (v6 != BSVersionedPIDForAuditToken())
  {
    goto LABEL_10;
  }

  clientExecutablePath = self->_clientExecutablePath;
  v8 = *(v4 + 5);
  if (!BSEqualStrings())
  {
    goto LABEL_10;
  }

  maskingClientExecutablePath = self->_maskingClientExecutablePath;
  v10 = *(v4 + 6);
  if (!BSEqualStrings())
  {
    goto LABEL_10;
  }

  bundleIdentifier = self->_bundleIdentifier;
  v12 = *(v4 + 1);
  if (BSEqualStrings() && (localizationKey = self->_localizationKey, v14 = *(v4 + 2), BSEqualStrings()) && (formattedString = self->_formattedString, v16 = *(v4 + 3), BSEqualStrings()))
  {
    website = self->_website;
    v18 = *(v4 + 4);
    v19 = BSEqualStrings();
  }

  else
  {
LABEL_10:
    v19 = 0;
  }

  return v19;
}

- (id)description
{
  v2 = self;
  if (self)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(NSString *)self->_clientExecutablePath lastPathComponent];
    v5 = [v3 stringWithFormat:@"%@:%d", v4, BSPIDForAuditToken()];

    v6 = MEMORY[0x1E696AEC0];
    v7 = [*(v2 + 48) lastPathComponent];
    v8 = [v6 stringWithFormat:@"%@:%d", v7, BSPIDForAuditToken()];

    v9 = [MEMORY[0x1E698E680] builderWithObject:v2];
    v10 = [v9 appendObject:v5 withName:@"client"];
    v11 = [v9 appendObject:v8 withName:@"maskingClient"];
    v12 = [v9 appendObject:*(v2 + 8) withName:@"bundleID" skipIfNil:1];
    v13 = [v9 appendObject:*(v2 + 16) withName:@"locKey" skipIfNil:1];
    v14 = [v9 appendObject:*(v2 + 24) withName:@"formattedString" skipIfNil:1];
    if (*(v2 + 32))
    {
      v15 = @"YES";
    }

    else
    {
      v15 = 0;
    }

    v16 = [v9 appendObject:v15 withName:@"websiteNonNil" skipIfNil:1];

    v2 = [v9 build];
  }

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E698E620];
  v5 = *&self->_clientAuditToken.val[4];
  v10 = *self->_clientAuditToken.val;
  v11 = v5;
  v6 = a3;
  v7 = [v4 tokenFromAuditToken:&v10];
  [v6 encodeObject:v7 forKey:{@"_clientAuditToken", v10, v11}];

  [v6 encodeObject:self->_clientExecutablePath forKey:@"_clientExecutablePath"];
  v8 = *&self->_maskingClientAuditToken.val[4];
  v10 = *self->_maskingClientAuditToken.val;
  v11 = v8;
  v9 = [MEMORY[0x1E698E620] tokenFromAuditToken:&v10];
  [v6 encodeObject:v9 forKey:@"_maskingClientAuditToken"];

  [v6 encodeObject:self->_maskingClientExecutablePath forKey:@"_maskingClientExecutablePath"];
  [v6 encodeObject:self->_bundleIdentifier forKey:@"_bundleIdentifier"];
  [v6 encodeObject:self->_localizationKey forKey:@"_localizationKey"];
  [v6 encodeObject:self->_formattedString forKey:@"_formattedString"];
  [v6 encodeObject:self->_website forKey:@"_website"];
}

- (STDynamicActivityAttribution)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clientAuditToken"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clientExecutablePath"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_maskingClientAuditToken"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_maskingClientExecutablePath"];
    v12 = v11;
    if (v10 && v11)
    {
      [v5 realToken];
      [v10 realToken];
      v13 = v7;
      v14 = v12;
      if (self)
      {
        v15 = [(STDynamicActivityAttribution *)self init];
        self = v15;
        if (v15)
        {
          v16 = v29[1];
          *v15->_clientAuditToken.val = v29[0];
          *&v15->_clientAuditToken.val[4] = v16;
          objc_storeStrong(&v15->_clientExecutablePath, v7);
          v17 = v28;
          *self->_maskingClientAuditToken.val = v27;
          *&self->_maskingClientAuditToken.val[4] = v17;
          objc_storeStrong(&self->_maskingClientExecutablePath, v12);
        }
      }
    }

    else
    {
      [v5 realToken];
      self = [(STDynamicActivityAttribution *)self _initWithClientAuditToken:v29 clientExecutablePath:v7];
    }

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_localizationKey"];
    localizationKey = self->_localizationKey;
    self->_localizationKey = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_formattedString"];
    formattedString = self->_formattedString;
    self->_formattedString = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_website"];
    website = self->_website;
    self->_website = v24;

    self = self;
    v9 = self;
  }

  return v9;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken
{
  v3 = *&self[2].var0[2];
  *retstr->var0 = *&self[1].var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)maskingClientAuditToken
{
  v3 = *&self[3].var0[2];
  *retstr->var0 = *&self[2].var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

@end