@interface SimpleSession
- (SimpleSession)initWithFlags:(unint64_t)a3;
- (SimpleSession)initWithSessionCore:(id)a3;
- (void)dealloc;
@end

@implementation SimpleSession

- (SimpleSession)initWithFlags:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = SimpleSession;
  v3 = [(SimpleSession *)&v7 init];
  v4 = session_create();
  session = v3->_session;
  v3->_session = v4;

  return v3;
}

- (SimpleSession)initWithSessionCore:(id)a3
{
  v8.receiver = self;
  v8.super_class = SimpleSession;
  v3 = a3;
  v4 = [(SimpleSession *)&v8 init];
  v5 = session_create_from_core(v3);

  session = v4->_session;
  v4->_session = v5;

  return v4;
}

- (void)dealloc
{
  session = self->_session;
  self->_session = 0;

  v4.receiver = self;
  v4.super_class = SimpleSession;
  [(SimpleSession *)&v4 dealloc];
}

@end