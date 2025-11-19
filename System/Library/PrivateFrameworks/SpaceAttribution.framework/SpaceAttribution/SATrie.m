@interface SATrie
- (BOOL)isAncestor:(id)a3;
- (BOOL)isOverlapping:(id)a3 checkIfExists:(BOOL)a4;
- (BOOL)isSuccessor:(id)a3;
- (SATrie)init;
- (id)getAncestorOfPath:(id)a3;
- (id)getPathsComponents:(id)a3;
- (void)clearPaths;
- (void)insertPath:(id)a3;
@end

@implementation SATrie

- (SATrie)init
{
  v6.receiver = self;
  v6.super_class = SATrie;
  v2 = [(SATrie *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    root = v2->_root;
    v2->_root = v3;
  }

  return v2;
}

- (void)clearPaths
{
  v3 = objc_opt_new();
  root = self->_root;
  self->_root = v3;

  _objc_release_x1();
}

- (id)getPathsComponents:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"/"];
  v4 = [v3 mutableCopy];

  [v4 removeObject:&stru_100066450];

  return v4;
}

- (void)insertPath:(id)a3
{
  v4 = [(SATrie *)self getPathsComponents:a3];
  v5 = self->_root;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      v10 = v5;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v17 + 1) + 8 * v9);
        v12 = [(TrieNode *)v10 children];
        v13 = [v12 objectForKeyedSubscript:v11];

        if (!v13)
        {
          v14 = objc_opt_new();
          v15 = [(TrieNode *)v10 children];
          [v15 setObject:v14 forKeyedSubscript:v11];
        }

        v16 = [(TrieNode *)v10 children];
        v5 = [v16 objectForKeyedSubscript:v11];

        v9 = v9 + 1;
        v10 = v5;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(TrieNode *)v5 setIsEndOfPath:1];
}

- (id)getAncestorOfPath:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(SATrie *)self getPathsComponents:v4];
  v7 = self->_root;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    while (2)
    {
      v11 = 0;
      v12 = v7;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * v11);
        v14 = [(TrieNode *)v12 children];
        v15 = [v14 objectForKeyedSubscript:v13];

        if (!v15)
        {
          if ([(TrieNode *)v12 isEndOfPath])
          {
            v17 = [v5 componentsJoinedByString:@"/"];
            v9 = [@"/" stringByAppendingString:v17];
          }

          else
          {
            v9 = 0;
          }

          v7 = v12;
          goto LABEL_14;
        }

        [v5 addObject:v13];
        v16 = [(TrieNode *)v12 children];
        v7 = [v16 objectForKeyedSubscript:v13];

        v11 = v11 + 1;
        v12 = v7;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v9;
}

- (BOOL)isSuccessor:(id)a3
{
  v3 = [(SATrie *)self getAncestorOfPath:a3];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isAncestor:(id)a3
{
  v4 = [(SATrie *)self getPathsComponents:a3];
  v5 = self->_root;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * v10);
        v13 = [(TrieNode *)v11 children];
        v14 = [v13 objectForKeyedSubscript:v12];

        if (!v14)
        {
          v17 = 0;
          v16 = v6;
          goto LABEL_11;
        }

        v15 = [(TrieNode *)v11 children];
        v5 = [v15 objectForKeyedSubscript:v12];

        v10 = v10 + 1;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = [(TrieNode *)v5 children];
  v17 = [v16 count] != 0;
  v11 = v5;
LABEL_11:

  return v17;
}

- (BOOL)isOverlapping:(id)a3 checkIfExists:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(SATrie *)self getPathsComponents:v6];
    v8 = self->_root;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v25 = a4;
      v26 = v6;
      v12 = *v28;
      v13 = 1;
      v14 = 1;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = [(TrieNode *)v8 children];
          v18 = [v17 objectForKeyedSubscript:v16];

          if (v18)
          {
            v19 = [(TrieNode *)v8 children];
            v20 = [v19 objectForKeyedSubscript:v16];

            v8 = v20;
          }

          else
          {
            if ([(TrieNode *)v8 isEndOfPath])
            {
              v22 = 1;
              v23 = v9;
              v6 = v26;
              goto LABEL_20;
            }

            v13 = 0;
            v14 = 0;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v21 = v13 ^ 1;
      v6 = v26;
      a4 = v25;
    }

    else
    {
      v21 = 0;
      v14 = 1;
    }

    v22 = a4 & v14;
    if (!v22 && (v21 & 1) == 0)
    {
      v23 = [(TrieNode *)v8 children];
      v22 = [v23 count] != 0;
LABEL_20:
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end