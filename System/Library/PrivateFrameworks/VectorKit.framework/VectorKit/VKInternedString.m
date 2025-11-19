@interface VKInternedString
+ (id)stringWithString:(id)a3;
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

+ (id)stringWithString:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    [_lock lock];
    v4 = [_strings member:v3];
    if (!v4)
    {
      v4 = [[VKInternedString alloc] initWithString:v3];
      [_strings addObject:?];
    }

    [_lock unlock];
  }

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [MEMORY[0x1E695DFA8] _vk_newWeakSet];
    v3 = _strings;
    _strings = v2;

    v4 = objc_alloc_init(MEMORY[0x1E696AD10]);
    v5 = _lock;
    _lock = v4;
  }
}

@end