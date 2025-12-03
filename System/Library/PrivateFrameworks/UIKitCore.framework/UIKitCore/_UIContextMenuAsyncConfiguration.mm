@interface _UIContextMenuAsyncConfiguration
+ (id)configurationWithIdentifier:(id)identifier previewProvider:(id)provider actionProvider:(id)actionProvider;
- (BOOL)fulfillWithConfiguration:(id)configuration;
- (_UIContextMenuAsyncConfiguration)init;
- (void)_prepareWithCompletion:(id)completion;
@end

@implementation _UIContextMenuAsyncConfiguration

- (_UIContextMenuAsyncConfiguration)init
{
  v3.receiver = self;
  v3.super_class = _UIContextMenuAsyncConfiguration;
  return [(UIContextMenuConfiguration *)&v3 init];
}

- (void)_prepareWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[_UIBurnableBlock alloc] initWithTimeout:completionCopy block:0 defaultInputProvider:0.5];

  deferredCompletion = self->_deferredCompletion;
  self->_deferredCompletion = v5;
}

- (BOOL)fulfillWithConfiguration:(id)configuration
{
  v4 = [(_UIBurnableBlock *)self->_deferredCompletion performWithInput:configuration];
  deferredCompletion = self->_deferredCompletion;
  self->_deferredCompletion = 0;

  return v4;
}

+ (id)configurationWithIdentifier:(id)identifier previewProvider:(id)provider actionProvider:(id)actionProvider
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIContextMenuAsyncConfiguration.m" lineNumber:48 description:@"configurationWithIdentifier:previewProvider:actionProvider: is not available; use -init instead."];

  return 0;
}

@end