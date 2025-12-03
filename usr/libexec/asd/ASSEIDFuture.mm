@interface ASSEIDFuture
- (ASSEIDFuture)init;
- (ASSEIDFuture)initWithSeid:(id)seid hostChallenge:(id)challenge challengeResponse:(id)response;
- (void)ILEFYKTi2wz6Hf5l:(id)hf5l;
- (void)completeWithSeid:(id)seid hostChallenge:(id)challenge challengeResponse:(id)response;
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

- (ASSEIDFuture)initWithSeid:(id)seid hostChallenge:(id)challenge challengeResponse:(id)response
{
  seidCopy = seid;
  challengeCopy = challenge;
  responseCopy = response;
  v12 = [(ASSEIDFuture *)self init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_seid, seid);
    objc_storeStrong(&v13->_hostChallenge, challenge);
    objc_storeStrong(&v13->_challengeResponse, response);
    v13->_isComplete = 1;
  }

  return v13;
}

- (void)completeWithSeid:(id)seid hostChallenge:(id)challenge challengeResponse:(id)response
{
  seidCopy = seid;
  challengeCopy = challenge;
  responseCopy = response;
  lock = [(ASSEIDFuture *)self lock];
  [lock lock];

  [(ASSEIDFuture *)self setSeid:seidCopy];
  [(ASSEIDFuture *)self setHostChallenge:challengeCopy];
  [(ASSEIDFuture *)self setChallengeResponse:responseCopy];
  [(ASSEIDFuture *)self setIsComplete:1];
  completion = [(ASSEIDFuture *)self completion];
  [(ASSEIDFuture *)self setCompletion:0];
  lock2 = [(ASSEIDFuture *)self lock];
  [lock2 unlock];

  if (completion)
  {
    (completion)[2](completion, seidCopy, challengeCopy, responseCopy);
  }
}

- (void)ILEFYKTi2wz6Hf5l:(id)hf5l
{
  hf5lCopy = hf5l;
  lock = [(ASSEIDFuture *)self lock];
  [lock lock];

  completion = [(ASSEIDFuture *)self completion];

  if (completion)
  {
    v7 = qword_1006DF770;
    if (os_log_type_enabled(qword_1006DF770, OS_LOG_TYPE_FAULT))
    {
      sub_100593428(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  if ([(ASSEIDFuture *)self isComplete])
  {
    seid = [(ASSEIDFuture *)self seid];
    hostChallenge = [(ASSEIDFuture *)self hostChallenge];
    challengeResponse = [(ASSEIDFuture *)self challengeResponse];
    lock2 = [(ASSEIDFuture *)self lock];
    [lock2 unlock];

    hf5lCopy[2](hf5lCopy, seid, hostChallenge, challengeResponse);
  }

  else
  {
    [(ASSEIDFuture *)self setCompletion:hf5lCopy];
    seid = [(ASSEIDFuture *)self lock];
    [seid unlock];
  }
}

@end