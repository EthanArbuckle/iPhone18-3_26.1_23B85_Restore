@interface TUIKeyboardLayoutFactory
+ (id)crescendoLayouts;
+ (id)layoutsFileNameForDeviceClass;
+ (id)layoutsRequiringStaticFallback;
+ (id)sharedKeyboardFactory;
- (TUIKeyboardLayoutFactory)init;
- (id)keyboardPrefixForWidth:(double)a3 andEdge:(BOOL)a4;
- (id)keyboardSuffixForScreenDimensions:(CGSize)a3;
- (id)keyboardWithName:(id)a3 inCache:(id)a4;
- (void)_createDecoderFromFilename:(id)a3;
- (void)_createDecoderIfNecessary;
- (void)dealloc;
- (void)setData:(id)a3 forKeyboard:(id)a4;
@end

@implementation TUIKeyboardLayoutFactory

+ (id)crescendoLayouts
{
  v2 = TIGetMoltoCrescendoValue();
  if (v2)
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  result = crescendoLayouts___layouts;
  if (!crescendoLayouts___layouts)
  {
    v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"AZERTY-Arabic", @"Dvorak", @"QWERTY-Arabic", @"QWERTY-Chickasaw", @"QWERTY-Choctaw", @"QWERTY-Maori", @"QWERTY-Mikmaw", @"QWERTY-Mvskoke", @"QWERTY-Lushootseed", @"QWERTY-Nez-Perce", @"QWERTY-Shawnee", @"Shawnee", @"Sami-Inari", @"Sami-Julev", @"Sami-Julev-Norway", @"Sami-Kildin", @"Sami-Northern", @"Sami-Pite", @"Sami-Skolt", @"Sami-Southern", @"Sami-Ume", @"Osage-QWERTY", @"Coptic", @"Mandaic", @"Mandaic-QWERTY", @"Mandaic-Alphabetic", @"Tamazight-Tifinagh", @"Tamazight-Tifinagh-Alphabetic", @"Thai-24-Key", @"QWERTY-Kabyle", @"AZERTY-Kabyle", @"Ingush", @"NKo", @"Wancho", @"Wancho-QWERTY", @"Rejang", @"Pahawh-Hmong", @"Yi", @"Inuktitut", @"QWERTY-Wolastoqey", @"Chuvash", @"QWERTY-Akan", @"QWERTY-Hausa", @"QWERTY-Yoruba", @"Bengali-Alphabetic", @"Gujarati-Alphabetic", @"Hindi-Alphabetic", @"Kannada-Alphabetic", @"Malayalam-Alphabetic", @"Marathi-Alphabetic", @"Oriya-Alphabetic", @"Punjabi-Alphabetic", @"Tamil-Alphabetic", @"Telugu-Alphabetic", @"Urdu-Alphabetic", @"Zhuyin-Grid", @"Zhuyin-Grid-Extended", @"Arabic-With-QWERTY", @"QWERTY-Wixarika", @"QWERTY-Chochenyo", @"Iskonawa-Alphabetic"}];
    crescendoLayouts___layouts = v5;
    if (v3)
    {
      crescendoLayouts___layouts = [v5 setByAddingObjectsFromArray:&unk_1F03D8FA8];
    }

    v6 = _os_feature_enabled_impl();
    result = crescendoLayouts___layouts;
    if (v6)
    {
      result = [crescendoLayouts___layouts setByAddingObjectsFromArray:&unk_1F03D8FC0];
      crescendoLayouts___layouts = result;
    }
  }

  return result;
}

+ (id)sharedKeyboardFactory
{
  if (sharedKeyboardFactory_onceToken != -1)
  {
    dispatch_once(&sharedKeyboardFactory_onceToken, &__block_literal_global_5336);
  }

  return sharedKeyboardFactory_instance;
}

- (void)_createDecoderIfNecessary
{
  decoder = self->_decoder;
  if (!decoder || [(TUIKBGraphSerialization *)decoder currentFileType]== 3 || [(TUIKBGraphSerialization *)self->_decoder currentFileType]== -1)
  {
    v4 = [@"/System/Library/PrivateFrameworks/TextInputUI.framework" stringByAppendingPathComponent:{objc_msgSend(objc_opt_class(), "layoutsFileNameForDeviceClass")}];
    [(TUIKeyboardLayoutFactory *)self setDecoder:objc_alloc_init(TUIKBGraphSerialization)];
    v6 = 0;
    v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v4 options:8 error:&v6];
    if (!v5 || v6)
    {
      [(TUIKeyboardLayoutFactory *)self setDecoder:0];
    }

    else
    {
      [(TUIKBGraphSerialization *)[(TUIKeyboardLayoutFactory *)self decoder] setSerializedData:v5];
    }
  }
}

TUIKeyboardLayoutFactory *__49__TUIKeyboardLayoutFactory_sharedKeyboardFactory__block_invoke()
{
  result = objc_alloc_init(TUIKeyboardLayoutFactory);
  sharedKeyboardFactory_instance = result;
  return result;
}

- (TUIKeyboardLayoutFactory)init
{
  v5.receiver = self;
  v5.super_class = TUIKeyboardLayoutFactory;
  v2 = [(TUIKeyboardLayoutFactory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TUIKeyboardLayoutFactory *)v2 _createDecoderIfNecessary];
  }

  return v3;
}

+ (id)layoutsFileNameForDeviceClass
{
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"KBLayouts_%@.dat", v2];
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  if ([(__CFString *)v4 isEqualToString:@"KBLayouts_iPod.dat"])
  {
    v4 = @"KBLayouts_iPhone.dat";
  }

  if ([(__CFString *)v4 isEqualToString:@"KBLayouts_Watch.dat"])
  {
    v5 = @"KBLayouts_iPhone.dat";
  }

  else
  {
    v5 = v4;
  }

  if (v5)
  {
    return v5;
  }

  else
  {
    return @"KBLayouts_iPad.dat";
  }
}

- (void)setData:(id)a3 forKeyboard:(id)a4
{
  if ([(TUIKeyboardLayoutFactory *)self overlayDecoders])
  {
    if (!a4)
    {
      return;
    }
  }

  else
  {
    -[TUIKeyboardLayoutFactory setOverlayDecoders:](self, "setOverlayDecoders:", [MEMORY[0x1E695DF90] dictionary]);
    if (!a4)
    {
      return;
    }
  }

  if (a3)
  {
    v7 = objc_alloc_init(TUIKBGraphSerialization);
    [(TUIKBGraphSerialization *)v7 setSerializedData:a3];
    -[TUIKBGraphSerialization setDeserializationCache:](v7, "setDeserializationCache:", [MEMORY[0x1E695DF90] dictionary]);
    v8 = [(TUIKeyboardLayoutFactory *)self overlayDecoders];

    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:a4];
  }

  else
  {
    v9 = [(TUIKeyboardLayoutFactory *)self overlayDecoders];

    [(NSMutableDictionary *)v9 removeObjectForKey:a4];
  }
}

- (id)keyboardSuffixForScreenDimensions:(CGSize)a3
{
  if (a3.height < a3.width)
  {
    a3.width = a3.height;
  }

  width = a3.width;
  v4 = [(TUIKeyboardLayoutFactory *)self decoder];
  *&v5 = width;

  return [(TUIKBGraphSerialization *)v4 keyboardSuffixForPortraitWidth:v5];
}

- (id)keyboardPrefixForWidth:(double)a3 andEdge:(BOOL)a4
{
  v4 = a4;
  [(TUIKeyboardLayoutFactory *)self _createDecoderIfNecessary];
  result = [(TUIKeyboardLayoutFactory *)self decoder];
  if (result)
  {
    v8 = [(TUIKeyboardLayoutFactory *)self decoder];

    *&v9 = a3;
    return [(TUIKBGraphSerialization *)v8 keyboardPrefixForWidth:v4 andEdge:v9];
  }

  return result;
}

- (id)keyboardWithName:(id)a3 inCache:(id)a4
{
  overlayDecoders = self->_overlayDecoders;
  if (overlayDecoders && (v8 = [(NSMutableDictionary *)overlayDecoders objectForKeyedSubscript:a3]) != 0)
  {

    return [v8 keyboardForName:a3];
  }

  else
  {
    if (!a4)
    {
      if (![(TUIKeyboardLayoutFactory *)self internalCache])
      {
        -[TUIKeyboardLayoutFactory setInternalCache:](self, "setInternalCache:", [MEMORY[0x1E695DF90] dictionaryWithCapacity:100]);
      }

      a4 = [(TUIKeyboardLayoutFactory *)self internalCache];
    }

    if ([a3 hasPrefix:@"Dynamic"])
    {
      [(TUIKeyboardLayoutFactory *)self _createDecoderFromFilename:@"KBLayouts_Dynamic.dat"];
    }

    else
    {
      [(TUIKeyboardLayoutFactory *)self _createDecoderIfNecessary];
    }

    if (os_variant_has_internal_diagnostics() && ([TIGetMoltoCrescendoValue() BOOLValue] & 1) == 0)
    {
      if (_TUIKeyboardLayoutFactoryLogger_onceToken != -1)
      {
        dispatch_once(&_TUIKeyboardLayoutFactoryLogger_onceToken, &__block_literal_global_497);
      }

      v10 = _TUIKeyboardLayoutFactoryLogger_log;
      if (os_log_type_enabled(_TUIKeyboardLayoutFactoryLogger_log, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
      }
    }

    result = [(TUIKeyboardLayoutFactory *)self decoder];
    if (result)
    {
      [(TUIKBGraphSerialization *)[(TUIKeyboardLayoutFactory *)self decoder] setDeserializationCache:a4];
      return [(TUIKBGraphSerialization *)[(TUIKeyboardLayoutFactory *)self decoder] keyboardForName:a3];
    }
  }

  return result;
}

- (void)_createDecoderFromFilename:(id)a3
{
  decoder = self->_decoder;
  if (!decoder || [(TUIKBGraphSerialization *)decoder currentFileType]!= 3)
  {
    v6 = [@"/System/Library/PrivateFrameworks/TextInputUI.framework" stringByAppendingPathComponent:a3];
    [(TUIKeyboardLayoutFactory *)self setDecoder:objc_alloc_init(TUIKBGraphSerialization)];
    v10 = 0;
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v6 options:8 error:&v10];
    if (v7)
    {
      v8 = v10 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = v7;
      [(TUIKBGraphSerialization *)[(TUIKeyboardLayoutFactory *)self decoder] setCurrentFileType:3];
      [(TUIKBGraphSerialization *)[(TUIKeyboardLayoutFactory *)self decoder] setSerializedData:v9];
    }

    else
    {
      [(TUIKeyboardLayoutFactory *)self _createDecoderIfNecessary];
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TUIKeyboardLayoutFactory;
  [(TUIKeyboardLayoutFactory *)&v3 dealloc];
}

+ (id)layoutsRequiringStaticFallback
{
  [TIGetMoltoCrescendoValue() BOOLValue];
  result = layoutsRequiringStaticFallback___layouts;
  if (!layoutsRequiringStaticFallback___layouts)
  {
    result = [MEMORY[0x1E695DFD8] setWithObjects:{@"Emoji", 0}];
    layoutsRequiringStaticFallback___layouts = result;
  }

  return result;
}

@end