@interface TIDiagnosticHelper
+ (id)sharedInstance;
- (TIDiagnosticHelper)init;
- (void)dealloc;
- (void)handleMachMessage:(void *)message;
- (void)unregisterSignalHandler:(id)handler;
@end

@implementation TIDiagnosticHelper

+ (id)sharedInstance
{
  if (qword_100026550 != -1)
  {
    sub_10000D5A4();
  }

  v3 = qword_100026548;

  return v3;
}

- (TIDiagnosticHelper)init
{
  v9.receiver = self;
  v9.super_class = TIDiagnosticHelper;
  v2 = [(TIDiagnosticHelper *)&v9 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    handlers = v2->_handlers;
    v2->_handlers = v3;

    v5 = +[NSMachPort port];
    port = v2->_port;
    v2->_port = v5;

    dword_100026558 = [(NSMachPort *)v2->_port machPort];
    [(NSMachPort *)v2->_port setDelegate:v2];
    v7 = +[NSRunLoop mainRunLoop];
    [v7 addPort:v2->_port forMode:NSDefaultRunLoopMode];
  }

  return v2;
}

- (void)dealloc
{
  dword_100026558 = 0;
  v3 = +[NSRunLoop mainRunLoop];
  [v3 removePort:self->_port forMode:NSDefaultRunLoopMode];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allKeys = [(NSMutableDictionary *)self->_handlers allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        signal([*(*(&v10 + 1) + 8 * v8) intValue], 0);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = TIDiagnosticHelper;
  [(TIDiagnosticHelper *)&v9 dealloc];
}

- (void)handleMachMessage:(void *)message
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  handlers = self->_handlers;
  v5 = [NSNumber numberWithInt:*(message + 5), 0];
  v6 = [(NSMutableDictionary *)handlers objectForKey:v5];

  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(message + 5);
        (*(*(*(&v12 + 1) + 8 * v10) + 16))();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)unregisterSignalHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [handlerCopy objectAtIndex:0];
  v5 = [(NSMutableDictionary *)self->_handlers objectForKey:?];
  v6 = [handlerCopy objectAtIndex:1];

  [v5 removeObject:v6];
  if (![v5 count])
  {
    [(NSMutableDictionary *)self->_handlers removeObjectForKey:v7];
    signal([v7 intValue], 0);
  }
}

@end