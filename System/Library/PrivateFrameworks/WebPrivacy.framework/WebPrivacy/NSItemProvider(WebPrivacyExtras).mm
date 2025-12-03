@interface NSItemProvider(WebPrivacyExtras)
- (void)_wp_removeTrackingInformationFromURLRepresentation;
@end

@implementation NSItemProvider(WebPrivacyExtras)

- (void)_wp_removeTrackingInformationFromURLRepresentation
{
  v16 = *MEMORY[0x277D85DE8];
  identifier = [*MEMORY[0x277CE1E90] identifier];
  v3 = [self _representationConformingToType:identifier];

  if (v3)
  {
    typeIdentifier = [v3 typeIdentifier];
    identifier2 = [*MEMORY[0x277CE1D70] identifier];
    v6 = [typeIdentifier isEqualToString:identifier2];

    if (v6)
    {
      v7 = WPOSLogAPI();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v15 = typeIdentifier;
        _os_log_impl(&dword_273D20000, v7, OS_LOG_TYPE_INFO, "Skipping URL returned from item provider (%@)", buf, 0xCu);
      }
    }

    else
    {
      preferredRepresentation = [v3 preferredRepresentation];
      visibility = [v3 visibility];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __86__NSItemProvider_WebPrivacyExtras___wp_removeTrackingInformationFromURLRepresentation__block_invoke;
      v11[3] = &unk_279EAF308;
      v12 = v3;
      v13 = typeIdentifier;
      [self _addRepresentationType:v13 preferredRepresentation:preferredRepresentation visibility:visibility loader:v11];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end