@interface UIRuntimeAccessibilityConfiguration
- (UIRuntimeAccessibilityConfiguration)initWithCoder:(id)a3;
- (UIRuntimeAccessibilityConfiguration)initWithObject:(id)a3 label:(id)a4 identifier:(id)a5 hint:(id)a6 traits:(id)a7 andIsAccessibilityElement:(id)a8;
- (void)applyConfiguration;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIRuntimeAccessibilityConfiguration

- (UIRuntimeAccessibilityConfiguration)initWithObject:(id)a3 label:(id)a4 identifier:(id)a5 hint:(id)a6 traits:(id)a7 andIsAccessibilityElement:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v34.receiver = self;
  v34.super_class = UIRuntimeAccessibilityConfiguration;
  v21 = [(UIRuntimeAccessibilityConfiguration *)&v34 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->object, a3);
    v23 = [v18 copy];
    accessibilityConfigurationHint = v22->accessibilityConfigurationHint;
    v22->accessibilityConfigurationHint = v23;

    v25 = [v17 copy];
    accessibilityConfigurationIdentifier = v22->accessibilityConfigurationIdentifier;
    v22->accessibilityConfigurationIdentifier = v25;

    v27 = [v16 copy];
    accessibilityConfigurationLabel = v22->accessibilityConfigurationLabel;
    v22->accessibilityConfigurationLabel = v27;

    v29 = [v19 copy];
    accessibilityConfigurationTraits = v22->accessibilityConfigurationTraits;
    v22->accessibilityConfigurationTraits = v29;

    v31 = [v20 copy];
    isAccessibilityConfigurationElement = v22->isAccessibilityConfigurationElement;
    v22->isAccessibilityConfigurationElement = v31;
  }

  return v22;
}

- (UIRuntimeAccessibilityConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = UIRuntimeAccessibilityConfiguration;
  v5 = [(UIRuntimeAccessibilityConfiguration *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UIAccessibileObject"];
    object = v5->object;
    v5->object = v6;

    v8 = [v4 decodeObjectForKey:@"UIAccessibilityHint"];
    accessibilityConfigurationHint = v5->accessibilityConfigurationHint;
    v5->accessibilityConfigurationHint = v8;

    v10 = [v4 decodeObjectForKey:@"UIAccessibilityIdentifier"];
    accessibilityConfigurationIdentifier = v5->accessibilityConfigurationIdentifier;
    v5->accessibilityConfigurationIdentifier = v10;

    v12 = [v4 decodeObjectForKey:@"UIAccessibilityLabel"];
    accessibilityConfigurationLabel = v5->accessibilityConfigurationLabel;
    v5->accessibilityConfigurationLabel = v12;

    v14 = [v4 decodeObjectForKey:@"UIAccessibilityTraits"];
    accessibilityConfigurationTraits = v5->accessibilityConfigurationTraits;
    v5->accessibilityConfigurationTraits = v14;

    v16 = [v4 decodeObjectForKey:@"UIIsAccessibilityElement"];
    isAccessibilityConfigurationElement = v5->isAccessibilityConfigurationElement;
    v5->isAccessibilityConfigurationElement = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  object = self->object;
  v11 = v4;
  if (object)
  {
    [v4 encodeObject:object forKey:@"UIAccessibileObject"];
    v4 = v11;
  }

  accessibilityConfigurationHint = self->accessibilityConfigurationHint;
  if (accessibilityConfigurationHint)
  {
    [v11 encodeObject:accessibilityConfigurationHint forKey:@"UIAccessibilityHint"];
    v4 = v11;
  }

  accessibilityConfigurationIdentifier = self->accessibilityConfigurationIdentifier;
  if (accessibilityConfigurationIdentifier)
  {
    [v11 encodeObject:accessibilityConfigurationIdentifier forKey:@"UIAccessibilityIdentifier"];
    v4 = v11;
  }

  accessibilityConfigurationLabel = self->accessibilityConfigurationLabel;
  if (accessibilityConfigurationLabel)
  {
    [v11 encodeObject:accessibilityConfigurationLabel forKey:@"UIAccessibilityLabel"];
    v4 = v11;
  }

  accessibilityConfigurationTraits = self->accessibilityConfigurationTraits;
  if (accessibilityConfigurationTraits)
  {
    [v11 encodeObject:accessibilityConfigurationTraits forKey:@"UIAccessibilityTraits"];
    v4 = v11;
  }

  isAccessibilityConfigurationElement = self->isAccessibilityConfigurationElement;
  if (isAccessibilityConfigurationElement)
  {
    [v11 encodeObject:isAccessibilityConfigurationElement forKey:@"UIIsAccessibilityElement"];
    v4 = v11;
  }
}

- (void)applyConfiguration
{
  isAccessibilityConfigurationElement = self->isAccessibilityConfigurationElement;
  if (isAccessibilityConfigurationElement)
  {
    [self->object setIsAccessibilityElement:[(NSNumber *)isAccessibilityConfigurationElement BOOLValue]];
  }

  if (self->accessibilityConfigurationHint)
  {
    [self->object setAccessibilityHint:?];
  }

  if (self->accessibilityConfigurationIdentifier)
  {
    [self->object setAccessibilityIdentifier:?];
  }

  if (self->accessibilityConfigurationLabel)
  {
    [self->object setAccessibilityLabel:?];
  }

  accessibilityConfigurationTraits = self->accessibilityConfigurationTraits;
  if (accessibilityConfigurationTraits)
  {
    object = self->object;
    v6 = [(NSNumber *)accessibilityConfigurationTraits longLongValue];

    [object setAccessibilityTraits:v6];
  }
}

@end