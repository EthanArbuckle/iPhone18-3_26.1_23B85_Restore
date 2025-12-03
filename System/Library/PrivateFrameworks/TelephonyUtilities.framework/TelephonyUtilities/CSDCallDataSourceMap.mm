@interface CSDCallDataSourceMap
- (CSDCallDataSourceMap)init;
- (NSArray)dataSources;
- (id)callsForDataSource:(id)source identifier:(id)identifier;
- (void)addCalls:(id)calls forIdentifier:(id)identifier;
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
  dataSourceToIdentifierToCalls = [(CSDCallDataSourceMap *)self dataSourceToIdentifierToCalls];
  v3 = NSAllMapTableKeys(dataSourceToIdentifierToCalls);

  return v3;
}

- (void)addCalls:(id)calls forIdentifier:(id)identifier
{
  callsCopy = calls;
  identifierCopy = identifier;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [callsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(callsCopy);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        dataSource = [v12 dataSource];
        dataSourceToIdentifierToCalls = [(CSDCallDataSourceMap *)self dataSourceToIdentifierToCalls];
        v15 = [dataSourceToIdentifierToCalls objectForKey:dataSource];

        if (!v15)
        {
          v15 = +[NSMutableDictionary dictionary];
          dataSourceToIdentifierToCalls2 = [(CSDCallDataSourceMap *)self dataSourceToIdentifierToCalls];
          [dataSourceToIdentifierToCalls2 setObject:v15 forKey:dataSource];
        }

        v17 = [v15 objectForKeyedSubscript:identifierCopy];
        if (!v17)
        {
          v17 = +[NSMutableArray array];
          [v15 setObject:v17 forKeyedSubscript:identifierCopy];
        }

        [v17 addObject:v12];
      }

      v9 = [callsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }
}

- (id)callsForDataSource:(id)source identifier:(id)identifier
{
  identifierCopy = identifier;
  sourceCopy = source;
  dataSourceToIdentifierToCalls = [(CSDCallDataSourceMap *)self dataSourceToIdentifierToCalls];
  v9 = [dataSourceToIdentifierToCalls objectForKey:sourceCopy];

  v10 = [v9 objectForKeyedSubscript:identifierCopy];

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