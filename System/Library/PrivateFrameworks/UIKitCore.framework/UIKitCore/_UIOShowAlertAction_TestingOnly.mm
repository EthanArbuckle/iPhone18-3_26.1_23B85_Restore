@interface _UIOShowAlertAction_TestingOnly
- (NSString)message;
- (NSString)title;
- (_UIOShowAlertAction_TestingOnly)initWithTitle:(id)title message:(id)message;
- (void)performActionFromConnection:(id)connection;
@end

@implementation _UIOShowAlertAction_TestingOnly

- (_UIOShowAlertAction_TestingOnly)initWithTitle:(id)title message:(id)message
{
  v6 = MEMORY[0x1E698E700];
  messageCopy = message;
  titleCopy = title;
  v9 = objc_alloc_init(v6);
  [v9 setObject:titleCopy forSetting:0];

  [v9 setObject:messageCopy forSetting:1];
  v12.receiver = self;
  v12.super_class = _UIOShowAlertAction_TestingOnly;
  v10 = [(_UIOServerAction *)&v12 initWithOriginContext:0 info:v9 responder:0];

  return v10;
}

- (NSString)title
{
  info = [(_UIOShowAlertAction_TestingOnly *)self info];
  v3 = [info objectForSetting:0];

  return v3;
}

- (NSString)message
{
  info = [(_UIOShowAlertAction_TestingOnly *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (void)performActionFromConnection:(id)connection
{
  server = [connection server];
  v5 = [server displayDelegateForAction:self];

  rootViewController = [v5 rootViewController];
  title = [(_UIOShowAlertAction_TestingOnly *)self title];
  message = [(_UIOShowAlertAction_TestingOnly *)self message];
  v9 = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:1];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63___UIOShowAlertAction_TestingOnly_performActionFromConnection___block_invoke;
  v12[3] = &unk_1E70F59B0;
  v13 = v9;
  v10 = v9;
  v11 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:v12];
  [v10 addAction:v11];

  [rootViewController presentViewController:v10 animated:1 completion:0];
}

@end