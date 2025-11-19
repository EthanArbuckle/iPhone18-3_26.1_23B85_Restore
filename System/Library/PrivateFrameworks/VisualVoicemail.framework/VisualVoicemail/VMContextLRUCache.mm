@interface VMContextLRUCache
- (BOOL)updateLanguageCount:(id)a3 assetIdentifier:(id)a4;
- (BOOL)updateNodeHashMap:(id)a3;
- (VMContextLRUCache)init;
- (id)getLatestNode;
- (int)getLanguageCount:(id)a3;
- (void)insertVMContextNode:(id)a3;
- (void)printVMContextDLL;
- (void)removeVMContextNode:(id)a3;
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
      v4 = [v3 next];

      v3 = v4;
    }

    while (v4);
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
    v4 = 0;
  }

  else
  {
    v4 = [(VMContextNode *)self->_right prev];
  }

  return v4;
}

- (void)removeVMContextNode:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100002740();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 language];
      v11 = 138412546;
      v12 = v6;
      v13 = 1024;
      v14 = [v4 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing %@ : %d", &v11, 0x12u);
    }

    v7 = [v4 prev];
    v8 = [v4 next];
    [v8 setPrev:v7];

    v9 = [v4 next];
    v10 = [v4 prev];
    [v10 setNext:v9];

    [(VMContextLRUCache *)self printVMContextDLL];
    --self->_lruCacheSize;
  }
}

- (void)insertVMContextNode:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_100002740();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 language];
      v9 = 138412546;
      v10 = v6;
      v11 = 1024;
      v12 = [v4 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Inserting %@ : %d", &v9, 0x12u);
    }

    [v4 setNext:self->_right];
    v7 = [(VMContextNode *)self->_right prev];
    [v4 setPrev:v7];

    v8 = [(VMContextNode *)self->_right prev];
    [v8 setNext:v4];

    [(VMContextNode *)self->_right setPrev:v4];
    [(VMContextLRUCache *)self printVMContextDLL];
    ++self->_lruCacheSize;
  }
}

- (BOOL)updateNodeHashMap:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_nodeHashMap objectForKeyedSubscript:v4];

    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->_nodeHashMap objectForKeyedSubscript:v4];
      [(VMContextLRUCache *)self removeVMContextNode:v6];
      [(VMContextNode *)v6 setCount:[(VMContextNode *)v6 count]+ 1];
      [(VMContextLRUCache *)self insertVMContextNode:v6];
      v7 = sub_100002740();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
LABEL_16:

        goto LABEL_17;
      }

      v8 = [(VMContextNode *)v6 language];
      v9 = [(VMContextNode *)v6 count];
      nodeHashMap = self->_nodeHashMap;
      v22 = 138412802;
      v23 = v8;
      v24 = 1024;
      LODWORD(v25[0]) = v9;
      WORD2(v25[0]) = 2112;
      *(v25 + 6) = nodeHashMap;
      v11 = "updateNodeHashMap: %@ Language updated in LRU Cache with count %d: %@";
      v12 = v7;
      v13 = 28;
      goto LABEL_14;
    }

    v6 = [[VMContextNode alloc] initWithLanguage:v4 count:1];
    [(VMContextLRUCache *)self insertVMContextNode:v6];
    [(NSMutableDictionary *)self->_nodeHashMap setObject:v6 forKeyedSubscript:v4];
    v14 = sub_100002740();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(VMContextNode *)v6 language];
      v16 = [(VMContextNode *)v6 count];
      v17 = self->_nodeHashMap;
      v22 = 138412802;
      v23 = v15;
      v24 = 1024;
      LODWORD(v25[0]) = v16;
      WORD2(v25[0]) = 2112;
      *(v25 + 6) = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "updateNodeHashMap: %@ Language inserted in LRU Cache with count %d: %@", &v22, 0x1Cu);
    }

    if (self->_lruCacheSize >= 7)
    {
      v18 = [(VMContextNode *)self->_left next];
      v7 = [v18 language];

      v19 = [(VMContextNode *)self->_left next];
      [(VMContextLRUCache *)self removeVMContextNode:v19];

      if (v7)
      {
        [(NSMutableDictionary *)self->_nodeHashMap setObject:0 forKeyedSubscript:v7];
      }

      v8 = sub_100002740();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v20 = self->_nodeHashMap;
      v22 = 138412546;
      v23 = v7;
      v24 = 2112;
      v25[0] = v20;
      v11 = "updateNodeHashMap: %@ LRU Language removed from LRU cache %@.";
      v12 = v8;
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

- (BOOL)updateLanguageCount:(id)a3 assetIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && ![v7 isEqualToString:&stru_1000F0098])
  {
    v11 = [(VMFreqMap *)self->_freqMap modelMap];
    v12 = [v11 objectForKeyedSubscript:v8];

    if (v12)
    {
      v13 = [(VMFreqMap *)self->_freqMap modelMap];
      v14 = [v13 objectForKeyedSubscript:v8];
      v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v14 intValue] + 1);
      v16 = [(VMFreqMap *)self->_freqMap modelMap];
      [v16 setObject:v15 forKeyedSubscript:v8];
    }

    else
    {
      v17 = [(VMFreqMap *)self->_freqMap modelMap];
      [v17 setObject:&off_1000F5818 forKeyedSubscript:v8];

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

- (int)getLanguageCount:(id)a3
{
  v4 = a3;
  if (v4 && (-[VMFreqMap modelMap](self->_freqMap, "modelMap"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:v4], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    v7 = [(VMFreqMap *)self->_freqMap modelMap];
    v8 = [v7 objectForKeyedSubscript:v4];
    v9 = [v8 intValue];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end