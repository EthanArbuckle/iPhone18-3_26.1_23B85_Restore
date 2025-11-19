@interface PPRecordLoadingDelegate
- (PPRecordLoadingDelegate)initWithName:(id)a3;
- (id)description;
- (unsigned)recentRecordLoadingHandler:(id)a3;
- (unsigned)recordLoadingHandler:(id)a3;
@end

@implementation PPRecordLoadingDelegate

- (unsigned)recentRecordLoadingHandler:(id)a3
{
  v3 = a3;
  __break(1u);
  return v3;
}

- (unsigned)recordLoadingHandler:(id)a3
{
  v3 = a3;
  __break(1u);
  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ '%@'>", v5, self->_name];

  return v6;
}

- (PPRecordLoadingDelegate)initWithName:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PPRecordLoadingDelegate.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"name != nil"}];
  }

  if (![v6 length])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PPRecordLoadingDelegate.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"name.length > 0"}];
  }

  v12.receiver = self;
  v12.super_class = PPRecordLoadingDelegate;
  v7 = [(PPRecordLoadingDelegate *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_name, a3);
  }

  return v8;
}

@end