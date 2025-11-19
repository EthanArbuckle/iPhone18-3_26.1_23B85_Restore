@interface PXMockAssistantContext
- (PXMockAssistantContext)init;
- (id)_stepContextWithIdentifier:(id)a3 viewTitle:(id)a4 firstButtonType:(int64_t)a5;
- (id)initialStepContextIdentifiers;
- (id)nextStepContextIdentifierFromStepContextIdentifier:(id)a3;
- (id)stepContextForStepContextIdentifier:(id)a3;
@end

@implementation PXMockAssistantContext

- (id)_stepContextWithIdentifier:(id)a3 viewTitle:(id)a4 firstButtonType:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[PXMockAssistantView alloc] initWithTitle:v7];

  v10 = [objc_alloc(MEMORY[0x1E69DD258]) initWithNibName:0 bundle:0];
  [v10 setView:v9];
  v11 = [[PXAssistantStepContext alloc] initWithIdentifier:v8 viewController:v10];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__PXMockAssistantContext__stepContextWithIdentifier_viewTitle_firstButtonType___block_invoke;
  v13[3] = &__block_descriptor_40_e51_v16__0___PXAssistantViewControllerMutableContext__8l;
  v13[4] = a5;
  [(PXAssistantStepContext *)v11 performChanges:v13];

  return v11;
}

- (id)stepContextForStepContextIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXMockAssistantContext.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"stepContextIdentifier"}];
  }

  if ([v5 isEqualToString:@"PXMockStepContextIdentifier1"])
  {
    v6 = @"PXMockStepContextIdentifier1";
    v7 = @"1 - First Page";
LABEL_7:
    v8 = self;
    v9 = 0;
    goto LABEL_10;
  }

  if ([v5 isEqualToString:@"PXMockStepContextIdentifier2"])
  {
    v6 = @"PXMockStepContextIdentifier2";
    v7 = @"2 - Second Page";
    goto LABEL_7;
  }

  if (![v5 isEqualToString:@"PXMockStepContextIdentifier3"])
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXMockAssistantContext.m" lineNumber:78 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v6 = @"PXMockStepContextIdentifier3";
  v7 = @"3 - Last Page";
  v8 = self;
  v9 = 1;
LABEL_10:
  v10 = [(PXMockAssistantContext *)v8 _stepContextWithIdentifier:v6 viewTitle:v7 firstButtonType:v9];

  return v10;
}

- (id)nextStepContextIdentifierFromStepContextIdentifier:(id)a3
{
  stepContextIdentifiers = self->_stepContextIdentifiers;
  if (a3)
  {
    v6 = [(NSArray *)stepContextIdentifiers indexOfObject:?];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PXMockAssistantContext.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"currentIndex != NSNotFound"}];
    }

    v7 = [(NSArray *)self->_stepContextIdentifiers objectAtIndexedSubscript:v6 + 1];
  }

  else
  {
    v7 = [(NSArray *)stepContextIdentifiers firstObject];
  }

  return v7;
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