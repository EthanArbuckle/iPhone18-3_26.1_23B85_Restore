@interface RBSXPCMessageReply
- (void)_initWithMessage:(void *)a1;
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

- (void)_initWithMessage:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3 || MEMORY[0x193AD5A20](v3) != MEMORY[0x1E69E9E80])
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:sel__initWithMessage_ object:a1 file:@"RBSXPCUtilities.m" lineNumber:110 description:@"reply is not a dictionary"];
    }

    a1 = [a1 init];
    if (a1)
    {
      v6 = [[RBSXPCMessageContext alloc] _initWithHandoffToken:v4];
      v7 = a1[2];
      a1[2] = v6;

      v8 = [RBSXPCCoder coderWithMessage:v4];
      v9 = a1[1];
      a1[1] = v8;
    }
  }

  return a1;
}

@end