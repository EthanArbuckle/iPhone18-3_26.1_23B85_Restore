@interface _PXDiagnosticsNotificationReplyHandle
- (_PXDiagnosticsNotificationReplyHandle)initWithIDNumber:(int64_t)a3 replyBlock:(id)a4;
- (void)replyWithInfo:(id)a3;
@end

@implementation _PXDiagnosticsNotificationReplyHandle

- (void)replyWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(_PXDiagnosticsNotificationReplyHandle *)self replyBlock];
  v5[2](v5, [(_PXDiagnosticsNotificationReplyHandle *)self idNumber], v4);
}

- (_PXDiagnosticsNotificationReplyHandle)initWithIDNumber:(int64_t)a3 replyBlock:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = _PXDiagnosticsNotificationReplyHandle;
  v7 = [(_PXDiagnosticsNotificationReplyHandle *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_idNumber = a3;
    v9 = [v6 copy];
    replyBlock = v8->_replyBlock;
    v8->_replyBlock = v9;
  }

  return v8;
}

@end