@interface WFSystemIntentAppEnumerator
- (WFSystemIntentAppEnumerator)init;
- (id)supportedIdentifiersForIntentClassName:(id)a3 includingUserActivityBasedApps:(BOOL)a4;
- (void)dealloc;
- (void)enumerate;
@end

@implementation WFSystemIntentAppEnumerator

- (id)supportedIdentifiersForIntentClassName:(id)a3 includingUserActivityBasedApps:(BOOL)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9838;
  v19 = __Block_byref_object_dispose__9839;
  v20 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101__WFSystemIntentAppEnumerator_supportedIdentifiersForIntentClassName_includingUserActivityBasedApps___block_invoke;
  v11[3] = &unk_1E8375530;
  v14 = a4;
  v12 = v6;
  v13 = &v15;
  v11[4] = self;
  v8 = v6;
  dispatch_sync(queue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __101__WFSystemIntentAppEnumerator_supportedIdentifiersForIntentClassName_includingUserActivityBasedApps___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[3] || !v2[4])
  {
    [v2 enumerate];
    v2 = *(a1 + 32);
  }

  v3 = 3;
  if (*(a1 + 56))
  {
    v3 = 4;
  }

  v4 = [v2[v3] objectForKey:*(a1 + 40)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)enumerate
{
  v96[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x1E6963668]);
  v49 = [v4 initWithIdentifier:*MEMORY[0x1E696E580] error:0];
  v96[0] = v49;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:1];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v89 = 0u;
  v53 = [obj countByEnumeratingWithState:&v86 objects:v95 count:16];
  if (v53)
  {
    v52 = *v87;
    v56 = *MEMORY[0x1E696E560];
    do
    {
      v5 = 0;
      do
      {
        if (*v87 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v54 = v5;
        v6 = *(*(&v86 + 1) + 8 * v5);
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v55 = [MEMORY[0x1E69635D0] enumeratorWithExtensionPointRecord:v6 options:0];
        v60 = [v55 countByEnumeratingWithState:&v82 objects:v94 count:16];
        if (v60)
        {
          v58 = *v83;
          do
          {
            for (i = 0; i != v60; i = i + 1)
            {
              if (*v83 != v58)
              {
                objc_enumerationMutation(v55);
              }

              v8 = *(*(&v82 + 1) + 8 * i);
              v9 = objc_autoreleasePoolPush();
              v10 = [v8 if_extensionAttributesDictionary];
              v11 = [v10 objectForKeyedSubscript:v56];

              if (v11)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v12 = v11;
                }

                else
                {
                  v12 = 0;
                }
              }

              else
              {
                v12 = 0;
              }

              v13 = v12;

              if ([v13 count])
              {
                v14 = [v8 containingBundleRecord];
                if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  if (![v14 wf_isAvailableInContext:0])
                  {
LABEL_33:

                    goto LABEL_34;
                  }
                }

                else
                {

                  v14 = 0;
                }

                v15 = [v14 bundleIdentifier];
                v16 = v15;
                v64 = v9;
                if (v15)
                {
                  v17 = v15;
                }

                else
                {
                  v17 = [v8 bundleIdentifier];
                }

                v18 = v17;

                v80 = 0u;
                v81 = 0u;
                v78 = 0u;
                v79 = 0u;
                v62 = v13;
                v19 = v13;
                v20 = [v19 countByEnumeratingWithState:&v78 objects:v93 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v79;
                  do
                  {
                    for (j = 0; j != v21; ++j)
                    {
                      if (*v79 != v22)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v24 = *(*(&v78 + 1) + 8 * j);
                      WFInsertIdentifierForKey(v2, v24, v18);
                      WFInsertIdentifierForKey(v3, v24, v18);
                    }

                    v21 = [v19 countByEnumeratingWithState:&v78 objects:v93 count:16];
                  }

                  while (v21);
                }

                v13 = v62;
                v9 = v64;
                goto LABEL_33;
              }

LABEL_34:

              objc_autoreleasePoolPop(v9);
            }

            v60 = [v55 countByEnumeratingWithState:&v82 objects:v94 count:16];
          }

          while (v60);
        }

        v5 = v54 + 1;
      }

      while (v54 + 1 != v53);
      v53 = [obj countByEnumeratingWithState:&v86 objects:v95 count:16];
    }

    while (v53);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v61 = WFInstalledAppsEnumerator();
  v25 = [v61 countByEnumeratingWithState:&v74 objects:v92 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v75;
    v57 = *v75;
    do
    {
      v28 = 0;
      v59 = v26;
      do
      {
        if (*v75 != v27)
        {
          objc_enumerationMutation(v61);
        }

        v29 = *(*(&v74 + 1) + 8 * v28);
        v30 = objc_autoreleasePoolPush();
        v31 = [v29 supportedIntents];
        v32 = [v29 if_userActivityTypes];
        if (([v31 count] || objc_msgSend(v32, "count")) && objc_msgSend(v29, "wf_isAvailableInContext:", 0))
        {
          v63 = v32;
          v65 = v30;
          v33 = [v29 bundleIdentifier];
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v34 = v31;
          v35 = [v34 countByEnumeratingWithState:&v70 objects:v91 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v71;
            do
            {
              for (k = 0; k != v36; ++k)
              {
                if (*v71 != v37)
                {
                  objc_enumerationMutation(v34);
                }

                v39 = *(*(&v70 + 1) + 8 * k);
                WFInsertIdentifierForKey(v2, v39, v33);
                WFInsertIdentifierForKey(v3, v39, v33);
              }

              v36 = [v34 countByEnumeratingWithState:&v70 objects:v91 count:16];
            }

            while (v36);
          }

          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v32 = v63;
          v40 = v63;
          v41 = [v40 countByEnumeratingWithState:&v66 objects:v90 count:16];
          if (v41)
          {
            v42 = v41;
            v43 = *v67;
            do
            {
              for (m = 0; m != v42; ++m)
              {
                if (*v67 != v43)
                {
                  objc_enumerationMutation(v40);
                }

                WFInsertIdentifierForKey(v3, *(*(&v66 + 1) + 8 * m), v33);
              }

              v42 = [v40 countByEnumeratingWithState:&v66 objects:v90 count:16];
            }

            while (v42);
          }

          v27 = v57;
          v26 = v59;
          v30 = v65;
        }

        objc_autoreleasePoolPop(v30);
        ++v28;
      }

      while (v28 != v26);
      v26 = [v61 countByEnumeratingWithState:&v74 objects:v92 count:16];
    }

    while (v26);
  }

  identifiersByIntentName = self->_identifiersByIntentName;
  self->_identifiersByIntentName = v2;
  v46 = v2;

  identifiersByUserActivityType = self->_identifiersByUserActivityType;
  self->_identifiersByUserActivityType = v3;

  v48 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  notify_cancel(self->_token);
  v3.receiver = self;
  v3.super_class = WFSystemIntentAppEnumerator;
  [(WFSystemIntentAppEnumerator *)&v3 dealloc];
}

- (WFSystemIntentAppEnumerator)init
{
  v12.receiver = self;
  v12.super_class = WFSystemIntentAppEnumerator;
  v2 = [(WFSystemIntentAppEnumerator *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.shortcuts.WFSystemIntentAppEnumerator", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    objc_initWeak(&location, v2);
    v5 = [*MEMORY[0x1E6963548] UTF8String];
    v6 = v2->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35__WFSystemIntentAppEnumerator_init__block_invoke;
    v9[3] = &unk_1E837C5F8;
    objc_copyWeak(&v10, &location);
    notify_register_dispatch(v5, &v2->_token, v6, v9);
    v7 = v2;
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __35__WFSystemIntentAppEnumerator_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = WeakRetained[3];
  WeakRetained[3] = 0;

  v2 = WeakRetained[4];
  WeakRetained[4] = 0;
}

@end