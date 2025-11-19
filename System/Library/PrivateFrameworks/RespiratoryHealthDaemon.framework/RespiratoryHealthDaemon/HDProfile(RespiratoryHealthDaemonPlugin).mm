@interface HDProfile(RespiratoryHealthDaemonPlugin)
- (id)respiratoryExtension;
- (void)respiratoryExtension;
@end

@implementation HDProfile(RespiratoryHealthDaemonPlugin)

- (id)respiratoryExtension
{
  v4 = [a1 profileExtensionWithIdentifier:*MEMORY[0x277D46B90]];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(HDProfile(RespiratoryHealthDaemonPlugin) *)v4 respiratoryExtension];
    }
  }

  return v4;
}

- (void)respiratoryExtension
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:a3 file:@"HDProfile+RespiratoryHealthDaemonPlugin.m" lineNumber:20 description:{@"Unexpected class for respiratory health profile extension: %@", objc_opt_class()}];
}

@end