@interface UIOverlayServiceInterfaceSpecification
@end

@implementation UIOverlayServiceInterfaceSpecification

void __52___UIOverlayServiceInterfaceSpecification_interface__block_invoke()
{
  v4 = [MEMORY[0x1E698F470] interfaceWithIdentifier:@"com.apple.UIKit.OverlayUI.OverlayService"];
  v0 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1EFEA2B00];
  [v4 setServer:v0];

  v1 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F00FCAF8];
  [v4 setClient:v1];

  [v4 setClientMessagingExpectation:0];
  v2 = [v4 copy];
  v3 = _MergedGlobals_1204;
  _MergedGlobals_1204 = v2;
}

@end