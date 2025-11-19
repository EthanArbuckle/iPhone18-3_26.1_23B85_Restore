@interface _PSHandleRanker
- (_PSHandleRanker)init;
- (id)rankedHandlesFromCandidateHandles:(id)a3;
- (void)dealloc;
@end

@implementation _PSHandleRanker

- (_PSHandleRanker)init
{
  v8.receiver = self;
  v8.super_class = _PSHandleRanker;
  v2 = [(_PSHandleRanker *)&v8 init];
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
  v3.super_class = _PSHandleRanker;
  [(_PSHandleRanker *)&v3 dealloc];
}

- (id)rankedHandlesFromCandidateHandles:(id)a3
{
  v4 = a3;
  connection = self->_connection;
  if (connection)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__6;
    v14 = __Block_byref_object_dispose__6;
    v15 = 0;
    v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_16];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53___PSHandleRanker_rankedHandlesFromCandidateHandles___block_invoke_4;
    v9[3] = &unk_1E7C25420;
    v9[4] = &v10;
    [v6 rankedHandlesFromCandidateHandles:v4 reply:v9];
    v7 = v11[5];

    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end