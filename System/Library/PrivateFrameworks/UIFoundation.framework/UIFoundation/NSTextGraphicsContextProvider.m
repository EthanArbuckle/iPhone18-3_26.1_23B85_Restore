@interface NSTextGraphicsContextProvider
+ (Class)textGraphicsContextProviderClass;
+ (void)setCurrentTextGraphicsContext:(id)a3 duringBlock:(id)a4;
+ (void)setTextGraphicsContextClass:(Class)a3;
+ (void)setTextGraphicsContextProviderClass:(Class)a3;
@end

@implementation NSTextGraphicsContextProvider

+ (Class)textGraphicsContextProviderClass
{
  if (_textGraphicsContextProviderClassOnce != -1)
  {
    +[NSTextGraphicsContextProvider textGraphicsContextProviderClass];
  }

  return _textGraphicsContextProviderClass;
}

uint64_t __65__NSTextGraphicsContextProvider_textGraphicsContextProviderClass__block_invoke()
{
  _textGraphicsContextProviderClass = objc_opt_class();
  result = objc_opt_respondsToSelector();
  _textGraphicsContextProviderClassRespondsToColorQuery = result & 1;
  return result;
}

+ (void)setTextGraphicsContextProviderClass:(Class)a3
{
  if (([(objc_class *)a3 conformsToProtocol:&unk_1F01D8F00]& 1) == 0 && ([(objc_class *)a3 conformsToProtocol:&unk_1F01D9228]& 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"A Class %@ not conforming to NSTextGraphicsContextProvider was specified to textGraphicsContextProviderClass.", a3}];
  }

  block = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __69__NSTextGraphicsContextProvider_setTextGraphicsContextProviderClass___block_invoke;
  v7 = &unk_1E72657B8;
  v8 = a3;
  if (_textGraphicsContextProviderClassOnce != -1)
  {
    dispatch_once(&_textGraphicsContextProviderClassOnce, &block);
  }

  if (_textGraphicsContextProviderClass != a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Requested to reset textGraphicsContextProviderClass property with %@ after initialization.", a3, block, v5, v6, v7, v8}];
  }
}

+ (void)setTextGraphicsContextClass:(Class)a3
{
  if (([(objc_class *)a3 conformsToProtocol:&unk_1F01D9228]& 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"A Class %@ not conforming to NSTextGraphicsContext was specified to textGraphicsContextClass.", a3}];
  }

  [NSTextGraphicsContextProvider setTextGraphicsContextProviderClass:a3];
}

+ (void)setCurrentTextGraphicsContext:(id)a3 duringBlock:(id)a4
{
  if (objc_opt_respondsToSelector())
  {

    [a3 becomeCurrentGraphicsContextDuringBlock:a4];
  }

  else
  {
    v6 = *(a4 + 2);

    v6(a4);
  }
}

@end