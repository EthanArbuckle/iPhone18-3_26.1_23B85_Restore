@interface CRCHPatternNetwork
+ (BOOL)isFinalCursor:(id)cursor inNetwork:(id)network;
+ (id)cursorByAdvancingWithString:(id)string fromCursor:(id)cursor inNetwork:(id)network;
+ (id)rootCursorForContentType:(int)type inNetwork:(id)network;
- (CRCHPatternNetwork)initWithFile:(id)file;
- (id)advanceCursor:(id)cursor withSymbol:(unint64_t)symbol;
- (void)dealloc;
@end

@implementation CRCHPatternNetwork

+ (id)rootCursorForContentType:(int)type inNetwork:(id)network
{
  if (!network)
  {
    return 0;
  }

  v4 = *(network + 4);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:*&type];

  return [v4 objectForKey:v5];
}

+ (id)cursorByAdvancingWithString:(id)string fromCursor:(id)cursor inNetwork:(id)network
{
  result = 0;
  if (cursor)
  {
    if (network)
    {
      result = [cursor edgeIndexCount];
      if (result)
      {
        if ([string length])
        {
          v9 = [string rangeOfComposedCharacterSequenceAtIndex:0];
          if (v10 <= 1)
          {
            v11 = v9;
            v12 = v10;
            v13 = [string substringWithRange:{v9, v10}];
            v14 = [string substringFromIndex:v11 + v12];
            v15 = [network advanceCursor:cursor withSymbol:{objc_msgSend(v13, "characterAtIndex:", 0)}];

            return [CRCHPatternNetwork cursorByAdvancingWithString:v14 fromCursor:v15 inNetwork:network];
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return cursor;
        }
      }
    }
  }

  return result;
}

- (id)advanceCursor:(id)cursor withSymbol:(unint64_t)symbol
{
  v14 = objc_alloc_init(CRCHNetworkCursor);
  if ([cursor edgeIndexCount])
  {
    v7 = 0;
    do
    {
      NetworkEdge::NetworkEdge(v19, (*(self->_network + 11) + 80 * [cursor edgeIndexAtPosition:v7]));
      v8 = v20;
      v9 = *(*(self->_network + 5) + 56 * v20);
      if (v9)
      {
        v10 = 0;
        v11 = 0;
        v12 = -v9;
        while (1)
        {
          NetworkEdge::NetworkEdge(v15, (*(self->_network + 11) + 80 * *(*(self->_network + 5) + 56 * v8 + 16) + v10));
          if (v16 == symbol)
          {
            break;
          }

          if (__p)
          {
            v18 = __p;
            operator delete(__p);
          }

          --v11;
          v10 += 80;
          if (v12 == v11)
          {
            goto LABEL_12;
          }
        }

        [(CRCHNetworkCursor *)v14 addEdgeIndex:*(*(self->_network + 5) + 56 * v8 + 16) - v11];
        if (__p)
        {
          v18 = __p;
          operator delete(__p);
        }
      }

LABEL_12:
      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      ++v7;
    }

    while (v7 < [cursor edgeIndexCount]);
  }

  return v14;
}

+ (BOOL)isFinalCursor:(id)cursor inNetwork:(id)network
{
  LOBYTE(v4) = 0;
  if (cursor && network)
  {
    if ([cursor edgeIndexCount])
    {
      v7 = 0;
      do
      {
        NetworkEdge::NetworkEdge(v9, (*(*(network + 1) + 88) + 80 * [cursor edgeIndexAtPosition:v7]));
        v4 = *(*(*(network + 1) + 40) + 56 * v9[1] + 48);
        if (__p)
        {
          v11 = __p;
          operator delete(__p);
        }

        if (v4)
        {
          break;
        }

        ++v7;
      }

      while (v7 < [cursor edgeIndexCount]);
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (CRCHPatternNetwork)initWithFile:(id)file
{
  v63 = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = CRCHPatternNetwork;
  v4 = [(CRCHPatternNetwork *)&v57 init];
  if (pathForResource([file UTF8String], 0, __s))
  {
    operator new();
  }

  v4->_symbols = +[CRCHPatternNetwork patternToSymbolMap];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = *(v4->_network + 11);
  if (*(v4->_network + 12) != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      NetworkEdge::NetworkEdge(v52, (v6 + v7));
      if (v53 == v54)
      {
        v9 = -[NSDictionary objectForKey:](v4->_symbols, "objectForKey:", [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%07lx", v53]);
        if (v9)
        {
          [dictionary setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLong:", v8), v9}];
        }
      }

      if (__p)
      {
        v56 = __p;
        operator delete(__p);
      }

      ++v8;
      v6 = *(v4->_network + 11);
      v7 += 80;
    }

    while (v8 < 0xCCCCCCCCCCCCCCCDLL * ((*(v4->_network + 12) - v6) >> 4));
  }

  v4->_startEdges = dictionary;
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v11 = objc_alloc_init(CRCHNetworkCursor);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v12 = +[CRCHPatternNetwork kDefaultPatternsPlusUrlsAndEmails];
  v13 = [v12 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v13)
  {
    v14 = *v49;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v48 + 1) + 8 * i);
        if ([(NSDictionary *)v4->_startEdges objectForKey:v16])
        {
          -[CRCHNetworkCursor addEdgeIndex:](v11, "addEdgeIndex:", [-[NSDictionary objectForKey:](v4->_startEdges objectForKey:{v16), "unsignedLongValue"}]);
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v13);
  }

  [dictionary2 setObject:v11 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", 1)}];
  v17 = objc_alloc_init(CRCHNetworkCursor);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v18 = +[CRCHPatternNetwork kDefaultPatterns];
  v19 = [v18 countByEnumeratingWithState:&v44 objects:v60 count:16];
  if (v19)
  {
    v20 = *v45;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v44 + 1) + 8 * j);
        if ([(NSDictionary *)v4->_startEdges objectForKey:v22])
        {
          -[CRCHNetworkCursor addEdgeIndex:](v17, "addEdgeIndex:", [-[NSDictionary objectForKey:](v4->_startEdges objectForKey:{v22), "unsignedLongValue"}]);
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v44 objects:v60 count:16];
    }

    while (v19);
  }

  [dictionary2 setObject:v17 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", 0)}];
  v23 = objc_alloc_init(CRCHNetworkCursor);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v24 = +[CRCHPatternNetwork kEmailPatterns];
  v25 = [v24 countByEnumeratingWithState:&v40 objects:v59 count:16];
  if (v25)
  {
    v26 = *v41;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v40 + 1) + 8 * k);
        if ([(NSDictionary *)v4->_startEdges objectForKey:v28])
        {
          -[CRCHNetworkCursor addEdgeIndex:](v23, "addEdgeIndex:", [-[NSDictionary objectForKey:](v4->_startEdges objectForKey:{v28), "unsignedLongValue"}]);
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v40 objects:v59 count:16];
    }

    while (v25);
  }

  [dictionary2 setObject:v23 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", 2)}];
  v29 = objc_alloc_init(CRCHNetworkCursor);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v30 = +[CRCHPatternNetwork kUrlPatterns];
  v31 = [v30 countByEnumeratingWithState:&v36 objects:v58 count:16];
  if (v31)
  {
    v32 = *v37;
    do
    {
      for (m = 0; m != v31; ++m)
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(v30);
        }

        v34 = *(*(&v36 + 1) + 8 * m);
        if ([(NSDictionary *)v4->_startEdges objectForKey:v34])
        {
          -[CRCHNetworkCursor addEdgeIndex:](v29, "addEdgeIndex:", [-[NSDictionary objectForKey:](v4->_startEdges objectForKey:{v34), "unsignedLongValue"}]);
        }
      }

      v31 = [v30 countByEnumeratingWithState:&v36 objects:v58 count:16];
    }

    while (v31);
  }

  [dictionary2 setObject:v29 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", 3)}];
  v4->_startCursorForContentTypes = dictionary2;
  return v4;
}

- (void)dealloc
{
  network = self->_network;
  if (network)
  {
    CRCHNetwork::~CRCHNetwork(network);
    MEMORY[0x1B8C73EF0]();
    self->_network = 0;
  }

  symbols = self->_symbols;
  if (symbols)
  {

    self->_symbols = 0;
  }

  startEdges = self->_startEdges;
  if (startEdges)
  {

    self->_startEdges = 0;
  }

  startCursorForContentTypes = self->_startCursorForContentTypes;
  if (startCursorForContentTypes)
  {

    self->_startCursorForContentTypes = 0;
  }

  v7.receiver = self;
  v7.super_class = CRCHPatternNetwork;
  [(CRCHPatternNetwork *)&v7 dealloc];
}

@end