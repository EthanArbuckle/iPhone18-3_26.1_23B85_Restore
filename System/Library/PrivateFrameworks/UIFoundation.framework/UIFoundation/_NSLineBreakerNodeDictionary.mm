@interface _NSLineBreakerNodeDictionary
- (void)dealloc;
- (void)enumerateClassesAndNodesUsingBlock:(void *)block;
- (void)setNode:(uint64_t)node forClass:(uint64_t)class;
@end

@implementation _NSLineBreakerNodeDictionary

- (void)dealloc
{
  dict = self->_dict;
  if (dict)
  {
    CFRelease(dict);
  }

  v4.receiver = self;
  v4.super_class = _NSLineBreakerNodeDictionary;
  [(_NSLineBreakerNodeDictionary *)&v4 dealloc];
}

- (void)setNode:(uint64_t)node forClass:(uint64_t)class
{
  if (node)
  {
    if (!class || *(class + 32) == 1)
    {
      [_NSLineBreakerNodeDictionary setNode:forClass:];
    }

    [_NSLineBreakerNodeDictionary setNode:forClass:];
  }
}

- (void)enumerateClassesAndNodesUsingBlock:(void *)block
{
  v3 = a2;
  v4 = v3;
  if (block)
  {
    if (block[2])
    {
      (*(v3 + 2))(v3, block[1]);
    }

    v5 = block[3];
    if (v5)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __67___NSLineBreakerNodeDictionary_enumerateClassesAndNodesUsingBlock___block_invoke;
      v6[3] = &unk_1E7265988;
      v7 = v4;
      _CFDictionaryApplyBlock(v5, v6);
    }
  }
}

- (void)setNode:forClass:.cold.2()
{
  OUTLINED_FUNCTION_2();
  if (*(v3 + 16) && v2[1] != v1)
  {
    Mutable = v2[3];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
      v2[3] = Mutable;
    }

    CFDictionarySetValue(Mutable, v1, v0);
  }

  else
  {
    v2[1] = v1;
    v2[2] = v0;
  }
}

@end