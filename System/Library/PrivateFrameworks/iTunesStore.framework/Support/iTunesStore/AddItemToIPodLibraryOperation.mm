@interface AddItemToIPodLibraryOperation
- (AddItemToIPodLibraryOperation)initWithIPodLibraryItem:(id)item;
- (IPodLibraryItem)IPodLibraryItem;
- (NSNumber)insertedItemPersistentIdentifier;
- (id)_libraryItem;
- (void)_setInsertedItemPersistentIdentifier:(int64_t)identifier;
- (void)dealloc;
- (void)run;
@end

@implementation AddItemToIPodLibraryOperation

- (AddItemToIPodLibraryOperation)initWithIPodLibraryItem:(id)item
{
  v6.receiver = self;
  v6.super_class = AddItemToIPodLibraryOperation;
  v4 = [(AddItemToIPodLibraryOperation *)&v6 init];
  if (v4)
  {
    v4->_libraryItem = [item copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AddItemToIPodLibraryOperation;
  [(AddItemToIPodLibraryOperation *)&v3 dealloc];
}

- (IPodLibraryItem)IPodLibraryItem
{
  [(AddItemToIPodLibraryOperation *)self lock];
  v3 = [(IPodLibraryItem *)self->_libraryItem copy];
  [(AddItemToIPodLibraryOperation *)self unlock];
  return v3;
}

- (NSNumber)insertedItemPersistentIdentifier
{
  [(AddItemToIPodLibraryOperation *)self lock];
  v3 = self->_insertedItemPersistentIdentifier;
  [(AddItemToIPodLibraryOperation *)self unlock];
  return v3;
}

- (void)run
{
  v13 = 0;
  _libraryItem = [(AddItemToIPodLibraryOperation *)self _libraryItem];
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_INFO))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v14 = 138412546;
    v15 = objc_opt_class();
    v16 = 2112;
    itemMediaPath = [_libraryItem itemMediaPath];
    LODWORD(v12) = 22;
    v11 = &v14;
    v7 = _os_log_send_and_compose_impl();
    if (v7)
    {
      v8 = v7;
      v9 = [NSString stringWithCString:v7 encoding:4, &v14, v12];
      free(v8);
      v11 = v9;
      SSFileLog();
    }
  }

  deviceIPodLibrary = [+[IPodLibrary deviceIPodLibrary](IPodLibrary deviceIPodLibrary];
  [(AddItemToIPodLibraryOperation *)self _setInsertedItemPersistentIdentifier:deviceIPodLibrary];
  [(AddItemToIPodLibraryOperation *)self setError:v13];
  [(AddItemToIPodLibraryOperation *)self setSuccess:deviceIPodLibrary != 0];
}

- (id)_libraryItem
{
  [(AddItemToIPodLibraryOperation *)self lock];
  v3 = self->_libraryItem;
  [(AddItemToIPodLibraryOperation *)self unlock];
  return v3;
}

- (void)_setInsertedItemPersistentIdentifier:(int64_t)identifier
{
  [(AddItemToIPodLibraryOperation *)self lock];

  self->_insertedItemPersistentIdentifier = [[NSNumber alloc] initWithLongLong:identifier];

  [(AddItemToIPodLibraryOperation *)self unlock];
}

@end