@interface NoServerHandler
- (NoServerHandler)initWithHandler:(id)handler;
- (void)call;
@end

@implementation NoServerHandler

- (NoServerHandler)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = NoServerHandler;
  v5 = [(NoServerHandler *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x1B2745320](handlerCopy);
    handler = v5->_handler;
    v5->_handler = v6;
  }

  return v5;
}

- (void)call
{
  v5 = MEMORY[0x1B2745320](self->_handler, a2);
  handler = self->_handler;
  self->_handler = 0;

  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v4 = v5;
  }
}

@end