@interface PRLiveProtobufStream
- (PRLiveProtobufStream)init;
- (PRLiveProtobufStreamDelegate)delegate;
- (void)consumeProtobufBytes:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation PRLiveProtobufStream

- (PRLiveProtobufStream)init
{
  v16.receiver = self;
  v16.super_class = PRLiveProtobufStream;
  v2 = [(PRLiveProtobufStream *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    uniqueId = v2->_uniqueId;
    v2->_uniqueId = v3;

    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.nearbyd.xpc.diagnostics" options:4096];
    conn = v2->_conn;
    v2->_conn = v5;

    inited = objc_initWeak(&location, v2);
    v8 = v2->_conn;
    v9 = inited;
    [(NSXPCConnection *)v8 setExportedObject:v2];

    v10 = v2->_conn;
    v11 = PRMakeProtobufClientXPCInterface();
    [(NSXPCConnection *)v10 setExportedInterface:v11];

    v12 = v2->_conn;
    v13 = PRMakeProtobufServerXPCInterface();
    [(NSXPCConnection *)v12 setRemoteObjectInterface:v13];

    [(NSXPCConnection *)v2->_conn resume];
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)start
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRDiagnostics.m" lineNumber:440 description:@"Must set the delegateQueue property before calling start."];
}

void __29__PRLiveProtobufStream_start__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    NSLog(&cfstr_FailedToStartS.isa);
  }
}

- (void)stop
{
  v3 = [(PRLiveProtobufStream *)self server];
  [v3 stopStreamingProtobufDataForClientId:self->_uniqueId reply:&__block_literal_global_90];
}

void __28__PRLiveProtobufStream_stop__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    NSLog(&cfstr_FailedToStopSt.isa);
  }
}

- (void)consumeProtobufBytes:(id)a3
{
  v4 = a3;
  v5 = [(PRLiveProtobufStream *)self delegateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__PRLiveProtobufStream_consumeProtobufBytes___block_invoke;
  v7[3] = &unk_2788F3B88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __45__PRLiveProtobufStream_consumeProtobufBytes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 stream:*(a1 + 32) handleData:*(a1 + 40)];
}

- (PRLiveProtobufStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end