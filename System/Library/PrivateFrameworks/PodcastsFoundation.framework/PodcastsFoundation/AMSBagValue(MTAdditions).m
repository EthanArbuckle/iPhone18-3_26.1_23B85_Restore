@interface AMSBagValue(MTAdditions)
- (id)asyncValuePromise;
- (id)asyncValuePromiseOnQueue:()MTAdditions;
- (void)asyncValueOnQueue:()MTAdditions withCompletion:;
- (void)asyncValueWithCompletion:()MTAdditions;
@end

@implementation AMSBagValue(MTAdditions)

- (id)asyncValuePromise
{
  v2 = dispatch_get_global_queue(0, 0);
  v3 = [a1 asyncValuePromiseOnQueue:v2];

  return v3;
}

- (void)asyncValueWithCompletion:()MTAdditions
{
  v5 = dispatch_get_global_queue(0, 0);
  [a1 asyncValueOnQueue:v5 withCompletion:a3];
}

- (void)asyncValueOnQueue:()MTAdditions withCompletion:
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__AMSBagValue_MTAdditions__asyncValueOnQueue_withCompletion___block_invoke;
  v8[3] = &unk_1E85692C8;
  v8[4] = a1;
  v9 = v6;
  v7 = v6;
  dispatch_async(a3, v8);
}

- (id)asyncValuePromiseOnQueue:()MTAdditions
{
  v4 = MEMORY[0x1E698CAD0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__AMSBagValue_MTAdditions__asyncValuePromiseOnQueue___block_invoke;
  v11[3] = &unk_1E8569318;
  v11[4] = a1;
  v7 = v6;
  v12 = v7;
  dispatch_async(v5, v11);

  v8 = v12;
  v9 = v7;

  return v7;
}

@end