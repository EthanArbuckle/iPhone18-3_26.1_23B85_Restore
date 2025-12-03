@interface SUScriptTextField
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (BOOL)_styleIsValid:(id)valid;
- (BOOL)blur;
- (BOOL)canBecomeFirstResponder;
- (BOOL)focus;
- (NSNumber)width;
- (NSString)autocapitalizationType;
- (NSString)autocorrectionType;
- (NSString)keyboardType;
- (NSString)placeholder;
- (NSString)value;
- (SUScriptTextField)initWithTextFieldStyle:(id)style;
- (WebScriptObject)shouldFocusFunction;
- (id)_autocapitalizationType;
- (id)_autocorrectionType;
- (id)_boxedNativeTextField;
- (id)_copyPlaceholder;
- (id)_copyValue;
- (id)_keyboardType;
- (id)_newTextField;
- (id)buttonItem;
- (id)scriptAttributeKeys;
- (void)dealloc;
- (void)setAutocapitalizationType:(id)type;
- (void)setAutocorrectionType:(id)type;
- (void)setKeyboardType:(id)type;
- (void)setNativeObjectWithBarButtonItem:(id)item;
- (void)setNativeObjectWithSearchBar:(id)bar;
- (void)setNativeObjectWithTextField:(id)field;
- (void)setPlaceholder:(id)placeholder;
- (void)setShouldFocusFunction:(id)function;
- (void)setValue:(id)value;
- (void)setWidth:(id)width;
@end

@implementation SUScriptTextField

- (SUScriptTextField)initWithTextFieldStyle:(id)style
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    style = 0;
  }

  v9.receiver = self;
  v9.super_class = SUScriptTextField;
  v5 = [(SUScriptObject *)&v9 init];
  v6 = v5;
  if (v5)
  {
    if (style)
    {
      if (![(SUScriptTextField *)v5 _styleIsValid:style])
      {

        return 0;
      }

      styleCopy = style;
    }

    else
    {
      styleCopy = @"default";
    }

    v6->_style = &styleCopy->isa;
  }

  return v6;
}

- (void)dealloc
{
  [(SUScriptFunction *)self->_shouldFocusFunction setScriptObject:0];
  [(SUScriptFunction *)self->_shouldFocusFunction setThisObject:0];

  v3.receiver = self;
  v3.super_class = SUScriptTextField;
  [(SUScriptObject *)&v3 dealloc];
}

- (BOOL)canBecomeFirstResponder
{
  shouldFocusFunction = self->_shouldFocusFunction;
  if (!shouldFocusFunction)
  {
    return 1;
  }

  v3 = [(SUScriptFunction *)shouldFocusFunction callSynchronouslyWithArguments:0];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  return [v4 BOOLValue];
}

- (void)setNativeObjectWithBarButtonItem:(id)item
{
  if (item)
  {
    item = [(SUScriptNativeObject *)SUScriptTextFieldNativeObjectUIBarButtonItem objectWithNativeObject:?];
  }

  [(SUScriptObject *)self setNativeObject:item];
}

- (void)setNativeObjectWithSearchBar:(id)bar
{
  if (bar)
  {
    bar = [(SUScriptNativeObject *)SUScriptTextFieldNativeObjectUISearchBar objectWithNativeObject:?];
  }

  [(SUScriptObject *)self setNativeObject:bar];
}

- (void)setNativeObjectWithTextField:(id)field
{
  if (field)
  {
    field = [(SUScriptNativeObject *)SUScriptTextFieldNativeObjectUITextField objectWithNativeObject:?];
  }

  [(SUScriptObject *)self setNativeObject:field];
}

- (id)buttonItem
{
  v3 = [-[SUScriptTextField _boxedNativeTextField](self "_boxedNativeTextField")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [(SUScriptObject *)self copyObjectForScriptFromPoolWithClass:objc_opt_class()];
    [v4 setCustomView:v3];
    SUScriptNavigationItemSetFlagged(v4, 1);
    v5 = v4;
    return v4;
  }

  return v3;
}

- (BOOL)blur
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __25__SUScriptTextField_blur__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_boxedNativeTextField")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)focus
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __26__SUScriptTextField_focus__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_boxedNativeTextField")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSString)autocapitalizationType
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);
  return v4;
}

id __43__SUScriptTextField_autocapitalizationType__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _autocapitalizationType];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)autocorrectionType
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);
  return v4;
}

id __39__SUScriptTextField_autocorrectionType__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _autocorrectionType];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)keyboardType
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);
  return v4;
}

id __33__SUScriptTextField_keyboardType__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _keyboardType];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)placeholder
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __32__SUScriptTextField_placeholder__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyPlaceholder];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setAutocapitalizationType:(id)type
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !type) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && __SUAutocapitalizationTypeForString(type) != -1)
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __47__SUScriptTextField_setAutocapitalizationType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _boxedNativeTextField];
  v3 = __SUAutocapitalizationTypeForString(*(a1 + 40));

  return [v2 setAutocapitalizationType:v3];
}

- (void)setAutocorrectionType:(id)type
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !type) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && (([type isEqualToString:@"default"] & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"no") & 1) != 0 || (objc_msgSend(type, "isEqualToString:", @"yes")))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __43__SUScriptTextField_setAutocorrectionType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _boxedNativeTextField];
  v3 = __SUAutocorrectionTypeForString(*(a1 + 40));

  return [v2 setAutocorrectionType:v3];
}

- (void)setKeyboardType:(id)type
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !type) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && __SUKeyboardTypeForString(type) != -1)
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __37__SUScriptTextField_setKeyboardType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _boxedNativeTextField];
  v3 = __SUKeyboardTypeForString(*(a1 + 40));

  return [v2 setKeyboardType:v3];
}

- (void)setPlaceholder:(id)placeholder
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !placeholder) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __36__SUScriptTextField_setPlaceholder___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _boxedNativeTextField];
  v3 = *(a1 + 40);

  return [v2 setPlaceholder:v3];
}

- (void)setShouldFocusFunction:(id)function
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !function) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __44__SUScriptTextField_setShouldFocusFunction___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (!v2)
  {
    *(*(a1 + 32) + 72) = objc_alloc_init(SUScriptFunction);
    [*(*(a1 + 32) + 72) setThisObject:?];
    v2 = *(*(a1 + 32) + 72);
  }

  v3 = *(a1 + 40);

  return [v2 setScriptObject:v3];
}

- (void)setValue:(id)value
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !value) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __30__SUScriptTextField_setValue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _boxedNativeTextField];
  v3 = *(a1 + 40);

  return [v2 setValue:v3];
}

- (void)setWidth:(id)width
{
  if (objc_opt_respondsToSelector())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }
}

uint64_t __30__SUScriptTextField_setWidth___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _boxedNativeTextField];
  [*(a1 + 40) floatValue];
  v4 = v3;

  return [v2 setWidth:v4];
}

- (WebScriptObject)shouldFocusFunction
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);
  return v4;
}

id __40__SUScriptTextField_shouldFocusFunction__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) scriptObject];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)value
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__5;
  v12 = __Block_byref_object_dispose__5;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __26__SUScriptTextField_value__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyValue];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSNumber)width
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v5 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v8[3];
  *&v2 = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:{v2, v5, 3221225472, __26__SUScriptTextField_width__block_invoke, &unk_1E81650D8, self, &v7}];
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __26__SUScriptTextField_width__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_boxedNativeTextField")];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (id)_autocapitalizationType
{
  v2 = [-[SUScriptTextField _boxedNativeTextField](self "_boxedNativeTextField")];
  if (v2 > 3)
  {
    return @"sentences";
  }

  else
  {
    return off_1E81653B0[v2];
  }
}

- (id)_autocorrectionType
{
  v2 = [-[SUScriptTextField _boxedNativeTextField](self "_boxedNativeTextField")];
  v3 = @"default";
  if (v2 == 2)
  {
    v3 = @"yes";
  }

  if (v2 == 1)
  {
    return @"no";
  }

  else
  {
    return v3;
  }
}

- (id)_copyPlaceholder
{
  v2 = [-[SUScriptTextField _boxedNativeTextField](self "_boxedNativeTextField")];

  return v2;
}

- (id)_copyValue
{
  v2 = [-[SUScriptTextField _boxedNativeTextField](self "_boxedNativeTextField")];

  return v2;
}

- (id)_keyboardType
{
  v2 = [-[SUScriptTextField _boxedNativeTextField](self "_boxedNativeTextField")];
  if ((v2 - 1) > 6)
  {
    return @"default";
  }

  else
  {
    return qword_1E81653D0[v2 - 1];
  }
}

- (id)_boxedNativeTextField
{
  nativeObject = [(SUScriptObject *)self nativeObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _newTextField = [(SUScriptTextField *)self _newTextField];
    nativeObject = [(SUScriptNativeObject *)SUScriptTextFieldNativeObjectUITextField objectWithNativeObject:_newTextField];
    [(SUScriptObject *)self setNativeObject:nativeObject];
  }

  return nativeObject;
}

- (id)_newTextField
{
  if ([(NSString *)[(SUScriptTextField *)self style] isEqualToString:@"search"])
  {
    v3 = [(SUScriptObject *)self copyObjectForScriptFromPoolWithClass:objc_opt_class()];
    [MEMORY[0x1E69DCF18] defaultHeight];
    [v3 setFrame:{0.0, 0.0, 0.0, v4}];
    [v3 setClearButtonMode:1];
    [v3 setFont:{objc_msgSend(MEMORY[0x1E69DB878], "systemFontOfSize:", 14.0)}];
    LODWORD(v5) = 5.0;
    LODWORD(v6) = 4.0;
    [v3 setPaddingTop:v5 paddingLeft:v6];
    [objc_msgSend(v3 "textInputTraits")];
  }

  else
  {
    v3 = [(SUScriptObject *)self copyObjectForScriptFromPoolWithClass:objc_opt_class()];
    [v3 setBorderStyle:2];
  }

  [v3 setEnablesReturnKeyAutomatically:1];
  [v3 setTextColor:{objc_msgSend(MEMORY[0x1E69DC888], "blackColor")}];
  [v3 setTextLoupeVisibility:3];
  [v3 sizeToFit];
  [v3 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SUScriptTextField *)self _defaultWidth];
  [v3 setFrame:{v8, v10, v13, v12}];
  return v3;
}

- (BOOL)_styleIsValid:(id)valid
{
  if ([valid isEqualToString:@"default"])
  {
    return 1;
  }

  return [valid isEqualToString:@"search"];
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_11 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptTextField;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_8, 2);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptTextField;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptTextField;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_11 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_8 = sel_blur;
    unk_1EBF3A960 = @"blur";
    qword_1EBF3A968 = sel_focus;
    unk_1EBF3A970 = @"focus";
    __KeyMapping_11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"autocapitalizationType", @"autocorrectionType", @"autocorrectionType", @"keyboardType", @"keyboardType", @"placeholder", @"placeholder", @"shouldFocusFunction", @"shouldFocusFunction", @"style", @"style", @"value", @"value", @"width", @"width", 0}];
  }
}

@end