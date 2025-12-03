@interface VKInternedString
+ (id)stringWithString:(id)string;
+ (void)initialize;
- (void)dealloc;
@end

@implementation VKInternedString

- (void)dealloc
{
  [_lock lock];
  [_strings removeObject:self];
  [_lock unlock];
  v3.receiver = self;
  v3.super_class = VKInternedString;
  [(VKInternedString *)&v3 dealloc];
}

+ (id)stringWithString:(id)string
{
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = stringCopy;
  }

  else
  {
    [_lock lock];
    v4 = [_strings member:stringCopy];
    if (!v4)
    {
      v4 = [[VKInternedString alloc] initWithString:stringCopy];
      [_strings addObject:?];
    }

    [_lock unlock];
  }

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _vk_newWeakSet = [MEMORY[0x1E695DFA8] _vk_newWeakSet];
    v3 = _strings;
    _strings = _vk_newWeakSet;

    v4 = objc_alloc_init(MEMORY[0x1E696AD10]);
    v5 = _lock;
    _lock = v4;
  }
}

@end