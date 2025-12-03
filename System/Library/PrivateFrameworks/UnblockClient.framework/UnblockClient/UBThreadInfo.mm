@interface UBThreadInfo
- (UBThreadInfo)initWithCoder:(id)coder;
- (UBThreadInfo)initWithTid:(unint64_t)tid threadName:(id)name dqid:(unint64_t)dqid dqLabel:(id)label;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UBThreadInfo

- (void)encodeWithCoder:(id)coder
{
  tid = self->_tid;
  coderCopy = coder;
  [coderCopy encodeInt64:tid forKey:@"_tid"];
  [coderCopy encodeObject:self->_threadName forKey:@"_threadName"];
  [coderCopy encodeInt64:self->_dqid forKey:@"_dqid"];
  [coderCopy encodeObject:self->_dqLabel forKey:@"_dqLabel"];
}

- (UBThreadInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = UBThreadInfo;
  v5 = [(UBThreadInfo *)&v12 init];
  if (v5)
  {
    v5->_tid = [coderCopy decodeInt64ForKey:@"_tid"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_threadName"];
    threadName = v5->_threadName;
    v5->_threadName = v6;

    v5->_dqid = [coderCopy decodeInt64ForKey:@"_dqid"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dqLabel"];
    dqLabel = v5->_dqLabel;
    v5->_dqLabel = v8;

    v10 = v5;
  }

  return v5;
}

- (UBThreadInfo)initWithTid:(unint64_t)tid threadName:(id)name dqid:(unint64_t)dqid dqLabel:(id)label
{
  nameCopy = name;
  labelCopy = label;
  v17.receiver = self;
  v17.super_class = UBThreadInfo;
  v13 = [(UBThreadInfo *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_tid = tid;
    objc_storeStrong(&v13->_threadName, name);
    v14->_dqid = dqid;
    objc_storeStrong(&v14->_dqLabel, label);
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