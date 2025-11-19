@interface MTCoalescableWorkManifest
- (MTCoalescableWorkManifest)initWithWorkBlock:(id)a3 completion:(id)a4;
- (MTCoalescableWorkManifest)initWithWorkBlock:(id)a3 completions:(id)a4;
- (id)description;
- (id)manifestByReplacingWorkBlock:(id)a3 appendingCompletion:(id)a4;
@end

@implementation MTCoalescableWorkManifest

- (MTCoalescableWorkManifest)initWithWorkBlock:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x1E695DEC8];
  v7 = a3;
  v8 = _Block_copy(a4);
  v9 = [v6 arrayWithObjects:{v8, 0}];
  v10 = [(MTCoalescableWorkManifest *)self initWithWorkBlock:v7 completions:v9];

  return v10;
}

- (MTCoalescableWorkManifest)initWithWorkBlock:(id)a3 completions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MTCoalescableWorkManifest;
  v8 = [(MTCoalescableWorkManifest *)&v13 init];
  if (v8)
  {
    v9 = _Block_copy(v6);
    workBlock = v8->_workBlock;
    v8->_workBlock = v9;

    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v8->_completions, v11);
  }

  return v8;
}

- (id)manifestByReplacingWorkBlock:(id)a3 appendingCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MTCoalescableWorkManifest *)self completions];
  v9 = [v8 mutableCopy];

  if (v6)
  {
    v10 = _Block_copy(v6);
    [v9 addObject:v10];
  }

  v11 = [[MTCoalescableWorkManifest alloc] initWithWorkBlock:v7 completions:v9];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTCoalescableWorkManifest;
  v4 = [(MTCoalescableWorkManifest *)&v8 description];
  v5 = [(MTCoalescableWorkManifest *)self completions];
  v6 = [v3 stringWithFormat:@"%@: completions.count = %d", v4, objc_msgSend(v5, "count")];

  return v6;
}

@end