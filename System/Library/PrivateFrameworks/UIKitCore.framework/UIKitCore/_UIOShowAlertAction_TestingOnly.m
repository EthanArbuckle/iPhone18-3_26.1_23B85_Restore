@interface _UIOShowAlertAction_TestingOnly
- (NSString)message;
- (NSString)title;
- (_UIOShowAlertAction_TestingOnly)initWithTitle:(id)a3 message:(id)a4;
- (void)performActionFromConnection:(id)a3;
@end

@implementation _UIOShowAlertAction_TestingOnly

- (_UIOShowAlertAction_TestingOnly)initWithTitle:(id)a3 message:(id)a4
{
  v6 = MEMORY[0x1E698E700];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setObject:v8 forSetting:0];

  [v9 setObject:v7 forSetting:1];
  v12.receiver = self;
  v12.super_class = _UIOShowAlertAction_TestingOnly;
  v10 = [(_UIOServerAction *)&v12 initWithOriginContext:0 info:v9 responder:0];

  return v10;
}

- (NSString)title
{
  v2 = [(_UIOShowAlertAction_TestingOnly *)self info];
  v3 = [v2 objectForSetting:0];

  return v3;
}

- (NSString)message
{
  v2 = [(_UIOShowAlertAction_TestingOnly *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (void)performActionFromConnection:(id)a3
{
  v4 = [a3 server];
  v5 = [v4 displayDelegateForAction:self];

  v6 = [v5 rootViewController];
  v7 = [(_UIOShowAlertAction_TestingOnly *)self title];
  v8 = [(_UIOShowAlertAction_TestingOnly *)self message];
  v9 = [UIAlertController alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63___UIOShowAlertAction_TestingOnly_performActionFromConnection___block_invoke;
  v12[3] = &unk_1E70F59B0;
  v13 = v9;
  v10 = v9;
  v11 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:v12];
  [v10 addAction:v11];

  [v6 presentViewController:v10 animated:1 completion:0];
}

@end