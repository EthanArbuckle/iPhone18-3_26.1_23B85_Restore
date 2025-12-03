@interface VUIEventDataSource
+ (VUIEventDataSource)eventDataSourceWithEventDict:(id)dict appContext:(id)context;
+ (id)_actionForKey:(id)key eventDict:(id)dict appContext:(id)context;
+ (id)attachPrefetchedDict:(id)dict eventDict:(id)eventDict;
+ (id)selectEventDataSourceWithLibraryMediaEntity:(id)entity;
- (id)_initWithLibraryMediaEntity:(id)entity;
@end

@implementation VUIEventDataSource

+ (VUIEventDataSource)eventDataSourceWithEventDict:(id)dict appContext:(id)context
{
  dictCopy = dict;
  contextCopy = context;
  v7 = objc_opt_class();
  v8 = [dictCopy vui_dictionaryForKey:@"documentDataSource"];
  v9 = [v7 _documentDataSourceWithDict:v8];

  v10 = [objc_opt_class() _actionForKey:@"actionDataSource" eventDict:dictCopy appContext:contextCopy];
  if (v9 | v10)
  {
    v11 = [objc_opt_class() _actionForKey:@"preActionDataSource" eventDict:dictCopy appContext:contextCopy];
    v12 = objc_opt_class();
    v13 = [dictCopy vui_dictionaryForKey:@"preActionDocumentDataSource"];
    v14 = [v12 _documentDataSourceWithDict:v13];

    v15 = [objc_opt_class() _actionForKey:@"postActionDataSource" eventDict:dictCopy appContext:contextCopy];
    v16 = objc_opt_class();
    v17 = [dictCopy vui_dictionaryForKey:@"postActionDocumentDataSource"];
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

+ (id)attachPrefetchedDict:(id)dict eventDict:(id)eventDict
{
  eventDictCopy = eventDict;
  dictCopy = dict;
  v7 = [eventDictCopy mutableCopy];
  v8 = [eventDictCopy vui_dictionaryForKey:@"documentDataSource"];

  v9 = [v8 mutableCopy];
  [v9 setValue:dictCopy forKey:@"prefetchedData"];

  [v7 setValue:v9 forKey:@"documentDataSource"];
  v10 = [v7 copy];

  return v10;
}

+ (id)_actionForKey:(id)key eventDict:(id)dict appContext:(id)context
{
  contextCopy = context;
  v8 = [dict vui_dictionaryForKey:key];
  if (v8)
  {
    v9 = [VUIAction actionWithDictionary:v8 appContext:contextCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_initWithLibraryMediaEntity:(id)entity
{
  entityCopy = entity;
  v9.receiver = self;
  v9.super_class = VUIEventDataSource;
  v6 = [(VUIEventDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaEntity, entity);
  }

  return v7;
}

+ (id)selectEventDataSourceWithLibraryMediaEntity:(id)entity
{
  entityCopy = entity;
  v4 = [[VUIEventDataSource alloc] _initWithLibraryMediaEntity:entityCopy];

  return v4;
}

@end