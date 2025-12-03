@interface PXMockAssistantContext
- (PXMockAssistantContext)init;
- (id)_stepContextWithIdentifier:(id)identifier viewTitle:(id)title firstButtonType:(int64_t)type;
- (id)initialStepContextIdentifiers;
- (id)nextStepContextIdentifierFromStepContextIdentifier:(id)identifier;
- (id)stepContextForStepContextIdentifier:(id)identifier;
@end

@implementation PXMockAssistantContext

- (id)_stepContextWithIdentifier:(id)identifier viewTitle:(id)title firstButtonType:(int64_t)type
{
  titleCopy = title;
  identifierCopy = identifier;
  v9 = [[PXMockAssistantView alloc] initWithTitle:titleCopy];

  v10 = [objc_alloc(MEMORY[0x1E69DD258]) initWithNibName:0 bundle:0];
  [v10 setView:v9];
  v11 = [[PXAssistantStepContext alloc] initWithIdentifier:identifierCopy viewController:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__PXMockAssistantContext__stepContextWithIdentifier_viewTitle_firstButtonType___block_invoke;
  v13[3] = &__block_descriptor_40_e51_v16__0___PXAssistantViewControllerMutableContext__8l;
  v13[4] = type;
  [(PXAssistantStepContext *)v11 performChanges:v13];

  return v11;
}

- (id)stepContextForStepContextIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMockAssistantContext.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"stepContextIdentifier"}];
  }

  if ([identifierCopy isEqualToString:@"PXMockStepContextIdentifier1"])
  {
    v6 = @"PXMockStepContextIdentifier1";
    v7 = @"1 - First Page";
LABEL_7:
    selfCopy2 = self;
    v9 = 0;
    goto LABEL_10;
  }

  if ([identifierCopy isEqualToString:@"PXMockStepContextIdentifier2"])
  {
    v6 = @"PXMockStepContextIdentifier2";
    v7 = @"2 - Second Page";
    goto LABEL_7;
  }

  if (![identifierCopy isEqualToString:@"PXMockStepContextIdentifier3"])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXMockAssistantContext.m" lineNumber:78 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v6 = @"PXMockStepContextIdentifier3";
  v7 = @"3 - Last Page";
  selfCopy2 = self;
  v9 = 1;
LABEL_10:
  v10 = [(PXMockAssistantContext *)selfCopy2 _stepContextWithIdentifier:v6 viewTitle:v7 firstButtonType:v9];

  return v10;
}

- (id)nextStepContextIdentifierFromStepContextIdentifier:(id)identifier
{
  stepContextIdentifiers = self->_stepContextIdentifiers;
  if (identifier)
  {
    v6 = [(NSArray *)stepContextIdentifiers indexOfObject:?];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXMockAssistantContext.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"currentIndex != NSNotFound"}];
    }

    firstObject = [(NSArray *)self->_stepContextIdentifiers objectAtIndexedSubscript:v6 + 1];
  }

  else
  {
    firstObject = [(NSArray *)stepContextIdentifiers firstObject];
  }

  return firstObject;
}

- (id)initialStepContextIdentifiers
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(PXMockAssistantContext *)self nextStepContextIdentifierFromStepContextIdentifier:0];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (PXMockAssistantContext)init
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = PXMockAssistantContext;
  v2 = [(PXMockAssistantContext *)&v6 init];
  if (v2)
  {
    v7[0] = @"PXMockStepContextIdentifier1";
    v7[1] = @"PXMockStepContextIdentifier2";
    v7[2] = @"PXMockStepContextIdentifier3";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
    stepContextIdentifiers = v2->_stepContextIdentifiers;
    v2->_stepContextIdentifiers = v3;
  }

  return v2;
}

@end