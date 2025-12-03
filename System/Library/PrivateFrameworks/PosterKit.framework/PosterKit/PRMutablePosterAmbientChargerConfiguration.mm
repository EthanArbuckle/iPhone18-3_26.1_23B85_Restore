@interface PRMutablePosterAmbientChargerConfiguration
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)associateWithChargerIdentifier:(id)identifier;
- (void)disassociateFromChargerIdentifier:(id)identifier;
@end

@implementation PRMutablePosterAmbientChargerConfiguration

- (void)associateWithChargerIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    associatedChargerIdentifiers = [(PRPosterAmbientChargerConfiguration *)self associatedChargerIdentifiers];
    v5 = [associatedChargerIdentifiers setByAddingObject:identifierCopy];

    [(PRPosterAmbientChargerConfiguration *)self setAssociatedChargerIdentifiers:v5];
  }
}

- (void)disassociateFromChargerIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    associatedChargerIdentifiers = [(PRPosterAmbientChargerConfiguration *)self associatedChargerIdentifiers];
    v6 = [associatedChargerIdentifiers mutableCopy];

    [v6 removeObject:identifierCopy];
    [(PRPosterAmbientChargerConfiguration *)self setAssociatedChargerIdentifiers:v6];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRPosterAmbientChargerConfiguration allocWithZone:zone];
  associatedChargerIdentifiers = [(PRPosterAmbientChargerConfiguration *)self associatedChargerIdentifiers];
  v6 = [(PRPosterAmbientChargerConfiguration *)v4 initWithAssociatedChargerIdentifiers:associatedChargerIdentifiers];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  associatedChargerIdentifiers = [(PRPosterAmbientChargerConfiguration *)self associatedChargerIdentifiers];
  v6 = [v4 initWithAssociatedChargerIdentifiers:associatedChargerIdentifiers];

  return v6;
}

@end