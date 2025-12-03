@interface KTVerifierResult
- (BOOL)isEqual:(id)equal;
- (KTVerifierResult)initWithCoder:(id)coder;
- (KTVerifierResult)initWithUri:(id)uri application:(id)application ktResult:(unint64_t)result failure:(id)failure;
- (NSDictionary)diagnosticsJsonDictionary;
- (id)description;
- (id)initPendingForUri:(id)uri application:(id)application;
- (void)encodeWithCoder:(id)coder;
- (void)updateLoggableDataForFailure;
- (void)updateWithStaticKeyEnforced:(unint64_t)enforced isFailureIgnoredForDate:(BOOL)date;
- (void)updateWithStaticKeyEnforcedPeerEnforcement:(unint64_t)enforcement;
@end

@implementation KTVerifierResult

- (KTVerifierResult)initWithUri:(id)uri application:(id)application ktResult:(unint64_t)result failure:(id)failure
{
  uriCopy = uri;
  applicationCopy = application;
  failureCopy = failure;
  v16.receiver = self;
  v16.super_class = KTVerifierResult;
  v13 = [(KTVerifierResult *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(KTVerifierResult *)v13 setUri:uriCopy];
    [(KTVerifierResult *)v14 setApplication:applicationCopy];
    [(KTVerifierResult *)v14 setSucceed:result];
    [(KTVerifierResult *)v14 setOptedIn:0];
    [(KTVerifierResult *)v14 setEverOptedIn:0];
    [(KTVerifierResult *)v14 setRecentlyOptedIn:0];
    [(KTVerifierResult *)v14 setStaticAccountKeyEnforced:0];
    [(KTVerifierResult *)v14 setStaticAccountKeyStatus:3];
    [(KTVerifierResult *)v14 setFailure:failureCopy];
    [(KTVerifierResult *)v14 setUiStatus:0];
  }

  return v14;
}

- (id)initPendingForUri:(id)uri application:(id)application
{
  v4 = [(KTVerifierResult *)self initWithUri:uri application:application ktResult:2];
  [(KTVerifierResult *)v4 setUiStatus:3];

  return v4;
}

- (void)updateLoggableDataForFailure
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  failure = [(KTVerifierResult *)self failure];
  [dictionary setObject:failure forKeyedSubscript:*MEMORY[0x1E696AA08]];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  loggableDatas = [(KTVerifierResult *)self loggableDatas];
  v6 = [loggableDatas countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(loggableDatas);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 result])
        {
          [v10 setResult:0];
          v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kTransparencyError" code:-304 userInfo:dictionary];
          [v10 setFailure:v11];
        }
      }

      v7 = [loggableDatas countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateWithStaticKeyEnforcedPeerEnforcement:(unint64_t)enforcement
{
  v27 = *MEMORY[0x1E69E9840];
  [(KTVerifierResult *)self setStaticAccountKeyStatus:?];
  if (enforcement > 3)
  {
    if (enforcement - 4 >= 2)
    {
      goto LABEL_5;
    }

LABEL_9:
    [(KTVerifierResult *)self setStaticAccountKeyEnforced:0];
    [(KTVerifierResult *)self setSucceed:0];
    uiStatus = [(KTVerifierResult *)self uiStatus];
    if (uiStatus > 0xB || ((1 << uiStatus) & 0xC06) == 0)
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

  if (enforcement)
  {
    if (enforcement != 1)
    {
      if (enforcement != 2)
      {
LABEL_5:
        v5 = *MEMORY[0x1E69E9840];

        [(KTVerifierResult *)self setStaticAccountKeyEnforced:0];
        return;
      }

      goto LABEL_9;
    }

    [(KTVerifierResult *)self setStaticAccountKeyEnforced:0];
    uiStatus2 = [(KTVerifierResult *)self uiStatus];
    if (uiStatus2 > 0x11)
    {
LABEL_39:
      if (!uiStatus2)
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

      if (uiStatus2 == 5)
      {
        v18 = *MEMORY[0x1E69E9840];
        selfCopy5 = self;
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

    if (((1 << uiStatus2) & 0x33C0) != 0)
    {
      goto LABEL_19;
    }

    if (uiStatus2 != 15)
    {
      if (uiStatus2 == 17)
      {
        v17 = *MEMORY[0x1E69E9840];
        selfCopy5 = self;
        v10 = 16;
        goto LABEL_56;
      }

      goto LABEL_39;
    }

LABEL_44:
    v19 = *MEMORY[0x1E69E9840];
    selfCopy5 = self;
    v10 = 3;
    goto LABEL_56;
  }

  [(KTVerifierResult *)self setStaticAccountKeyEnforced:1];
  uiStatus3 = [(KTVerifierResult *)self uiStatus];
  if (uiStatus3 > 11)
  {
    if (uiStatus3 > 14)
    {
      if (uiStatus3 == 16)
      {
        v25 = *MEMORY[0x1E69E9840];
        selfCopy5 = self;
        v10 = 17;
        goto LABEL_56;
      }

      if (uiStatus3 == 15)
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

    if ((uiStatus3 - 12) >= 2)
    {
      if (uiStatus3 == 14)
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

  if ((uiStatus3 - 6) < 4 || !uiStatus3)
  {
    goto LABEL_30;
  }

  if (uiStatus3 != 4)
  {
    goto LABEL_46;
  }

  v8 = *MEMORY[0x1E69E9840];
  selfCopy5 = self;
  v10 = 5;
LABEL_56:

  [(KTVerifierResult *)selfCopy5 setUiStatus:v10];
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

- (void)updateWithStaticKeyEnforced:(unint64_t)enforced isFailureIgnoredForDate:(BOOL)date
{
  dateCopy = date;
  v33 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    v7 = *MEMORY[0x1E69E9840];

    [(KTVerifierResult *)self updateWithStaticKeyEnforcedPeerEnforcement:enforced];
    return;
  }

  [(KTVerifierResult *)self setStaticAccountKeyStatus:enforced];
  if (enforced > 1)
  {
    if (enforced == 2)
    {
      [(KTVerifierResult *)self setSucceed:0];
      [(KTVerifierResult *)self setStaticAccountKeyEnforced:0];
      uiStatus = [(KTVerifierResult *)self uiStatus];
      if (uiStatus > 0xD)
      {
        goto LABEL_40;
      }

      if (((1 << uiStatus) & 0x20F9) != 0)
      {
        if (!dateCopy)
        {
          selfCopy8 = self;
          v10 = 13;
          goto LABEL_39;
        }
      }

      else if (((1 << uiStatus) & 0x1100) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (enforced != 4)
      {
        goto LABEL_18;
      }

      [(KTVerifierResult *)self setStaticAccountKeyEnforced:0];
      uiStatus2 = [(KTVerifierResult *)self uiStatus];
      if (uiStatus2 > 0xD)
      {
        goto LABEL_40;
      }

      if (((1 << uiStatus2) & 0x30F9) != 0)
      {
        if (!dateCopy)
        {
          goto LABEL_22;
        }
      }

      else if (uiStatus2 != 8)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_38;
  }

  if (!enforced)
  {
    [(KTVerifierResult *)self setStaticAccountKeyEnforced:1];
    uiStatus3 = [(KTVerifierResult *)self uiStatus];
    if (uiStatus3 <= 7)
    {
      if (uiStatus3 != 4)
      {
        if (uiStatus3 != 6)
        {
          goto LABEL_40;
        }

LABEL_22:
        selfCopy8 = self;
        v10 = 7;
        goto LABEL_39;
      }

LABEL_32:
      selfCopy8 = self;
      v10 = 5;
      goto LABEL_39;
    }

    if (uiStatus3 != 8)
    {
      if (uiStatus3 != 13)
      {
        goto LABEL_40;
      }

      goto LABEL_32;
    }

LABEL_38:
    selfCopy8 = self;
    v10 = 9;
    goto LABEL_39;
  }

  if (enforced != 1)
  {
LABEL_18:
    [(KTVerifierResult *)self setStaticAccountKeyEnforced:0];
    goto LABEL_40;
  }

  [(KTVerifierResult *)self setStaticAccountKeyEnforced:0];
  uiStatus4 = [(KTVerifierResult *)self uiStatus];
  if (uiStatus4 > 8)
  {
    if (uiStatus4 == 9)
    {
      selfCopy8 = self;
      v10 = 8;
      goto LABEL_39;
    }

    if (uiStatus4 == 13)
    {
      selfCopy8 = self;
      v10 = 3;
      goto LABEL_39;
    }
  }

  else
  {
    if (uiStatus4 == 5)
    {
      selfCopy8 = self;
      v10 = 4;
      goto LABEL_39;
    }

    if (uiStatus4 == 7)
    {
      selfCopy8 = self;
      v10 = 6;
LABEL_39:
      [(KTVerifierResult *)selfCopy8 setUiStatus:v10];
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
    v16 = KTStaticKeyPeerValidateResultGetString(enforced);
    staticAccountKeyEnforced = [(KTVerifierResult *)self staticAccountKeyEnforced];
    v18 = KTUIStatusGetString([(KTVerifierResult *)self uiStatus]);
    v19 = [(KTVerifierResult *)self uri];
    v21 = 138413570;
    v22 = v16;
    v23 = 1024;
    enforcedCopy = enforced;
    v25 = 1024;
    v26 = staticAccountKeyEnforced;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [(KTVerifierResult *)self uri];
  [coderCopy encodeObject:v4 forKey:@"uri"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTVerifierResult succeed](self, "succeed")}];
  [coderCopy encodeObject:v5 forKey:@"succeed"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTVerifierResult optedIn](self, "optedIn")}];
  [coderCopy encodeObject:v6 forKey:@"optedIn"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTVerifierResult everOptedIn](self, "everOptedIn")}];
  [coderCopy encodeObject:v7 forKey:@"everOptedIn"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTVerifierResult recentlyOptedIn](self, "recentlyOptedIn")}];
  [coderCopy encodeObject:v8 forKey:@"recentlyOptedIn"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTVerifierResult staticAccountKeyEnforced](self, "staticAccountKeyEnforced")}];
  [coderCopy encodeObject:v9 forKey:@"accountKeyEnforced"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTVerifierResult staticAccountKeyStatus](self, "staticAccountKeyStatus")}];
  [coderCopy encodeObject:v10 forKey:@"staticKeyStatus"];

  validUntil = [(KTVerifierResult *)self validUntil];
  [coderCopy encodeObject:validUntil forKey:@"validUntil"];

  publicID = [(KTVerifierResult *)self publicID];

  if (publicID)
  {
    publicID2 = [(KTVerifierResult *)self publicID];
    [coderCopy encodeObject:publicID2 forKey:@"accountKey"];
  }

  loggableDatas = [(KTVerifierResult *)self loggableDatas];

  if (loggableDatas)
  {
    loggableDatas2 = [(KTVerifierResult *)self loggableDatas];
    [coderCopy encodeObject:loggableDatas2 forKey:@"loggableDatas"];
  }

  failure = [(KTVerifierResult *)self failure];

  if (failure)
  {
    failure2 = [(KTVerifierResult *)self failure];
    [coderCopy encodeObject:failure2 forKey:@"failure"];
  }

  if ([(KTVerifierResult *)self uiStatus])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[KTVerifierResult uiStatus](self, "uiStatus")}];
    [coderCopy encodeObject:v18 forKey:@"uiStatus"];
  }

  application = [(KTVerifierResult *)self application];

  v20 = coderCopy;
  if (application)
  {
    application2 = [(KTVerifierResult *)self application];
    [coderCopy encodeObject:application2 forKey:@"application"];

    v20 = coderCopy;
  }
}

- (KTVerifierResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uri"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"application"];
  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"succeed"];
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"optedIn"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"everOptedIn"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recentlyOptedIn"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountKeyEnforced"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"loggableDatas"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountKey"];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  safeErrorClasses = [MEMORY[0x1E697AAC0] safeErrorClasses];
  v12 = [v10 setByAddingObjectsFromSet:safeErrorClasses];

  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"failure"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uiStatus"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"staticKeyStatus"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"validUntil"];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = [(KTVerifierResult *)self uri];
      if (v7 || ([(KTVerifierResult *)v6 uri], (publicID2 = objc_claimAutoreleasedReturnValue()) != 0))
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

      application = [(KTVerifierResult *)self application];
      if (application || ([(KTVerifierResult *)v6 application], (publicID2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        application2 = [(KTVerifierResult *)self application];
        application3 = [(KTVerifierResult *)v6 application];
        v15 = [application2 isEqual:application3];

        if (application)
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

      succeed = [(KTVerifierResult *)self succeed];
      if (succeed != [(KTVerifierResult *)v6 succeed])
      {
        goto LABEL_39;
      }

      optedIn = [(KTVerifierResult *)self optedIn];
      if (optedIn != [(KTVerifierResult *)v6 optedIn])
      {
        goto LABEL_39;
      }

      staticAccountKeyEnforced = [(KTVerifierResult *)self staticAccountKeyEnforced];
      if (staticAccountKeyEnforced != [(KTVerifierResult *)v6 staticAccountKeyEnforced])
      {
        goto LABEL_39;
      }

      staticAccountKeyStatus = [(KTVerifierResult *)self staticAccountKeyStatus];
      if (staticAccountKeyStatus != [(KTVerifierResult *)v6 staticAccountKeyStatus])
      {
        goto LABEL_39;
      }

      loggableDatas = [(KTVerifierResult *)self loggableDatas];
      if (loggableDatas || ([(KTVerifierResult *)v6 loggableDatas], (publicID2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        loggableDatas2 = [(KTVerifierResult *)self loggableDatas];
        loggableDatas3 = [(KTVerifierResult *)v6 loggableDatas];
        v23 = [loggableDatas2 isEqual:loggableDatas3];

        if (loggableDatas)
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

      publicID = [(KTVerifierResult *)self publicID];
      if (!publicID)
      {
        publicID2 = [(KTVerifierResult *)v6 publicID];
        if (!publicID2)
        {
          goto LABEL_33;
        }
      }

      publicID3 = [(KTVerifierResult *)self publicID];
      publicID4 = [(KTVerifierResult *)v6 publicID];
      v27 = [publicID3 isEqual:publicID4];

      if (publicID)
      {

        if (!v27)
        {
          goto LABEL_39;
        }

LABEL_33:
        everOptedIn = [(KTVerifierResult *)self everOptedIn];
        if (everOptedIn != [(KTVerifierResult *)v6 everOptedIn])
        {
          goto LABEL_39;
        }

        uiStatus = [(KTVerifierResult *)self uiStatus];
        if (uiStatus != [(KTVerifierResult *)v6 uiStatus])
        {
          goto LABEL_39;
        }

        validUntil = [(KTVerifierResult *)self validUntil];
        if (validUntil || ([(KTVerifierResult *)v6 validUntil], (publicID2 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          validUntil2 = [(KTVerifierResult *)self validUntil];
          validUntil3 = [(KTVerifierResult *)v6 validUntil];
          v11 = [validUntil2 isEqual:validUntil3];

          if (validUntil)
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
  application = [(KTVerifierResult *)self application];
  v8 = [v3 stringWithFormat:@"kt(%@) ui(%@) %@[%@]", v4, v5, v6, application];

  failure = [(KTVerifierResult *)self failure];

  if (failure)
  {
    failure2 = [(KTVerifierResult *)self failure];
    [v8 appendFormat:@" failure: %@", failure2];
  }

  [v8 appendFormat:@" optIn: %d, everOptedIn: %d", -[KTVerifierResult optedIn](self, "optedIn"), -[KTVerifierResult everOptedIn](self, "everOptedIn")];
  staticAccountKeyEnforced = [(KTVerifierResult *)self staticAccountKeyEnforced];
  v12 = KTStaticKeyPeerValidateResultGetString([(KTVerifierResult *)self staticAccountKeyStatus]);
  publicID = [(KTVerifierResult *)self publicID];
  publicAccountIdentity = [publicID publicAccountIdentity];
  [v8 appendFormat:@" staticKeyEnforced: %d, staticKeyStatus: %@, accountKey:%@ ", staticAccountKeyEnforced, v12, publicAccountIdentity];

  validUntil = [(KTVerifierResult *)self validUntil];
  v16 = validUntil;
  if (validUntil)
  {
    [v8 appendFormat:@" expirationTime: %@", validUntil];
  }

  loggableDatas = [(KTVerifierResult *)self loggableDatas];
  [v8 appendFormat:@" loggableDatas:%@", loggableDatas];

  return v8;
}

- (NSDictionary)diagnosticsJsonDictionary
{
  v42 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(KTVerifierResult *)self uri];

  if (v4)
  {
    v5 = [(KTVerifierResult *)self uri];
    [dictionary setObject:v5 forKeyedSubscript:@"uri"];
  }

  application = [(KTVerifierResult *)self application];

  if (application)
  {
    application2 = [(KTVerifierResult *)self application];
    [dictionary setObject:application2 forKeyedSubscript:@"application"];
  }

  v8 = KTResultGetString([(KTVerifierResult *)self succeed]);
  [dictionary setObject:v8 forKeyedSubscript:@"ktResult"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTVerifierResult optedIn](self, "optedIn")}];
  [dictionary setObject:v9 forKeyedSubscript:@"optedIn"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTVerifierResult everOptedIn](self, "everOptedIn")}];
  [dictionary setObject:v10 forKeyedSubscript:@"everOptedIn"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[KTVerifierResult staticAccountKeyEnforced](self, "staticAccountKeyEnforced")}];
  [dictionary setObject:v11 forKeyedSubscript:@"staticKeyEnforced"];

  v12 = KTUIStatusGetString([(KTVerifierResult *)self uiStatus]);
  [dictionary setObject:v12 forKeyedSubscript:@"uiStatus"];

  v13 = KTStaticKeyPeerValidateResultGetString([(KTVerifierResult *)self staticAccountKeyStatus]);
  [dictionary setObject:v13 forKeyedSubscript:@"staticKeyStatus"];

  validUntil = [(KTVerifierResult *)self validUntil];

  if (validUntil)
  {
    v15 = MEMORY[0x1E696AD98];
    validUntil2 = [(KTVerifierResult *)self validUntil];
    [validUntil2 timeIntervalSince1970];
    v17 = [v15 numberWithDouble:?];
    [dictionary setObject:v17 forKeyedSubscript:@"validUntil"];
  }

  loggableDatas = [(KTVerifierResult *)self loggableDatas];
  v19 = [loggableDatas count];

  if (v19)
  {
    v20 = MEMORY[0x1E695DF70];
    loggableDatas2 = [(KTVerifierResult *)self loggableDatas];
    v22 = [v20 arrayWithCapacity:{objc_msgSend(loggableDatas2, "count")}];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    loggableDatas3 = [(KTVerifierResult *)self loggableDatas];
    v24 = [loggableDatas3 countByEnumeratingWithState:&v37 objects:v41 count:16];
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
            objc_enumerationMutation(loggableDatas3);
          }

          diagnosticsJsonDictionary = [*(*(&v37 + 1) + 8 * i) diagnosticsJsonDictionary];
          [v22 addObject:diagnosticsJsonDictionary];
        }

        v25 = [loggableDatas3 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v25);
    }

    [dictionary setObject:v22 forKeyedSubscript:@"loggableDatas"];
  }

  publicID = [(KTVerifierResult *)self publicID];

  if (publicID)
  {
    publicID2 = [(KTVerifierResult *)self publicID];
    publicAccountIdentity = [publicID2 publicAccountIdentity];
    [dictionary setObject:publicAccountIdentity forKeyedSubscript:@"publicID"];
  }

  failure = [(KTVerifierResult *)self failure];

  if (failure)
  {
    failure2 = [(KTVerifierResult *)self failure];
    v34 = [failure2 description];
    [dictionary setObject:v34 forKeyedSubscript:@"failure"];
  }

  v35 = *MEMORY[0x1E69E9840];

  return dictionary;
}

@end