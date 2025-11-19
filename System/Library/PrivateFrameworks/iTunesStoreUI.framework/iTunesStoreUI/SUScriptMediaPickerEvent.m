@interface SUScriptMediaPickerEvent
+ (id)webScriptNameForKeyName:(id)a3;
+ (void)initialize;
- (SUScriptMediaItemCollection)collection;
- (SUScriptMediaPickerEvent)initWithCollection:(id)a3;
- (id)scriptAttributeKeys;
- (void)dealloc;
@end

@implementation SUScriptMediaPickerEvent

- (SUScriptMediaPickerEvent)initWithCollection:(id)a3
{
  v4 = [(SUScriptObject *)self init];
  v5 = v4;
  if (a3 && v4)
  {
    v6 = a3;
    v5->_collection = v6;
    [(SUScriptObject *)v5 checkInScriptObject:v6];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptMediaPickerEvent;
  [(SUScriptObject *)&v3 dealloc];
}

- (SUScriptMediaItemCollection)collection
{
  collection = self->_collection;
  if (collection)
  {
    v4 = collection;

    return v4;
  }

  else
  {
    v6 = MEMORY[0x1E695DFB0];

    return [v6 null];
  }
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_39 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptMediaPickerEvent;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptMediaPickerEvent;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_39 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __KeyMapping_39 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"collection", 0}];
  }
}

@end