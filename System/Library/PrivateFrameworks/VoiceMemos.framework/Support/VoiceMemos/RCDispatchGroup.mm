@interface RCDispatchGroup
- (RCDispatchGroup)initWithEnterCount:(int)count completionQueue:(id)queue completion:(id)completion;
@end

@implementation RCDispatchGroup

- (RCDispatchGroup)initWithEnterCount:(int)count completionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = RCDispatchGroup;
  v10 = [(RCDispatchGroup *)&v14 init];
  if (v10)
  {
    v11 = dispatch_group_create();
    v12 = *(v10 + 1);
    *(v10 + 1) = v11;

    if (count >= 1)
    {
      do
      {
        dispatch_group_enter(*(v10 + 1));
        --count;
      }

      while (count);
    }

    dispatch_group_notify(*(v10 + 1), queueCopy, completionCopy);
  }

  return v10;
}

@end