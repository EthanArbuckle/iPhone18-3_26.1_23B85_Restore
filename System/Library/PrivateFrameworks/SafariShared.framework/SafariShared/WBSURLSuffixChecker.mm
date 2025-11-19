@interface WBSURLSuffixChecker
- (BOOL)hasSuffix:(id)a3;
- (BOOL)insertString:(id)a3 intoTrieWithCache:(id *)a4;
- (WBSURLSuffixChecker)initWithSuffixes:(id)a3;
- (void)addStringToFailedSuffixes:(id)a3;
- (void)dealloc;
@end

@implementation WBSURLSuffixChecker

- (BOOL)insertString:(id)a3 intoTrieWithCache:(id *)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  Length = CFStringGetLength(v6);
  if (Length > 0x20)
  {
    goto LABEL_33;
  }

  v8 = Length;
  CStringPtr = CFStringGetCStringPtr(v6, 0x600u);
  if (!CStringPtr)
  {
    CStringPtr = buffer;
    if (!CFStringGetCString(v6, buffer, 32, 0x600u))
    {
      goto LABEL_33;
    }
  }

  maxLength = self->_maxLength;
  if (maxLength <= v8)
  {
    maxLength = v8;
  }

  self->_maxLength = maxLength;
  if (*CStringPtr == 46)
  {
    var1 = a4->var1;
    if (v8 >= var1)
    {
      v12 = a4->var1;
    }

    else
    {
      v12 = v8;
    }

    if (v12 >= 2)
    {
      v13 = &a4->var0[1];
      v14 = 1;
      do
      {
        v15 = CStringPtr[v14];
        v16 = (v15 | 0x20) - 96;
        if ((v15 | 0x20u) - 123 < 0xFFFFFFE6)
        {
          v16 = -1;
        }

        if (v15 == 46)
        {
          v17 = 0;
        }

        else
        {
          v17 = v16;
        }

        if (v17 != v13->var0)
        {
          a4->var1 = v14;
          var1 = v14;
        }

        ++v14;
        if (v8 >= var1)
        {
          v18 = var1;
        }

        else
        {
          v18 = v8;
        }

        ++v13;
      }

      while (v14 < v18);
    }

    v19 = var1 - 1;
    trie = self->_trie;
    a4->var1 = v8;
    v21 = v8 - 1;
    if (v8 - 1 <= var1 - 1)
    {
      v23 = trie;
    }

    else
    {
      p_var1 = &a4->var0[v8 - 1].var1;
      v23 = trie;
      do
      {
        v24 = CStringPtr[v21];
        if (v24 == 46)
        {
          v25 = 0;
        }

        else
        {
          v26 = v24 | 0x20;
          if ((v26 - 123) < 0xFFFFFFE6)
          {
            goto LABEL_33;
          }

          v25 = v26 - 96;
        }

        trieNodeCount = v23->var0[v25];
        v28 = v25;
        if (!v23->var0[v25])
        {
          trieNodeCount = self->_trieNodeCount;
          self->_trieNodeCount = trieNodeCount + 1;
          v23->var0[v25] = trieNodeCount;
          v29 = malloc_type_realloc(trie, 54 * (trieNodeCount + 1), 0x10000409C08D13AuLL);
          self->_trie = v29;
          v30 = &v29[trieNodeCount];
          *&v30->var0[23] = 0;
          *&v30->var0[8] = 0u;
          *&v30->var0[16] = 0u;
          *v30->var0 = 0u;
          trie = self->_trie;
        }

        *(p_var1 - 1) = v28;
        *p_var1 = trieNodeCount;
        p_var1 -= 2;
        v23 = &trie[trieNodeCount];
        --v21;
      }

      while (v21 > v19);
    }

    v33 = CStringPtr[v19];
    LODWORD(v34) = (v33 | 0x20) - 96;
    if ((v33 | 0x20u) - 123 < 0xFFFFFFE6)
    {
      v34 = 0xFFFFFFFFLL;
    }

    else
    {
      v34 = v34;
    }

    if (v33 == 46)
    {
      v35 = 0;
    }

    else
    {
      v35 = v34;
    }

    v23->var0[v35] = a4->var0[v19].var1;
    v31 = 1;
  }

  else
  {
LABEL_33:
    v31 = 0;
  }

  return v31;
}

- (void)addStringToFailedSuffixes:(id)a3
{
  v4 = a3;
  failedSuffixes = self->_failedSuffixes;
  v8 = v4;
  if (!failedSuffixes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_failedSuffixes;
    self->_failedSuffixes = v6;

    v4 = v8;
    failedSuffixes = self->_failedSuffixes;
  }

  [(NSMutableArray *)failedSuffixes addObject:v4];
}

- (WBSURLSuffixChecker)initWithSuffixes:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = WBSURLSuffixChecker;
  v5 = [(WBSURLSuffixChecker *)&v20 init];
  if (v5)
  {
    v5->_trie = malloc_type_calloc(0x36uLL, 2uLL, 0xD0A69394uLL);
    v5->_trieNodeCount = 2;
    memset(v18, 0, sizeof(v18));
    WORD1(v18[0]) = 1;
    v19 = 1;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (![(WBSURLSuffixChecker *)v5 insertString:v11 intoTrieWithCache:v18, v14])
          {
            [(WBSURLSuffixChecker *)v5 addStringToFailedSuffixes:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v21 count:16];
      }

      while (v8);
    }

    v12 = v5;
  }

  return v5;
}

- (BOOL)hasSuffix:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_30;
  }

  Length = CFStringGetLength(v4);
  CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
  if (CStringPtr || (CStringPtr = buffer, CFStringGetCString(v5, buffer, 32, 0x600u)))
  {
    if (Length >= self->_maxLength)
    {
      maxLength = self->_maxLength;
    }

    else
    {
      maxLength = Length;
    }

    if (maxLength)
    {
      v9 = &CStringPtr[Length - 1];
      trie = self->_trie;
      while (1)
      {
        v12 = *v9--;
        v11 = v12;
        if (v12 == 46)
        {
          v13 = 0;
        }

        else
        {
          v14 = v11 | 0x20;
          if ((v14 - 123) < 0xFFFFFFE6)
          {
            break;
          }

          v13 = v14 - 96;
        }

        v15 = trie->var0[v13];
        if (!v15)
        {
          break;
        }

        if (v15 == 1)
        {
          goto LABEL_19;
        }

        trie = &self->_trie[v15];
        if (!--maxLength)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      trie = self->_trie;
LABEL_18:
      if (trie->var0[0] == 1)
      {
LABEL_19:
        LOBYTE(v16) = 1;
        goto LABEL_33;
      }
    }
  }

  failedSuffixes = self->_failedSuffixes;
  if (!failedSuffixes)
  {
LABEL_30:
    LOBYTE(v16) = 0;
    goto LABEL_33;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v18 = failedSuffixes;
  v16 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v19 = *v23;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v18);
        }

        if ([(__CFString *)v5 rangeOfString:*(*(&v22 + 1) + 8 * i) options:15, v22]!= 0x7FFFFFFFFFFFFFFFLL)
        {
          LOBYTE(v16) = 1;
          goto LABEL_32;
        }
      }

      v16 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_32:

LABEL_33:
  return v16;
}

- (void)dealloc
{
  free(self->_trie);
  v3.receiver = self;
  v3.super_class = WBSURLSuffixChecker;
  [(WBSURLSuffixChecker *)&v3 dealloc];
}

@end