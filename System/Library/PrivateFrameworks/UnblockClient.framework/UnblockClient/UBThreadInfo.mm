@interface UBThreadInfo
- (UBThreadInfo)initWithCoder:(id)a3;
- (UBThreadInfo)initWithTid:(unint64_t)a3 threadName:(id)a4 dqid:(unint64_t)a5 dqLabel:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UBThreadInfo

- (void)encodeWithCoder:(id)a3
{
  tid = self->_tid;
  v5 = a3;
  [v5 encodeInt64:tid forKey:@"_tid"];
  [v5 encodeObject:self->_threadName forKey:@"_threadName"];
  [v5 encodeInt64:self->_dqid forKey:@"_dqid"];
  [v5 encodeObject:self->_dqLabel forKey:@"_dqLabel"];
}

- (UBThreadInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UBThreadInfo;
  v5 = [(UBThreadInfo *)&v12 init];
  if (v5)
  {
    v5->_tid = [v4 decodeInt64ForKey:@"_tid"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_threadName"];
    threadName = v5->_threadName;
    v5->_threadName = v6;

    v5->_dqid = [v4 decodeInt64ForKey:@"_dqid"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dqLabel"];
    dqLabel = v5->_dqLabel;
    v5->_dqLabel = v8;

    v10 = v5;
  }

  return v5;
}

- (UBThreadInfo)initWithTid:(unint64_t)a3 threadName:(id)a4 dqid:(unint64_t)a5 dqLabel:(id)a6
{
  v11 = a4;
  v12 = a6;
  v17.receiver = self;
  v17.super_class = UBThreadInfo;
  v13 = [(UBThreadInfo *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_tid = a3;
    objc_storeStrong(&v13->_threadName, a4);
    v14->_dqid = a5;
    objc_storeStrong(&v14->_dqLabel, a6);
    v15 = v14;
  }

  return v14;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"thread %llu (%@) DispatchQueue %llu (%@)", self->_tid, self->_threadName, self->_dqid, self->_dqLabel];

  return v2;
}

@end