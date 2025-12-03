@interface SUScriptSectionsController
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (SUScriptSection)selectedSection;
- (SUScriptSectionsController)init;
- (id)_copySectionWithIdentifier:(id)identifier;
- (id)_fixedSelectedIdentifier;
- (id)scriptAttributeKeys;
- (id)sectionWithIdentifier:(id)identifier;
- (id)sections;
- (void)_setSelectedIdentifier:(id)identifier;
- (void)dealloc;
- (void)setRootViewController:(id)controller forSection:(id)section;
- (void)setSelectedSection:(id)section;
@end

@implementation SUScriptSectionsController

- (SUScriptSectionsController)init
{
  v4.receiver = self;
  v4.super_class = SUScriptSectionsController;
  v2 = [(SUScriptObject *)&v4 init];
  if (v2)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  return v2;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v3.receiver = self;
  v3.super_class = SUScriptSectionsController;
  [(SUScriptObject *)&v3 dealloc];
}

- (id)sectionWithIdentifier:(id)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }

  v3 = v8[5];
  if (v3)
  {
    null = v3;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v5 = null;
  _Block_object_dispose(&v7, 8);
  return v5;
}

uint64_t __52__SUScriptSectionsController_sectionWithIdentifier___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copySectionWithIdentifier:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (id)sections
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  [(SUScriptObject *)self checkInScriptObjects:v3, v5, 3221225472, __38__SUScriptSectionsController_sections__block_invoke, &unk_1E8164370, self, v3];
  return v3;
}

uint64_t __38__SUScriptSectionsController_sections__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(objc_msgSend(*(a1 + 32) "clientInterface")];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [[SUScriptSection alloc] initWithNativeSection:*(*(&v9 + 1) + 8 * v6)];
        if (v7)
        {
          v8 = v7;
          [*(a1 + 40) addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (SUScriptSection)selectedSection
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__15;
  v12 = __Block_byref_object_dispose__15;
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

uint64_t __45__SUScriptSectionsController_selectedSection__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _fixedSelectedIdentifier];
  if (result)
  {
    result = [*(a1 + 32) _copySectionWithIdentifier:result];
  }

  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setSelectedSection:(id)section
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(section "identifier")])
  {
    webThreadMainThreadBatchProxy = [(SUScriptObject *)self webThreadMainThreadBatchProxy];
    identifier = [section identifier];

    [webThreadMainThreadBatchProxy _setSelectedIdentifier:identifier];
  }

  else
  {
    v7 = MEMORY[0x1E69E2F88];

    [v7 throwException:@"Invalid argument"];
  }
}

- (void)setRootViewController:(id)controller forSection:(id)section
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v4 = MEMORY[0x1E69E2F88];

    [v4 throwException:@"Invalid argument"];
  }
}

uint64_t __63__SUScriptSectionsController_setRootViewController_forSection___block_invoke(id *a1)
{
  result = [objc_msgSend(a1[4] "clientInterface")];
  if (result)
  {
    v3 = result;
    v4 = [a1[5] nativeViewController];
    v5 = [a1[6] identifier];

    return [v3 setTransientViewController:v4 onSectionWithIdentifier:v5];
  }

  return result;
}

- (id)_copySectionWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  sections = [(SUTabBarController *)[(SUClientInterface *)[(SUScriptObject *)self clientInterface] tabBarController] sections];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSArray *)sections countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(sections);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([identifier isEqualToString:{objc_msgSend(v10, "identifier")}])
        {
          v11 = [[SUScriptSection alloc] initWithNativeSection:v10];
          [(SUScriptObject *)self checkInScriptObject:v11];
          return v11;
        }
      }

      v7 = [(NSArray *)sections countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (id)_fixedSelectedIdentifier
{
  v17 = *MEMORY[0x1E69E9840];
  selectedIdentifier = [(SUTabBarController *)[(SUClientInterface *)[(SUScriptObject *)self clientInterface] tabBarController] selectedIdentifier];
  v4 = [-[SUScriptObject invocationBatch:](self invocationBatch:{0), "copyQueuedInvocationsForObject:", self}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (sel_isEqual([v9 selector], sel__setSelectedIdentifier_))
        {
          v11 = 0;
          [v9 getArgument:&v11 atIndex:2];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            selectedIdentifier = v11;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return selectedIdentifier;
}

- (void)_setSelectedIdentifier:(id)identifier
{
  tabBarController = [(SUClientInterface *)[(SUScriptObject *)self clientInterface] tabBarController];

  [(SUTabBarController *)tabBarController setSelectedIdentifier:identifier];
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_24 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptSectionsController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_19, 2);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptSectionsController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptSectionsController;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_24 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_19 = sel_sectionWithIdentifier_;
    *algn_1EBF3AC58 = @"sectionWithIdentifier";
    qword_1EBF3AC60 = sel_setRootViewController_forSection_;
    unk_1EBF3AC68 = @"setRootViewControllerForSection";
    __KeyMapping_24 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"sections", @"selectedSection", @"selectedSection", 0}];
  }
}

@end