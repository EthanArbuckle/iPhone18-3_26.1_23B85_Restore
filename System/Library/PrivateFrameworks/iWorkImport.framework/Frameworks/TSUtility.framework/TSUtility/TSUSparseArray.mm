@interface TSUSparseArray
+ (id)array;
- (BOOL)hasObjectForKey:(unint64_t)key;
- (NSIndexSet)populatedKeys;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)objectForKey:(unint64_t)key;
- (unint64_t)maxIndexForCurrentDepth;
- (unint64_t)maxKey;
- (unint64_t)minKey;
- (void)addObjectsFromArray:(id)array;
- (void)clear;
- (void)dealloc;
- (void)foreach:(id)foreach;
- (void)increaseDepth;
- (void)setObject:(id)object forKey:(unint64_t)key;
@end

@implementation TSUSparseArray

+ (id)array
{
  objc_opt_class();
  v2 = objc_opt_new();

  return v2;
}

- (void)dealloc
{
  topPage = self->_topPage;
  if (topPage)
  {
    (*(topPage->var0 + 1))(topPage, a2);
    self->_topPage = 0;
  }

  v4.receiver = self;
  v4.super_class = TSUSparseArray;
  [(TSUSparseArray *)&v4 dealloc];
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_2770C1D90;
  v10 = sub_2770C1DA0;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p>:", objc_opt_class(), self];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770C1DA8;
  v5[3] = &unk_27A702980;
  v5[4] = &v6;
  [(TSUSparseArray *)self foreach:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unint64_t)maxIndexForCurrentDepth
{
  depth = self->_depth;
  if (!depth)
  {
    return 0;
  }

  v3 = 8 * depth;
  if (8 * depth >= 0x21)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSparseArray maxIndexForCurrentDepth]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUSparseArray.mm"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:306 isFatal:0 description:"Not expecting a shiftedDepth larger than 32"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return ~(-1 << v3);
}

- (id)objectForKey:(unint64_t)key
{
  depth = self->_depth;
  if (!depth || (v4 = key, [(TSUSparseArray *)self maxIndexForCurrentDepth]< key))
  {
    v6 = 0;
    goto LABEL_16;
  }

  sub_2770C26BC(__p, self->_depth + 1);
  topPage = self->_topPage;
  v8 = __p[0];
  v9 = depth - 1;
  v10 = depth;
  do
  {
    v8[v9] = v4;
    v4 >>= 8;
    --v9;
    --v10;
  }

  while (v10);
  v11 = (depth - 1);
  if (depth != 1)
  {
    v12 = 0;
    while (1)
    {
      topPage = topPage[v8[v12] + 1].var0;
      if (!topPage)
      {
        break;
      }

      if ((depth - 1) == ++v12)
      {
        goto LABEL_12;
      }
    }

    v6 = 0;
LABEL_15:
    __p[1] = v8;
    operator delete(v8);
    goto LABEL_16;
  }

  v11 = 0;
LABEL_12:
  v6 = topPage[v8[v11] + 1].var0;
  v8 = __p[0];
  if (__p[0])
  {
    goto LABEL_15;
  }

LABEL_16:

  return v6;
}

- (void)increaseDepth
{
  depth = self->_depth;
  if (depth)
  {
    if (depth >= 4)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUSparseArray increaseDepth]"];
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUSparseArray.mm"];
      [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:340 isFatal:0 description:"TSUSparseArray - getting too deep"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    operator new();
  }

  operator new();
}

- (void)setObject:(id)object forKey:(unint64_t)key
{
  objectCopy = object;
  while (1)
  {
    if ([(TSUSparseArray *)self maxIndexForCurrentDepth]>= key)
    {
      depth = self->_depth;
      if (depth)
      {
        break;
      }
    }

    [(TSUSparseArray *)self increaseDepth];
  }

  sub_2770C26BC(__p, depth + 1);
  v8 = self->_depth;
  if (v8)
  {
    v9 = __p[0];
    v10 = v8 - 1;
    v11 = self->_depth;
    do
    {
      v9[v10] = key;
      key >>= 8;
      --v10;
      --v11;
    }

    while (v11);
    topPage = self->_topPage;
    if (v8 == 1)
    {
      v13 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    topPage = self->_topPage;
  }

  v14 = 0;
  do
  {
    topPage = topPage[*(__p[0] + v14) + 1].var0;
    if (!topPage)
    {
      if (v14 == v8 - 2)
      {
        operator new();
      }

      operator new();
    }

    ++v14;
    v13 = v8 - 1;
  }

  while (v14 < v13);
LABEL_17:
  self->_nonNilCount += sub_2770C2368(topPage, objectCopy, *(__p[0] + v13));
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (BOOL)hasObjectForKey:(unint64_t)key
{
  v3 = [(TSUSparseArray *)self objectForKey:key];
  v4 = v3 != 0;

  return v4;
}

- (void)foreach:(id)foreach
{
  foreachCopy = foreach;
  topPage = self->_topPage;
  if (topPage)
  {
    v6 = 0;
    (*(topPage->var0 + 5))(topPage, foreachCopy, 0, &v6);
  }
}

- (void)addObjectsFromArray:(id)array
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2770C24EC;
  v3[3] = &unk_27A7029A8;
  v3[4] = self;
  [array foreach:v3];
}

- (void)clear
{
  topPage = self->_topPage;
  if (topPage)
  {
    (*(topPage->var0 + 1))(topPage, a2);
    self->_topPage = 0;
    self->_depth = 0;
  }
}

- (unint64_t)minKey
{
  topPage = self->_topPage;
  if (topPage)
  {
    return (*(topPage->var0 + 2))(topPage, 0);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (unint64_t)maxKey
{
  topPage = self->_topPage;
  if (topPage)
  {
    return (*(topPage->var0 + 3))(topPage, 0);
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (NSIndexSet)populatedKeys
{
  topPage = self->_topPage;
  if (topPage)
  {
    (*(topPage->var0 + 4))(topPage, 0);
  }

  else
  {
    [MEMORY[0x277CCAA78] indexSet];
  }
  v3 = ;

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  *(v4 + 24) = self->_depth;
  topPage = self->_topPage;
  *(v4 + 16) = self->_nonNilCount;
  if (topPage)
  {
    topPage = (*(topPage->var0 + 6))(topPage);
  }

  *(v4 + 8) = topPage;
  return v4;
}

@end