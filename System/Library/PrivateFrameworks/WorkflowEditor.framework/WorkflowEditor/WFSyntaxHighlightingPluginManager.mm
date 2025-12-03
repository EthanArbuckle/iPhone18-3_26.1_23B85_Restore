@interface WFSyntaxHighlightingPluginManager
- (BOOL)didChangeLine:(unint64_t)line string:(id)string;
- (UIColor)defaultBackgroundColor;
- (UIColor)defaultForegroundColor;
- (WFSyntaxHighlightingPluginManager)init;
- (id)configurationFilesForAppearance:(unint64_t)appearance;
- (id)loadPluginUsingConfigWithModuleName:(id)name module:(id)module;
- (void)dealloc;
- (void)didAddLineAtIndex:(unint64_t)index;
- (void)didRemoveLineAtIndex:(unint64_t)index;
- (void)discardManagedReferencesForLineNumber:(unint64_t)number;
- (void)highlightAllTokensWithCallback:(id)callback;
- (void)loadColorSchemePlugin;
- (void)loadHighlightingPlugin;
- (void)loadPlugins;
- (void)loadSyntaxPlugin;
- (void)reloadPlugins;
- (void)setSyntaxHighlightingAppearance:(unint64_t)appearance;
- (void)setSyntaxHighlightingType:(unint64_t)type;
- (void)unloadPlugins;
@end

@implementation WFSyntaxHighlightingPluginManager

- (UIColor)defaultForegroundColor
{
  value = [(JSManagedValue *)self->_colorScheme value];
  v3 = [value objectForKeyedSubscript:@"defaultForegroundColor"];

  if ([v3 toBool])
  {
    v4 = [v3 callWithArguments:MEMORY[0x277CBEBF8]];
    toObject = [v4 toObject];
  }

  else
  {
    toObject = [MEMORY[0x277D75348] blackColor];
  }

  return toObject;
}

- (UIColor)defaultBackgroundColor
{
  value = [(JSManagedValue *)self->_colorScheme value];
  v3 = [value objectForKeyedSubscript:@"defaultBackgroundColor"];

  if ([v3 toBool])
  {
    v4 = [v3 callWithArguments:MEMORY[0x277CBEBF8]];
    toObject = [v4 toObject];
  }

  else
  {
    toObject = [MEMORY[0x277D75348] whiteColor];
  }

  return toObject;
}

- (void)loadSyntaxPlugin
{
  v3 = [(WFSyntaxHighlightingPluginManager *)self loadPluginUsingConfigWithModuleName:@"syntax" module:0];
  if (v3)
  {
    v7 = v3;
    v4 = [MEMORY[0x277CD4650] managedValueWithValue:v3];
    syntaxPlugin = self->_syntaxPlugin;
    self->_syntaxPlugin = v4;

    virtualMachine = [(JSContext *)self->_context virtualMachine];
    [virtualMachine addManagedReference:self->_syntaxPlugin withOwner:self];

    v3 = v7;
  }
}

- (void)loadHighlightingPlugin
{
  v3 = [(WFSyntaxHighlightingPluginManager *)self loadPluginUsingConfigWithModuleName:@"highlighting" module:0];
  if (v3)
  {
    v7 = v3;
    v4 = [MEMORY[0x277CD4650] managedValueWithValue:v3];
    highlightingPlugin = self->_highlightingPlugin;
    self->_highlightingPlugin = v4;

    virtualMachine = [(JSContext *)self->_context virtualMachine];
    [virtualMachine addManagedReference:self->_highlightingPlugin withOwner:self];

    v3 = v7;
  }
}

- (void)loadColorSchemePlugin
{
  v7 = [MEMORY[0x277CD4658] valueWithNewObjectInContext:self->_context];
  [v7 setObject:&__block_literal_global_228 forKeyedSubscript:@"makeColor"];
  v3 = [(WFSyntaxHighlightingPluginManager *)self loadPluginUsingConfigWithModuleName:@"colorScheme" module:v7];
  if (v3)
  {
    v4 = [MEMORY[0x277CD4650] managedValueWithValue:v3];
    colorScheme = self->_colorScheme;
    self->_colorScheme = v4;

    v6 = [(JSContext *)self->_context objectForKeyedSubscript:@"PluginAPI"];
    [v6 setObject:v3 forKeyedSubscript:@"ColorScheme"];
  }
}

id __58__WFSyntaxHighlightingPluginManager_loadColorSchemePlugin__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"alpha"];
  v4 = v3;
  if (!v3)
  {
    v3 = &unk_288386998;
  }

  [v3 floatValue];
  v6 = v5 / 255.0;

  v7 = MEMORY[0x277D75348];
  v8 = [v2 objectForKeyedSubscript:@"red"];
  [v8 floatValue];
  v10 = (v9 / 255.0);
  v11 = [v2 objectForKeyedSubscript:@"green"];
  [v11 floatValue];
  v13 = (v12 / 255.0);
  v14 = [v2 objectForKeyedSubscript:@"blue"];

  [v14 floatValue];
  v16 = [v7 colorWithRed:v10 green:v13 blue:(v15 / 255.0) alpha:v6];

  return v16;
}

- (id)loadPluginUsingConfigWithModuleName:(id)name module:(id)module
{
  v20[1] = *MEMORY[0x277D85DE8];
  moduleCopy = module;
  nameCopy = name;
  v8 = [(WFSyntaxHighlightingPluginManager *)self configurationFilesForAppearance:[(WFSyntaxHighlightingPluginManager *)self syntaxHighlightingAppearance]];
  v9 = [v8 objectForKeyedSubscript:nameCopy];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  stringByDeletingPathExtension = [v9 stringByDeletingPathExtension];
  pathExtension = [v9 pathExtension];
  v13 = [v10 pathForResource:stringByDeletingPathExtension ofType:pathExtension];

  v14 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v13 encoding:4 error:0];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(function(%@) { %@ })", nameCopy, v14];

  v16 = [(JSContext *)self->_context evaluateScript:v15];
  if (!moduleCopy)
  {
    moduleCopy = [MEMORY[0x277CD4658] valueWithNewObjectInContext:self->_context];
  }

  v20[0] = moduleCopy;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v18 = [v16 callWithArguments:v17];

  return moduleCopy;
}

- (void)unloadPlugins
{
  virtualMachine = [(JSContext *)self->_context virtualMachine];
  [virtualMachine removeManagedReference:self->_colorScheme withOwner:self];

  virtualMachine2 = [(JSContext *)self->_context virtualMachine];
  [virtualMachine2 removeManagedReference:self->_highlightingPlugin withOwner:self];

  virtualMachine3 = [(JSContext *)self->_context virtualMachine];
  [virtualMachine3 removeManagedReference:self->_syntaxPlugin withOwner:self];
}

- (void)reloadPlugins
{
  [(WFSyntaxHighlightingPluginManager *)self unloadPlugins];

  [(WFSyntaxHighlightingPluginManager *)self loadPlugins];
}

- (void)loadPlugins
{
  [(WFSyntaxHighlightingPluginManager *)self loadSyntaxPlugin];
  [(WFSyntaxHighlightingPluginManager *)self loadColorSchemePlugin];

  [(WFSyntaxHighlightingPluginManager *)self loadHighlightingPlugin];
}

- (void)highlightAllTokensWithCallback:(id)callback
{
  v24[1] = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  value = [(JSManagedValue *)self->_highlightingPlugin value];
  v6 = [value objectForKeyedSubscript:@"tokenAttributes"];

  if ([(NSMutableArray *)self->_tokenLines count])
  {
    v7 = 0;
    v8 = callbackCopy + 16;
    v9 = 0x277CBE000uLL;
    selfCopy = self;
    v23 = callbackCopy;
    do
    {
      selfCopy = [(NSMutableArray *)self->_tokenLines objectAtIndex:v7, selfCopy];
      if ([selfCopy count])
      {
        v11 = 0;
        do
        {
          v12 = [selfCopy objectAtIndex:v11];
          v24[0] = v12;
          [*(v9 + 2656) arrayWithObjects:v24 count:1];
          v13 = v7;
          v15 = v14 = v9;
          [v6 callWithArguments:v15];
          v16 = v8;
          v18 = v17 = v6;
          toDictionary = [v18 toDictionary];

          v6 = v17;
          v8 = v16;

          v9 = v14;
          v7 = v13;
          callbackCopy = v23;
          range = [v12 range];
          (*(callbackCopy + 2))(callbackCopy, v7, range, v21, toDictionary);

          ++v11;
        }

        while (v11 < [selfCopy count]);
      }

      ++v7;

      self = selfCopy;
    }

    while (v7 < [(NSMutableArray *)selfCopy->_tokenLines count]);
  }

  *&self->_minimumChangedLine = xmmword_2746606E0;
}

- (void)discardManagedReferencesForLineNumber:(unint64_t)number
{
  v7 = [(NSMutableArray *)self->_tokenLines objectAtIndex:number];
  if ([v7 count])
  {
    v4 = 0;
    do
    {
      v5 = [v7 objectAtIndex:v4];
      virtualMachine = [(JSContext *)self->_context virtualMachine];
      [virtualMachine removeManagedReference:v5 withOwner:self];

      ++v4;
    }

    while (v4 < [v7 count]);
  }
}

- (BOOL)didChangeLine:(unint64_t)line string:(id)string
{
  v33[3] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (self->_minimumChangedLine > line)
  {
    self->_minimumChangedLine = line;
  }

  if (self->_maxChangedLine < line)
  {
    self->_maxChangedLine = line;
  }

  v7 = 0;
  lineCopy = line;
  v8 = line - 1;
  while ((v8 & 0x8000000000000000) == 0)
  {
    v9 = [(NSMutableArray *)self->_tokenLines objectAtIndex:v8];

    lastObject = [v9 lastObject];
    --v8;
    v7 = v9;
    if (lastObject)
    {
      null = lastObject;
      goto LABEL_10;
    }
  }

  null = [MEMORY[0x277CBEB68] null];
  v9 = v7;
LABEL_10:
  value = [(JSManagedValue *)self->_syntaxPlugin value];
  v32 = [value objectForKeyedSubscript:@"nextToken"];

  array = [MEMORY[0x277CBEB18] array];
  v14 = 0;
  for (i = 0; ; null = i)
  {
    v33[0] = stringCopy;
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v14];
    v33[1] = v16;
    v33[2] = null;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
    v18 = [v32 callWithArguments:v17];
    toObject = [v18 toObject];

    if (!toObject)
    {
      break;
    }

    range = [toObject range];
    v22 = [stringCopy substringWithRange:{range, v21}];
    [toObject setString:v22];

    [array addObject:toObject];
    virtualMachine = [(JSContext *)self->_context virtualMachine];
    [virtualMachine addManagedReference:toObject withOwner:self];

    LODWORD(virtualMachine) = [toObject start];
    v14 = [toObject length] + virtualMachine;
    i = toObject;
  }

  v24 = [(NSMutableArray *)self->_tokenLines objectAtIndex:v31];
  lastObject2 = [v24 lastObject];
  [(WFSyntaxHighlightingPluginManager *)self discardManagedReferencesForLineNumber:v31];
  [(NSMutableArray *)self->_tokenLines setObject:array atIndexedSubscript:v31];
  if (null)
  {
    null2 = [MEMORY[0x277CBEB68] null];
    if (null == null2)
    {
      overflows = 0;
    }

    else if (!lastObject2 || (v27 = [null overflows], v27 == objc_msgSend(lastObject2, "overflows")))
    {
      overflows = [null overflows];
    }

    else
    {
      overflows = 1;
    }
  }

  else
  {
    overflows = 0;
  }

  return overflows;
}

- (void)didRemoveLineAtIndex:(unint64_t)index
{
  [(WFSyntaxHighlightingPluginManager *)self discardManagedReferencesForLineNumber:?];
  tokenLines = self->_tokenLines;

  [(NSMutableArray *)tokenLines removeObjectAtIndex:index];
}

- (void)didAddLineAtIndex:(unint64_t)index
{
  v5 = [(NSMutableArray *)self->_tokenLines count];
  tokenLines = self->_tokenLines;
  array = [MEMORY[0x277CBEB18] array];
  if (v5 <= index)
  {
    [(NSMutableArray *)tokenLines addObject:array];
  }

  else
  {
    [(NSMutableArray *)tokenLines insertObject:array atIndex:index];
  }
}

- (void)setSyntaxHighlightingAppearance:(unint64_t)appearance
{
  if (self->_syntaxHighlightingAppearance != appearance)
  {
    self->_syntaxHighlightingAppearance = appearance;
    [(WFSyntaxHighlightingPluginManager *)self reloadPlugins];
  }
}

- (void)setSyntaxHighlightingType:(unint64_t)type
{
  if (self->_syntaxHighlightingType != type)
  {
    self->_syntaxHighlightingType = type;
    [(WFSyntaxHighlightingPluginManager *)self reloadPlugins];
  }
}

- (void)dealloc
{
  [(WFSyntaxHighlightingPluginManager *)self unloadPlugins];
  if ([(NSMutableArray *)self->_tokenLines count])
  {
    v3 = 0;
    do
    {
      v4 = [(NSMutableArray *)self->_tokenLines objectAtIndex:v3];
      if ([v4 count])
      {
        v5 = 0;
        do
        {
          v6 = [v4 objectAtIndex:v5];
          virtualMachine = [(JSContext *)self->_context virtualMachine];
          [virtualMachine removeManagedReference:v6 withOwner:self];

          ++v5;
        }

        while (v5 < [v4 count]);
      }

      ++v3;
    }

    while (v3 < [(NSMutableArray *)self->_tokenLines count]);
  }

  v8.receiver = self;
  v8.super_class = WFSyntaxHighlightingPluginManager;
  [(WFSyntaxHighlightingPluginManager *)&v8 dealloc];
}

- (WFSyntaxHighlightingPluginManager)init
{
  v16.receiver = self;
  v16.super_class = WFSyntaxHighlightingPluginManager;
  v2 = [(WFSyntaxHighlightingPluginManager *)&v16 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_syntaxHighlightingType = xmmword_274653F30;
    array = [MEMORY[0x277CBEB18] array];
    tokenLines = v3->_tokenLines;
    v3->_tokenLines = array;

    v3->_minimumChangedLine = -1;
    v6 = objc_alloc(MEMORY[0x277CD4640]);
    v7 = objc_alloc_init(MEMORY[0x277CD4660]);
    v8 = [v6 initWithVirtualMachine:v7];
    context = v3->_context;
    v3->_context = v8;

    [(JSContext *)v3->_context setObject:v3 forKeyedSubscript:@"PluginAPI"];
    v10 = objc_opt_class();
    v11 = [(JSContext *)v3->_context objectForKeyedSubscript:@"PluginAPI"];
    [v11 setObject:v10 forKeyedSubscript:@"Token"];

    v12 = [MEMORY[0x277CD4658] valueWithNewObjectInContext:v3->_context];
    [v12 setObject:*MEMORY[0x277D740C0] forKeyedSubscript:@"color"];
    v13 = [(JSContext *)v3->_context objectForKeyedSubscript:@"PluginAPI"];
    [v13 setObject:v12 forKeyedSubscript:@"AttributeNames"];

    [(JSContext *)v3->_context setExceptionHandler:&__block_literal_global_1983];
    [(JSContext *)v3->_context setObject:&__block_literal_global_206 forKeyedSubscript:@"log"];
    [(WFSyntaxHighlightingPluginManager *)v3 loadPlugins];
    v14 = v3;
  }

  return v3;
}

void __41__WFSyntaxHighlightingPluginManager_init__block_invoke_203(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = getWFGeneralLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "[WFSyntaxHighlightingPluginManager init]_block_invoke";
    v6 = 2114;
    v7 = v2;
    _os_log_impl(&dword_2743F0000, v3, OS_LOG_TYPE_INFO, "%s Log from syntax highlighting JSContext: %{public}@", &v4, 0x16u);
  }
}

void __41__WFSyntaxHighlightingPluginManager_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = getWFGeneralLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315394;
    v6 = "[WFSyntaxHighlightingPluginManager init]_block_invoke";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&dword_2743F0000, v4, OS_LOG_TYPE_FAULT, "%s Exception from syntax highlighting JSContext: %{public}@", &v5, 0x16u);
  }
}

- (id)configurationFilesForAppearance:(unint64_t)appearance
{
  if (appearance == 1)
  {
    return &unk_288386A88;
  }

  else
  {
    return &unk_288386AB0;
  }
}

@end