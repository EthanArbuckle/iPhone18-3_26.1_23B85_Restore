@interface WFObservableArrayResult
+ (id)getEmptyResultWithQuery:(id)a3 valueType:(Class)a4 glyphSize:(CGSize)a5;
+ (id)getResultWithQuery:(id)a3 valueType:(Class)a4 glyphSize:(CGSize)a5 error:(id *)a6;
+ (void)getResultWithQuery:(id)a3 valueType:(Class)a4 glyphSize:(CGSize)a5 roundedIcon:(BOOL)a6 completionHandler:(id)a7;
- (WFObservableArrayResult)initWithValueType:(Class)a3 glyphSize:(CGSize)a4 initialValues:(id)a5 query:(id)a6 resultState:(id)a7;
- (id)description;
- (void)handleChangeNotification:(id)a3;
@end

@implementation WFObservableArrayResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = NSStringFromClass([(WFObservableResult *)self valueType]);
  v7 = [(WFObservableArrayResult *)self values];
  v8 = [v7 count];
  v9 = [(WFObservableArrayResult *)self query];
  v10 = [(WFObservableArrayResult *)self values];
  v11 = [v3 stringWithFormat:@"<%@: %p, valueType: %@, values count: %lu, query: %@, values: %@>", v5, self, v6, v8, v9, v10];

  return v11;
}

- (void)handleChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(WFObservableResult *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__WFObservableArrayResult_handleChangeNotification___block_invoke;
  v7[3] = &unk_1E7B02180;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __52__WFObservableArrayResult_handleChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) resultState];
  if (!v2 || (v3 = v2, v4 = *(a1 + 40), [*(a1 + 32) resultState], v5 = objc_claimAutoreleasedReturnValue(), LODWORD(v4) = objc_msgSend(v4, "appliesToResultState:", v5), v5, v3, v4))
  {
    v6 = +[VCVoiceShortcutClient standardClient];
    v7 = [*(a1 + 32) query];
    v8 = [*(a1 + 32) valueType];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__WFObservableArrayResult_handleChangeNotification___block_invoke_2;
    v9[3] = &unk_1E7B018A8;
    v9[4] = *(a1 + 32);
    [v6 getResultsForQuery:v7 resultClass:v8 completion:v9];
  }
}

void __52__WFObservableArrayResult_handleChangeNotification___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) glyphSize];
  v8 = v7;
  v10 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__WFObservableArrayResult_handleChangeNotification___block_invoke_3;
  v13[3] = &unk_1E7B01C60;
  v13[4] = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  v11 = v6;
  v12 = v5;
  [WFObservableResult drawGlyphsIntoWorkflowsIfNecessary:v12 glyphSize:v13 completion:v8, v10];
}

void __52__WFObservableArrayResult_handleChangeNotification___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__WFObservableArrayResult_handleChangeNotification___block_invoke_4;
  block[3] = &unk_1E7B01C60;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void __52__WFObservableArrayResult_handleChangeNotification___block_invoke_4(id *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v20 = *(a1[4] + 8);
  v3 = v2;
  if (v20 != v3)
  {
    if (v20)
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
    }

    else
    {
      v6 = [v20 isEqual:v3];

      if (v6)
      {
LABEL_20:
        v19 = *MEMORY[0x1E69E9840];
        return;
      }
    }

    v7 = [a1[5] copy];
    v8 = a1[4];
    v9 = v8[8];
    v8[8] = v7;

    objc_storeStrong(a1[4] + 9, a1[6]);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [a1[4] observers];
    v11 = [v10 allObjects];

    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [a1[4] observerNotificationQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __52__WFObservableArrayResult_handleChangeNotification___block_invoke_5;
          block[3] = &unk_1E7B02180;
          v18 = a1[4];
          block[4] = v16;
          block[5] = v18;
          dispatch_async(v17, block);
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    goto LABEL_20;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (WFObservableArrayResult)initWithValueType:(Class)a3 glyphSize:(CGSize)a4 initialValues:(id)a5 query:(id)a6 resultState:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = WFObservableArrayResult;
  v16 = [(WFObservableResult *)&v21 initWithValueType:a3 glyphSize:width, height];
  if (v16)
  {
    v17 = [v13 copy];
    values = v16->_values;
    v16->_values = v17;

    objc_storeStrong(&v16->_query, a6);
    objc_storeStrong(&v16->_resultState, a7);
    v19 = v16;
  }

  return v16;
}

+ (id)getEmptyResultWithQuery:(id)a3 valueType:(Class)a4 glyphSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3;
  v9 = [WFObservableArrayResult alloc];
  v10 = [(WFObservableArrayResult *)v9 initWithValueType:a4 glyphSize:MEMORY[0x1E695E0F0] initialValues:v8 query:0 resultState:width, height];

  return v10;
}

+ (id)getResultWithQuery:(id)a3 valueType:(Class)a4 glyphSize:(CGSize)a5 error:(id *)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = +[VCVoiceShortcutClient standardClient];
  v19 = 0;
  v20 = 0;
  v13 = [v12 getResultsForQuery:v11 resultClass:a4 resultState:&v20 error:&v19];
  v14 = v20;
  v15 = v19;

  if (v15)
  {
    if (a6)
    {
      v16 = v15;
      v17 = 0;
      *a6 = v15;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    [a1 drawGlyphsIntoWorkflowsIfNecessary:v13 glyphSize:{width, height}];
    v17 = [[WFObservableArrayResult alloc] initWithValueType:a4 glyphSize:v13 initialValues:v11 query:v14 resultState:width, height];
  }

  return v17;
}

+ (void)getResultWithQuery:(id)a3 valueType:(Class)a4 glyphSize:(CGSize)a5 roundedIcon:(BOOL)a6 completionHandler:(id)a7
{
  height = a5.height;
  width = a5.width;
  v13 = a3;
  v14 = a7;
  v15 = +[VCVoiceShortcutClient standardClient];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __96__WFObservableArrayResult_getResultWithQuery_valueType_glyphSize_roundedIcon_completionHandler___block_invoke;
  v18[3] = &unk_1E7B01880;
  v20 = v14;
  v21 = a1;
  v22 = width;
  v23 = height;
  v25 = a6;
  v24 = a4;
  v19 = v13;
  v16 = v13;
  v17 = v14;
  [v15 getResultsForQuery:v16 resultClass:a4 completion:v18];
}

void __96__WFObservableArrayResult_getResultWithQuery_valueType_glyphSize_roundedIcon_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 80);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __96__WFObservableArrayResult_getResultWithQuery_valueType_glyphSize_roundedIcon_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7B01858;
    v14 = *(a1 + 72);
    v15 = *(a1 + 56);
    v10 = v5;
    v11 = *(a1 + 32);
    v12 = v6;
    v13 = *(a1 + 40);
    [v7 drawGlyphsIntoWorkflowsIfNecessary:v10 glyphSize:v8 roundedIcon:0 synchronously:v9 completion:{*(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __96__WFObservableArrayResult_getResultWithQuery_valueType_glyphSize_roundedIcon_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [[WFObservableArrayResult alloc] initWithValueType:*(a1 + 64) glyphSize:*(a1 + 32) initialValues:*(a1 + 40) query:*(a1 + 48) resultState:*(a1 + 72), *(a1 + 80)];
  (*(*(a1 + 56) + 16))();
}

@end