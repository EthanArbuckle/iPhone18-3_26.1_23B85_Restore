@interface WFWorkflowIconDrawerContext
+ (id)cachedContextOrNewContext;
- (CGFont)glyphFont;
- (NSSet)coreGlyphsCatalogs;
- (__CTFont)glyphTestFont;
- (__CTFont)newGlyphFontForSize:(double)size;
- (void)dealloc;
@end

@implementation WFWorkflowIconDrawerContext

- (__CTFont)newGlyphFontForSize:(double)size
{
  glyphFont = [(WFWorkflowIconDrawerContext *)self glyphFont];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v5 = getCTFontCreateWithGraphicsFontSymbolLoc_ptr;
  v13 = getCTFontCreateWithGraphicsFontSymbolLoc_ptr;
  if (!getCTFontCreateWithGraphicsFontSymbolLoc_ptr)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getCTFontCreateWithGraphicsFontSymbolLoc_block_invoke;
    v9[3] = &unk_1E7B02C60;
    v9[4] = &v10;
    __getCTFontCreateWithGraphicsFontSymbolLoc_block_invoke(v9);
    v5 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (v5)
  {
    return (v5)(glyphFont, 0, 0, size);
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CTFontRef WFCTFontCreateWithGraphicsFont(CGFontRef, CGFloat, const CGAffineTransform * _Nullable, CTFontDescriptorRef _Nullable)"}];
  [currentHandler handleFailureInFunction:v8 file:@"WFWorkflowIconDrawerContext.m" lineNumber:20 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (__CTFont)glyphTestFont
{
  result = self->_glyphTestFont;
  if (!result)
  {
    [objc_opt_class() glyphTestFontSize];
    result = [(WFWorkflowIconDrawerContext *)self newGlyphFontForSize:?];
    self->_glyphTestFont = result;
  }

  return result;
}

- (CGFont)glyphFont
{
  v14 = *MEMORY[0x1E69E9840];
  result = self->_glyphFont;
  if (!result)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 URLForResource:@"WorkflowGlyphs" withExtension:@"ttf"];

    v6 = CGDataProviderCreateWithURL(v5);
    if (v6)
    {
      v7 = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __40__WFWorkflowIconDrawerContext_glyphFont__block_invoke;
      aBlock[3] = &__block_descriptor_40_e5_v8__0l;
      aBlock[4] = v6;
      v8 = _Block_copy(aBlock);
      self->_glyphFont = CGFontCreateWithDataProvider(v7);
      v8[2](v8);

      result = self->_glyphFont;
    }

    else
    {
      v9 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v13 = "[WFWorkflowIconDrawerContext glyphFont]";
        _os_log_impl(&dword_1B1DE3000, v9, OS_LOG_TYPE_FAULT, "%s Couldn't load workflow glyph font data.", buf, 0xCu);
      }

      result = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSSet)coreGlyphsCatalogs
{
  coreGlyphsCatalogs = self->_coreGlyphsCatalogs;
  if (!coreGlyphsCatalogs)
  {
    v4 = WFImageBeginUsingCoreGlyphsCatalogs();
    v5 = self->_coreGlyphsCatalogs;
    self->_coreGlyphsCatalogs = v4;

    coreGlyphsCatalogs = self->_coreGlyphsCatalogs;
  }

  return coreGlyphsCatalogs;
}

- (void)dealloc
{
  CGFontRelease(self->_glyphFont);
  glyphTestFont = self->_glyphTestFont;
  if (glyphTestFont)
  {
    CFRelease(glyphTestFont);
  }

  if (self->_coreGlyphsCatalogs)
  {
    WFImageEndUsingCoreGlyphsCatalogs();
  }

  v4.receiver = self;
  v4.super_class = WFWorkflowIconDrawerContext;
  [(WFWorkflowIconDrawerContext *)&v4 dealloc];
}

+ (id)cachedContextOrNewContext
{
  os_unfair_lock_lock(&contextLock);
  if (context)
  {
    v3 = context;
  }

  else
  {
    v3 = objc_alloc_init(self);
  }

  v4 = v3;
  os_unfair_lock_unlock(&contextLock);

  return v4;
}

@end