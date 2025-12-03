@interface RBSXPCMessageReply
- (void)_initWithMessage:(void *)message;
- (void)prepareForHandoff;
- (void)send;
@end

@implementation RBSXPCMessageReply

- (void)prepareForHandoff
{
  if (!self->_sent)
  {
    [(RBSXPCMessageContext *)self->_context _set];
  }
}

- (void)send
{
  sent = self->_sent;
  p_sent = &self->_sent;
  if (!sent)
  {
    [(RBSXPCMessageReply *)p_sent send];
  }
}

- (void)_initWithMessage:(void *)message
{
  v3 = a2;
  v4 = v3;
  if (message)
  {
    if (!v3 || MEMORY[0x193AD5A20](v3) != MEMORY[0x1E69E9E80])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithMessage_ object:message file:@"RBSXPCUtilities.m" lineNumber:110 description:@"reply is not a dictionary"];
    }

    message = [message init];
    if (message)
    {
      v6 = [[RBSXPCMessageContext alloc] _initWithHandoffToken:v4];
      v7 = message[2];
      message[2] = v6;

      v8 = [RBSXPCCoder coderWithMessage:v4];
      v9 = message[1];
      message[1] = v8;
    }
  }

  return message;
}

@end