@interface PXAssistantStepContext
- (PXAssistantStepContext)init;
- (PXAssistantStepContext)initWithIdentifier:(id)a3 viewController:(id)a4;
- (void)performChanges:(id)a3;
- (void)setCustomSecondButtonTitle:(id)a3;
- (void)setFirstButtonEnabled:(BOOL)a3;
- (void)setFirstButtonTitle:(id)a3;
- (void)setFirstButtonType:(int64_t)a3;
- (void)setSecondButtonEnabled:(BOOL)a3;
- (void)setSecondButtonType:(int64_t)a3;
- (void)setUseTransparentBarAppearance:(BOOL)a3;
@end

@implementation PXAssistantStepContext

- (void)setUseTransparentBarAppearance:(BOOL)a3
{
  if (self->_useTransparentBarAppearance != a3)
  {
    self->_useTransparentBarAppearance = a3;
    [(PXAssistantStepContext *)self signalChange:512];
  }
}

- (void)setSecondButtonEnabled:(BOOL)a3
{
  if (self->_secondButtonEnabled != a3)
  {
    self->_secondButtonEnabled = a3;
    [(PXAssistantStepContext *)self signalChange:16];
  }
}

- (void)setCustomSecondButtonTitle:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXAssistantStepContext.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"customSecondButtonTitle"}];

    v5 = 0;
  }

  customSecondButtonTitle = self->_customSecondButtonTitle;
  if (customSecondButtonTitle != v5)
  {
    v11 = v5;
    v7 = [(NSString *)customSecondButtonTitle isEqualToString:v5];
    v5 = v11;
    if (!v7)
    {
      v8 = [(NSString *)v11 copy];
      v9 = self->_customSecondButtonTitle;
      self->_customSecondButtonTitle = v8;

      [(PXAssistantStepContext *)self signalChange:32];
      v5 = v11;
    }
  }
}

- (void)setSecondButtonType:(int64_t)a3
{
  if (self->_secondButtonType != a3)
  {
    self->_secondButtonType = a3;
    [(PXAssistantStepContext *)self signalChange:8];
  }
}

- (void)setFirstButtonEnabled:(BOOL)a3
{
  if (self->_firstButtonEnabled != a3)
  {
    self->_firstButtonEnabled = a3;
    [(PXAssistantStepContext *)self signalChange:4];
  }
}

- (void)setFirstButtonTitle:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXAssistantStepContext.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"firstButtonTitle"}];

    v5 = 0;
  }

  firstButtonTitle = self->_firstButtonTitle;
  if (firstButtonTitle != v5)
  {
    v11 = v5;
    v7 = [(NSString *)firstButtonTitle isEqualToString:v5];
    v5 = v11;
    if (!v7)
    {
      v8 = [(NSString *)v11 copy];
      v9 = self->_firstButtonTitle;
      self->_firstButtonTitle = v8;

      [(PXAssistantStepContext *)self signalChange:4];
      v5 = v11;
    }
  }
}

- (void)setFirstButtonType:(int64_t)a3
{
  if (self->_firstButtonType != a3)
  {
    self->_firstButtonType = a3;
    [(PXAssistantStepContext *)self signalChange:1];
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXAssistantStepContext;
  [(PXAssistantStepContext *)&v3 performChanges:a3];
}

- (PXAssistantStepContext)initWithIdentifier:(id)a3 viewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXAssistantStepContext.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PXAssistantStepContext.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PXAssistantStepContext;
  v10 = [(PXAssistantStepContext *)&v18 init];
  if (v10)
  {
    v11 = [v7 copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    objc_storeStrong(&v10->_viewController, a4);
    v10->_firstButtonType = 0;
    firstButtonTitle = v10->_firstButtonTitle;
    v10->_firstButtonTitle = &stru_1F1741150;

    v10->_firstButtonEnabled = 1;
    v10->_secondButtonType = 0;
    customSecondButtonTitle = v10->_customSecondButtonTitle;
    v10->_customSecondButtonTitle = &stru_1F1741150;

    v10->_secondButtonEnabled = 1;
    v10->_useTransparentBarAppearance = 1;
  }

  return v10;
}

- (PXAssistantStepContext)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAssistantStepContext.m" lineNumber:21 description:{@"%s is not available as initializer", "-[PXAssistantStepContext init]"}];

  abort();
}

@end