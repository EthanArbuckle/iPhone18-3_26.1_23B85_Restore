@interface ABSSerializer
- (ABSSerializer)initWithOptions:(id)a3;
- (id)changeFromData:(id)a3 ofType:(int64_t)a4;
- (id)dataFromChange:(id)a3;
@end

@implementation ABSSerializer

- (ABSSerializer)initWithOptions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ABSSerializer;
  v5 = [(ABSSerializer *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    options = v5->_options;
    v5->_options = v6;
  }

  return v5;
}

- (id)dataFromChange:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 createProtobufWithOptions:self->_options];
  if ([v6 length] > 0x500000)
  {
    v8 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_10003B57C(v8);
    }

    objc_autoreleasePoolPop(v5);
    v7 = 0;
  }

  else
  {
    objc_autoreleasePoolPop(v5);
    v7 = v6;
  }

  return v7;
}

- (id)changeFromData:(id)a3 ofType:(int64_t)a4
{
  v5 = a3;
  v6 = [[ABSSyContainer alloc] initWithData:v5];

  if (v6)
  {
    [(ABSSyContainer *)v6 setChangeType:a4];
    v7 = v6;
  }

  else
  {
    v8 = *(qword_100071D00 + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_10003B5C0(v8);
    }

    v7 = +[SYDegenerateChange degenerateChange];
  }

  v9 = v7;

  return v9;
}

@end