@interface VMContextLRUCache
- (BOOL)updateLanguageCount:(id)count assetIdentifier:(id)identifier;
- (BOOL)updateNodeHashMap:(id)map;
- (VMContextLRUCache)init;
- (id)getLatestNode;
- (int)getLanguageCount:(id)count;
- (void)insertVMContextNode:(id)node;
- (void)printVMContextDLL;
- (void)removeVMContextNode:(id)node;
@end

@implementation VMContextLRUCache

- (VMContextLRUCache)init
{
  v13.receiver = self;
  v13.super_class = VMContextLRUCache;
  v2 = [(VMContextLRUCache *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lruCacheSize = 0;
    v4 = +[VMFreqMap loadVMFreqMap];
    freqMap = v3->_freqMap;
    v3->_freqMap = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    nodeHashMap = v3->_nodeHashMap;
    v3->_nodeHashMap = v6;

    v8 = [[VMContextNode alloc] initWithLanguage:@"oldestPointer" count:0xFFFFFFFFLL];
    left = v3->_left;
    v3->_left = v8;

    v10 = [[VMContextNode alloc] initWithLanguage:@"latestPointer" count:0xFFFFFFFFLL];
    right = v3->_right;
    v3->_right = v10;

    [(VMContextNode *)v3->_left setNext:v3->_right];
    [(VMContextNode *)v3->_right setPrev:v3->_left];
  }

  return v3;
}

- (void)printVMContextDLL
{
  v2 = self->_left;
  if (v2)
  {
    v3 = v2;
    do
    {
      [v3 printNode];
      next = [v3 next];

      v3 = next;
    }

    while (next);
  }

  v5 = sub_100002740();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "--------", v6, 2u);
  }
}

- (id)getLatestNode
{
  if (self->_lruCacheSize < 1)
  {
    prev = 0;
  }

  else
  {
    prev = [(VMContextNode *)self->_right prev];
  }

  return prev;
}

- (void)removeVMContextNode:(id)node
{
  nodeCopy = node;
  if (nodeCopy)
  {
    v5 = sub_100002740();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      language = [nodeCopy language];
      v11 = 138412546;
      v12 = language;
      v13 = 1024;
      v14 = [nodeCopy count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing %@ : %d", &v11, 0x12u);
    }

    prev = [nodeCopy prev];
    next = [nodeCopy next];
    [next setPrev:prev];

    next2 = [nodeCopy next];
    prev2 = [nodeCopy prev];
    [prev2 setNext:next2];

    [(VMContextLRUCache *)self printVMContextDLL];
    --self->_lruCacheSize;
  }
}

- (void)insertVMContextNode:(id)node
{
  nodeCopy = node;
  if (nodeCopy)
  {
    v5 = sub_100002740();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      language = [nodeCopy language];
      v9 = 138412546;
      v10 = language;
      v11 = 1024;
      v12 = [nodeCopy count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Inserting %@ : %d", &v9, 0x12u);
    }

    [nodeCopy setNext:self->_right];
    prev = [(VMContextNode *)self->_right prev];
    [nodeCopy setPrev:prev];

    prev2 = [(VMContextNode *)self->_right prev];
    [prev2 setNext:nodeCopy];

    [(VMContextNode *)self->_right setPrev:nodeCopy];
    [(VMContextLRUCache *)self printVMContextDLL];
    ++self->_lruCacheSize;
  }
}

- (BOOL)updateNodeHashMap:(id)map
{
  mapCopy = map;
  if (mapCopy)
  {
    v5 = [(NSMutableDictionary *)self->_nodeHashMap objectForKeyedSubscript:mapCopy];

    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->_nodeHashMap objectForKeyedSubscript:mapCopy];
      [(VMContextLRUCache *)self removeVMContextNode:v6];
      [(VMContextNode *)v6 setCount:[(VMContextNode *)v6 count]+ 1];
      [(VMContextLRUCache *)self insertVMContextNode:v6];
      language3 = sub_100002740();
      if (!os_log_type_enabled(language3, OS_LOG_TYPE_DEFAULT))
      {
LABEL_16:

        goto LABEL_17;
      }

      language = [(VMContextNode *)v6 language];
      v9 = [(VMContextNode *)v6 count];
      nodeHashMap = self->_nodeHashMap;
      v22 = 138412802;
      v23 = language;
      v24 = 1024;
      LODWORD(v25[0]) = v9;
      WORD2(v25[0]) = 2112;
      *(v25 + 6) = nodeHashMap;
      v11 = "updateNodeHashMap: %@ Language updated in LRU Cache with count %d: %@";
      v12 = language3;
      v13 = 28;
      goto LABEL_14;
    }

    v6 = [[VMContextNode alloc] initWithLanguage:mapCopy count:1];
    [(VMContextLRUCache *)self insertVMContextNode:v6];
    [(NSMutableDictionary *)self->_nodeHashMap setObject:v6 forKeyedSubscript:mapCopy];
    v14 = sub_100002740();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      language2 = [(VMContextNode *)v6 language];
      v16 = [(VMContextNode *)v6 count];
      v17 = self->_nodeHashMap;
      v22 = 138412802;
      v23 = language2;
      v24 = 1024;
      LODWORD(v25[0]) = v16;
      WORD2(v25[0]) = 2112;
      *(v25 + 6) = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "updateNodeHashMap: %@ Language inserted in LRU Cache with count %d: %@", &v22, 0x1Cu);
    }

    if (self->_lruCacheSize >= 7)
    {
      next = [(VMContextNode *)self->_left next];
      language3 = [next language];

      next2 = [(VMContextNode *)self->_left next];
      [(VMContextLRUCache *)self removeVMContextNode:next2];

      if (language3)
      {
        [(NSMutableDictionary *)self->_nodeHashMap setObject:0 forKeyedSubscript:language3];
      }

      language = sub_100002740();
      if (!os_log_type_enabled(language, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v20 = self->_nodeHashMap;
      v22 = 138412546;
      v23 = language3;
      v24 = 2112;
      v25[0] = v20;
      v11 = "updateNodeHashMap: %@ LRU Language removed from LRU cache %@.";
      v12 = language;
      v13 = 22;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v22, v13);
LABEL_15:

      goto LABEL_16;
    }
  }

  else
  {
    v6 = sub_100002740();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, &v6->super, OS_LOG_TYPE_DEFAULT, "updateNodeHashMap: Empty detectedLocaleIdentifier passed.", &v22, 2u);
    }
  }

LABEL_17:

  return 0;
}

- (BOOL)updateLanguageCount:(id)count assetIdentifier:(id)identifier
{
  countCopy = count;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (identifierCopy && ![identifierCopy isEqualToString:&stru_1000F0098])
  {
    modelMap = [(VMFreqMap *)self->_freqMap modelMap];
    v12 = [modelMap objectForKeyedSubscript:v8];

    if (v12)
    {
      modelMap2 = [(VMFreqMap *)self->_freqMap modelMap];
      v14 = [modelMap2 objectForKeyedSubscript:v8];
      v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v14 intValue] + 1);
      modelMap3 = [(VMFreqMap *)self->_freqMap modelMap];
      [modelMap3 setObject:v15 forKeyedSubscript:v8];
    }

    else
    {
      modelMap4 = [(VMFreqMap *)self->_freqMap modelMap];
      [modelMap4 setObject:&off_1000F5818 forKeyedSubscript:v8];

      v18 = sub_100002740();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "getLanguageCount: %@ Language inserted in freqMap.", &v21, 0xCu);
      }
    }

    v19 = +[NSDate date];
    [v19 timeIntervalSince1970];
    [(VMFreqMap *)self->_freqMap setModifiedTimeStamp:?];

    v9 = +[VMFreqMap getVMFreqMapFilePath];
    [VMUtilities writeDataToFile:v9 fileData:self->_freqMap];
    v10 = 1;
  }

  else
  {
    v9 = sub_100002740();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "updateLanguageCount: Empty assetIdentifier passed.", &v21, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (int)getLanguageCount:(id)count
{
  countCopy = count;
  if (countCopy && (-[VMFreqMap modelMap](self->_freqMap, "modelMap"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:countCopy], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    modelMap = [(VMFreqMap *)self->_freqMap modelMap];
    v8 = [modelMap objectForKeyedSubscript:countCopy];
    intValue = [v8 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

@end