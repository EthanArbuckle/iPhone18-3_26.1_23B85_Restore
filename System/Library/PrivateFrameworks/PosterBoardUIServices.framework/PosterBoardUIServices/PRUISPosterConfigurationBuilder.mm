@interface PRUISPosterConfigurationBuilder
- (PRUISPosterConfigurationBuilder)init;
- (PRUISPosterConfigurationBuilder)initWithProvider:(id)a3 role:(id)a4;
- (id)buildPosterConfigurationWithCompletion:(id)a3;
- (void)dealloc;
@end

@implementation PRUISPosterConfigurationBuilder

- (PRUISPosterConfigurationBuilder)initWithProvider:(id)a3 role:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [PRUISPosterConfigurationBuilder initWithProvider:a2 role:self];
  }

  if ((PFPosterRoleIsValid() & 1) == 0)
  {
    [PRUISPosterConfigurationBuilder initWithProvider:a2 role:self];
  }

  v15.receiver = self;
  v15.super_class = PRUISPosterConfigurationBuilder;
  v9 = [(PRUISPosterConfigurationBuilder *)&v15 init];
  if (v9)
  {
    v10 = [v7 copy];
    provider = v9->_provider;
    v9->_provider = v10;

    objc_storeStrong(&v9->_role, a4);
    v12 = objc_opt_new();
    extensionProvider = v9->_extensionProvider;
    v9->_extensionProvider = v12;

    [(PFPosterExtensionProvider *)v9->_extensionProvider start];
  }

  return v9;
}

- (PRUISPosterConfigurationBuilder)init
{
  [(PRUISPosterConfigurationBuilder *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  [(PFPosterExtensionProvider *)self->_extensionProvider cancel];
  v3.receiver = self;
  v3.super_class = PRUISPosterConfigurationBuilder;
  [(PRUISPosterConfigurationBuilder *)&v3 dealloc];
}

- (id)buildPosterConfigurationWithCompletion:(id)a3
{
  v101 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    [(PRUISPosterConfigurationBuilder *)a2 buildPosterConfigurationWithCompletion:?];
  }

  v6 = [(PRUISPosterConfigurationBuilder *)self provider];
  v7 = [(PFPosterExtensionProvider *)self->_extensionProvider extensionForIdentifier];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    v12 = PFFunctionNameForAddress();
    v13 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v5[2](v5, 0, v13);

    v14 = 0;
    goto LABEL_39;
  }

  v9 = [(PRUISPosterConfigurationBuilder *)self role];
  v10 = [(PRUISPosterConfigurationBuilder *)self sessionInfo];
  v11 = [(PRUISPosterConfigurationBuilder *)self existingPoster];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E69C4FE8] mutableConfigurationWithProvider:v6 descriptorIdentifier:0 role:v9];
    if (v10)
    {
      goto LABEL_10;
    }
  }

  if (self->_existingPoster)
  {
LABEL_10:
    v73 = v9;
    v15 = MEMORY[0x1E696AEC0];
    v16 = [MEMORY[0x1E696AFB0] UUID];
    v17 = [v15 stringWithFormat:@"PRUISPosterConfigurationBuilder-%@-%@", v6, v16];

    v18 = [(PFPosterExtensionProvider *)self->_extensionProvider instanceProvider];
    v98 = 0;
    v19 = [v18 acquireInstanceForExtension:v8 reason:v17 error:&v98];
    v20 = v98;
    v72 = v20;
    if (!v19 || v20)
    {
      if (v20)
      {
        v5[2](v5, 0, v20);
      }

      else
      {
        PFFunctionNameForAddress();
        v70 = v18;
        v51 = v50 = v17;
        v52 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
        v5[2](v5, 0, v52);

        v17 = v50;
        v18 = v70;
      }

      v14 = 0;
      v40 = v19;
    }

    else
    {
      v97 = 0;
      v68 = v19;
      v21 = [v19 pr_assetUpdaterWithError:&v97];
      v22 = v97;
      v67 = v22;
      if (!v21 || v22)
      {
        if (v22)
        {
          v5[2](v5, 0, v22);
        }

        else
        {
          PFFunctionNameForAddress();
          v71 = v18;
          v56 = v55 = v17;
          v57 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
          v5[2](v5, 0, v57);

          v17 = v55;
          v18 = v71;
        }

        v14 = 0;
        v40 = v68;
      }

      else
      {
        v69 = v18;
        v65 = v8;
        v23 = v17;
        v24 = objc_opt_new();
        v63 = v11;
        v25 = [v11 _path];
        v95[0] = MEMORY[0x1E69E9820];
        v95[1] = 3221225472;
        v95[2] = __74__PRUISPosterConfigurationBuilder_buildPosterConfigurationWithCompletion___block_invoke;
        v95[3] = &unk_1E83A89D8;
        v61 = v24;
        v96 = v61;
        v64 = v10;
        [v21 updateConfiguration:v25 sessionInfo:v10 completion:v95];

        v26 = [MEMORY[0x1E69C7548] pf_finishTaskInterruptableWithExplanation:@"updateConfiguration" invalidationHandler:0];
        v27 = MEMORY[0x1E69C7548];
        v62 = v21;
        v28 = [v21 target];
        v66 = v23;
        v29 = [v27 pf_posterUpdateRuntimeAssertionForTarget:v28 explanation:v23];

        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v59 = v29;
        v60 = v26;
        v99[0] = v26;
        v99[1] = v29;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:2];
        v31 = [v30 countByEnumeratingWithState:&v91 objects:v100 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v92;
          while (2)
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v92 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v91 + 1) + 8 * i);
              v90 = 0;
              v36 = [v35 acquireWithError:&v90];
              v37 = v90;
              v38 = v37;
              if ((v36 & 1) == 0)
              {
                if (!v37)
                {
                  v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to acquire assertion: %@", v35];
                  v54 = PFFunctionNameForAddress();
                  v38 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
                }

                v5[2](v5, 0, v38);
                v14 = 0;
                v40 = v68;
                v42 = v61;
                v21 = v62;
                v48 = v59;
                v49 = v60;
                goto LABEL_33;
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v91 objects:v100 count:16];
            if (v32)
            {
              continue;
            }

            break;
          }
        }

        v39 = objc_opt_new();
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __74__PRUISPosterConfigurationBuilder_buildPosterConfigurationWithCompletion___block_invoke_2;
        aBlock[3] = &unk_1E83A8A00;
        v84 = v39;
        v85 = v69;
        v40 = v68;
        v86 = v68;
        v87 = v66;
        v88 = v60;
        v89 = v59;
        v30 = v39;
        v41 = _Block_copy(aBlock);
        v42 = v61;
        v43 = [v61 future];
        v79[0] = MEMORY[0x1E69E9820];
        v79[1] = 3221225472;
        v79[2] = __74__PRUISPosterConfigurationBuilder_buildPosterConfigurationWithCompletion___block_invoke_3;
        v79[3] = &unk_1E83A8A28;
        v80 = v6;
        v81 = v73;
        v44 = v41;
        v82 = v44;
        v14 = [v43 flatMap:v79];

        v77[0] = MEMORY[0x1E69E9820];
        v77[1] = 3221225472;
        v77[2] = __74__PRUISPosterConfigurationBuilder_buildPosterConfigurationWithCompletion___block_invoke_4;
        v77[3] = &unk_1E83A8A50;
        v78 = v5;
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __74__PRUISPosterConfigurationBuilder_buildPosterConfigurationWithCompletion___block_invoke_5;
        v74[3] = &unk_1E83A8A78;
        v75 = v78;
        v76 = v44;
        v45 = MEMORY[0x1E69C5268];
        v46 = v44;
        v47 = [v45 mainThreadScheduler];
        [v14 addSuccessBlock:v77 andFailureBlock:v74 scheduler:v47];

        v48 = v59;
        v49 = v60;

        v38 = v84;
        v21 = v62;
LABEL_33:

        v10 = v64;
        v8 = v65;
        v11 = v63;
        v17 = v66;
        v18 = v69;
      }
    }

    v9 = v73;
    goto LABEL_38;
  }

  (v5)[2](v5, v11, 0);
  v14 = 0;
LABEL_38:

LABEL_39:

  return v14;
}

void __74__PRUISPosterConfigurationBuilder_buildPosterConfigurationWithCompletion___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) signal])
  {
    [*(a1 + 40) relinquishExtensionInstance:*(a1 + 48) reason:*(a1 + 56)];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = *(a1 + 72);
    v12[0] = *(a1 + 64);
    v12[1] = v2;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:{2, 0}];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) invalidate];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

id __74__PRUISPosterConfigurationBuilder_buildPosterConfigurationWithCompletion___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 paths];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [MEMORY[0x1E69C4FE8] mutableConfigurationWithProvider:a1[4] descriptorIdentifier:0 role:a1[5]];
    v7 = [v6 _path];
    v15 = 0;
    [v7 copyContentsOfPath:v5 error:&v15];
    v8 = v15;

    (*(a1[6] + 16))();
    [v3 invalidateWithResponder:0];

    v9 = MEMORY[0x1E69C5258];
    if (!v8)
    {
      v10 = [MEMORY[0x1E69C5258] futureWithResult:v6];
      goto LABEL_6;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69C5258];
    v6 = PFFunctionNameForAddress();
    v14 = 0;
    v8 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

    v9 = v11;
  }

  v10 = [v9 futureWithError:{v8, v14}];
LABEL_6:
  v12 = v10;

  return v12;
}

uint64_t __74__PRUISPosterConfigurationBuilder_buildPosterConfigurationWithCompletion___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)initWithProvider:(uint64_t)a1 role:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRUISPosterConfigurationBuilder.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"provider"}];
}

- (void)initWithProvider:(uint64_t)a1 role:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRUISPosterConfigurationBuilder.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"PFPosterRoleIsValid(role)"}];
}

- (void)buildPosterConfigurationWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRUISPosterConfigurationBuilder.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

@end