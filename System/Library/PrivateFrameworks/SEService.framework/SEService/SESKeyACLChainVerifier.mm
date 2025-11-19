@interface SESKeyACLChainVerifier
+ (id)findDesignatedKey:(void *)a3 error:;
+ (id)performChainAuthIfNeededForACL:(id)a3 operation:(id)a4 auth:(id)a5 seHandle:(id)a6 seid:(id)a7 error:(id *)a8;
- (void)dealloc;
@end

@implementation SESKeyACLChainVerifier

+ (id)performChainAuthIfNeededForACL:(id)a3 operation:(id)a4 auth:(id)a5 seHandle:(id)a6 seid:(id)a7 error:(id *)a8
{
  v78 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [MEMORY[0x1E69666D0] recordFromData:v13];
  v19 = [v18 propertyList];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v19 objectForKeyedSubscript:v14];
    v21 = [v20 objectForKeyedSubscript:@"ckref"];

    if (!v21)
    {
      v24 = SESDefaultLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v42 = [v13 base64];
        *buf = 138412546;
        *&buf[4] = v14;
        v76 = 2112;
        v77 = v42;
        _os_log_impl(&dword_1C7B9A000, v24, OS_LOG_TYPE_DEBUG, "Constraints for operation %@ doesn't require ckref in ACL %@", buf, 0x16u);
      }

      v37 = 0;
      goto LABEL_41;
    }

    v74 = 0;
    v22 = [SESKeyACLChainVerifier findDesignatedKey:v21 error:&v74];
    v23 = v74;
    v24 = v23;
    v71 = v22;
    if (!v22 || v23)
    {
      v43 = SESDefaultLogObject();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [v13 base64];
        v70 = v17;
        v44 = v16;
        v46 = v45 = v15;
        *buf = 138412290;
        *&buf[4] = v46;
        _os_log_impl(&dword_1C7B9A000, v43, OS_LOG_TYPE_ERROR, "ACL was %@", buf, 0xCu);

        v15 = v45;
        v16 = v44;
        v17 = v70;
      }

      if (a8)
      {
        *a8 = SESEnsureError();
      }

      notify_post("com.apple.private.seservice.designatedkeynotfound");
      v37 = 0;
      goto LABEL_40;
    }

    v25 = objc_opt_new();
    v69 = v25;
    if (!v25)
    {
      if (a8)
      {
        SESDefaultLogObject();
        v47 = v17;
        v48 = v16;
        v50 = v49 = v15;
        v51 = *MEMORY[0x1E69E5148];
        *a8 = SESCreateAndLogError();

        v15 = v49;
        v16 = v48;
        v17 = v47;
      }

      v24 = 0;
      v37 = 0;
      goto LABEL_39;
    }

    v26 = v25;
    *buf = 0;
    v27 = SecAccessControlCreate();
    v24 = *buf;
    if (!v27 || *buf)
    {
      if (!a8)
      {
        v37 = 0;
LABEL_38:

LABEL_39:
LABEL_40:

LABEL_41:
        goto LABEL_42;
      }

      v68 = v27;
      v67 = SESDefaultLogObject();
      v52 = *MEMORY[0x1E69E5148];
      SESCreateAndLogError();
      *a8 = v37 = 0;
      v53 = v67;
    }

    else
    {
      v64 = v21;
      v65 = v15;
      v28 = v27;
      SecAccessControlSetConstraints();
      v73 = 0;
      v68 = v28;
      v29 = [v26 evaluateAccessControl:v28 aksOperation:v14 options:0 error:&v73];
      v24 = v73;
      v30 = [v24 userInfo];
      v31 = [v30 objectForKeyedSubscript:*MEMORY[0x1E696EE38]];

      v66 = v31;
      if ([v24 code]== -1026)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          v72 = 0;
          v15 = v65;
          v32 = [PTClassicMicro sign:v31 designatedKey:v71 extAuth:v65 seHandle:v16 seid:v17 error:&v72];
          v33 = v72;
          v34 = v32;
          v24 = v33;
          if (!v34 || v33)
          {
            v21 = v64;
            if (!a8)
            {
              v37 = 0;
              v53 = v66;
              goto LABEL_36;
            }

            v63 = v34;
            v57 = SESDefaultLogObject();
            v58 = *MEMORY[0x1E69E5148];
            v59 = SESCreateAndLogError();
            v39 = v57;
            v37 = 0;
            *a8 = v59;
          }

          else
          {
            v63 = v34;
            [v26 setCredential:? type:?];
            v35 = objc_opt_new();
            v36 = v26;
            v37 = v35;
            v38 = v36;
            v39 = v37[1];
            v37[1] = v38;
            v21 = v64;
          }

          v53 = v66;
          v34 = v63;
LABEL_36:

          goto LABEL_37;
        }
      }

      v15 = v65;
      if (a8)
      {
        v54 = SESDefaultLogObject();
        v55 = *MEMORY[0x1E69E5148];
        v56 = SESCreateAndLogError();
        v34 = v54;
        v37 = 0;
        *a8 = v56;
        v53 = v31;
        v21 = v64;
        goto LABEL_36;
      }

      v37 = 0;
      v53 = v31;
      v21 = v64;
    }

LABEL_37:

    v27 = v68;
    goto LABEL_38;
  }

  if (a8)
  {
    v40 = SESDefaultLogObject();
    v41 = *MEMORY[0x1E69E5148];
    v62 = [v13 asHexString];
    *a8 = SESCreateAndLogError();
  }

  v37 = 0;
LABEL_42:

  v60 = *MEMORY[0x1E69E9840];

  return v37;
}

+ (id)findDesignatedKey:(void *)a3 error:
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  v5 = [v4 ses_sha256];
  v6 = [v5 subdataWithRange:{0, 16}];

  v36 = 0;
  v7 = SESKeyGetDesignatedKeys();
  v8 = 0;
  v9 = v8;
  if (v8)
  {
    if (a3)
    {
      v10 = v8;
      v11 = 0;
      *a3 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __50__SESKeyACLChainVerifier_findDesignatedKey_error___block_invoke;
    v34[3] = &unk_1E82D1018;
    v12 = v6;
    v35 = v12;
    v11 = [v7 find:v34];
    if (!v11)
    {
      v25 = v12;
      v26 = v7;
      v27 = a3;
      v28 = v6;
      v29 = v4;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v13 = v7;
      v14 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v31;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v30 + 1) + 8 * i);
            v19 = SESDefaultLogObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v38 = v18;
              _os_log_impl(&dword_1C7B9A000, v19, OS_LOG_TYPE_ERROR, "   eligible key %@", buf, 0xCu);
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
        }

        while (v15);
      }

      v6 = v28;
      v4 = v29;
      v7 = v26;
      if (v27)
      {
        v20 = SESDefaultLogObject();
        v21 = *MEMORY[0x1E69E5148];
        v24 = [v25 asHexString];
        *v27 = SESCreateAndLogError();
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];

  return v11;
}

uint64_t __50__SESKeyACLChainVerifier_findDesignatedKey_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 keyIdentifier];
  v4 = [v3 isEqualToData:*(a1 + 32)];

  return v4;
}

- (void)dealloc
{
  [(LAContext *)self->_laContext invalidate];
  v3.receiver = self;
  v3.super_class = SESKeyACLChainVerifier;
  [(SESKeyACLChainVerifier *)&v3 dealloc];
}

@end