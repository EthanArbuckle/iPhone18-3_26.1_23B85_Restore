@interface WFObservableResult
- (CGSize)glyphSize;
- (WFObservableResult)initWithValueType:(Class)a3 glyphSize:(CGSize)a4;
- (void)addResultObserver:(id)a3;
- (void)databaseDidChange:(id)a3;
- (void)dealloc;
- (void)removeResultObserver:(id)a3;
- (void)startConnectionIfNecessary;
- (void)stopConnection;
@end

@implementation WFObservableResult

- (CGSize)glyphSize
{
  width = self->_glyphSize.width;
  height = self->_glyphSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)databaseDidChange:(id)a3
{
  v4 = a3;
  v5 = [WFCoreDataChangeNotification alloc];
  v6 = [v4 userInfo];

  v7 = [(WFCoreDataChangeNotification *)v5 initWithDictionaryRepresentation:v6];
  [(WFObservableResult *)self handleChangeNotification:v7];
}

- (void)stopConnection
{
  if ([(WFObservableResult *)self observingDistributedNotifications])
  {
    v3 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v3 removeObserver:self name:@"com.apple.shortcuts.WFCoreDataDatabaseContextDidSaveNotification" object:0];

    [(WFObservableResult *)self setObservingDistributedNotifications:0];
  }
}

- (void)startConnectionIfNecessary
{
  v3 = [(WFObservableResult *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  if (![(WFObservableResult *)self observingDistributedNotifications])
  {
    v4 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v4 addObserver:self selector:sel_databaseDidChange_ name:@"com.apple.shortcuts.WFCoreDataDatabaseContextDidSaveNotification" object:0 suspensionBehavior:4];

    [(WFObservableResult *)self setObservingDistributedNotifications:1];
  }
}

- (void)removeResultObserver:(id)a3
{
  v4 = a3;
  v5 = [(WFObservableResult *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__WFObservableResult_removeResultObserver___block_invoke;
  v7[3] = &unk_1E7B02180;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __43__WFObservableResult_removeResultObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) observers];
  v4 = [v3 count];

  if (!v4)
  {
    v5 = *(a1 + 32);

    [v5 stopConnection];
  }
}

- (void)addResultObserver:(id)a3
{
  v4 = a3;
  v5 = [(WFObservableResult *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__WFObservableResult_addResultObserver___block_invoke;
  v7[3] = &unk_1E7B02180;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

uint64_t __40__WFObservableResult_addResultObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 startConnectionIfNecessary];
}

- (void)dealloc
{
  [(WFObservableResult *)self stopConnection];
  v3.receiver = self;
  v3.super_class = WFObservableResult;
  [(WFObservableResult *)&v3 dealloc];
}

- (WFObservableResult)initWithValueType:(Class)a3 glyphSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  if (([(objc_class *)a3 conformsToProtocol:&unk_1F2933888]& 1) == 0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFObservableResult.m" lineNumber:204 description:@"Value type must be secure-codable"];
  }

  v22.receiver = self;
  v22.super_class = WFObservableResult;
  v9 = [(WFObservableResult *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_valueType, a3);
    v10->_glyphSize.width = width;
    v10->_glyphSize.height = height;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.shortcuts.WFObservableResult-private", v11);
    serialQueue = v10->_serialQueue;
    v10->_serialQueue = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.shortcuts.WFObservableResult-observer", v14);
    observerNotificationQueue = v10->_observerNotificationQueue;
    v10->_observerNotificationQueue = v15;

    v17 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = v17;

    v19 = v10;
  }

  return v10;
}

void __104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke_2_210(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "+[WFObservableResult drawGlyphsIntoWorkflowsIfNecessary:glyphSize:roundedIcon:synchronously:completion:]_block_invoke_2";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_ERROR, "%s Error fetching synchronous VCVoiceShortcutClient proxy: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke_212(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFVoiceShortcutClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "+[WFObservableResult drawGlyphsIntoWorkflowsIfNecessary:glyphSize:roundedIcon:synchronously:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1B1DE3000, v4, OS_LOG_TYPE_ERROR, "%s Error fetching asynchronous VCVoiceShortcutClient proxy: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke_213(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke_2_214;
  v3[3] = &unk_1E7B01988;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v3];
  (*(*(a1 + 48) + 16))();
}

void __104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke_2_214(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) imageAtIndex:a3];
  [*(a1 + 32) scale];
  [v7 setIconImage:v6 scale:?];
  objc_autoreleasePoolPop(v5);
}

id __104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke_204(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v2, "backgroundColorValue")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *__104__WFObservableResult_drawGlyphsIntoWorkflowsIfNecessary_glyphSize_roundedIcon_synchronously_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if ([v2 conformsToProtocol:&unk_1F2936308])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end