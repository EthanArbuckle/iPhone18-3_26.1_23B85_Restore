@interface SBIconStateUnarchiveResult
- (id)_popFolder;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_noteNodeIdentifierWasUnarchived:(id)a3;
- (void)_noteWidgetUniqueIdentifierWasUnarchived:(id)a3;
- (void)_pushFolder:(id)a3;
@end

@implementation SBIconStateUnarchiveResult

- (void)_pushFolder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    folderStack = self->_folderStack;
    v9 = v5;
    if (folderStack)
    {
      [(NSMutableArray *)folderStack addObject:v5];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v5, 0}];
      v8 = self->_folderStack;
      self->_folderStack = v7;
    }

    v4 = [(SBIconStateUnarchiveResult *)self _noteEnteredNode];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)_popFolder
{
  v3 = [(NSMutableArray *)self->_folderStack lastObject];
  v4 = [(NSMutableArray *)self->_folderStack count];
  folderStack = self->_folderStack;
  if (v4 < 2)
  {
    self->_folderStack = 0;

    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [(NSMutableArray *)folderStack removeLastObject];
  if (v3)
  {
LABEL_5:
    [(SBIconStateUnarchiveResult *)self _noteExitedNode];
  }

LABEL_6:

  return v3;
}

- (void)_noteNodeIdentifierWasUnarchived:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v5 = v4;
    nodeIdentifiersUnarchived = self->_nodeIdentifiersUnarchived;
    if (nodeIdentifiersUnarchived)
    {
      [(NSMutableSet *)nodeIdentifiersUnarchived addObject:v5];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:&v9 count:1];
      v8 = self->_nodeIdentifiersUnarchived;
      self->_nodeIdentifiersUnarchived = v7;

      v5 = v9;
    }
  }
}

- (void)_noteWidgetUniqueIdentifierWasUnarchived:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v5 = v4;
    widgetUniqueIdentifiersUnarchived = self->_widgetUniqueIdentifiersUnarchived;
    if (widgetUniqueIdentifiersUnarchived)
    {
      [(NSMutableSet *)widgetUniqueIdentifiersUnarchived addObject:v5];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:&v9 count:1];
      v8 = self->_widgetUniqueIdentifiersUnarchived;
      self->_widgetUniqueIdentifiersUnarchived = v7;

      v5 = v9;
    }
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIconStateUnarchiveResult *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  v5 = [(SBIconStateUnarchiveResult *)self rootFolder];
  v6 = [v4 appendObject:v5 withName:@"rootFolder"];

  v7 = [v4 appendBool:-[SBIconStateUnarchiveResult isValid](self withName:{"isValid"), @"isValid"}];
  v8 = [v4 appendBool:-[SBIconStateUnarchiveResult isDirty](self withName:{"isDirty"), @"isDirty"}];
  v9 = [(SBIconStateUnarchiveResult *)self metadata];
  v10 = [v4 appendObject:v9 withName:@"metadata"];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(SBIconStateUnarchiveResult *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end