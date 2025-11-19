@interface WBSBiomeDonationManager(SafariSharedUI)
- (uint64_t)_biomeWindowProperty:()SafariSharedUI;
- (void)donateWindowProxyWithDomain:()SafariSharedUI openedDomain:windowProxyProperty:accessedPropertyDirectly:;
@end

@implementation WBSBiomeDonationManager(SafariSharedUI)

- (void)donateWindowProxyWithDomain:()SafariSharedUI openedDomain:windowProxyProperty:accessedPropertyDirectly:
{
  v10 = a3;
  v11 = a4;
  if ([objc_opt_class() isBiomeStreamDonationAvailable])
  {
    v12 = objc_alloc(MEMORY[0x1E698EE98]);
    v13 = WBSTimestampForBiomeEventDonation();
    v14 = [a1 _biomeWindowProperty:a5];
    v15 = [MEMORY[0x1E696AD98] numberWithInt:a6];
    v16 = [v12 initWithDomain:v10 openedDomain:v11 visited:v13 property:v14 accessedPropertyDirectly:v15];

    if (v16)
    {
      objc_initWeak(&location, a1);
      v17 = *&a1[*MEMORY[0x1E69C9100]];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __129__WBSBiomeDonationManager_SafariSharedUI__donateWindowProxyWithDomain_openedDomain_windowProxyProperty_accessedPropertyDirectly___block_invoke;
      block[3] = &unk_1E8283C90;
      objc_copyWeak(&v20, &location);
      v19 = v16;
      dispatch_async(v17, block);

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }
}

- (uint64_t)_biomeWindowProperty:()SafariSharedUI
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1C6A84E80[a3];
  }
}

@end