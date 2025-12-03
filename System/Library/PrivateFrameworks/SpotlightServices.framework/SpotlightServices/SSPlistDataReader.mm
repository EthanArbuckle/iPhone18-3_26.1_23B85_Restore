@interface SSPlistDataReader
- (BOOL)doesBundleExistInAppAllowList:(id)list;
- (NSArray)blocklist;
- (NSMutableArray)allKeys;
- (SSPlistDataReader)initWithPlistContainer:(_MDPlistContainer *)container;
- (SSPlistDataReader)initWithPlistContainer:(_MDPlistContainer *)container obj:(id *)obj;
- (double)doubleValueForBundle:(id)bundle;
- (double)doubleValueForKey:(const char *)key;
- (int64_t)intValueForBundle:(id)bundle defaultValue:(int64_t)value;
- (int64_t)intValueForKey:(const char *)key defaultValue:(int64_t)value;
- (unint64_t)count;
- (void)dealloc;
@end

@implementation SSPlistDataReader

- (SSPlistDataReader)initWithPlistContainer:(_MDPlistContainer *)container obj:(id *)obj
{
  v10.receiver = self;
  v10.super_class = SSPlistDataReader;
  v6 = [(SSPlistDataReader *)&v10 init];
  v7 = v6;
  if (container && v6)
  {
    v6->_container = CFRetain(container);
    var2 = obj->var2;
    *&v7->_obj.containerBytes = *&obj->var0;
    v7->_obj.reference = var2;
  }

  return v7;
}

- (SSPlistDataReader)initWithPlistContainer:(_MDPlistContainer *)container
{
  v9.receiver = self;
  v9.super_class = SSPlistDataReader;
  v4 = [(SSPlistDataReader *)&v9 init];
  v5 = v4;
  if (container && v4)
  {
    v4->_container = CFRetain(container);
    _MDPlistGetRootPlistObjectFromPlist();
    *&v5->_obj.containerBytes = v7;
    v5->_obj.reference = v8;
  }

  return v5;
}

- (void)dealloc
{
  container = self->_container;
  if (container)
  {
    CFRelease(container);
  }

  v4.receiver = self;
  v4.super_class = SSPlistDataReader;
  [(SSPlistDataReader *)&v4 dealloc];
}

- (unint64_t)count
{
  if (!self->_container)
  {
    return 0;
  }

  obj = self->_obj;
  return _MDPlistDictionaryGetCount();
}

- (NSMutableArray)allKeys
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[SSPlistDataReader count](self, "count")}];
  v4 = v3;
  if (self->_container)
  {
    v8 = v3;
    v6 = *&self->_obj.containerBytes;
    reference = self->_obj.reference;
    _MDPlistDictionaryIterate();
  }

  return v4;
}

void __28__SSPlistDataReader_allKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  [v2 addObject:v3];
}

- (NSArray)blocklist
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_container)
  {
    v8 = array;
    v6 = *&self->_obj.containerBytes;
    reference = self->_obj.reference;
    _MDPlistDictionaryIterate();
  }

  return v4;
}

void __30__SSPlistDataReader_blocklist__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v9 = *a4;
  v10 = *(a4 + 2);
  _MDPlistNumberGetDoubleValue();
  if (v6 < 0.0)
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{a2, v9, v10}];
    [v7 addObject:v8];
  }
}

- (BOOL)doesBundleExistInAppAllowList:(id)list
{
  if (!self->_container)
  {
    return 0;
  }

  [list UTF8String];
  obj = self->_obj;
  return _MDPlistDictionaryGetPlistObjectForKey() != 0;
}

- (double)doubleValueForKey:(const char *)key
{
  v3 = -1.0;
  if (key)
  {
    if (self->_container)
    {
      obj = self->_obj;
      if (_MDPlistDictionaryGetPlistObjectForKey())
      {
        _MDPlistNumberGetDoubleValue();
        return v4;
      }
    }
  }

  return v3;
}

- (double)doubleValueForBundle:(id)bundle
{
  lowercaseString = [bundle lowercaseString];
  -[SSPlistDataReader doubleValueForKey:](self, "doubleValueForKey:", [lowercaseString UTF8String]);
  v6 = v5;

  return v6;
}

- (int64_t)intValueForKey:(const char *)key defaultValue:(int64_t)value
{
  if (key)
  {
    if (self->_container)
    {
      obj = self->_obj;
      if (_MDPlistDictionaryGetPlistObjectForKey())
      {
        return _MDPlistNumberGetIntValue();
      }
    }
  }

  return value;
}

- (int64_t)intValueForBundle:(id)bundle defaultValue:(int64_t)value
{
  lowercaseString = [bundle lowercaseString];
  v7 = -[SSPlistDataReader intValueForKey:defaultValue:](self, "intValueForKey:defaultValue:", [lowercaseString UTF8String], value);

  return v7;
}

@end