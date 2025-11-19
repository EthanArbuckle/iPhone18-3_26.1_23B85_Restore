@interface KTVerifierResult
- (BOOL)isEqual:(id)a3;
- (KTVerifierResult)initWithCoder:(id)a3;
- (KTVerifierResult)initWithUri:(id)a3 application:(id)a4 ktResult:(unint64_t)a5 failure:(id)a6;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)description;
- (id)initPendingForUri:(id)a3 application:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateLoggableDataForFailure;
- (void)updateWithStaticKeyEnforced:(unint64_t)a3 isFailureIgnoredForDate:(BOOL)a4;
- (void)updateWithStaticKeyEnforcedPeerEnforcement:(unint64_t)a3;
@end

@implementation KTVerifierResult

- (KTVerifierResult)initWithUri:(id)a3 application:(id)a4 ktResult:(unint64_t)a5 failure:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = KTVerifierResult;
  v13 = [(KTVerifierResult *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(KTVerifierResult *)v13 setUri:v10];
    [(KTVerifierResult *)v14 setApplication:v11];
    [(KTVerifierResult *)v14 setSucceed:a5];
    [(KTVerifierResult *)v14 setOptedIn:0];
    [(KTVerifierResult *)v14 setEverOptedIn:0];
    [(KTVerifierResult *)v14 setRecentlyOptedIn:0];
    [(KTVerifierResult *)v14 setStaticAccountKeyEnforced:0];
    [(KTVerifierResult *)v14 setStaticAccountKeyStatus:3];
    [(KTVerifierResult *)v14 setFailure:v12];
    [(KTVerifierResult *)v14 setUiStatus:0];
  }

  return v14;
}

- (id)initPendingForUri:(id)a3 application:(id)a4
{
  v4 = [(KTVerifierResult *)self initWithUri:a3 application:a4 ktResult:2];
  [(KTVerifierResult *)v4 setUiStatus:3];

  return v4;
}

- (void)updateLoggableDataForFailure
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(KTVerifierResult *)self failure];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696AA08]];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(KTVerifierResult *)self loggableDatas];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 result])
        {
          [v10 setResult:0];
          v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kTransparencyError" code:-304 userInfo:v3];
          [v10 setFailure:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateWithStaticKeyEnforcedPeerEnforcement:(unint64_t)a3
{
  v27 = *MEMORY[0x1E69E9840];
  [(KTVerifierResult *)self setStaticAccountKeyStatus:?];
  if (a3 > 3)
  {
    if (a3 - 4 >= 2)
    {
      goto LABEL_5;
    }

LABEL_9:
    [(KTVerifierResult *)self setStaticAccountKeyEnforced:0];
    [(KTVerifierResult *)self setSucceed:0];
    v6 = [(KTVerifierResult *)self uiStatus];
    if (v6 > 0xB || ((1 << v6) & 0xC06) == 0)
    {
      if (TRANSPARENCY_DEFAULT_LOG_BLOCK_8 != -1)
      {
        [KTVerifierResult updateWithStaticKeyEnforcedPeerEnforcement:];
      }

      v13 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_8;
      if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&dword_1E10DB000, v13, OS_LOG_TYPE_DEFAULT, "Static key failed, setting UI to all devices failing", v26, 2u);
      }

      [(KTVerifierResult *)self setUiStatus:15];
    }

    [(KTVerifierResult *)self updateLoggableDataForFailure];
    goto LABEL_35;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
LABEL_5:
        v5 = *MEMORY[0x1E69E9840];

        [(KTVerifierResult *)self setStaticAccountKeyEnforced:0];
        return;
      }

      goto LABEL_9;
    }

    [(KTVerifierResult *)self setStaticAccountKeyEnforced:0];
    v11 = [(KTVerifierResult *)self uiStatus];
    if (v11 > 0x11)
    {
LABEL_39:
      if (!v11)
      {
LABEL_19:
        if (TRANSPARENCY_DEFAULT_LOG_BLOCK_8 != -1)
        {
          [KTVerifierResult updateWithStaticKeyEnforcedPeerEnforcement:];
        }

        v12 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_8;
        if (!os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      if (v11 == 5)
      {
        v18 = *MEMORY[0x1E69E9840];
        v9 = self;
        v10 = 4;
        goto LABEL_56;
      }

      if (TRANSPARENCY_DEFAULT_LOG_BLOCK_8 != -1)
      {
        [KTVerifierResult updateWithStaticKeyEnforcedPeerEnforcement:];
      }

      v24 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_8;
      if (!os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v21 = v24;
      v22 = KTUIStatusGetString([(KTVerifierResult *)self uiStatus]);
      *v26 = 138412290;
      *&v26[4] = v22;
      v23 = "Not changing UI status %@ for static key no config with enforcement";
LABEL_54:
      _os_log_impl(&dword_1E10DB000, v21, OS_LOG_TYPE_DEFAULT, v23, v26, 0xCu);

      goto LABEL_35;
    }

    if (((1 << v11) & 0x33C0) != 0)
    {
      goto LABEL_19;
    }

    if (v11 != 15)
    {
      if (v11 == 17)
      {
        v17 = *MEMORY[0x1E69E9840];
        v9 = self;
        v10 = 16;
        goto LABEL_56;
      }

      goto LABEL_39;
    }

LABEL_44:
    v19 = *MEMORY[0x1E69E9840];
    v9 = self;
    v10 = 3;
    goto LABEL_56;
  }

  [(KTVerifierResult *)self setStaticAccountKeyEnforced:1];
  v7 = [(KTVerifierResult *)self uiStatus];
  if (v7 > 11)
  {
    if (v7 > 14)
    {
      if (v7 == 16)
      {
        v25 = *MEMORY[0x1E69E9840];
        v9 = self;
        v10 = 17;
        goto LABEL_56;
      }

      if (v7 == 15)
      {
        goto LABEL_44;
      }

LABEL_46:
      if (TRANSPARENCY_DEFAULT_LOG_BLOCK_8 != -1)
      {
        [KTVerifierResult updateWithStaticKeyEnforcedPeerEnforcement:];
      }

      v20 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_8;
      if (!os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      v21 = v20;
      v22 = KTUIStatusGetString([(KTVerifierResult *)self uiStatus]);
      *v26 = 138412290;
      *&v26[4] = v22;
      v23 = "Not changing UI status %@ for static key success with enforcement";
      goto LABEL_54;
    }

    if ((v7 - 12) >= 2)
    {
      if (v7 == 14)
      {
        goto LABEL_35;
      }

      goto LABEL_46;
    }

LABEL_30:
    if (TRANSPARENCY_DEFAULT_LOG_BLOCK_8 != -1)
    {
      [KTVerifierResult updateWithStaticKeyEnforcedPeerEnforcement:];
    }

    v12 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_8;
    if (!os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

LABEL_33:
    v14 = v12;
    v15 = KTUIStatusGetString([(KTVerifierResult *)self uiStatus]);
    *v26 = 138412290;
    *&v26[4] = v15;
    _os_log_impl(&dword_1E10DB000, v14, OS_LOG_TYPE_DEFAULT, "Unexpected UI status %@ for static key no config with enforcement. Marking as a failure.", v26, 0xCu);

LABEL_34:
    [(KTVerifierResult *)self setUiStatus:14, *v26];
LABEL_35:
    v16 = *MEMORY[0x1E69E9840];
    return;
  }

  if ((v7 - 6) < 4 || !v7)
  {
    goto LABEL_30;
  }

  if (v7 != 4)
  {
    goto LABEL_46;
  }

  v8 = *MEMORY[0x1E69E9840];
  v9 = self;
  v10 = 5;
LABEL_56:

  [(KTVerifierResult *)v9 setUiStatus:v10];
}

uint64_t __63__KTVerifierResult_updateWithStaticKeyEnforcedPeerEnforcement___block_invoke()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __63__KTVerifierResult_updateWithStaticKeyEnforcedPeerEnforcement___block_invoke_41()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __63__KTVerifierResult_updateWithStaticKeyEnforcedPeerEnforcement___block_invoke_44()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __63__KTVerifierResult_updateWithStaticKeyEnforcedPeerEnforcement___block_invoke_47()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __63__KTVerifierResult_updateWithStaticKeyEnforcedPeerEnforcement___block_invoke_50()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)updateWithStaticKeyEnforced:(unint64_t)a3 isFailureIgnoredForDate:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v7 = *MEMORY[0x1E69E9840];

    [(KTVerifierResult *)self updateWithStaticKeyEnforcedPeerEnforcement:a3];
    return;
  }

  [(KTVerifierResult *)self setStaticAccountKeyStatus:a3];
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(KTVerifierResult *)self setSucceed:0];
      [(KTVerifierResult *)self setStaticAccountKeyEnforced:0];
      v13 = [(KTVerifierResult *)self uiStatus];
      if (v13 > 0xD)
      {
        goto LABEL_40;
      }

      if (((1 << v13) & 0x20F9) != 0)
      {
        if (!v4)
        {
          v9 = self;
          v10 = 13;
          goto LABEL_39;
        }
      }

      else if (((1 << v13) & 0x1100) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_18;
      }

      [(KTVerifierResult *)self setStaticAccountKeyEnforced:0];
      v11 = [(KTVerifierResult *)self uiStatus];
      if (v11 > 0xD)
      {
        goto LABEL_40;
      }

      if (((1 << v11) & 0x30F9) != 0)
      {
        if (!v4)
        {
          goto LABEL_22;
        }
      }

      else if (v11 != 8)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_38;
  }

  if (!a3)
  {
    [(KTVerifierResult *)self setStaticAccountKeyEnforced:1];
    v12 = [(KTVerifierResult *)self uiStatus];
    if (v12 <= 7)
    {
      if (v12 != 4)
      {
        if (v12 != 6)
        {
          goto LABEL_40;
        }

LABEL_22:
        v9 = self;
        v10 = 7;
        goto LABEL_39;
      }

LABEL_32:
      v9 = self;
      v10 = 5;
      goto LABEL_39;
    }

    if (v12 != 8)
    {
      if (v12 != 13)
      {
        goto LABEL_40;
      }

      goto LABEL_32;
    }

LABEL_38:
    v9 = self;
    v10 = 9;
    goto LABEL_39;
  }

  if (a3 != 1)
  {
LABEL_18:
    [(KTVerifierResult *)self setStaticAccountKeyEnforced:0];
    goto LABEL_40;
  }

  [(KTVerifierResult *)self setStaticAccountKeyEnforced:0];
  v8 = [(KTVerifierResult *)self uiStatus];
  if (v8 > 8)
  {
    if (v8 == 9)
    {
      v9 = self;
      v10 = 8;
      goto LABEL_39;
    }

    if (v8 == 13)
    {
      v9 = self;
      v10 = 3;
      goto LABEL_39;
    }
  }

  else
  {
    if (v8 == 5)
    {
      v9 = self;
      v10 = 4;
      goto LABEL_39;
    }

    if (v8 == 7)
    {
      v9 = self;
      v10 = 6;
LABEL_39:
      [(KTVerifierResult *)v9 setUiStatus:v10];
    }
  }

LABEL_40:
  if (TRANSPARENCY_DEFAULT_LOG_BLOCK_8 != -1)
  {
    [KTVerifierResult updateWithStaticKeyEnforced:isFailureIgnoredForDate:];
  }

  v14 = TRANSPARENCY_DEFAULT_LOG_INTERNAL_8;
  if (os_log_type_enabled(TRANSPARENCY_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = KTStaticKeyPeerValidateResultGetString(a3);
    v17 = [(KTVerifierResult *)self staticAccountKeyEnforced];
    v18 = KTUIStatusGetString([(KTVerifierResult *)self uiStatus]);
    v19 = [(KTVerifierResult *)self uri];
    v21 = 138413570;
    v22 = v16;
    v23 = 1024;
    v24 = a3;
    v25 = 1024;
    v26 = v17;
    v27 = 2114;
    v28 = v18;
    v29 = 2160;
    v30 = 1752392040;
    v31 = 2112;
    v32 = v19;
    _os_log_impl(&dword_1E10DB000, v15, OS_LOG_TYPE_DEFAULT, "updateWithStaticKeyEnforced (%@[%d], %{BOOL}d) updating UIStatus to %{public}@ for uri %{mask.hash}@", &v21, 0x36u);
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __72__KTVerifierResult_updateWithStaticKeyEnforced_isFailureIgnoredForDate___block_invoke()
{
  TRANSPARENCY_DEFAULT_LOG_INTERNAL_8 = os_log_create("com.apple.Transparency", "default");

  return MEMORY[0x1EEE66BB8]();
}

- (void)encodeWithCoder:(id)a3
{
  v22 = a3;
  v4 = [(KTVerifierResult *)self uri];
  [v22 encodeObject:v4 forKey:@"uri"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTVerifierResult succeed](self, "succeed")}];
  [v22 encodeObject:v5 forKey:@"succeed"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTVerifierResult optedIn](self, "optedIn")}];
  [v22 encodeObject:v6 forKey:@"optedIn"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTVerifierResult everOptedIn](self, "everOptedIn")}];
  [v22 encodeObject:v7 forKey:@"everOptedIn"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTVerifierResult recentlyOptedIn](self, "recentlyOptedIn")}];
  [v22 encodeObject:v8 forKey:@"recentlyOptedIn"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTVerifierResult staticAccountKeyEnforced](self, "staticAccountKeyEnforced")}];
  [v22 encodeObject:v9 forKey:@"accountKeyEnforced"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTVerifierResult staticAccountKeyStatus](self, "staticAccountKeyStatus")}];
  [v22 encodeObject:v10 forKey:@"staticKeyStatus"];

  v11 = [(KTVerifierResult *)self validUntil];
  [v22 encodeObject:v11 forKey:@"validUntil"];

  v12 = [(KTVerifierResult *)self publicID];

  if (v12)
  {
    v13 = [(KTVerifierResult *)self publicID];
    [v22 encodeObject:v13 forKey:@"accountKey"];
  }

  v14 = [(KTVerifierResult *)self loggableDatas];

  if (v14)
  {
    v15 = [(KTVerifierResult *)self loggableDatas];
    [v22 encodeObject:v15 forKey:@"loggableDatas"];
  }

  v16 = [(KTVerifierResult *)self failure];

  if (v16)
  {
    v17 = [(KTVerifierResult *)self failure];
    [v22 encodeObject:v17 forKey:@"failure"];
  }

  if ([(KTVerifierResult *)self uiStatus])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTVerifierResult uiStatus](self, "uiStatus")}];
    [v22 encodeObject:v18 forKey:@"uiStatus"];
  }

  v19 = [(KTVerifierResult *)self application];

  v20 = v22;
  if (v19)
  {
    v21 = [(KTVerifierResult *)self application];
    [v22 encodeObject:v21 forKey:@"application"];

    v20 = v22;
  }
}

- (KTVerifierResult)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"application"];
  v25 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"succeed"];
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"optedIn"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"everOptedIn"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"recentlyOptedIn"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"accountKeyEnforced"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v3 decodeObjectOfClasses:v7 forKey:@"loggableDatas"];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"accountKey"];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v11 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  v12 = [v10 setByAddingObjectsFromSet:v11];

  v13 = [v3 decodeObjectOfClasses:v12 forKey:@"failure"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"uiStatus"];
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"staticKeyStatus"];
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"validUntil"];

  v17 = [[KTVerifierResult alloc] initWithUri:v4 application:v19];
  if (v17)
  {
    -[KTVerifierResult setSucceed:](v17, "setSucceed:", [v25 unsignedIntegerValue]);
    -[KTVerifierResult setOptedIn:](v17, "setOptedIn:", [v24 BOOLValue]);
    -[KTVerifierResult setEverOptedIn:](v17, "setEverOptedIn:", [v23 BOOLValue]);
    -[KTVerifierResult setRecentlyOptedIn:](v17, "setRecentlyOptedIn:", [v22 BOOLValue]);
    -[KTVerifierResult setStaticAccountKeyEnforced:](v17, "setStaticAccountKeyEnforced:", [v21 BOOLValue]);
    [(KTVerifierResult *)v17 setPublicID:v9];
    [(KTVerifierResult *)v17 setLoggableDatas:v8];
    [(KTVerifierResult *)v17 setFailure:v13];
    -[KTVerifierResult setUiStatus:](v17, "setUiStatus:", [v14 unsignedIntegerValue]);
    -[KTVerifierResult setStaticAccountKeyStatus:](v17, "setStaticAccountKeyStatus:", [v15 unsignedIntegerValue]);
    [(KTVerifierResult *)v17 setValidUntil:v16];
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(KTVerifierResult *)self uri];
      if (v7 || ([(KTVerifierResult *)v6 uri], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v8 = [(KTVerifierResult *)self uri];
        v9 = [(KTVerifierResult *)v6 uri];
        v10 = [v8 isEqual:v9];

        if (v7)
        {

          if (!v10)
          {
            goto LABEL_39;
          }
        }

        else
        {

          if ((v10 & 1) == 0)
          {
            goto LABEL_39;
          }
        }
      }

      v12 = [(KTVerifierResult *)self application];
      if (v12 || ([(KTVerifierResult *)v6 application], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v13 = [(KTVerifierResult *)self application];
        v14 = [(KTVerifierResult *)v6 application];
        v15 = [v13 isEqual:v14];

        if (v12)
        {

          if (!v15)
          {
            goto LABEL_39;
          }
        }

        else
        {

          if ((v15 & 1) == 0)
          {
            goto LABEL_39;
          }
        }
      }

      v16 = [(KTVerifierResult *)self succeed];
      if (v16 != [(KTVerifierResult *)v6 succeed])
      {
        goto LABEL_39;
      }

      v17 = [(KTVerifierResult *)self optedIn];
      if (v17 != [(KTVerifierResult *)v6 optedIn])
      {
        goto LABEL_39;
      }

      v18 = [(KTVerifierResult *)self staticAccountKeyEnforced];
      if (v18 != [(KTVerifierResult *)v6 staticAccountKeyEnforced])
      {
        goto LABEL_39;
      }

      v19 = [(KTVerifierResult *)self staticAccountKeyStatus];
      if (v19 != [(KTVerifierResult *)v6 staticAccountKeyStatus])
      {
        goto LABEL_39;
      }

      v20 = [(KTVerifierResult *)self loggableDatas];
      if (v20 || ([(KTVerifierResult *)v6 loggableDatas], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v21 = [(KTVerifierResult *)self loggableDatas];
        v22 = [(KTVerifierResult *)v6 loggableDatas];
        v23 = [v21 isEqual:v22];

        if (v20)
        {

          if (!v23)
          {
            goto LABEL_39;
          }
        }

        else
        {

          if ((v23 & 1) == 0)
          {
            goto LABEL_39;
          }
        }
      }

      v24 = [(KTVerifierResult *)self publicID];
      if (!v24)
      {
        v3 = [(KTVerifierResult *)v6 publicID];
        if (!v3)
        {
          goto LABEL_33;
        }
      }

      v25 = [(KTVerifierResult *)self publicID];
      v26 = [(KTVerifierResult *)v6 publicID];
      v27 = [v25 isEqual:v26];

      if (v24)
      {

        if (!v27)
        {
          goto LABEL_39;
        }

LABEL_33:
        v28 = [(KTVerifierResult *)self everOptedIn];
        if (v28 != [(KTVerifierResult *)v6 everOptedIn])
        {
          goto LABEL_39;
        }

        v29 = [(KTVerifierResult *)self uiStatus];
        if (v29 != [(KTVerifierResult *)v6 uiStatus])
        {
          goto LABEL_39;
        }

        v30 = [(KTVerifierResult *)self validUntil];
        if (v30 || ([(KTVerifierResult *)v6 validUntil], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v31 = [(KTVerifierResult *)self validUntil];
          v32 = [(KTVerifierResult *)v6 validUntil];
          v11 = [v31 isEqual:v32];

          if (v30)
          {
LABEL_44:

            goto LABEL_40;
          }
        }

        else
        {
          v11 = 1;
        }

        goto LABEL_44;
      }

      if (v27)
      {
        goto LABEL_33;
      }

LABEL_39:
      v11 = 0;
LABEL_40:

      goto LABEL_41;
    }

    v11 = 0;
  }

LABEL_41:

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = KTResultGetString([(KTVerifierResult *)self succeed]);
  v5 = KTUIStatusGetString([(KTVerifierResult *)self uiStatus]);
  v6 = [(KTVerifierResult *)self uri];
  v7 = [(KTVerifierResult *)self application];
  v8 = [v3 stringWithFormat:@"kt(%@) ui(%@) %@[%@]", v4, v5, v6, v7];

  v9 = [(KTVerifierResult *)self failure];

  if (v9)
  {
    v10 = [(KTVerifierResult *)self failure];
    [v8 appendFormat:@" failure: %@", v10];
  }

  [v8 appendFormat:@" optIn: %d, everOptedIn: %d", -[KTVerifierResult optedIn](self, "optedIn"), -[KTVerifierResult everOptedIn](self, "everOptedIn")];
  v11 = [(KTVerifierResult *)self staticAccountKeyEnforced];
  v12 = KTStaticKeyPeerValidateResultGetString([(KTVerifierResult *)self staticAccountKeyStatus]);
  v13 = [(KTVerifierResult *)self publicID];
  v14 = [v13 publicAccountIdentity];
  [v8 appendFormat:@" staticKeyEnforced: %d, staticKeyStatus: %@, accountKey:%@ ", v11, v12, v14];

  v15 = [(KTVerifierResult *)self validUntil];
  v16 = v15;
  if (v15)
  {
    [v8 appendFormat:@" expirationTime: %@", v15];
  }

  v17 = [(KTVerifierResult *)self loggableDatas];
  [v8 appendFormat:@" loggableDatas:%@", v17];

  return v8;
}

- (NSDictionary)diagnosticsJsonDictionary
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(KTVerifierResult *)self uri];

  if (v4)
  {
    v5 = [(KTVerifierResult *)self uri];
    [v3 setObject:v5 forKeyedSubscript:@"uri"];
  }

  v6 = [(KTVerifierResult *)self application];

  if (v6)
  {
    v7 = [(KTVerifierResult *)self application];
    [v3 setObject:v7 forKeyedSubscript:@"application"];
  }

  v8 = KTResultGetString([(KTVerifierResult *)self succeed]);
  [v3 setObject:v8 forKeyedSubscript:@"ktResult"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTVerifierResult optedIn](self, "optedIn")}];
  [v3 setObject:v9 forKeyedSubscript:@"optedIn"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTVerifierResult everOptedIn](self, "everOptedIn")}];
  [v3 setObject:v10 forKeyedSubscript:@"everOptedIn"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTVerifierResult staticAccountKeyEnforced](self, "staticAccountKeyEnforced")}];
  [v3 setObject:v11 forKeyedSubscript:@"staticKeyEnforced"];

  v12 = KTUIStatusGetString([(KTVerifierResult *)self uiStatus]);
  [v3 setObject:v12 forKeyedSubscript:@"uiStatus"];

  v13 = KTStaticKeyPeerValidateResultGetString([(KTVerifierResult *)self staticAccountKeyStatus]);
  [v3 setObject:v13 forKeyedSubscript:@"staticKeyStatus"];

  v14 = [(KTVerifierResult *)self validUntil];

  if (v14)
  {
    v15 = MEMORY[0x1E696AD98];
    v16 = [(KTVerifierResult *)self validUntil];
    [v16 timeIntervalSince1970];
    v17 = [v15 numberWithDouble:?];
    [v3 setObject:v17 forKeyedSubscript:@"validUntil"];
  }

  v18 = [(KTVerifierResult *)self loggableDatas];
  v19 = [v18 count];

  if (v19)
  {
    v20 = MEMORY[0x1E695DF70];
    v21 = [(KTVerifierResult *)self loggableDatas];
    v22 = [v20 arrayWithCapacity:{objc_msgSend(v21, "count")}];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v23 = [(KTVerifierResult *)self loggableDatas];
    v24 = [v23 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v37 + 1) + 8 * i) diagnosticsJsonDictionary];
          [v22 addObject:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v25);
    }

    [v3 setObject:v22 forKeyedSubscript:@"loggableDatas"];
  }

  v29 = [(KTVerifierResult *)self publicID];

  if (v29)
  {
    v30 = [(KTVerifierResult *)self publicID];
    v31 = [v30 publicAccountIdentity];
    [v3 setObject:v31 forKeyedSubscript:@"publicID"];
  }

  v32 = [(KTVerifierResult *)self failure];

  if (v32)
  {
    v33 = [(KTVerifierResult *)self failure];
    v34 = [v33 description];
    [v3 setObject:v34 forKeyedSubscript:@"failure"];
  }

  v35 = *MEMORY[0x1E69E9840];

  return v3;
}

@end