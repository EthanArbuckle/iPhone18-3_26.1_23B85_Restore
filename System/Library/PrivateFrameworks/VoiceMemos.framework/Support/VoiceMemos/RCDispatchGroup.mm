@interface RCDispatchGroup
- (RCDispatchGroup)initWithEnterCount:(int)a3 completionQueue:(id)a4 completion:(id)a5;
@end

@implementation RCDispatchGroup

- (RCDispatchGroup)initWithEnterCount:(int)a3 completionQueue:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = RCDispatchGroup;
  v10 = [(RCDispatchGroup *)&v14 init];
  if (v10)
  {
    v11 = dispatch_group_create();
    v12 = *(v10 + 1);
    *(v10 + 1) = v11;

    if (a3 >= 1)
    {
      do
      {
        dispatch_group_enter(*(v10 + 1));
        --a3;
      }

      while (a3);
    }

    dispatch_group_notify(*(v10 + 1), v8, v9);
  }

  return v10;
}

@end