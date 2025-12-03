@interface NSTextGraphicsContextProvider
+ (Class)textGraphicsContextProviderClass;
+ (void)setCurrentTextGraphicsContext:(id)context duringBlock:(id)block;
+ (void)setTextGraphicsContextClass:(Class)class;
+ (void)setTextGraphicsContextProviderClass:(Class)class;
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

+ (void)setTextGraphicsContextProviderClass:(Class)class
{
  if (([(objc_class *)class conformsToProtocol:&unk_1F01D8F00]& 1) == 0 && ([(objc_class *)class conformsToProtocol:&unk_1F01D9228]& 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"A Class %@ not conforming to NSTextGraphicsContextProvider was specified to textGraphicsContextProviderClass.", class}];
  }

  block = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __69__NSTextGraphicsContextProvider_setTextGraphicsContextProviderClass___block_invoke;
  v7 = &unk_1E72657B8;
  classCopy = class;
  if (_textGraphicsContextProviderClassOnce != -1)
  {
    dispatch_once(&_textGraphicsContextProviderClassOnce, &block);
  }

  if (_textGraphicsContextProviderClass != class)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Requested to reset textGraphicsContextProviderClass property with %@ after initialization.", class, block, v5, v6, v7, classCopy}];
  }
}

+ (void)setTextGraphicsContextClass:(Class)class
{
  if (([(objc_class *)class conformsToProtocol:&unk_1F01D9228]& 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"A Class %@ not conforming to NSTextGraphicsContext was specified to textGraphicsContextClass.", class}];
  }

  [NSTextGraphicsContextProvider setTextGraphicsContextProviderClass:class];
}

+ (void)setCurrentTextGraphicsContext:(id)context duringBlock:(id)block
{
  if (objc_opt_respondsToSelector())
  {

    [context becomeCurrentGraphicsContextDuringBlock:block];
  }

  else
  {
    v6 = *(block + 2);

    v6(block);
  }
}

@end