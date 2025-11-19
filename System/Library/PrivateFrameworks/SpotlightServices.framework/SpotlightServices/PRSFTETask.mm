@interface PRSFTETask
- (PRSFTETask)initWithReply:(id)a3;
@end

@implementation PRSFTETask

- (PRSFTETask)initWithReply:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PRSFTETask;
  v5 = [(PRSFTETask *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    reply = v5->_reply;
    v5->_reply = v6;
  }

  return v5;
}

@end