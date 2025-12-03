@interface _NSAttributedStringAsyncReadReply
+ (id)readReplyWithConnection:(id)connection reply:(id)reply;
- (void)dealloc;
- (void)deliverAttributedString:(id)string documentAttributes:(id)attributes error:(id)error;
@end

@implementation _NSAttributedStringAsyncReadReply

+ (id)readReplyWithConnection:(id)connection reply:(id)reply
{
  v6 = objc_alloc_init(self);
  if (v6)
  {
    v6[2] = connection;
    v6[3] = [reply copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _NSAttributedStringAsyncReadReply;
  [(_NSAttributedStringAsyncReadReply *)&v3 dealloc];
}

- (void)deliverAttributedString:(id)string documentAttributes:(id)attributes error:(id)error
{
  if (!self->_delivered)
  {
    reply = [(_NSAttributedStringAsyncReadReply *)self reply];
    reply[2](reply, string, attributes, error);
    [(NSXPCConnection *)[(_NSAttributedStringAsyncReadReply *)self connection] invalidate];
    self->_delivered = 1;
  }
}

@end