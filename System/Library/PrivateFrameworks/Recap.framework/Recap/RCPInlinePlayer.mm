@interface RCPInlinePlayer
+ (id)sharedInstance;
+ (void)playCommandString:(id)a3 options:(id)a4 completion:(id)a5;
+ (void)playEventActions:(id)a3 options:(id)a4 completion:(id)a5;
+ (void)playEventStream:(id)a3 options:(id)a4 completion:(id)a5;
+ (void)setIgnoresCompletionDelay:(BOOL)a3;
+ (void)setNeedsInitialDelay;
- (RCPInlinePlayer)init;
- (void)_callBlock:(id)a3;
- (void)_doInitialDelayIfNeeded;
- (void)playCommandString:(id)a3 options:(id)a4 completion:(id)a5;
- (void)playEventActions:(id)a3 options:(id)a4 completion:(id)a5;
- (void)playEventStream:(id)a3 options:(id)a4 completion:(id)a5;
- (void)prewarmForEventStream:(id)a3 completion:(id)a4;
- (void)tearDown;
@end

@implementation RCPInlinePlayer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[RCPInlinePlayer sharedInstance];
  }

  v3 = instance;

  return v3;
}

uint64_t __33__RCPInlinePlayer_sharedInstance__block_invoke()
{
  instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (RCPInlinePlayer)init
{
  v9.receiver = self;
  v9.super_class = RCPInlinePlayer;
  v2 = [(RCPInlinePlayer *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_needsInitialDelay = 1;
    v4 = objc_alloc_init(RCPPlayer);
    underlyingPlayer = v3->_underlyingPlayer;
    v3->_underlyingPlayer = v4;

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v7 = dispatch_queue_create("com.apple.recap.inline-replay", v6);

    [(RCPInlinePlayer *)v3 setReplayQueue:v7];
  }

  return v3;
}

void __27__RCPInlinePlayer_tearDown__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) underlyingPlayer];
  [v1 tearDown];
}

- (void)_doInitialDelayIfNeeded
{
  if (self->_needsInitialDelay)
  {
    v3 = [(RCPInlinePlayer *)self replayQueue];
    dispatch_async(v3, &__block_literal_global_9);

    self->_needsInitialDelay = 0;
  }
}

- (void)tearDown
{
  v3 = [(RCPInlinePlayer *)self replayQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__RCPInlinePlayer_tearDown__block_invoke;
  block[3] = &unk_279AF0D10;
  block[4] = self;
  dispatch_async(v3, block);
}

+ (void)setNeedsInitialDelay
{
  if (instance)
  {
    [instance setNeedsInitialDelay:1];
    v2 = __ignoresCompletionDelay;
    v3 = instance;

    [v3 setIgnoresCompletionDelay:v2];
  }
}

+ (void)playCommandString:(id)a3 options:(id)a4 completion:(id)a5
{
  v13 = a4;
  v7 = a5;
  v8 = [a3 componentsSeparatedByString:@" "];
  v9 = [RCPSyntheticEventStream eventStreamWithCLIArguments:v8];

  if (v9)
  {
    v10 = +[RCPInlinePlayer sharedInstance];
    [v10 prewarmForEventStream:v9 completion:0];

    v11 = +[RCPInlinePlayer sharedInstance];
    [v11 playEventStream:v9 options:v13 completion:v7];

    v12 = +[RCPInlinePlayer sharedInstance];
    [v12 tearDown];
  }

  else
  {
    NSLog(&cfstr_RecapEventStre.isa);
  }
}

+ (void)playEventStream:(id)a3 options:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[RCPInlinePlayer sharedInstance];
  [v10 prewarmForEventStream:v9 completion:0];

  v11 = +[RCPInlinePlayer sharedInstance];
  [v11 playEventStream:v9 options:v8 completion:v7];

  v12 = +[RCPInlinePlayer sharedInstance];
  [v12 tearDown];
}

+ (void)playEventActions:(id)a3 options:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v12 = [RCPSyntheticEventStream eventStreamWithEventActions:a3];
  v9 = +[RCPInlinePlayer sharedInstance];
  [v9 prewarmForEventStream:v12 completion:0];

  v10 = +[RCPInlinePlayer sharedInstance];
  [v10 playEventStream:v12 options:v8 completion:v7];

  v11 = +[RCPInlinePlayer sharedInstance];
  [v11 tearDown];
}

+ (void)setIgnoresCompletionDelay:(BOOL)a3
{
  if (instance)
  {
    [instance setIgnoresCompletionDelay:a3];
  }

  else
  {
    __ignoresCompletionDelay = a3;
  }
}

- (void)prewarmForEventStream:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(RCPInlinePlayer *)self _doInitialDelayIfNeeded];
  v8 = [(RCPInlinePlayer *)self replayQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__RCPInlinePlayer_prewarmForEventStream_completion___block_invoke;
  block[3] = &unk_279AF0E08;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __52__RCPInlinePlayer_prewarmForEventStream_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingPlayer];
  v3 = *(a1 + 40);
  v8 = 0;
  [v2 prewarmForEventStream:v3 withError:&v8];
  v4 = v8;

  if (*(a1 + 48))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__RCPInlinePlayer_prewarmForEventStream_completion___block_invoke_2;
    block[3] = &unk_279AF0DE0;
    v7 = *(a1 + 48);
    v6 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)playCommandString:(id)a3 options:(id)a4 completion:(id)a5
{
  v11 = a4;
  v8 = a5;
  v9 = [a3 componentsSeparatedByString:@" "];
  v10 = [RCPSyntheticEventStream eventStreamWithCLIArguments:v9];

  if (v10)
  {
    [(RCPInlinePlayer *)self playEventStream:v10 options:v11 completion:v8];
  }

  else
  {
    NSLog(&cfstr_RecapEventStre.isa);
  }
}

- (void)playEventActions:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [RCPSyntheticEventStream eventStreamWithEventActions:a3];
  [(RCPInlinePlayer *)self playEventStream:v10 options:v9 completion:v8];
}

- (void)playEventStream:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(RCPInlinePlayer *)self _doInitialDelayIfNeeded];
  if (!v9)
  {
    v9 = objc_opt_new();
  }

  v11 = [(RCPInlinePlayer *)self replayQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__RCPInlinePlayer_playEventStream_options_completion___block_invoke;
  v15[3] = &unk_279AF0E58;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __54__RCPInlinePlayer_playEventStream_options_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) underlyingPlayer];
  [v2 playEventStream:*(a1 + 40) withOptions:*(a1 + 48)];

  if (*(a1 + 56))
  {
    if ([*(a1 + 32) ignoresCompletionDelay])
    {
      v3 = [*(a1 + 32) replayQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__RCPInlinePlayer_playEventStream_options_completion___block_invoke_2;
      block[3] = &unk_279AF0E30;
      block[4] = *(a1 + 32);
      v4 = &v9;
      v9 = *(a1 + 56);
      dispatch_async(v3, block);
    }

    else
    {
      v5 = dispatch_time(0, 200000000);
      v3 = [*(a1 + 32) replayQueue];
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __54__RCPInlinePlayer_playEventStream_options_completion___block_invoke_3;
      v6[3] = &unk_279AF0E30;
      v6[4] = *(a1 + 32);
      v4 = &v7;
      v7 = *(a1 + 56);
      dispatch_after(v5, v3, v6);
    }
  }
}

void __54__RCPInlinePlayer_playEventStream_options_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x266715C00](*(a1 + 40));
  [v1 performSelectorOnMainThread:sel__callBlock_ withObject:v2 waitUntilDone:0];
}

void __54__RCPInlinePlayer_playEventStream_options_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x266715C00](*(a1 + 40));
  [v1 performSelectorOnMainThread:sel__callBlock_ withObject:v2 waitUntilDone:0];
}

- (void)_callBlock:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

@end