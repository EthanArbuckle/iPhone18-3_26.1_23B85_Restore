@interface TIWordSearchController
+ (id)sharedWordSearchController;
- (TIWordSearchController)init;
- (id)wordSearchForInputMode:(id)mode;
- (void)reset;
- (void)setWordSearch:(id)search forInputMode:(id)mode;
@end

@implementation TIWordSearchController

- (void)reset
{
  inputModeToWordSearchMapping = [(TIWordSearchController *)self inputModeToWordSearchMapping];
  [inputModeToWordSearchMapping removeAllObjects];
}

- (id)wordSearchForInputMode:(id)mode
{
  modeCopy = mode;
  normalizedIdentifier = [modeCopy normalizedIdentifier];
  normalizedIdentifier2 = [modeCopy normalizedIdentifier];
  if (![normalizedIdentifier2 isEqualToString:@"ko_KR"])
  {
    goto LABEL_4;
  }

  originalIdentifier = [modeCopy originalIdentifier];
  v8 = TIInputModeGetSWLayout();

  if (v8)
  {
    normalizedIdentifier2 = [modeCopy originalIdentifier];
    v9 = TIInputModeGetSWLayout();

    normalizedIdentifier = v9;
LABEL_4:
  }

  if (!normalizedIdentifier)
  {
    goto LABEL_10;
  }

  inputModeToWordSearchMapping = [(TIWordSearchController *)self inputModeToWordSearchMapping];
  v11 = [inputModeToWordSearchMapping objectForKey:normalizedIdentifier];

  if (v11)
  {
    goto LABEL_11;
  }

  normalizedIdentifier3 = [modeCopy normalizedIdentifier];
  v13 = TICanonicalInputModeName();
  v14 = TIInputManagerClassForInputMode();

  if (([v14 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(modeCopy, "normalizedIdentifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "hasSuffix:", @"HWR"), v15, v16))
  {
    v11 = [objc_alloc(objc_msgSend(v14 performSelector:{sel_wordSearchClass)), "initTIWordSearchWithInputMode:", modeCopy}];
    inputModeToWordSearchMapping2 = [(TIWordSearchController *)self inputModeToWordSearchMapping];
    [inputModeToWordSearchMapping2 setObject:v11 forKey:normalizedIdentifier];
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

LABEL_11:

  return v11;
}

- (void)setWordSearch:(id)search forInputMode:(id)mode
{
  searchCopy = search;
  normalizedIdentifier = [mode normalizedIdentifier];
  if (searchCopy && normalizedIdentifier)
  {
    inputModeToWordSearchMapping = [(TIWordSearchController *)self inputModeToWordSearchMapping];
    [inputModeToWordSearchMapping setObject:searchCopy forKey:normalizedIdentifier];
  }
}

- (TIWordSearchController)init
{
  v6.receiver = self;
  v6.super_class = TIWordSearchController;
  v2 = [(TIWordSearchController *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:5 capacity:16];
    inputModeToWordSearchMapping = v2->_inputModeToWordSearchMapping;
    v2->_inputModeToWordSearchMapping = v3;
  }

  return v2;
}

+ (id)sharedWordSearchController
{
  if (sharedWordSearchController___onceToken != -1)
  {
    dispatch_once(&sharedWordSearchController___onceToken, &__block_literal_global_18306);
  }

  v3 = sharedWordSearchController___sharedInstance;

  return v3;
}

uint64_t __52__TIWordSearchController_sharedWordSearchController__block_invoke()
{
  v0 = objc_alloc_init(TIWordSearchController);
  v1 = sharedWordSearchController___sharedInstance;
  sharedWordSearchController___sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end