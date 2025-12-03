@interface PXAssistantStepContext
- (PXAssistantStepContext)init;
- (PXAssistantStepContext)initWithIdentifier:(id)identifier viewController:(id)controller;
- (void)performChanges:(id)changes;
- (void)setCustomSecondButtonTitle:(id)title;
- (void)setFirstButtonEnabled:(BOOL)enabled;
- (void)setFirstButtonTitle:(id)title;
- (void)setFirstButtonType:(int64_t)type;
- (void)setSecondButtonEnabled:(BOOL)enabled;
- (void)setSecondButtonType:(int64_t)type;
- (void)setUseTransparentBarAppearance:(BOOL)appearance;
@end

@implementation PXAssistantStepContext

- (void)setUseTransparentBarAppearance:(BOOL)appearance
{
  if (self->_useTransparentBarAppearance != appearance)
  {
    self->_useTransparentBarAppearance = appearance;
    [(PXAssistantStepContext *)self signalChange:512];
  }
}

- (void)setSecondButtonEnabled:(BOOL)enabled
{
  if (self->_secondButtonEnabled != enabled)
  {
    self->_secondButtonEnabled = enabled;
    [(PXAssistantStepContext *)self signalChange:16];
  }
}

- (void)setCustomSecondButtonTitle:(id)title
{
  titleCopy = title;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssistantStepContext.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"customSecondButtonTitle"}];

    titleCopy = 0;
  }

  customSecondButtonTitle = self->_customSecondButtonTitle;
  if (customSecondButtonTitle != titleCopy)
  {
    v11 = titleCopy;
    v7 = [(NSString *)customSecondButtonTitle isEqualToString:titleCopy];
    titleCopy = v11;
    if (!v7)
    {
      v8 = [(NSString *)v11 copy];
      v9 = self->_customSecondButtonTitle;
      self->_customSecondButtonTitle = v8;

      [(PXAssistantStepContext *)self signalChange:32];
      titleCopy = v11;
    }
  }
}

- (void)setSecondButtonType:(int64_t)type
{
  if (self->_secondButtonType != type)
  {
    self->_secondButtonType = type;
    [(PXAssistantStepContext *)self signalChange:8];
  }
}

- (void)setFirstButtonEnabled:(BOOL)enabled
{
  if (self->_firstButtonEnabled != enabled)
  {
    self->_firstButtonEnabled = enabled;
    [(PXAssistantStepContext *)self signalChange:4];
  }
}

- (void)setFirstButtonTitle:(id)title
{
  titleCopy = title;
  if (!titleCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssistantStepContext.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"firstButtonTitle"}];

    titleCopy = 0;
  }

  firstButtonTitle = self->_firstButtonTitle;
  if (firstButtonTitle != titleCopy)
  {
    v11 = titleCopy;
    v7 = [(NSString *)firstButtonTitle isEqualToString:titleCopy];
    titleCopy = v11;
    if (!v7)
    {
      v8 = [(NSString *)v11 copy];
      v9 = self->_firstButtonTitle;
      self->_firstButtonTitle = v8;

      [(PXAssistantStepContext *)self signalChange:4];
      titleCopy = v11;
    }
  }
}

- (void)setFirstButtonType:(int64_t)type
{
  if (self->_firstButtonType != type)
  {
    self->_firstButtonType = type;
    [(PXAssistantStepContext *)self signalChange:1];
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXAssistantStepContext;
  [(PXAssistantStepContext *)&v3 performChanges:changes];
}

- (PXAssistantStepContext)initWithIdentifier:(id)identifier viewController:(id)controller
{
  identifierCopy = identifier;
  controllerCopy = controller;
  v9 = controllerCopy;
  if (identifierCopy)
  {
    if (controllerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssistantStepContext.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXAssistantStepContext.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PXAssistantStepContext;
  v10 = [(PXAssistantStepContext *)&v18 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    objc_storeStrong(&v10->_viewController, controller);
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssistantStepContext.m" lineNumber:21 description:{@"%s is not available as initializer", "-[PXAssistantStepContext init]"}];

  abort();
}

@end