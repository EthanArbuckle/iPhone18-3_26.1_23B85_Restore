@interface SUScriptMetricsController
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (SUScriptMetricsController)init;
- (id)scriptAttributeKeys;
- (void)_configureWithBagDictionary:(id)a3;
- (void)dealloc;
- (void)flushUnreportedEventsWithCompletionFunction:(id)a3;
- (void)recordEventWithTopic:(id)a3 properties:(id)a4 completionFunction:(id)a5;
@end

@implementation SUScriptMetricsController

- (SUScriptMetricsController)init
{
  v5.receiver = self;
  v5.super_class = SUScriptMetricsController;
  v2 = [(SUScriptObject *)&v5 init];
  if (v2)
  {
    v2->_metricsController = objc_alloc_init(MEMORY[0x1E69D4958]);
    v3 = [MEMORY[0x1E69E4800] sharedBagLoadingController];
    -[SUScriptMetricsController _configureWithBagDictionary:](v2, "_configureWithBagDictionary:", [v3 bagDictionary]);
    [v3 addBagObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E69E4800] "sharedBagLoadingController")];

  v3.receiver = self;
  v3.super_class = SUScriptMetricsController;
  [(SUScriptObject *)&v3 dealloc];
}

- (void)flushUnreportedEventsWithCompletionFunction:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = 0;
    if (a3 && (isKindOfClass & 1) == 0)
    {
      v5 = [[SUScriptFunction alloc] initWithScriptObject:a3];
    }
  }

  [(SUScriptFunction *)v5 setThisObject:self];
  metricsController = self->_metricsController;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__SUScriptMetricsController_flushUnreportedEventsWithCompletionFunction___block_invoke;
  v8[3] = &unk_1E8166FA0;
  v8[4] = v5;
  [(SSMetricsController *)metricsController flushUnreportedEventsWithCompletionHandler:v8];
}

void __73__SUScriptMetricsController_flushUnreportedEventsWithCompletionFunction___block_invoke(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [[SUScriptError alloc] initWithError:a2];
  }

  else
  {
    v3 = [MEMORY[0x1E69E2FB0] undefined];
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6[0] = v3;
  [v5 callWithArguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v6, 1)}];
  [*(a1 + 32) setThisObject:0];
}

- (void)recordEventWithTopic:(id)a3 properties:(id)a4 completionFunction:(id)a5
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(SUScriptObject *)self copyJavaScriptContext];
    if (v9)
    {
      v10 = v9;
      v11 = [a4 copyArrayOrDictionaryWithContext:v9];
      JSGlobalContextRelease(v10);
      goto LABEL_9;
    }

    [MEMORY[0x1E69E2F88] throwException:@"Unexpected error in iTunes.metricsController.recordEvent: failed to retrieve JavaScript context."];
  }

  v11 = 0;
LABEL_9:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a5)
    {
      a5 = [[SUScriptFunction alloc] initWithScriptObject:a5];
    }

    [a5 setThisObject:self];
    v12 = objc_alloc_init(MEMORY[0x1E69D4960]);
    [v12 setTopic:a3];
    [v12 addPropertiesWithDictionary:v11];
    metricsController = self->_metricsController;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __80__SUScriptMetricsController_recordEventWithTopic_properties_completionFunction___block_invoke;
    v15[3] = &unk_1E8166FA0;
    v15[4] = a5;
    [(SSMetricsController *)metricsController insertEvent:v12 withCompletionHandler:v15];
  }

  else
  {
    v14 = MEMORY[0x1E69E2F88];

    [v14 throwException:@"Invalid argument"];
  }
}

void __80__SUScriptMetricsController_recordEventWithTopic_properties_completionFunction___block_invoke(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [[SUScriptError alloc] initWithError:a2];
  }

  else
  {
    v3 = [MEMORY[0x1E69E2FB0] undefined];
  }

  v4 = v3;
  v5 = *(a1 + 32);
  v6[0] = v3;
  [v5 callWithArguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v6, 1)}];
  [*(a1 + 32) setThisObject:0];
}

- (void)_configureWithBagDictionary:(id)a3
{
  v4 = [a3 objectForKey:*MEMORY[0x1E69D4D30]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E69D4950]) initWithGlobalConfiguration:v4];
    [v5 setDisableEventDecoration:{objc_msgSend(v5, "_decorateITMLEvents")}];
    [(SSMetricsController *)self->_metricsController setGlobalConfiguration:v5];
    [(SSMetricsController *)self->_metricsController setFlushTimerEnabled:1];
  }
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_59 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptMetricsController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_45, 2);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptMetricsController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptMetricsController;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_59 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_45 = sel_flushUnreportedEventsWithCompletionFunction_;
    *algn_1EBF3B5F8 = @"flushUnreportedEvents";
    qword_1EBF3B600 = sel_recordEventWithTopic_properties_completionFunction_;
    unk_1EBF3B608 = @"recordEvent";
    __KeyMapping_59 = MEMORY[0x1E695E0F8];
  }
}

@end