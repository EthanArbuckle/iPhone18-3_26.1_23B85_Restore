@interface SUScriptProtocol
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (BOOL)excludeFromNavigationHistory;
- (BOOL)shouldShowInOverlay;
- (NSString)clientIdentifier;
- (SUScriptURLRequest)overlayBackgroundURLRequest;
- (id)_copyProtocol;
- (id)_webThreadValueForProtocolKey:(id)a3;
- (id)scriptAttributeKeys;
- (void)_setProtocol:(id)a3;
- (void)_setValue:(id)a3 forProtocolKey:(id)a4;
- (void)setAllowedOrientations:(id)a3;
- (void)setCopyright:(id)a3;
- (void)setOverlayBackgroundURLRequest:(id)a3;
@end

@implementation SUScriptProtocol

void __44__SUScriptProtocol_setValuesFromDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyProtocol];
  [v2 setValuesFromStorePageDictionary:*(a1 + 40)];
  [*(a1 + 32) _setProtocol:v2];
}

- (NSString)clientIdentifier
{
  v2 = [(SUScriptObject *)self clientInterface];

  return [(SUClientInterface *)v2 clientIdentifier];
}

- (BOOL)excludeFromNavigationHistory
{
  v2 = [(SUScriptProtocol *)self _webThreadValueForProtocolKey:@"shouldExcludeFromNavigationHistory"];

  return [v2 BOOLValue];
}

- (SUScriptURLRequest)overlayBackgroundURLRequest
{
  v2 = [(SUScriptProtocol *)self _webThreadValueForProtocolKey:@"overlayBackgroundURLRequestProperties"];
  if (v2 && (v3 = [[SUScriptURLRequest alloc] initWithNativeRequestProperties:v2]) != 0)
  {

    return v3;
  }

  else
  {
    v5 = MEMORY[0x1E695DFB0];

    return [v5 null];
  }
}

- (void)setAllowedOrientations:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [a3 copyArrayValueWithValidator:__SUOrientationValidator context:0]) != 0)
  {
    v5 = v4;
    WebThreadRunOnMainThread();
  }

  else
  {
    v6 = MEMORY[0x1E69E2F88];

    [v6 throwException:@"Invalid argument"];
  }
}

- (void)setCopyright:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !a3) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __52__SUScriptProtocol_setExcludeFromNavigationHistory___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];

  return [v1 _setValue:v2 forProtocolKey:@"shouldExcludeFromNavigationHistory"];
}

- (void)setOverlayBackgroundURLRequest:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = 0;
LABEL_3:
    v5 = [v4 copyNativeRequestProperties];
    WebThreadRunOnMainThread();

    return;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = 0;
  if (!a3)
  {
    goto LABEL_3;
  }

  if (isKindOfClass)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  v7 = objc_opt_isKindOfClass();
  v4 = a3;
  if (v7)
  {
    goto LABEL_3;
  }

  v8 = MEMORY[0x1E69E2F88];

  [v8 throwException:@"Invalid argument"];
}

uint64_t __43__SUScriptProtocol_setShouldShowInOverlay___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];

  return [v1 _setValue:v2 forProtocolKey:@"shouldDisplayInOverlay"];
}

- (BOOL)shouldShowInOverlay
{
  v2 = [(SUScriptProtocol *)self _webThreadValueForProtocolKey:@"shouldDisplayInOverlay"];

  return [v2 BOOLValue];
}

- (id)_copyProtocol
{
  result = [objc_msgSend(-[SUScriptObject parentViewController](self "parentViewController")];
  if (!result)
  {

    return objc_alloc_init(SUStorePageProtocol);
  }

  return result;
}

- (void)_setProtocol:(id)a3
{
  v4 = [(SUScriptObject *)self parentViewController];

  [v4 setStorePageProtocol:a3];
}

- (void)_setValue:(id)a3 forProtocolKey:(id)a4
{
  v7 = [(SUScriptProtocol *)self _copyProtocol];
  [v7 setValue:a3 forKey:a4];
  [(SUScriptProtocol *)self _setProtocol:v7];
}

- (id)_webThreadValueForProtocolKey:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__10;
  v14 = __Block_byref_object_dispose__10;
  v15 = 0;
  v8 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v4 = [v11[5] valueForKey:{a3, v8, 3221225472, __50__SUScriptProtocol__webThreadValueForProtocolKey___block_invoke, &unk_1E81650D8, self, &v10}];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __50__SUScriptProtocol__webThreadValueForProtocolKey___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyProtocol];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_17 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptProtocol;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptProtocol;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_17 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping_17 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"allowedOrientations", @"clientIdentifier", @"clientIdentifier", @"copyright", @"copyright", @"excludeFromNavigationHistory", @"excludeFromNavigationHistory", @"overlayBackgroundURLRequest", @"overlayBackgroundURLRequest", @"protocolVersion", @"protocolVersion", @"shouldShowInOverlay", @"shouldShowInOverlay", 0}];
  }
}

@end