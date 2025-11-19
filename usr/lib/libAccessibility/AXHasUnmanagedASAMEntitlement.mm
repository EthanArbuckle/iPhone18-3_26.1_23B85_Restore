@interface AXHasUnmanagedASAMEntitlement
@end

@implementation AXHasUnmanagedASAMEntitlement

BOOL ___AXHasUnmanagedASAMEntitlement_block_invoke()
{
  result = _AXHasBooleanEntitlement(kAXAACLegacyEntitlement) || _AXHasBooleanEntitlement(kAXAACEntitlement) || _AXHasBooleanEntitlement(kAXInternalASAMEntitlement);
  _AXHasUnmanagedASAMEntitlement_hasUnmanagedASAMEntitlement = result;
  return result;
}

@end