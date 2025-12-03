@interface MTCoalescableWorkManifest
- (MTCoalescableWorkManifest)initWithWorkBlock:(id)block completion:(id)completion;
- (MTCoalescableWorkManifest)initWithWorkBlock:(id)block completions:(id)completions;
- (id)description;
- (id)manifestByReplacingWorkBlock:(id)block appendingCompletion:(id)completion;
@end

@implementation MTCoalescableWorkManifest

- (MTCoalescableWorkManifest)initWithWorkBlock:(id)block completion:(id)completion
{
  v6 = MEMORY[0x1E695DEC8];
  blockCopy = block;
  v8 = _Block_copy(completion);
  v9 = [v6 arrayWithObjects:{v8, 0}];
  v10 = [(MTCoalescableWorkManifest *)self initWithWorkBlock:blockCopy completions:v9];

  return v10;
}

- (MTCoalescableWorkManifest)initWithWorkBlock:(id)block completions:(id)completions
{
  blockCopy = block;
  completionsCopy = completions;
  v13.receiver = self;
  v13.super_class = MTCoalescableWorkManifest;
  v8 = [(MTCoalescableWorkManifest *)&v13 init];
  if (v8)
  {
    v9 = _Block_copy(blockCopy);
    workBlock = v8->_workBlock;
    v8->_workBlock = v9;

    if (completionsCopy)
    {
      v11 = completionsCopy;
    }

    else
    {
      v11 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v8->_completions, v11);
  }

  return v8;
}

- (id)manifestByReplacingWorkBlock:(id)block appendingCompletion:(id)completion
{
  completionCopy = completion;
  blockCopy = block;
  completions = [(MTCoalescableWorkManifest *)self completions];
  v9 = [completions mutableCopy];

  if (completionCopy)
  {
    v10 = _Block_copy(completionCopy);
    [v9 addObject:v10];
  }

  v11 = [[MTCoalescableWorkManifest alloc] initWithWorkBlock:blockCopy completions:v9];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTCoalescableWorkManifest;
  v4 = [(MTCoalescableWorkManifest *)&v8 description];
  completions = [(MTCoalescableWorkManifest *)self completions];
  v6 = [v3 stringWithFormat:@"%@: completions.count = %d", v4, objc_msgSend(completions, "count")];

  return v6;
}

@end