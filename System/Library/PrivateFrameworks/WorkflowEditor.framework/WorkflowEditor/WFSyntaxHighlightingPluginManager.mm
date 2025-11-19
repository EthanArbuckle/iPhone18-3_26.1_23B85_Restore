@interface WFSyntaxHighlightingPluginManager
- (BOOL)didChangeLine:(unint64_t)a3 string:(id)a4;
- (UIColor)defaultBackgroundColor;
- (UIColor)defaultForegroundColor;
- (WFSyntaxHighlightingPluginManager)init;
- (id)configurationFilesForAppearance:(unint64_t)a3;
- (id)loadPluginUsingConfigWithModuleName:(id)a3 module:(id)a4;
- (void)dealloc;
- (void)didAddLineAtIndex:(unint64_t)a3;
- (void)didRemoveLineAtIndex:(unint64_t)a3;
- (void)discardManagedReferencesForLineNumber:(unint64_t)a3;
- (void)highlightAllTokensWithCallback:(id)a3;
- (void)loadColorSchemePlugin;
- (void)loadHighlightingPlugin;
- (void)loadPlugins;
- (void)loadSyntaxPlugin;
- (void)reloadPlugins;
- (void)setSyntaxHighlightingAppearance:(unint64_t)a3;
- (void)setSyntaxHighlightingType:(unint64_t)a3;
- (void)unloadPlugins;
@end

@implementation WFSyntaxHighlightingPluginManager

- (UIColor)defaultForegroundColor
{
  v2 = [(JSManagedValue *)self->_colorScheme value];
  v3 = [v2 objectForKeyedSubscript:@"defaultForegroundColor"];

  if ([v3 toBool])
  {
    v4 = [v3 callWithArguments:MEMORY[0x277CBEBF8]];
    v5 = [v4 toObject];
  }

  else
  {
    v5 = [MEMORY[0x277D75348] blackColor];
  }

  return v5;
}

- (UIColor)defaultBackgroundColor
{
  v2 = [(JSManagedValue *)self->_colorScheme value];
  v3 = [v2 objectForKeyedSubscript:@"defaultBackgroundColor"];

  if ([v3 toBool])
  {
    v4 = [v3 callWithArguments:MEMORY[0x277CBEBF8]];
    v5 = [v4 toObject];
  }

  else
  {
    v5 = [MEMORY[0x277D75348] whiteColor];
  }

  return v5;
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

    v6 = [(JSContext *)self->_context virtualMachine];
    [v6 addManagedReference:self->_syntaxPlugin withOwner:self];

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

    v6 = [(JSContext *)self->_context virtualMachine];
    [v6 addManagedReference:self->_highlightingPlugin withOwner:self];

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

- (id)loadPluginUsingConfigWithModuleName:(id)a3 module:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(WFSyntaxHighlightingPluginManager *)self configurationFilesForAppearance:[(WFSyntaxHighlightingPluginManager *)self syntaxHighlightingAppearance]];
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v9 stringByDeletingPathExtension];
  v12 = [v9 pathExtension];
  v13 = [v10 pathForResource:v11 ofType:v12];

  v14 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v13 encoding:4 error:0];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(function(%@) { %@ })", v7, v14];

  v16 = [(JSContext *)self->_context evaluateScript:v15];
  if (!v6)
  {
    v6 = [MEMORY[0x277CD4658] valueWithNewObjectInContext:self->_context];
  }

  v20[0] = v6;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v18 = [v16 callWithArguments:v17];

  return v6;
}

- (void)unloadPlugins
{
  v3 = [(JSContext *)self->_context virtualMachine];
  [v3 removeManagedReference:self->_colorScheme withOwner:self];

  v4 = [(JSContext *)self->_context virtualMachine];
  [v4 removeManagedReference:self->_highlightingPlugin withOwner:self];

  v5 = [(JSContext *)self->_context virtualMachine];
  [v5 removeManagedReference:self->_syntaxPlugin withOwner:self];
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

- (void)highlightAllTokensWithCallback:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(JSManagedValue *)self->_highlightingPlugin value];
  v6 = [v5 objectForKeyedSubscript:@"tokenAttributes"];

  if ([(NSMutableArray *)self->_tokenLines count])
  {
    v7 = 0;
    v8 = v4 + 16;
    v9 = 0x277CBE000uLL;
    v22 = self;
    v23 = v4;
    do
    {
      v10 = [(NSMutableArray *)self->_tokenLines objectAtIndex:v7, v22];
      if ([v10 count])
      {
        v11 = 0;
        do
        {
          v12 = [v10 objectAtIndex:v11];
          v24[0] = v12;
          [*(v9 + 2656) arrayWithObjects:v24 count:1];
          v13 = v7;
          v15 = v14 = v9;
          [v6 callWithArguments:v15];
          v16 = v8;
          v18 = v17 = v6;
          v19 = [v18 toDictionary];

          v6 = v17;
          v8 = v16;

          v9 = v14;
          v7 = v13;
          v4 = v23;
          v20 = [v12 range];
          (*(v4 + 2))(v4, v7, v20, v21, v19);

          ++v11;
        }

        while (v11 < [v10 count]);
      }

      ++v7;

      self = v22;
    }

    while (v7 < [(NSMutableArray *)v22->_tokenLines count]);
  }

  *&self->_minimumChangedLine = xmmword_2746606E0;
}

- (void)discardManagedReferencesForLineNumber:(unint64_t)a3
{
  v7 = [(NSMutableArray *)self->_tokenLines objectAtIndex:a3];
  if ([v7 count])
  {
    v4 = 0;
    do
    {
      v5 = [v7 objectAtIndex:v4];
      v6 = [(JSContext *)self->_context virtualMachine];
      [v6 removeManagedReference:v5 withOwner:self];

      ++v4;
    }

    while (v4 < [v7 count]);
  }
}

- (BOOL)didChangeLine:(unint64_t)a3 string:(id)a4
{
  v33[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (self->_minimumChangedLine > a3)
  {
    self->_minimumChangedLine = a3;
  }

  if (self->_maxChangedLine < a3)
  {
    self->_maxChangedLine = a3;
  }

  v7 = 0;
  v30 = a3;
  v8 = a3 - 1;
  while ((v8 & 0x8000000000000000) == 0)
  {
    v9 = [(NSMutableArray *)self->_tokenLines objectAtIndex:v8];

    v10 = [v9 lastObject];
    --v8;
    v7 = v9;
    if (v10)
    {
      v11 = v10;
      goto LABEL_10;
    }
  }

  v11 = [MEMORY[0x277CBEB68] null];
  v9 = v7;
LABEL_10:
  v12 = [(JSManagedValue *)self->_syntaxPlugin value];
  v32 = [v12 objectForKeyedSubscript:@"nextToken"];

  v13 = [MEMORY[0x277CBEB18] array];
  v14 = 0;
  for (i = 0; ; v11 = i)
  {
    v33[0] = v6;
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v14];
    v33[1] = v16;
    v33[2] = v11;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
    v18 = [v32 callWithArguments:v17];
    v19 = [v18 toObject];

    if (!v19)
    {
      break;
    }

    v20 = [v19 range];
    v22 = [v6 substringWithRange:{v20, v21}];
    [v19 setString:v22];

    [v13 addObject:v19];
    v23 = [(JSContext *)self->_context virtualMachine];
    [v23 addManagedReference:v19 withOwner:self];

    LODWORD(v23) = [v19 start];
    v14 = [v19 length] + v23;
    i = v19;
  }

  v24 = [(NSMutableArray *)self->_tokenLines objectAtIndex:v31];
  v25 = [v24 lastObject];
  [(WFSyntaxHighlightingPluginManager *)self discardManagedReferencesForLineNumber:v31];
  [(NSMutableArray *)self->_tokenLines setObject:v13 atIndexedSubscript:v31];
  if (v11)
  {
    v26 = [MEMORY[0x277CBEB68] null];
    if (v11 == v26)
    {
      v28 = 0;
    }

    else if (!v25 || (v27 = [v11 overflows], v27 == objc_msgSend(v25, "overflows")))
    {
      v28 = [v11 overflows];
    }

    else
    {
      v28 = 1;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)didRemoveLineAtIndex:(unint64_t)a3
{
  [(WFSyntaxHighlightingPluginManager *)self discardManagedReferencesForLineNumber:?];
  tokenLines = self->_tokenLines;

  [(NSMutableArray *)tokenLines removeObjectAtIndex:a3];
}

- (void)didAddLineAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableArray *)self->_tokenLines count];
  tokenLines = self->_tokenLines;
  v7 = [MEMORY[0x277CBEB18] array];
  if (v5 <= a3)
  {
    [(NSMutableArray *)tokenLines addObject:v7];
  }

  else
  {
    [(NSMutableArray *)tokenLines insertObject:v7 atIndex:a3];
  }
}

- (void)setSyntaxHighlightingAppearance:(unint64_t)a3
{
  if (self->_syntaxHighlightingAppearance != a3)
  {
    self->_syntaxHighlightingAppearance = a3;
    [(WFSyntaxHighlightingPluginManager *)self reloadPlugins];
  }
}

- (void)setSyntaxHighlightingType:(unint64_t)a3
{
  if (self->_syntaxHighlightingType != a3)
  {
    self->_syntaxHighlightingType = a3;
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
          v7 = [(JSContext *)self->_context virtualMachine];
          [v7 removeManagedReference:v6 withOwner:self];

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
    v4 = [MEMORY[0x277CBEB18] array];
    tokenLines = v3->_tokenLines;
    v3->_tokenLines = v4;

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

- (id)configurationFilesForAppearance:(unint64_t)a3
{
  if (a3 == 1)
  {
    return &unk_288386A88;
  }

  else
  {
    return &unk_288386AB0;
  }
}

@end