@interface SUScriptSplitViewController
+ (id)webScriptNameForKeyName:(id)name;
+ (void)initialize;
- (BOOL)usesSharedPlaceholder;
- (NSNumber)splitShadowOpacity;
- (NSNumber)splitShadowRadius;
- (NSString)splitType;
- (NSString)title;
- (SUScriptViewController)firstViewController;
- (SUScriptViewController)secondViewController;
- (id)_splitViewController;
- (id)minimumPaneSize;
- (id)newNativeViewController;
- (id)scriptAttributeKeys;
- (id)splitPosition;
- (id)splitShadowColor;
- (void)setFirstViewController:(id)controller;
- (void)setMinimumPaneSize:(id)size;
- (void)setSecondViewController:(id)controller;
- (void)setSplitPosition:(id)position;
- (void)setSplitShadowColor:(id)color;
- (void)setSplitShadowOpacity:(id)opacity;
- (void)setSplitShadowRadius:(id)radius;
- (void)setSplitType:(id)type;
- (void)setTitle:(id)title;
@end

@implementation SUScriptSplitViewController

- (id)newNativeViewController
{
  v3 = objc_alloc_init(SUSplitViewController);
  [(SUViewController *)v3 setClientInterface:[(SUScriptObject *)self clientInterface]];
  return v3;
}

- (SUScriptViewController)firstViewController
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__17;
  v17 = __Block_byref_object_dispose__17;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __50__SUScriptSplitViewController_firstViewController__block_invoke;
  v10 = &unk_1E81650B0;
  selfCopy = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __50__SUScriptSplitViewController_firstViewController__block_invoke, &unk_1E81650B0, selfCopy, &v13], (v3 = v14[5]) != 0))
  {
    null = v3;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v5 = null;
  _Block_object_dispose(&v13, 8);
  return v5;
}

uint64_t __50__SUScriptSplitViewController_firstViewController__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "_splitViewController")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)minimumPaneSize
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__17;
  v12 = __Block_byref_object_dispose__17;
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

uint64_t __46__SUScriptSplitViewController_minimumPaneSize__block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "_splitViewController")];
  v3 = v2;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v3 > 0.00000011920929 && v3 < 1.0)
  {
    result = [v4 initWithFormat:@"%.0f%%", floor(v3 * 100.0)];
  }

  else
  {
    result = [v4 initWithFormat:@"%.0fpx", *&v3];
  }

  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (SUScriptViewController)secondViewController
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__17;
  v17 = __Block_byref_object_dispose__17;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __51__SUScriptSplitViewController_secondViewController__block_invoke;
  v10 = &unk_1E81650B0;
  selfCopy = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __51__SUScriptSplitViewController_secondViewController__block_invoke, &unk_1E81650B0, selfCopy, &v13], (v3 = v14[5]) != 0))
  {
    null = v3;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v5 = null;
  _Block_object_dispose(&v13, 8);
  return v5;
}

uint64_t __51__SUScriptSplitViewController_secondViewController__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "_splitViewController")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setFirstViewController:(id)controller
{
  if (controller && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }

  else
  {
    WebThreadRunOnMainThread();
  }
}

uint64_t __54__SUScriptSplitViewController_setFirstViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _splitViewController];
  v3 = [*(a1 + 40) nativeViewController];

  return [v2 setFirstViewController:v3];
}

- (void)setMinimumPaneSize:(id)size
{
  if ([SUSplitViewController isValidSplitPositionValue:?])
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }
}

uint64_t __50__SUScriptSplitViewController_setMinimumPaneSize___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _splitViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 40);
  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  if ([v4 hasSuffix:@"px"])
  {
    v4 = [*(a1 + 40) substringToIndex:{objc_msgSend(*(a1 + 40), "length") - 2}];
LABEL_4:
    [v4 floatValue];
    goto LABEL_5;
  }

  result = [*(a1 + 40) hasSuffix:@"%"];
  if (!result)
  {
    return result;
  }

  v5 = [objc_msgSend(*(a1 + 40) substringToIndex:{objc_msgSend(*(a1 + 40), "length") - 1), "intValue"}] / 100.0;
LABEL_5:
  v6 = v5;

  return [v2 setMinimumPaneSize:v6];
}

- (void)setSecondViewController:(id)controller
{
  if (controller && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }

  else
  {
    WebThreadRunOnMainThread();
  }
}

uint64_t __55__SUScriptSplitViewController_setSecondViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _splitViewController];
  v3 = [*(a1 + 40) nativeViewController];

  return [v2 setSecondViewController:v3];
}

- (void)setSplitPosition:(id)position
{
  if ([SUSplitViewController isValidSplitPositionValue:?])
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }
}

uint64_t __48__SUScriptSplitViewController_setSplitPosition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _splitViewController];
  v3 = *(a1 + 40);

  return [v2 setSplitPositionAndLayoutTypeFromValue:v3];
}

- (void)setSplitShadowColor:(id)color
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    color = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    colorCopy = [[SUScriptColor alloc] initWithStyleString:color];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_10;
    }

    colorCopy = color;
  }

  v5 = colorCopy;
  if (colorCopy)
  {
    WebThreadRunOnMainThread();

    return;
  }

LABEL_10:
  v6 = MEMORY[0x1E69E2F88];

  [v6 throwException:@"Invalid argument"];
}

void __51__SUScriptSplitViewController_setSplitShadowColor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _splitViewController];
  v3 = [objc_msgSend(v2 "splitShadow")];
  [v3 setColor:{objc_msgSend(*(a1 + 40), "nativeColor")}];
  [v2 setSplitShadow:v3];
}

- (void)setSplitShadowOpacity:(id)opacity
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

void __53__SUScriptSplitViewController_setSplitShadowOpacity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _splitViewController];
  v4 = [objc_msgSend(v2 "splitShadow")];
  [*(a1 + 40) floatValue];
  [v4 setOpacity:v3];
  [v2 setSplitShadow:v4];
}

- (void)setSplitShadowRadius:(id)radius
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

void __52__SUScriptSplitViewController_setSplitShadowRadius___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _splitViewController];
  v4 = [objc_msgSend(v2 "splitShadow")];
  [*(a1 + 40) floatValue];
  [v4 setRadius:v3];
  [v2 setSplitShadow:v4];
}

- (void)setSplitType:(id)type
{
  if ([SUSplitViewController isValidSplitTypeString:?])
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }
}

uint64_t __44__SUScriptSplitViewController_setSplitType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _splitViewController];
  v3 = *(a1 + 40);

  return [v2 setSplitTypeString:v3];
}

- (void)setTitle:(id)title
{
  if (title && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }

  else
  {
    WebThreadRunOnMainThread();
  }
}

uint64_t __40__SUScriptSplitViewController_setTitle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _splitViewController];
  v3 = *(a1 + 40);

  return [v2 setMainTitle:v3];
}

uint64_t __56__SUScriptSplitViewController_setUsesSharedPlaceholder___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _splitViewController];
  v3 = *(a1 + 40);

  return [v2 setUsesSharedPlaceholder:v3];
}

- (id)splitPosition
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__17;
  v12 = __Block_byref_object_dispose__17;
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

id __44__SUScriptSplitViewController_splitPosition__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_splitViewController")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)splitShadowColor
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__17;
  v12 = __Block_byref_object_dispose__17;
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

uint64_t __47__SUScriptSplitViewController_splitShadowColor__block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(objc_msgSend(*(a1 + 32) "_splitViewController")];
  if (!v2)
  {
    v2 = [MEMORY[0x1E69DC888] blackColor];
  }

  *(*(*(a1 + 40) + 8) + 40) = [SUScriptColor alloc];
  result = [*(*(*(a1 + 40) + 8) + 40) initWithUIColor:v2];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSNumber)splitShadowOpacity
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__17;
  v12 = __Block_byref_object_dispose__17;
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

uint64_t __49__SUScriptSplitViewController_splitShadowOpacity__block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "_splitViewController")];
  v3 = objc_alloc(MEMORY[0x1E696AD98]);
  if (v2)
  {
    [v2 opacity];
    *&v4 = v4;
  }

  else
  {
    v4 = 0.0;
  }

  result = [v3 initWithFloat:v4];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSNumber)splitShadowRadius
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__17;
  v12 = __Block_byref_object_dispose__17;
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

uint64_t __48__SUScriptSplitViewController_splitShadowRadius__block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "_splitViewController")];
  v3 = objc_alloc(MEMORY[0x1E696AD98]);
  if (v2)
  {
    [v2 radius];
    *&v4 = v4;
  }

  else
  {
    v4 = 0.0;
  }

  result = [v3 initWithFloat:v4];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)splitType
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__17;
  v12 = __Block_byref_object_dispose__17;
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

id __40__SUScriptSplitViewController_splitType__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_splitViewController")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)title
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__17;
  v12 = __Block_byref_object_dispose__17;
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

id __36__SUScriptSplitViewController_title__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_splitViewController")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)usesSharedPlaceholder
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

uint64_t __52__SUScriptSplitViewController_usesSharedPlaceholder__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_splitViewController")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)_splitViewController
{
  nativeViewController = [(SUScriptViewController *)self nativeViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return nativeViewController;
  }

  else
  {
    return 0;
  }
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_28 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptSplitViewController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptSplitViewController;
  scriptAttributeKeys = [(SUScriptViewController *)&v4 scriptAttributeKeys];
  [scriptAttributeKeys addObjectsFromArray:{objc_msgSend(__KeyMapping_28, "allKeys")}];
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_28 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"firstViewController", @"minimumPaneSize", @"minimumPaneSize", @"secondViewController", @"secondViewController", @"splitPosition", @"splitPosition", @"splitShadowColor", @"splitShadowColor", @"splitShadowOpacity", @"splitShadowOpacity", @"splitShadowRadius", @"splitShadowRadius", @"splitType", @"splitType", @"title", @"title", @"usesSharedPlaceholder", @"usesSharedPlaceholder", 0}];
  }
}

@end