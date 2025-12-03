@interface UBProcessThreadInfo
- (UBProcessThreadInfo)initWithCoder:(id)coder;
- (UBProcessThreadInfo)initWithProcess:(id)process thread:(id)thread;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UBProcessThreadInfo

- (void)encodeWithCoder:(id)coder
{
  process = self->_process;
  coderCopy = coder;
  [coderCopy encodeObject:process forKey:@"_process"];
  [coderCopy encodeObject:self->_thread forKey:@"_thread"];
}

- (UBProcessThreadInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = UBProcessThreadInfo;
  v5 = [(UBProcessThreadInfo *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_process"];
    process = v5->_process;
    v5->_process = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_thread"];
    thread = v5->_thread;
    v5->_thread = v8;

    v10 = v5;
  }

  return v5;
}

- (UBProcessThreadInfo)initWithProcess:(id)process thread:(id)thread
{
  processCopy = process;
  threadCopy = thread;
  v13.receiver = self;
  v13.super_class = UBProcessThreadInfo;
  v9 = [(UBProcessThreadInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_process, process);
    objc_storeStrong(&v10->_thread, thread);
    v11 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(UBProcessInfo *)self->_process description];
  v5 = [(UBThreadInfo *)self->_thread description];
  v6 = [v3 initWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end