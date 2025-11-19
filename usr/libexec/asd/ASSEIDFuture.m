@interface ASSEIDFuture
- (ASSEIDFuture)init;
- (ASSEIDFuture)initWithSeid:(id)a3 hostChallenge:(id)a4 challengeResponse:(id)a5;
- (void)ILEFYKTi2wz6Hf5l:(id)a3;
- (void)completeWithSeid:(id)a3 hostChallenge:(id)a4 challengeResponse:(id)a5;
@end

@implementation ASSEIDFuture

- (ASSEIDFuture)init
{
  v6.receiver = self;
  v6.super_class = ASSEIDFuture;
  v2 = [(ASSEIDFuture *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    lock = v2->_lock;
    v2->_lock = v3;

    v2->_isComplete = 0;
  }

  return v2;
}

- (ASSEIDFuture)initWithSeid:(id)a3 hostChallenge:(id)a4 challengeResponse:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(ASSEIDFuture *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_seid, a3);
    objc_storeStrong(&v13->_hostChallenge, a4);
    objc_storeStrong(&v13->_challengeResponse, a5);
    v13->_isComplete = 1;
  }

  return v13;
}

- (void)completeWithSeid:(id)a3 hostChallenge:(id)a4 challengeResponse:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ASSEIDFuture *)self lock];
  [v10 lock];

  [(ASSEIDFuture *)self setSeid:v13];
  [(ASSEIDFuture *)self setHostChallenge:v8];
  [(ASSEIDFuture *)self setChallengeResponse:v9];
  [(ASSEIDFuture *)self setIsComplete:1];
  v11 = [(ASSEIDFuture *)self completion];
  [(ASSEIDFuture *)self setCompletion:0];
  v12 = [(ASSEIDFuture *)self lock];
  [v12 unlock];

  if (v11)
  {
    (v11)[2](v11, v13, v8, v9);
  }
}

- (void)ILEFYKTi2wz6Hf5l:(id)a3
{
  v4 = a3;
  v5 = [(ASSEIDFuture *)self lock];
  [v5 lock];

  v6 = [(ASSEIDFuture *)self completion];

  if (v6)
  {
    v7 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
    {
      sub_100593428(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if ([(ASSEIDFuture *)self isComplete])
  {
    v15 = [(ASSEIDFuture *)self seid];
    v16 = [(ASSEIDFuture *)self hostChallenge];
    v17 = [(ASSEIDFuture *)self challengeResponse];
    v18 = [(ASSEIDFuture *)self lock];
    [v18 unlock];

    v4[2](v4, v15, v16, v17);
  }

  else
  {
    [(ASSEIDFuture *)self setCompletion:v4];
    v15 = [(ASSEIDFuture *)self lock];
    [v15 unlock];
  }
}

@end