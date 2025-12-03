@interface PRSFTETask
- (PRSFTETask)initWithReply:(id)reply;
@end

@implementation PRSFTETask

- (PRSFTETask)initWithReply:(id)reply
{
  replyCopy = reply;
  v9.receiver = self;
  v9.super_class = PRSFTETask;
  v5 = [(PRSFTETask *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(replyCopy);
    reply = v5->_reply;
    v5->_reply = v6;
  }

  return v5;
}

@end