@interface PECopyEditsConfigurationResult
- (PECopyEditsConfigurationResult)initWithCompositionController:(id)controller;
@end

@implementation PECopyEditsConfigurationResult

- (PECopyEditsConfigurationResult)initWithCompositionController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = PECopyEditsConfigurationResult;
  v5 = [(PECopyEditsConfigurationResult *)&v9 init];
  if (v5)
  {
    v6 = [controllerCopy copy];
    compositionController = v5->_compositionController;
    v5->_compositionController = v6;

    v5->_smartCopyEnabled = 0;
  }

  return v5;
}

@end