@interface _UIContextGraphTrackingAssertion
- (BOOL)isContextIDRelevant:(unsigned int)a3;
- (_UIContextGraphTrackingAssertion)initWithContextID:(unsigned int)a3 windowGraph:(id)a4 clientHandlerBlock:(id)a5 invalidationBlock:(id)a6;
- (void)_setWindowGraph:(id)a3 callHandler:(BOOL)a4;
@end

@implementation _UIContextGraphTrackingAssertion

- (_UIContextGraphTrackingAssertion)initWithContextID:(unsigned int)a3 windowGraph:(id)a4 clientHandlerBlock:(id)a5 invalidationBlock:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x1E696AFB0];
  v13 = a6;
  v14 = [v12 UUID];
  v15 = [v14 UUIDString];
  v20.receiver = self;
  v20.super_class = _UIContextGraphTrackingAssertion;
  v16 = [(BSSimpleAssertion *)&v20 initWithIdentifier:v15 forReason:@"observerTrackingAssertion" queue:MEMORY[0x1E69E96A0] invalidationBlock:v13];

  if (v16)
  {
    v16->_contextID = a3;
    v17 = [v11 copy];
    clientHandlerBlock = v16->_clientHandlerBlock;
    v16->_clientHandlerBlock = v17;

    [(_UIContextGraphTrackingAssertion *)v16 _setWindowGraph:v10 callHandler:0];
  }

  return v16;
}

- (void)_setWindowGraph:(id)a3 callHandler:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [v8 bs_map:&__block_literal_global_36_0];
  contextIDGraph = self->_contextIDGraph;
  self->_contextIDGraph = v6;

  if (v4)
  {
    (*(self->_clientHandlerBlock + 2))();
  }
}

- (BOOL)isContextIDRelevant:(unsigned int)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_contextID == a3)
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

        if ([*(*(&v11 + 1) + 8 * i) unsignedIntValue] == a3)
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