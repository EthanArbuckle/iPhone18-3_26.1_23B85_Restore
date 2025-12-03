@interface _PXDiagnosticsNotificationReplyHandle
- (_PXDiagnosticsNotificationReplyHandle)initWithIDNumber:(int64_t)number replyBlock:(id)block;
- (void)replyWithInfo:(id)info;
@end

@implementation _PXDiagnosticsNotificationReplyHandle

- (void)replyWithInfo:(id)info
{
  infoCopy = info;
  replyBlock = [(_PXDiagnosticsNotificationReplyHandle *)self replyBlock];
  replyBlock[2](replyBlock, [(_PXDiagnosticsNotificationReplyHandle *)self idNumber], infoCopy);
}

- (_PXDiagnosticsNotificationReplyHandle)initWithIDNumber:(int64_t)number replyBlock:(id)block
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = _PXDiagnosticsNotificationReplyHandle;
  v7 = [(_PXDiagnosticsNotificationReplyHandle *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_idNumber = number;
    v9 = [blockCopy copy];
    replyBlock = v8->_replyBlock;
    v8->_replyBlock = v9;
  }

  return v8;
}

@end