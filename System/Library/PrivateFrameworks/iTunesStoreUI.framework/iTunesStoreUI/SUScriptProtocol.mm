@interface SUScriptProtocol
+ (id)webScriptNameForKeyName:(id)name;
+ (void)initialize;
- (BOOL)excludeFromNavigationHistory;
- (BOOL)shouldShowInOverlay;
- (NSString)clientIdentifier;
- (SUScriptURLRequest)overlayBackgroundURLRequest;
- (id)_copyProtocol;
- (id)_webThreadValueForProtocolKey:(id)key;
- (id)scriptAttributeKeys;
- (void)_setProtocol:(id)protocol;
- (void)_setValue:(id)value forProtocolKey:(id)key;
- (void)setAllowedOrientations:(id)orientations;
- (void)setCopyright:(id)copyright;
- (void)setOverlayBackgroundURLRequest:(id)request;
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
  clientInterface = [(SUScriptObject *)self clientInterface];

  return [(SUClientInterface *)clientInterface clientIdentifier];
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

- (void)setAllowedOrientations:(id)orientations
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [orientations copyArrayValueWithValidator:__SUOrientationValidator context:0]) != 0)
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

- (void)setCopyright:(id)copyright
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !copyright) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
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

- (void)setOverlayBackgroundURLRequest:(id)request
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    requestCopy = 0;
LABEL_3:
    copyNativeRequestProperties = [requestCopy copyNativeRequestProperties];
    WebThreadRunOnMainThread();

    return;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  requestCopy = 0;
  if (!request)
  {
    goto LABEL_3;
  }

  if (isKindOfClass)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  v7 = objc_opt_isKindOfClass();
  requestCopy = request;
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

- (void)_setProtocol:(id)protocol
{
  parentViewController = [(SUScriptObject *)self parentViewController];

  [parentViewController setStorePageProtocol:protocol];
}

- (void)_setValue:(id)value forProtocolKey:(id)key
{
  _copyProtocol = [(SUScriptProtocol *)self _copyProtocol];
  [_copyProtocol setValue:value forKey:key];
  [(SUScriptProtocol *)self _setProtocol:_copyProtocol];
}

- (id)_webThreadValueForProtocolKey:(id)key
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__10;
  v14 = __Block_byref_object_dispose__10;
  v15 = 0;
  v8 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v4 = [v11[5] valueForKey:{key, v8, 3221225472, __50__SUScriptProtocol__webThreadValueForProtocolKey___block_invoke, &unk_1E81650D8, self, &v10}];

  if (v4)
  {
    null = v4;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v6 = null;
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __50__SUScriptProtocol__webThreadValueForProtocolKey___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyProtocol];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_17 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptProtocol;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptProtocol;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_17 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_17 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"allowedOrientations", @"clientIdentifier", @"clientIdentifier", @"copyright", @"copyright", @"excludeFromNavigationHistory", @"excludeFromNavigationHistory", @"overlayBackgroundURLRequest", @"overlayBackgroundURLRequest", @"protocolVersion", @"protocolVersion", @"shouldShowInOverlay", @"shouldShowInOverlay", 0}];
  }
}

@end