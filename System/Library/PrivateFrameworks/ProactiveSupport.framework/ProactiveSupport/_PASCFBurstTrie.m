@interface _PASCFBurstTrie
- (_PASCFBurstTrie)initWithPath:(id)a3;
- (unsigned)payloadForString:(id)a3;
- (unsigned)payloadForString:(id)a3 range:(_NSRange)a4;
- (unsigned)payloadForUTF8String:(const char *)a3 length:(unint64_t)a4;
- (void)dealloc;
@end

@implementation _PASCFBurstTrie

- (unsigned)payloadForUTF8String:(const char *)a3 length:(unint64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  trie = self->_trie;
  if (CFBurstTrieContainsUTF8String())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)payloadForString:(id)a3 range:(_NSRange)a4
{
  v5 = [a3 substringWithRange:{a4.location, a4.length}];
  LODWORD(self) = [(_PASCFBurstTrie *)self payloadForString:v5];

  return self;
}

- (unsigned)payloadForString:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(__CFString *)v4 length];
  if (CFStringGetCStringPtr(v4, 0x600u))
  {
    trie = self->_trie;
LABEL_3:
    CFBurstTrieContainsUTF8String();
    goto LABEL_4;
  }

  if (v5 <= 0xFF && [(__CFString *)v4 getCString:__s maxLength:385 encoding:4])
  {
    v9 = self->_trie;
    strlen(__s);
    goto LABEL_3;
  }

  if (v4)
  {
    v10 = self->_trie;
    CFBurstTrieContains();
  }

LABEL_4:

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)dealloc
{
  if (self->_trie)
  {
    CFBurstTrieRelease();
  }

  v3.receiver = self;
  v3.super_class = _PASCFBurstTrie;
  [(_PASCFBurstTrie *)&v3 dealloc];
}

- (_PASCFBurstTrie)initWithPath:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_PASCFBurstTrie.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v12.receiver = self;
  v12.super_class = _PASCFBurstTrie;
  v6 = [(_PASCFBurstTrie *)&v12 init];
  if (v6 && (v7 = CFBurstTrieCreateFromFile(), (v6->_trie = v7) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not open trie: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

@end