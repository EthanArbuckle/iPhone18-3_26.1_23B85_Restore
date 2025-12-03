@interface NS_data_block
- (id)initType:(int64_t)type data:(id)data;
- (void)dealloc;
@end

@implementation NS_data_block

- (id)initType:(int64_t)type data:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = NS_data_block;
  v8 = [(NS_data_block *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->type = type;
    objc_storeStrong(&v8->data, data);
  }

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NS_data_block;
  [(NS_data_block *)&v2 dealloc];
}

@end