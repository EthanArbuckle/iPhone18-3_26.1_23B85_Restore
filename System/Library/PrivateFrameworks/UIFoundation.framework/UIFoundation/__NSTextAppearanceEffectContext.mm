@interface __NSTextAppearanceEffectContext
- (__NSTextAppearanceEffectContext)initWithTextEffectName:(id)name catalog:(id)catalog styleEffectConfiguration:(id)configuration font:(id)font color:(id)color applicationFrameworkContext:(int64_t)context useSimplifiedEffect:(BOOL)effect;
- (void)dealloc;
@end

@implementation __NSTextAppearanceEffectContext

- (__NSTextAppearanceEffectContext)initWithTextEffectName:(id)name catalog:(id)catalog styleEffectConfiguration:(id)configuration font:(id)font color:(id)color applicationFrameworkContext:(int64_t)context useSimplifiedEffect:(BOOL)effect
{
  if (+[NSTextGraphicsContextProvider textGraphicsContextProviderClassRespondsToColorQuery])
  {
    context = [(objc_class *)+[NSTextGraphicsContextProvider textGraphicsContextProviderClass](NSTextGraphicsContextProvider colorClassForApplicationFrameworkContext:"colorClassForApplicationFrameworkContext:", context];
  }

  else
  {
    context = +[NSTextGraphicsContextProvider __defaultColorClass];
  }

  v17 = context;
  if (context == 2)
  {
    if (!catalog)
    {
      goto LABEL_21;
    }

    if (!name)
    {
      if (!configuration)
      {
        goto LABEL_21;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![configuration backgroundType])
      {
        goto LABEL_21;
      }
    }
  }

  else if (!name || catalog)
  {
    if (!name)
    {
LABEL_21:

      return 0;
    }
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v18 = get_UIKitGetTextEffectsCatalogSymbolLoc_ptr;
    v27 = get_UIKitGetTextEffectsCatalogSymbolLoc_ptr;
    if (!get_UIKitGetTextEffectsCatalogSymbolLoc_ptr)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __get_UIKitGetTextEffectsCatalogSymbolLoc_block_invoke;
      v23[3] = &unk_1E72673F0;
      v23[4] = &v24;
      __get_UIKitGetTextEffectsCatalogSymbolLoc_block_invoke(v23);
      v18 = v25[3];
    }

    _Block_object_dispose(&v24, 8);
    if (!v18)
    {
      [__NSTextAppearanceEffectContext initWithTextEffectName:catalog:styleEffectConfiguration:font:color:applicationFrameworkContext:useSimplifiedEffect:];
    }

    catalog = v18();
  }

  v22.receiver = self;
  v22.super_class = __NSTextAppearanceEffectContext;
  v19 = [(__NSTextAppearanceEffectContext *)&v22 init];
  if (v19)
  {
    v19->_effectName = name;
    v19->_catalog = catalog;
    if (configuration)
    {
      v20 = [configuration copy];
    }

    else
    {
      v20 = objc_alloc_init(MEMORY[0x1E6999430]);
    }

    v19->_effectConfiguration = v20;
    v19->_font = font;
    if (!color)
    {
      color = [(objc_class *)v17 blackColor];
    }

    v19->_color = color;
    [(CUIStyleEffectConfiguration *)v19->_effectConfiguration setUseSimplifiedEffect:effect];
  }

  return v19;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = __NSTextAppearanceEffectContext;
  [(__NSTextAppearanceEffectContext *)&v3 dealloc];
}

- (void)initWithTextEffectName:catalog:styleEffectConfiguration:font:color:applicationFrameworkContext:useSimplifiedEffect:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CUICatalog *__UIKitGetTextEffectsCatalog(void)") description:{@"__NSTextAppearanceInterface.m", 17, @"%s", dlerror()}];
  __break(1u);
}

@end