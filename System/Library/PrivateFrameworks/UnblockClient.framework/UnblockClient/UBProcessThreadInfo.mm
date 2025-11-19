@interface UBProcessThreadInfo
- (UBProcessThreadInfo)initWithCoder:(id)a3;
- (UBProcessThreadInfo)initWithProcess:(id)a3 thread:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UBProcessThreadInfo

- (void)encodeWithCoder:(id)a3
{
  process = self->_process;
  v5 = a3;
  [v5 encodeObject:process forKey:@"_process"];
  [v5 encodeObject:self->_thread forKey:@"_thread"];
}

- (UBProcessThreadInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UBProcessThreadInfo;
  v5 = [(UBProcessThreadInfo *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_process"];
    process = v5->_process;
    v5->_process = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_thread"];
    thread = v5->_thread;
    v5->_thread = v8;

    v10 = v5;
  }

  return v5;
}

- (UBProcessThreadInfo)initWithProcess:(id)a3 thread:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = UBProcessThreadInfo;
  v9 = [(UBProcessThreadInfo *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_process, a3);
    objc_storeStrong(&v10->_thread, a4);
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