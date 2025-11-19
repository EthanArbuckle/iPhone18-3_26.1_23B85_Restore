@interface CSConnectionMessage
- (BOOL)isReply;
- (CSConnectionMessage)initWithConnectionMessage:(shared_ptr<CLConnectionMessage>)a3;
- (NSSecureCoding)payloadObject;
- (NSString)name;
- (id).cxx_construct;
- (shared_ptr<CLConnectionMessage>)message;
- (void)sendReply:(id)a3;
@end

@implementation CSConnectionMessage

- (CSConnectionMessage)initWithConnectionMessage:(shared_ptr<CLConnectionMessage>)a3
{
  ptr = a3.__ptr_;
  v10.receiver = self;
  v10.super_class = CSConnectionMessage;
  v4 = [(CSConnectionMessage *)&v10 init:a3.__ptr_];
  v5 = v4;
  if (v4)
  {
    v7 = *ptr;
    v6 = *(ptr + 1);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v4->_message.__cntrl_;
    v5->_message.__ptr_ = v7;
    v5->_message.__cntrl_ = v6;
    if (cntrl)
    {
      sub_100009A48(cntrl);
    }
  }

  return v5;
}

- (NSString)name
{
  [(CSConnectionMessage *)self message];
  v3 = v7;
  if (v8)
  {
    sub_100009A48(v8);
  }

  if (v7)
  {
    [(CSConnectionMessage *)self message];
    v4 = CLConnectionMessage::name(v7);
    v5 = *(v4 + 23) >= 0 ? v4 : *v4;
    v3 = [NSString stringWithUTF8String:v5];
    if (v8)
    {
      sub_100009A48(v8);
    }
  }

  return v3;
}

- (BOOL)isReply
{
  [(CSConnectionMessage *)self message];
  if (v6)
  {
    sub_100009A48(v6);
  }

  if (!v5)
  {
    return 0;
  }

  [(CSConnectionMessage *)self message];
  isReply = CLConnectionMessage::isReply(v5);
  if (v6)
  {
    sub_100009A48(v6);
  }

  return isReply;
}

- (NSSecureCoding)payloadObject
{
  [(CSConnectionMessage *)self message];
  if (v6)
  {
    sub_100009A48(v6);
  }

  if (v5)
  {
    [(CSConnectionMessage *)self message];
    v3 = CLConnectionMessage::getDictionary(v5);
    if (v6)
    {
      sub_100009A48(v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)sendReply:(id)a3
{
  v4 = a3;
  [(CSConnectionMessage *)self message];
  if (v6)
  {
    sub_100009A48(v6);
  }

  if (v5)
  {
    [(CSConnectionMessage *)self message];
    CLConnectionMessage::sendReply();
    if (v6)
    {
      sub_100009A48(v6);
    }
  }
}

- (shared_ptr<CLConnectionMessage>)message
{
  cntrl = self->_message.__cntrl_;
  *v2 = self->_message.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end