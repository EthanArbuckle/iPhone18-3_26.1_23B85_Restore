@interface CSDCallDataSourceMap
- (CSDCallDataSourceMap)init;
- (NSArray)dataSources;
- (id)callsForDataSource:(id)a3 identifier:(id)a4;
- (void)addCalls:(id)a3 forIdentifier:(id)a4;
@end

@implementation CSDCallDataSourceMap

- (CSDCallDataSourceMap)init
{
  v6.receiver = self;
  v6.super_class = CSDCallDataSourceMap;
  v2 = [(CSDCallDataSourceMap *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    dataSourceToIdentifierToCalls = v2->_dataSourceToIdentifierToCalls;
    v2->_dataSourceToIdentifierToCalls = v3;
  }

  return v2;
}

- (NSArray)dataSources
{
  v2 = [(CSDCallDataSourceMap *)self dataSourceToIdentifierToCalls];
  v3 = NSAllMapTableKeys(v2);

  return v3;
}

- (void)addCalls:(id)a3 forIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 dataSource];
        v14 = [(CSDCallDataSourceMap *)self dataSourceToIdentifierToCalls];
        v15 = [v14 objectForKey:v13];

        if (!v15)
        {
          v15 = +[NSMutableDictionary dictionary];
          v16 = [(CSDCallDataSourceMap *)self dataSourceToIdentifierToCalls];
          [v16 setObject:v15 forKey:v13];
        }

        v17 = [v15 objectForKeyedSubscript:v7];
        if (!v17)
        {
          v17 = +[NSMutableArray array];
          [v15 setObject:v17 forKeyedSubscript:v7];
        }

        [v17 addObject:v12];
      }

      v9 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }
}

- (id)callsForDataSource:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDCallDataSourceMap *)self dataSourceToIdentifierToCalls];
  v9 = [v8 objectForKey:v7];

  v10 = [v9 objectForKeyedSubscript:v6];

  if (v10)
  {
    v11 = [v10 copy];
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  return v11;
}

@end