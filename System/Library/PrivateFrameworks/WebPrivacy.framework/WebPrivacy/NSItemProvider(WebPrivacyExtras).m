@interface NSItemProvider(WebPrivacyExtras)
- (void)_wp_removeTrackingInformationFromURLRepresentation;
@end

@implementation NSItemProvider(WebPrivacyExtras)

- (void)_wp_removeTrackingInformationFromURLRepresentation
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*MEMORY[0x277CE1E90] identifier];
  v3 = [a1 _representationConformingToType:v2];

  if (v3)
  {
    v4 = [v3 typeIdentifier];
    v5 = [*MEMORY[0x277CE1D70] identifier];
    v6 = [v4 isEqualToString:v5];

    if (v6)
    {
      v7 = WPOSLogAPI();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = v4;
        _os_log_impl(&dword_273D20000, v7, OS_LOG_TYPE_INFO, "Skipping URL returned from item provider (%@)", buf, 0xCu);
      }
    }

    else
    {
      v8 = [v3 preferredRepresentation];
      v9 = [v3 visibility];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke;
      v11[3] = &unk_279EAF308;
      v12 = v3;
      v13 = v4;
      [a1 _addRepresentationType:v13 preferredRepresentation:v8 visibility:v9 loader:v11];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end