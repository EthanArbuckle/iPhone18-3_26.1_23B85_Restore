@interface SBIconStateUnarchiveResult
- (id)_popFolder;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_noteNodeIdentifierWasUnarchived:(id)unarchived;
- (void)_noteWidgetUniqueIdentifierWasUnarchived:(id)unarchived;
- (void)_pushFolder:(id)folder;
@end

@implementation SBIconStateUnarchiveResult

- (void)_pushFolder:(id)folder
{
  folderCopy = folder;
  v5 = folderCopy;
  if (folderCopy)
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

    folderCopy = [(SBIconStateUnarchiveResult *)self _noteEnteredNode];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](folderCopy, v5);
}

- (id)_popFolder
{
  lastObject = [(NSMutableArray *)self->_folderStack lastObject];
  v4 = [(NSMutableArray *)self->_folderStack count];
  folderStack = self->_folderStack;
  if (v4 < 2)
  {
    self->_folderStack = 0;

    if (!lastObject)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [(NSMutableArray *)folderStack removeLastObject];
  if (lastObject)
  {
LABEL_5:
    [(SBIconStateUnarchiveResult *)self _noteExitedNode];
  }

LABEL_6:

  return lastObject;
}

- (void)_noteNodeIdentifierWasUnarchived:(id)unarchived
{
  unarchivedCopy = unarchived;
  v9 = unarchivedCopy;
  if (unarchivedCopy)
  {
    v5 = unarchivedCopy;
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

- (void)_noteWidgetUniqueIdentifierWasUnarchived:(id)unarchived
{
  unarchivedCopy = unarchived;
  v9 = unarchivedCopy;
  if (unarchivedCopy)
  {
    v5 = unarchivedCopy;
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIconStateUnarchiveResult *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x1E698E680] builderWithObject:self];
  rootFolder = [(SBIconStateUnarchiveResult *)self rootFolder];
  v6 = [v4 appendObject:rootFolder withName:@"rootFolder"];

  v7 = [v4 appendBool:-[SBIconStateUnarchiveResult isValid](self withName:{"isValid"), @"isValid"}];
  v8 = [v4 appendBool:-[SBIconStateUnarchiveResult isDirty](self withName:{"isDirty"), @"isDirty"}];
  metadata = [(SBIconStateUnarchiveResult *)self metadata];
  v10 = [v4 appendObject:metadata withName:@"metadata"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIconStateUnarchiveResult *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end