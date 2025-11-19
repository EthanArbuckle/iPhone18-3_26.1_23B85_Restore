@interface UIRemoteInputViewControllerInterface
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (void)_handleInputViewControllerState:(id)a3;
- (void)_openURL:(id)a3 completion:(id)a4;
- (void)_performInputViewControllerOutput:(id)a3;
- (void)_tearDownRemoteService;
- (void)dealloc;
@end

@implementation UIRemoteInputViewControllerInterface

- (void)dealloc
{
  responseDelegate = self->_responseDelegate;
  self->_responseDelegate = 0;

  v4.receiver = self;
  v4.super_class = UIRemoteInputViewControllerInterface;
  [(UIRemoteInputViewControllerInterface *)&v4 dealloc];
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (qword_1ED499368 != -1)
  {
    dispatch_once(&qword_1ED499368, &__block_literal_global_345);
  }

  v3 = _MergedGlobals_1_16;

  return v3;
}

void __71__UIRemoteInputViewControllerInterface__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF1D9A8];
  v1 = _MergedGlobals_1_16;
  _MergedGlobals_1_16 = v0;

  v2 = _MergedGlobals_1_16;
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel__performInputViewControllerOutput_ argumentIndex:0 ofReply:0];
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (qword_1ED499378 != -1)
  {
    dispatch_once(&qword_1ED499378, &__block_literal_global_90_1);
  }

  v3 = qword_1ED499370;

  return v3;
}

void __73__UIRemoteInputViewControllerInterface__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0009C18];
  v1 = qword_1ED499370;
  qword_1ED499370 = v0;

  v2 = qword_1ED499370;
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel__handleInputViewControllerState_ argumentIndex:0 ofReply:0];
}

- (void)_performInputViewControllerOutput:(id)a3
{
  v4 = a3;
  v5 = [(UIRemoteInputViewControllerInterface *)self responseDelegate];
  [v5 _performInputViewControllerOutput:v4];
}

- (void)_tearDownRemoteService
{
  v3 = [(UIRemoteInputViewControllerInterface *)self _auxiliaryConnection];
  v2 = [v3 remoteObjectProxy];
  [v2 _tearDownRemoteService];
}

- (void)_handleInputViewControllerState:(id)a3
{
  v4 = a3;
  v6 = [(UIRemoteInputViewControllerInterface *)self _auxiliaryConnection];
  v5 = [v6 remoteObjectProxy];
  [v5 _handleInputViewControllerState:v4];
}

- (void)_openURL:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4, 0);
  }
}

@end