@interface RBSService
+ (BOOL)saveEndowment:(id)a3 forKey:(id)a4 withError:(id *)a5;
- (RBSService)init;
- (id)inheritances;
- (id)managedEndpointByLaunchIdentifier;
- (void)_init;
- (void)dealloc;
- (void)didLoseInheritances:(id)a3;
- (void)didReceiveInheritances:(id)a3;
@end

@implementation RBSService

- (void)_init
{
  if (!a1)
  {
    return 0;
  }

  v10.receiver = a1;
  v10.super_class = RBSService;
  v1 = objc_msgSendSuper2(&v10, sel_init);
  v2 = v1;
  if (v1)
  {
    *(v1 + 4) = 0;
    v3 = [MEMORY[0x1E695DFA8] set];
    v4 = v2[3];
    v2[3] = v3;

    v5 = +[RBSConnection sharedInstance];
    v6 = v2[4];
    v2[4] = v5;

    v7 = [RBSWorkloop createCalloutQueue:?];
    v8 = v2[5];
    v2[5] = v7;
  }

  return v2;
}

- (id)managedEndpointByLaunchIdentifier
{
  v2 = +[RBSConnection sharedInstance];
  v3 = [(RBSConnection *)v2 managedEndpointByLaunchIdentifier];

  return v3;
}

- (RBSService)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBSService.m" lineNumber:52 description:@"cannot call -init on RBSService"];

  return 0;
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBSService.m" lineNumber:68 description:@"RBSService must not dealloc"];

  v5.receiver = self;
  v5.super_class = RBSService;
  [(RBSService *)&v5 dealloc];
}

+ (BOOL)saveEndowment:(id)a3 forKey:(id)a4 withError:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    [RBSService saveEndowment:a2 forKey:a1 withError:?];
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    [RBSService saveEndowment:a2 forKey:a1 withError:?];
    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = +[RBSConnection sharedInstance];
  v13 = [RBSSavedEndowment savedEndowment:v9 withKey:v11];
  v14 = [v12 saveEndowment:v13 withError:a5];

  return v14;
}

- (id)inheritances
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_inheritances copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)didReceiveInheritances:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_inheritances unionSet:v4];
  calloutQueue = self->_calloutQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__RBSService_didReceiveInheritances___block_invoke;
  v7[3] = &unk_1E7276418;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(calloutQueue, v7);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)didLoseInheritances:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_inheritances minusSet:v4];
  calloutQueue = self->_calloutQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__RBSService_didLoseInheritances___block_invoke;
  v7[3] = &unk_1E7276418;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(calloutQueue, v7);
  os_unfair_lock_unlock(&self->_lock);
}

+ (void)saveEndowment:(uint64_t)a1 forKey:(uint64_t)a2 withError:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSService.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"endowment"}];
}

+ (void)saveEndowment:(uint64_t)a1 forKey:(uint64_t)a2 withError:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBSService.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"key"}];
}

@end