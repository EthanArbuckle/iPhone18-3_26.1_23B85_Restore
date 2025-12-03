@interface ClockSessionRefCounter
- (ClockSessionRefCounter)initWithSession:(id)session;
- (unint64_t)getRefTotal;
@end

@implementation ClockSessionRefCounter

- (ClockSessionRefCounter)initWithSession:(id)session
{
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = ClockSessionRefCounter;
  v6 = [(ClockSessionRefCounter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
    v8 = +[NSMutableDictionary dictionary];
    refCntsByPid = v7->_refCntsByPid;
    v7->_refCntsByPid = v8;
  }

  return v7;
}

- (unint64_t)getRefTotal
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_refCntsByPid;
  v3 = 0;
  v4 = [(NSMutableDictionary *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v3 += [*(*(&v8 + 1) + 8 * v6) longValue];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableDictionary *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v3;
}

@end