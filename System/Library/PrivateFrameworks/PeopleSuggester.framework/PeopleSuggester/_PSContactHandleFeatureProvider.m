@interface _PSContactHandleFeatureProvider
+ (NSArray)featureNames;
- (_PSContactHandleFeatureProvider)init;
- (id)_interactionFeaturesForHandle:(id)a3;
- (id)interactionFeaturesForHandle:(id)a3;
- (void)dealloc;
@end

@implementation _PSContactHandleFeatureProvider

- (_PSContactHandleFeatureProvider)init
{
  v8.receiver = self;
  v8.super_class = _PSContactHandleFeatureProvider;
  v2 = [(_PSContactHandleFeatureProvider *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x1E6997A00] options:4096];
    connection = v2->_connection;
    v2->_connection = v4;

    v6 = _CDInteractionNSXPCInterface();
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = _PSContactHandleFeatureProvider;
  [(_PSContactHandleFeatureProvider *)&v3 dealloc];
}

+ (NSArray)featureNames
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = +[_PSContactHandleFeatureProvider numberOfIncomingInteractions];
  v9[0] = v2;
  v3 = +[_PSContactHandleFeatureProvider numberOfOutgoingInteractions];
  v9[1] = v3;
  v4 = +[_PSContactHandleFeatureProvider timeSinceLastIncomingInteraction];
  v9[2] = v4;
  v5 = +[_PSContactHandleFeatureProvider timeSinceLastOutgoingInteraction];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)interactionFeaturesForHandle:(id)a3
{
  v4 = a3;
  connection = self->_connection;
  if (connection)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__13;
    v14 = __Block_byref_object_dispose__13;
    v15 = 0;
    v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_29];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64___PSContactHandleFeatureProvider_interactionFeaturesForHandle___block_invoke_16;
    v9[3] = &unk_1E7C25420;
    v9[4] = &v10;
    [v6 interactionFeaturesForHandle:v4 reply:v9];
    v7 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  return v7;
}

- (id)_interactionFeaturesForHandle:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_alloc_init(MEMORY[0x1E698F2E0]);
  v6 = [MEMORY[0x1E695DF00] date];
  [v6 timeIntervalSince1970];
  v8 = v7;

  v45 = v3;
  v9 = [v3 stringByReplacingOccurrencesOfString:@"'" withString:@"''" options:2 range:{0, objc_msgSend(v3, "length")}];
  v10 = MEMORY[0x1E696AEC0];
  v11 = +[_PSContactHandleFeatureProvider timeSinceLastOutgoingInteraction];
  v12 = +[_PSContactHandleFeatureProvider timeSinceLastIncomingInteraction];
  v13 = +[_PSContactHandleFeatureProvider numberOfOutgoingInteractions];
  v14 = +[_PSContactHandleFeatureProvider numberOfIncomingInteractions];
  v43 = v9;
  v15 = [v10 stringWithFormat:@"SELECT    intentClass, bundleId, groupIdentifier, COALESCE(%d - MAX(CASE WHEN interactionDirection = 2 THEN absoluteTimestamp END), -1) AS %@, COALESCE(%d - MAX(CASE WHEN interactionDirection = 3 THEN absoluteTimestamp END), -1) AS %@, COUNT(CASE WHEN interactionDirection = 2 THEN 1 END) AS %@, COUNT(CASE WHEN interactionDirection = 3 THEN 1 END) AS %@ FROM    App.Intent WHERE\n    (intentClass = 'INSendMessageIntent'    AND groupIdentifier = 'iMessage-;%@') OR (intentClass = 'INSendMessageIntent'    AND groupIdentifier = 'SMS;-;%@') OR (intentClass = 'INSendMessageIntent'    AND groupIdentifier = 'RCS;-;%@') OR (intentClass = 'INSendMessageIntent'    AND groupIdentifier = 'any;-;%@') OR (intentClass = 'INStartCallIntent'    AND groupIdentifier = '%@') GROUP BY    groupIdentifier;", v8, v11, v8, v12, v13, v14, v9, v9, v9, v9, v9];;

  v16 = +[_PSLogging featureGenerationChannel];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [(_PSContactHandleFeatureProvider *)v15 _interactionFeaturesForHandle:v16];
  }

  v17 = [v5 executeQuery:{@"%@", v15}];
  v18 = [v17 error];

  v44 = v5;
  v42 = v15;
  if (v18)
  {
    v19 = +[_PSLogging featureGenerationChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(_PSContactHandleFeatureProvider *)v45 _interactionFeaturesForHandle:v19];
    }

    goto LABEL_32;
  }

  v20 = 0x1E7C23000uLL;
  if (![v17 next])
  {
    goto LABEL_32;
  }

  v46 = v17;
  do
  {
    v21 = [v17 row];
    if (!v21)
    {
      goto LABEL_31;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = [*(v20 + 1000) featureNames];
    v22 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (!v22)
    {
      goto LABEL_30;
    }

    v23 = v22;
    v24 = *v49;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v49 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v48 + 1) + 8 * i);
        v27 = [v21 objectForKeyedSubscript:v26];
        if (v27)
        {
          v28 = +[_PSContactHandleFeatureProvider timeSinceLastIncomingInteraction];
          if ([v26 isEqualToString:v28])
          {
          }

          else
          {
            v29 = +[_PSContactHandleFeatureProvider timeSinceLastOutgoingInteraction];
            v30 = [v26 isEqualToString:v29];

            if (!v30)
            {
              v33 = +[_PSContactHandleFeatureProvider numberOfIncomingInteractions];
              if ([v26 isEqualToString:v33])
              {
              }

              else
              {
                v34 = +[_PSContactHandleFeatureProvider numberOfOutgoingInteractions];
                v35 = [v26 isEqualToString:v34];

                if (!v35)
                {
                  goto LABEL_28;
                }
              }

              v36 = [v4 objectForKeyedSubscript:v26];

              if (v36)
              {
                v37 = MEMORY[0x1E696AD98];
                v38 = [v4 objectForKeyedSubscript:v26];
                v39 = [v37 numberWithInt:{objc_msgSend(v27, "intValue") + objc_msgSend(v38, "intValue")}];
                [v4 setObject:v39 forKeyedSubscript:v26];

                goto LABEL_28;
              }

LABEL_27:
              [v4 setObject:v27 forKeyedSubscript:v26];
              goto LABEL_28;
            }
          }

          v31 = [v4 objectForKeyedSubscript:v26];

          if (!v31)
          {
            goto LABEL_27;
          }

          v32 = [v4 objectForKeyedSubscript:v26];

          if (v27 < v32)
          {
            goto LABEL_27;
          }
        }

LABEL_28:
      }

      v23 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v23);
LABEL_30:

    v20 = 0x1E7C23000;
    v17 = v46;
LABEL_31:
  }

  while (([v17 next] & 1) != 0);
LABEL_32:

  v40 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_interactionFeaturesForHandle:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_DEBUG, "query = %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_interactionFeaturesForHandle:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Error getting features for handle %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end