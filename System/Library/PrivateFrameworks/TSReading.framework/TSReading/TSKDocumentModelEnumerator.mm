@interface TSKDocumentModelEnumerator
- (TSKDocumentModelEnumerator)initWithEnumerator:(id)enumerator filter:(id)filter;
- (TSKDocumentModelEnumerator)initWithRootModelObject:(id)object filter:(id)filter;
- (id)nextObject;
- (void)dealloc;
- (void)enumerateReferencedStylesUsingBlock:(id)block;
- (void)enumerateUsingBlock:(id)block;
@end

@implementation TSKDocumentModelEnumerator

- (TSKDocumentModelEnumerator)initWithRootModelObject:(id)object filter:(id)filter
{
  v9.receiver = self;
  v9.super_class = TSKDocumentModelEnumerator;
  v6 = [(TSKDocumentModelEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(TSKDocumentModelEnumerator *)v6 setRoot:object];
    [(TSKDocumentModelEnumerator *)v7 setFilter:filter];
    [(TSKDocumentModelEnumerator *)v7 setFilterBeforeAddingChildren:0];
  }

  return v7;
}

- (TSKDocumentModelEnumerator)initWithEnumerator:(id)enumerator filter:(id)filter
{
  if (!enumerator)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKDocumentModelEnumerator initWithEnumerator:filter:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKDocumentModelEnumerator.m"), 82, @"invalid nil value for '%s'", "enumerator"}];
  }

  v11.receiver = self;
  v11.super_class = TSKDocumentModelEnumerator;
  v9 = [(TSKDocumentModelEnumerator *)&v11 init];
  if (v9)
  {
    -[TSKDocumentModelEnumerator setEnumeratorStack:](v9, "setEnumeratorStack:", [MEMORY[0x277CBEB18] arrayWithObject:enumerator]);
    [(TSKDocumentModelEnumerator *)v9 setFilter:filter];
    [(TSKDocumentModelEnumerator *)v9 setFilterBeforeAddingChildren:0];
  }

  return v9;
}

- (void)dealloc
{
  [(TSKDocumentModelEnumerator *)self setRoot:0];
  [(TSKDocumentModelEnumerator *)self setFilter:0];
  [(TSKDocumentModelEnumerator *)self setEnumeratorStack:0];
  v3.receiver = self;
  v3.super_class = TSKDocumentModelEnumerator;
  [(TSKDocumentModelEnumerator *)&v3 dealloc];
}

- (id)nextObject
{
  if (self->_enumeratorStack)
  {
    root = 0;
  }

  else
  {
    if ([(TSKDocumentModelEnumerator *)self filter]&& (v4 = [(TSKDocumentModelEnumerator *)self filter], !v4[2](v4, [(TSKDocumentModelEnumerator *)self root], &self->_stop)))
    {
      root = 0;
    }

    else
    {
      root = [(TSKDocumentModelEnumerator *)self root];
    }

    [(TSKDocumentModelEnumerator *)self root];
    if (objc_opt_respondsToSelector())
    {
      array = [MEMORY[0x277CBEB18] arrayWithObject:{-[TSKModel childEnumerator](-[TSKDocumentModelEnumerator root](self, "root"), "childEnumerator")}];
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    [(TSKDocumentModelEnumerator *)self setEnumeratorStack:array];
  }

  if ([(NSMutableArray *)[(TSKDocumentModelEnumerator *)self enumeratorStack] count]&& !root)
  {
    while (!self->_stop)
    {
      root = [-[NSMutableArray lastObject](-[TSKDocumentModelEnumerator enumeratorStack](self "enumeratorStack")];
      if (root)
      {
        if (self->_filterBeforeAddingChildren)
        {
          if ([(TSKDocumentModelEnumerator *)self filter])
          {
            filter = [(TSKDocumentModelEnumerator *)self filter];
            if (!filter[2](filter, root, &self->_stop))
            {
              root = 0;
            }
          }
        }

        if ((objc_opt_respondsToSelector() & 1) != 0 && [(TSKModel *)root childEnumerator])
        {
          [(NSMutableArray *)[(TSKDocumentModelEnumerator *)self enumeratorStack] addObject:[(TSKModel *)root childEnumerator]];
        }

        if (!self->_filterBeforeAddingChildren)
        {
          if ([(TSKDocumentModelEnumerator *)self filter])
          {
            filter2 = [(TSKDocumentModelEnumerator *)self filter];
            if (!filter2[2](filter2, root, &self->_stop))
            {
              root = 0;
            }
          }
        }
      }

      else
      {
        [(NSMutableArray *)[(TSKDocumentModelEnumerator *)self enumeratorStack] removeLastObject];
      }

      if (![(NSMutableArray *)[(TSKDocumentModelEnumerator *)self enumeratorStack] count]|| root)
      {
        return root;
      }
    }

    return 0;
  }

  return root;
}

- (void)enumerateUsingBlock:(id)block
{
  v8 = 0;
  nextObject = [(TSKDocumentModelEnumerator *)self nextObject];
  if (nextObject)
  {
    v6 = nextObject;
    do
    {
      (*(block + 2))(block, v6, &v8);
      nextObject2 = [(TSKDocumentModelEnumerator *)self nextObject];
      if (!nextObject2)
      {
        break;
      }

      v6 = nextObject2;
    }

    while (!v8);
  }
}

- (void)enumerateReferencedStylesUsingBlock:(id)block
{
  v5 = objc_alloc_init(MEMORY[0x277D6C310]);
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3052000000;
  v7[3] = __Block_byref_object_copy__8;
  v7[4] = __Block_byref_object_dispose__8;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__TSKDocumentModelEnumerator_TSSAdditions__enumerateReferencedStylesUsingBlock___block_invoke;
  v6[3] = &unk_279D48080;
  v6[4] = v5;
  v6[5] = block;
  v6[6] = v7;
  v7[5] = v6;
  [(TSKDocumentModelEnumerator *)self enumerateUsingBlock:v6];

  _Block_object_dispose(v7, 8);
}

void *__80__TSKDocumentModelEnumerator_TSSAdditions__enumerateReferencedStylesUsingBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  result = TSUClassAndProtocolCast();
  if (result)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [result referencedStyles];
    result = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (result)
    {
      v7 = result;
      v8 = *v12;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (([*(a1 + 32) containsObject:v10] & 1) == 0)
        {
          result = (*(*(a1 + 40) + 16))();
          if (*a3)
          {
            break;
          }

          [*(a1 + 32) addObject:v10];
          result = (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
          if (*a3)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          result = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
          v7 = result;
          if (result)
          {
            goto LABEL_4;
          }

          return result;
        }
      }
    }
  }

  return result;
}

@end