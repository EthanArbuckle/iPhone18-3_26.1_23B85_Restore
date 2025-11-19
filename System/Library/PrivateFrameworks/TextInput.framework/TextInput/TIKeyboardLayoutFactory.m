@interface TIKeyboardLayoutFactory
+ (id)layoutsFileName;
+ (id)sharedKeyboardFactory;
- (TIKeyboardLayoutFactory)init;
- (id)keyboardPrefixForWidth:(double)a3 andEdge:(BOOL)a4;
- (id)keyboardWithName:(id)a3 inCache:(id)a4;
@end

@implementation TIKeyboardLayoutFactory

- (id)keyboardPrefixForWidth:(double)a3 andEdge:(BOOL)a4
{
  v4 = a4;
  v6 = dlsym(-[TIKeyboardLayoutFactory layoutsLibraryHandle](self, "layoutsLibraryHandle"), [@"UIKBGetKeyboardPrefixForWidthAndEdge" UTF8String]);
  if (v6)
  {
    v6 = v6(v4, a3);
  }

  return v6;
}

- (id)keyboardWithName:(id)a3 inCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (!v7)
    {
      v9 = [(TIKeyboardLayoutFactory *)self internalCache];

      if (!v9)
      {
        v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:100];
        [(TIKeyboardLayoutFactory *)self setInternalCache:v10];
      }

      v8 = [(TIKeyboardLayoutFactory *)self internalCache];
    }

    v11 = [v6 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
    v12 = [@"UIKBBuildTreeNamed_" stringByAppendingString:v11];

    v13 = dlsym(-[TIKeyboardLayoutFactory layoutsLibraryHandle](self, "layoutsLibraryHandle"), [v12 UTF8String]);
    if (v13)
    {
      v14 = v13(v8);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TIKeyboardLayoutFactory)init
{
  v7.receiver = self;
  v7.super_class = TIKeyboardLayoutFactory;
  v2 = [(TIKeyboardLayoutFactory *)&v7 init];
  if (v2)
  {
    v3 = +[TIKeyboardLayoutFactory layoutsFileName];
    v4 = [@"/System/Library/PrivateFrameworks/TextInputUI.framework" stringByAppendingPathComponent:v3];
    v5 = dlopen([v4 fileSystemRepresentation], 1);
    v2->_layoutsLibraryHandle = v5;
    if (!v5)
    {
      NSLog(&cfstr_SUnableToLoadK.isa, "[TIKeyboardLayoutFactory init]", v4);
    }
  }

  return v2;
}

+ (id)layoutsFileName
{
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"KBLayouts_%@.dylib", v2];
    if (([(__CFString *)v3 isEqualToString:@"KBLayouts_iPod.dylib"]& 1) == 0)
    {
      if (v3)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_6:

    v3 = @"KBLayouts_iPhone.dylib";
    goto LABEL_8;
  }

  v3 = 0;
  if ([0 isEqualToString:@"KBLayouts_iPod.dylib"])
  {
    goto LABEL_6;
  }

LABEL_7:
  v3 = @"KBLayouts_iPad.dylib";
LABEL_8:

  return v3;
}

+ (id)sharedKeyboardFactory
{
  if (sharedKeyboardFactory_onceToken != -1)
  {
    dispatch_once(&sharedKeyboardFactory_onceToken, &__block_literal_global_6021);
  }

  v3 = sharedKeyboardFactory_instance;

  return v3;
}

uint64_t __48__TIKeyboardLayoutFactory_sharedKeyboardFactory__block_invoke()
{
  v0 = objc_alloc_init(TIKeyboardLayoutFactory);
  v1 = sharedKeyboardFactory_instance;
  sharedKeyboardFactory_instance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end