@interface CACContextCluesWelcomeController
- (CACContextCluesWelcomeControllerDelegate)delegate;
@end

@implementation CACContextCluesWelcomeController

- (CACContextCluesWelcomeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end