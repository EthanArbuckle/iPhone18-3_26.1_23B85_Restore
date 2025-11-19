@interface UMLProviderSideEffects
- (UMLProviderSideEffects)init;
@end

@implementation UMLProviderSideEffects

- (UMLProviderSideEffects)init
{
  v7.receiver = self;
  v7.super_class = UMLProviderSideEffects;
  v2 = [(UMLProviderSideEffects *)&v7 init];
  if (!v2)
  {
    sub_22EE770C0();
  }

  v3 = v2;
  v4 = objc_alloc_init(UMAppleKeyStoreProvider);
  sub_22EE770FC(v3, v4);

  v5 = objc_alloc_init(UMFilesystemProvider);
  sub_22EE77118(v3, v5);

  return v3;
}

@end