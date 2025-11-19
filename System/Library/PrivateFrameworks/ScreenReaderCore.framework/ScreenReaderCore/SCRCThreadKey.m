@interface SCRCThreadKey
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (NSString)threadDescription;
- (SCRCThreadKey)init;
- (SCRCThreadKey)initWithDescription:(id)a3;
- (SCRCThreadKey)initWithObject:(id)a3;
- (id)_allCurrentThreadIDs;
- (id)_initWithThreadID:(unint64_t)a3 description:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation SCRCThreadKey

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v3 = _ThreadKeyLock;
  _ThreadKeyLock = v2;

  _ThreadIDs = CFArrayCreateMutable(0, 0, 0);
}

- (id)_initWithThreadID:(unint64_t)a3 description:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = SCRCThreadKey;
  v7 = [(SCRCThreadKey *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_threadID = a3;
    v9 = [v6 copy];
    threadDescription = v8->_threadDescription;
    v8->_threadDescription = v9;

    [_ThreadKeyLock lock];
    CFArrayAppendValue(_ThreadIDs, v8->_threadID);
    [_ThreadKeyLock unlock];
  }

  return v8;
}

- (SCRCThreadKey)init
{
  v5.receiver = self;
  v5.super_class = SCRCThreadKey;
  v2 = [(SCRCThreadKey *)&v5 init];
  if (v2)
  {
    [_ThreadKeyLock lock];
    v3 = 100000;
    while (1)
    {
      v6.length = CFArrayGetCount(_ThreadIDs);
      ++_LastThreadID;
      v6.location = 0;
      if (!CFArrayContainsValue(_ThreadIDs, v6, _LastThreadID))
      {
        break;
      }

      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    CFArrayAppendValue(_ThreadIDs, _LastThreadID);
    v2->_threadID = _LastThreadID;
LABEL_7:
    [_ThreadKeyLock unlock];
  }

  return v2;
}

- (SCRCThreadKey)initWithDescription:(id)a3
{
  v4 = a3;
  v5 = [(SCRCThreadKey *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    threadDescription = v5->_threadDescription;
    v5->_threadDescription = v6;
  }

  return v5;
}

- (SCRCThreadKey)initWithObject:(id)a3
{
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(SCRCThreadKey *)self initWithDescription:v5];

  return v6;
}

- (id)_allCurrentThreadIDs
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v2 appendString:@"{"];
  [_ThreadKeyLock lock];
  Count = CFArrayGetCount(_ThreadIDs);
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(_ThreadIDs, i);
      if (i)
      {
        [v2 appendString:{@", "}];
      }

      [v2 appendFormat:@"%lu", ValueAtIndex];
    }
  }

  [_ThreadKeyLock unlock];
  [v2 appendString:@"} "];

  return v2;
}

- (void)dealloc
{
  [_ThreadKeyLock lock];
  v5.length = CFArrayGetCount(_ThreadIDs);
  v5.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(_ThreadIDs, v5, self->_threadID);
  CFArrayRemoveValueAtIndex(_ThreadIDs, FirstIndexOfValue);
  [_ThreadKeyLock unlock];
  v4.receiver = self;
  v4.super_class = SCRCThreadKey;
  [(SCRCThreadKey *)&v4 dealloc];
}

- (NSString)threadDescription
{
  if (self->_threadDescription)
  {
    return self->_threadDescription;
  }

  else
  {
    return &stru_287632E30;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  threadID = self->_threadID;
  v7 = [(SCRCThreadKey *)self threadDescription];
  v8 = [v3 stringWithFormat:@"<%@: %p> ThreadKeyID:%lu  Description:%@", v5, self, threadID, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [v4 threadID], v5 == -[SCRCThreadKey threadID](self, "threadID")))
  {
    v6 = [(SCRCThreadKey *)self threadDescription];
    v7 = [v4 threadDescription];
    if (v6 | v7)
    {
      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SCRCThreadKey;
    v8 = [(SCRCThreadKey *)&v10 isEqual:v4];
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SCRCThreadKey alloc];
  threadID = self->_threadID;
  threadDescription = self->_threadDescription;

  return [(SCRCThreadKey *)v4 _initWithThreadID:threadID description:threadDescription];
}

@end