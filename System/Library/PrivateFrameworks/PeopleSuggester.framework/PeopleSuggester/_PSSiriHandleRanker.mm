@interface _PSSiriHandleRanker
- (_PSSiriHandleRanker)init;
- (id)rankedHandles:(id)handles context:(id)context;
- (void)dealloc;
@end

@implementation _PSSiriHandleRanker

- (_PSSiriHandleRanker)init
{
  v8.receiver = self;
  v8.super_class = _PSSiriHandleRanker;
  v2 = [(_PSSiriHandleRanker *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E696B0B8]);
    v4 = [v3 initWithMachServiceName:*MEMORY[0x1E6997A00] options:4096];
    connection = v2->_connection;
    v2->_connection = v4;

    v6 = _CDInteractionNSXPCInterface();
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = _PSSiriHandleRanker;
  [(_PSSiriHandleRanker *)&v3 dealloc];
}

- (id)rankedHandles:(id)handles context:(id)context
{
  handlesCopy = handles;
  contextCopy = context;
  connection = self->_connection;
  if (connection)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__19;
    v17 = __Block_byref_object_dispose__19;
    v18 = 0;
    v9 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_37];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45___PSSiriHandleRanker_rankedHandles_context___block_invoke_4;
    v12[3] = &unk_1E7C25420;
    v12[4] = &v13;
    [v9 rankedSiriMLCRHandlesFromContext:contextCopy handles:handlesCopy reply:v12];
    v10 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end