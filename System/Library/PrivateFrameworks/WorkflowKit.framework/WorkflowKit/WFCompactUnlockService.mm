@interface WFCompactUnlockService
- (void)dealloc;
- (void)requestUnlockIfNeeded:(id)needed;
@end

@implementation WFCompactUnlockService

- (void)requestUnlockIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = MKBGetDeviceLockState();
  if (v5 != 3 && v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69D4260]);
    [(WFCompactUnlockService *)self setService:v6];

    service = [(WFCompactUnlockService *)self service];
    v8 = objc_opt_new();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__WFCompactUnlockService_requestUnlockIfNeeded___block_invoke;
    v9[3] = &unk_1E837BA78;
    v10 = neededCopy;
    [service requestPasscodeUnlockUIWithOptions:v8 withCompletion:v9];
  }

  else
  {
    (*(neededCopy + 2))(neededCopy, 1);
  }
}

void __48__WFCompactUnlockService_requestUnlockIfNeeded___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__WFCompactUnlockService_requestUnlockIfNeeded___block_invoke_2;
  v3[3] = &unk_1E837B7D8;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (void)dealloc
{
  service = [(WFCompactUnlockService *)self service];
  [service invalidate];

  v4.receiver = self;
  v4.super_class = WFCompactUnlockService;
  [(WFCompactUnlockService *)&v4 dealloc];
}

@end