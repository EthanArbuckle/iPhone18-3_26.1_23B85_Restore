@interface SUScriptMediaPickerEvent
+ (id)webScriptNameForKeyName:(id)name;
+ (void)initialize;
- (SUScriptMediaItemCollection)collection;
- (SUScriptMediaPickerEvent)initWithCollection:(id)collection;
- (id)scriptAttributeKeys;
- (void)dealloc;
@end

@implementation SUScriptMediaPickerEvent

- (SUScriptMediaPickerEvent)initWithCollection:(id)collection
{
  v4 = [(SUScriptObject *)self init];
  v5 = v4;
  if (collection && v4)
  {
    collectionCopy = collection;
    v5->_collection = collectionCopy;
    [(SUScriptObject *)v5 checkInScriptObject:collectionCopy];
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

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_39 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptMediaPickerEvent;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptMediaPickerEvent;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_39 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __KeyMapping_39 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"collection", 0}];
  }
}

@end