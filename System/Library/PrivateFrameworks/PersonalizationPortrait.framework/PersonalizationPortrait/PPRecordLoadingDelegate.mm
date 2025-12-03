@interface PPRecordLoadingDelegate
- (PPRecordLoadingDelegate)initWithName:(id)name;
- (id)description;
- (unsigned)recentRecordLoadingHandler:(id)handler;
- (unsigned)recordLoadingHandler:(id)handler;
@end

@implementation PPRecordLoadingDelegate

- (unsigned)recentRecordLoadingHandler:(id)handler
{
  handlerCopy = handler;
  __break(1u);
  return handlerCopy;
}

- (unsigned)recordLoadingHandler:(id)handler
{
  handlerCopy = handler;
  __break(1u);
  return handlerCopy;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ '%@'>", v5, self->_name];

  return v6;
}

- (PPRecordLoadingDelegate)initWithName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPRecordLoadingDelegate.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"name != nil"}];
  }

  if (![nameCopy length])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPRecordLoadingDelegate.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"name.length > 0"}];
  }

  v12.receiver = self;
  v12.super_class = PPRecordLoadingDelegate;
  v7 = [(PPRecordLoadingDelegate *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_name, name);
  }

  return v8;
}

@end