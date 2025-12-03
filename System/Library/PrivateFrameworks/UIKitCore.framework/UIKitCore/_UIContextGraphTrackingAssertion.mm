@interface _UIContextGraphTrackingAssertion
- (BOOL)isContextIDRelevant:(unsigned int)relevant;
- (_UIContextGraphTrackingAssertion)initWithContextID:(unsigned int)d windowGraph:(id)graph clientHandlerBlock:(id)block invalidationBlock:(id)invalidationBlock;
- (void)_setWindowGraph:(id)graph callHandler:(BOOL)handler;
@end

@implementation _UIContextGraphTrackingAssertion

- (_UIContextGraphTrackingAssertion)initWithContextID:(unsigned int)d windowGraph:(id)graph clientHandlerBlock:(id)block invalidationBlock:(id)invalidationBlock
{
  graphCopy = graph;
  blockCopy = block;
  v12 = MEMORY[0x1E696AFB0];
  invalidationBlockCopy = invalidationBlock;
  uUID = [v12 UUID];
  uUIDString = [uUID UUIDString];
  v20.receiver = self;
  v20.super_class = _UIContextGraphTrackingAssertion;
  v16 = [(BSSimpleAssertion *)&v20 initWithIdentifier:uUIDString forReason:@"observerTrackingAssertion" queue:MEMORY[0x1E69E96A0] invalidationBlock:invalidationBlockCopy];

  if (v16)
  {
    v16->_contextID = d;
    v17 = [blockCopy copy];
    clientHandlerBlock = v16->_clientHandlerBlock;
    v16->_clientHandlerBlock = v17;

    [(_UIContextGraphTrackingAssertion *)v16 _setWindowGraph:graphCopy callHandler:0];
  }

  return v16;
}

- (void)_setWindowGraph:(id)graph callHandler:(BOOL)handler
{
  handlerCopy = handler;
  graphCopy = graph;
  v6 = [graphCopy bs_map:&__block_literal_global_36_0];
  contextIDGraph = self->_contextIDGraph;
  self->_contextIDGraph = v6;

  if (handlerCopy)
  {
    (*(self->_clientHandlerBlock + 2))();
  }
}

- (BOOL)isContextIDRelevant:(unsigned int)relevant
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_contextID == relevant)
  {
    return 1;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_contextIDGraph;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) unsignedIntValue] == relevant)
        {
          v3 = 1;
          goto LABEL_13;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v3 = 0;
LABEL_13:

  return v3;
}

@end