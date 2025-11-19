@interface VUIEventDataSource
+ (VUIEventDataSource)eventDataSourceWithEventDict:(id)a3 appContext:(id)a4;
+ (id)_actionForKey:(id)a3 eventDict:(id)a4 appContext:(id)a5;
+ (id)attachPrefetchedDict:(id)a3 eventDict:(id)a4;
+ (id)selectEventDataSourceWithLibraryMediaEntity:(id)a3;
- (id)_initWithLibraryMediaEntity:(id)a3;
@end

@implementation VUIEventDataSource

+ (VUIEventDataSource)eventDataSourceWithEventDict:(id)a3 appContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = [v5 vui_dictionaryForKey:@"documentDataSource"];
  v9 = [v7 _documentDataSourceWithDict:v8];

  v10 = [objc_opt_class() _actionForKey:@"actionDataSource" eventDict:v5 appContext:v6];
  if (v9 | v10)
  {
    v11 = [objc_opt_class() _actionForKey:@"preActionDataSource" eventDict:v5 appContext:v6];
    v12 = objc_opt_class();
    v13 = [v5 vui_dictionaryForKey:@"preActionDocumentDataSource"];
    v14 = [v12 _documentDataSourceWithDict:v13];

    v15 = [objc_opt_class() _actionForKey:@"postActionDataSource" eventDict:v5 appContext:v6];
    v16 = objc_opt_class();
    v17 = [v5 vui_dictionaryForKey:@"postActionDocumentDataSource"];
    v18 = [v16 _documentDataSourceWithDict:v17];

    v19 = objc_opt_new();
    [v19 setPreActionDocumentDataSource:v14];
    [v19 setPreAction:v11];
    [v19 setDocumentDataSource:v9];
    [v19 setAction:v10];
    [v19 setPostActionDocumentDataSource:v18];
    [v19 setPostAction:v15];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)attachPrefetchedDict:(id)a3 eventDict:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 mutableCopy];
  v8 = [v5 vui_dictionaryForKey:@"documentDataSource"];

  v9 = [v8 mutableCopy];
  [v9 setValue:v6 forKey:@"prefetchedData"];

  [v7 setValue:v9 forKey:@"documentDataSource"];
  v10 = [v7 copy];

  return v10;
}

+ (id)_actionForKey:(id)a3 eventDict:(id)a4 appContext:(id)a5
{
  v7 = a5;
  v8 = [a4 vui_dictionaryForKey:a3];
  if (v8)
  {
    v9 = [VUIAction actionWithDictionary:v8 appContext:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_initWithLibraryMediaEntity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VUIEventDataSource;
  v6 = [(VUIEventDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaEntity, a3);
  }

  return v7;
}

+ (id)selectEventDataSourceWithLibraryMediaEntity:(id)a3
{
  v3 = a3;
  v4 = [[VUIEventDataSource alloc] _initWithLibraryMediaEntity:v3];

  return v4;
}

@end