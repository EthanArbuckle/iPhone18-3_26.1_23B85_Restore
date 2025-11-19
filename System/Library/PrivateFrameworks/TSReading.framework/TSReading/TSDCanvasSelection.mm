@interface TSDCanvasSelection
+ (id)emptySelection;
- (BOOL)containsKindOfClass:(Class)a3;
- (BOOL)containsUnlockedKindOfClass:(Class)a3;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (NSSet)unlockedInfos;
- (TSDCanvasSelection)initWithInfos:(id)a3 andContainer:(id)a4;
- (id)copyExcludingInfo:(id)a3;
- (id)copyIncludingInfo:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)infosOfClass:(Class)a3;
- (unint64_t)infoCount;
- (unint64_t)unlockedInfoCount;
- (void)dealloc;
@end

@implementation TSDCanvasSelection

- (TSDCanvasSelection)initWithInfos:(id)a3 andContainer:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = TSDCanvasSelection;
  v6 = [(TSDCanvasSelection *)&v21 init];
  if (v6)
  {
    v7 = [a3 copy];
    v6->mInfos = v7;
    if (!a4)
    {
      v8 = v7;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = [(NSSet *)v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        a4 = 0;
        v11 = *v18;
LABEL_5:
        v12 = 0;
        while (1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          if (![v13 parentInfo])
          {
            break;
          }

          v14 = [v13 parentInfo];
          if (a4)
          {
            if (v14 != a4)
            {
              break;
            }
          }

          else
          {
            objc_opt_class();
            v16 = &unk_287E2DDA0;
            a4 = TSUClassAndProtocolCast();
          }

          if (v10 == ++v12)
          {
            v10 = [(NSSet *)v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
            if (v10)
            {
              goto LABEL_5;
            }

            goto LABEL_17;
          }
        }
      }

      a4 = 0;
    }

LABEL_17:
    v6->mContainer = a4;
  }

  return v6;
}

+ (id)emptySelection
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v4 = [[a1 alloc] initWithInfos:v3];

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDCanvasSelection;
  [(TSDCanvasSelection *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  mInfos = self->mInfos;

  return [v4 initWithInfos:mInfos];
}

- (unint64_t)infoCount
{
  result = [(TSDCanvasSelection *)self infos];
  if (result)
  {

    return [result count];
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v5 = [(TSDCanvasSelection *)self infos];
    v6 = v5;
    if (a3 || [(NSSet *)v5 count]|| self->mContainer)
    {
      objc_opt_class();
      v7 = TSUDynamicCast();
      if (v7)
      {
        v8 = v7;
        v9 = [(NSSet *)v6 count];
        v10 = [v8 infos];
        if (v9)
        {
          v11 = [(NSSet *)v6 isEqual:v10];
        }

        else
        {
          v11 = [v10 count] == 0;
        }

        if ([(TSDCanvasSelection *)self container])
        {
          v12 = -[TSDContainerInfo isEqual:](-[TSDCanvasSelection container](self, "container"), "isEqual:", [v8 container]);
        }

        else
        {
          v12 = [v8 container] == 0;
        }

        LOBYTE(v7) = v11 & v12;
      }
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

- (BOOL)isEmpty
{
  v3 = [objc_opt_class() emptySelection];

  return [(TSDCanvasSelection *)self isEqual:v3];
}

- (id)infosOfClass:(Class)a3
{
  v4 = [(TSDCanvasSelection *)self infos];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__TSDCanvasSelection_infosOfClass___block_invoke;
  v6[3] = &unk_279D483A8;
  v6[4] = a3;
  return [(NSSet *)v4 objectsPassingTest:v6];
}

- (BOOL)containsKindOfClass:(Class)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(TSDCanvasSelection *)self infos:0];
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_opt_isKindOfClass())
        {
          LOBYTE(v4) = 1;
          return v4;
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

- (NSSet)unlockedInfos
{
  v3 = objc_opt_class();
  v4 = [(TSDCanvasSelection *)self infos];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__TSDCanvasSelection_unlockedInfos__block_invoke;
  v6[3] = &unk_279D483A8;
  v6[4] = v3;
  return [(NSSet *)v4 objectsPassingTest:v6];
}

uint64_t __35__TSDCanvasSelection_unlockedInfos__block_invoke(uint64_t a1, void *a2)
{
  if (objc_opt_isKindOfClass())
  {
    return [a2 isLocked] ^ 1;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)unlockedInfoCount
{
  v2 = [(TSDCanvasSelection *)self unlockedInfos];

  return [(NSSet *)v2 count];
}

- (BOOL)containsUnlockedKindOfClass:(Class)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(TSDCanvasSelection *)self infos];
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![v8 isLocked])
        {
          LOBYTE(v4) = 1;
          return v4;
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [(NSSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

- (id)copyIncludingInfo:(id)a3
{
  v4 = [(TSDCanvasSelection *)self copy];
  v5 = v4[1];
  if (v5)
  {
    v6 = [v5 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v7 = v6;
  [v6 addObject:a3];

  v4[1] = [v7 copy];
  return v4;
}

- (id)copyExcludingInfo:(id)a3
{
  v4 = [(TSDCanvasSelection *)self copy];
  v5 = [v4[1] mutableCopy];
  [v5 removeObject:a3];

  v4[1] = [v5 copy];
  return v4;
}

@end