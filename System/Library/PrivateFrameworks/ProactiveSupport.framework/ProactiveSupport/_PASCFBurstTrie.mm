@interface _PASCFBurstTrie
- (_PASCFBurstTrie)initWithPath:(id)path;
- (unsigned)payloadForString:(id)string;
- (unsigned)payloadForString:(id)string range:(_NSRange)range;
- (unsigned)payloadForUTF8String:(const char *)string length:(unint64_t)length;
- (void)dealloc;
@end

@implementation _PASCFBurstTrie

- (unsigned)payloadForUTF8String:(const char *)string length:(unint64_t)length
{
  if (!string)
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

- (unsigned)payloadForString:(id)string range:(_NSRange)range
{
  v5 = [string substringWithRange:{range.location, range.length}];
  LODWORD(self) = [(_PASCFBurstTrie *)self payloadForString:v5];

  return self;
}

- (unsigned)payloadForString:(id)string
{
  v12 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v5 = [(__CFString *)stringCopy length];
  if (CFStringGetCStringPtr(stringCopy, 0x600u))
  {
    trie = self->_trie;
LABEL_3:
    CFBurstTrieContainsUTF8String();
    goto LABEL_4;
  }

  if (v5 <= 0xFF && [(__CFString *)stringCopy getCString:__s maxLength:385 encoding:4])
  {
    v9 = self->_trie;
    strlen(__s);
    goto LABEL_3;
  }

  if (stringCopy)
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

- (_PASCFBurstTrie)initWithPath:(id)path
{
  v15 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASCFBurstTrie.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v12.receiver = self;
  v12.super_class = _PASCFBurstTrie;
  v6 = [(_PASCFBurstTrie *)&v12 init];
  if (v6 && (v7 = CFBurstTrieCreateFromFile(), (v6->_trie = v7) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = pathCopy;
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