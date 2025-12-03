@interface UIRuntimeAccessibilityConfiguration
- (UIRuntimeAccessibilityConfiguration)initWithCoder:(id)coder;
- (UIRuntimeAccessibilityConfiguration)initWithObject:(id)object label:(id)label identifier:(id)identifier hint:(id)hint traits:(id)traits andIsAccessibilityElement:(id)element;
- (void)applyConfiguration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIRuntimeAccessibilityConfiguration

- (UIRuntimeAccessibilityConfiguration)initWithObject:(id)object label:(id)label identifier:(id)identifier hint:(id)hint traits:(id)traits andIsAccessibilityElement:(id)element
{
  objectCopy = object;
  labelCopy = label;
  identifierCopy = identifier;
  hintCopy = hint;
  traitsCopy = traits;
  elementCopy = element;
  v34.receiver = self;
  v34.super_class = UIRuntimeAccessibilityConfiguration;
  v21 = [(UIRuntimeAccessibilityConfiguration *)&v34 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->object, object);
    v23 = [hintCopy copy];
    accessibilityConfigurationHint = v22->accessibilityConfigurationHint;
    v22->accessibilityConfigurationHint = v23;

    v25 = [identifierCopy copy];
    accessibilityConfigurationIdentifier = v22->accessibilityConfigurationIdentifier;
    v22->accessibilityConfigurationIdentifier = v25;

    v27 = [labelCopy copy];
    accessibilityConfigurationLabel = v22->accessibilityConfigurationLabel;
    v22->accessibilityConfigurationLabel = v27;

    v29 = [traitsCopy copy];
    accessibilityConfigurationTraits = v22->accessibilityConfigurationTraits;
    v22->accessibilityConfigurationTraits = v29;

    v31 = [elementCopy copy];
    isAccessibilityConfigurationElement = v22->isAccessibilityConfigurationElement;
    v22->isAccessibilityConfigurationElement = v31;
  }

  return v22;
}

- (UIRuntimeAccessibilityConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = UIRuntimeAccessibilityConfiguration;
  v5 = [(UIRuntimeAccessibilityConfiguration *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UIAccessibileObject"];
    object = v5->object;
    v5->object = v6;

    v8 = [coderCopy decodeObjectForKey:@"UIAccessibilityHint"];
    accessibilityConfigurationHint = v5->accessibilityConfigurationHint;
    v5->accessibilityConfigurationHint = v8;

    v10 = [coderCopy decodeObjectForKey:@"UIAccessibilityIdentifier"];
    accessibilityConfigurationIdentifier = v5->accessibilityConfigurationIdentifier;
    v5->accessibilityConfigurationIdentifier = v10;

    v12 = [coderCopy decodeObjectForKey:@"UIAccessibilityLabel"];
    accessibilityConfigurationLabel = v5->accessibilityConfigurationLabel;
    v5->accessibilityConfigurationLabel = v12;

    v14 = [coderCopy decodeObjectForKey:@"UIAccessibilityTraits"];
    accessibilityConfigurationTraits = v5->accessibilityConfigurationTraits;
    v5->accessibilityConfigurationTraits = v14;

    v16 = [coderCopy decodeObjectForKey:@"UIIsAccessibilityElement"];
    isAccessibilityConfigurationElement = v5->isAccessibilityConfigurationElement;
    v5->isAccessibilityConfigurationElement = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  object = self->object;
  v11 = coderCopy;
  if (object)
  {
    [coderCopy encodeObject:object forKey:@"UIAccessibileObject"];
    coderCopy = v11;
  }

  accessibilityConfigurationHint = self->accessibilityConfigurationHint;
  if (accessibilityConfigurationHint)
  {
    [v11 encodeObject:accessibilityConfigurationHint forKey:@"UIAccessibilityHint"];
    coderCopy = v11;
  }

  accessibilityConfigurationIdentifier = self->accessibilityConfigurationIdentifier;
  if (accessibilityConfigurationIdentifier)
  {
    [v11 encodeObject:accessibilityConfigurationIdentifier forKey:@"UIAccessibilityIdentifier"];
    coderCopy = v11;
  }

  accessibilityConfigurationLabel = self->accessibilityConfigurationLabel;
  if (accessibilityConfigurationLabel)
  {
    [v11 encodeObject:accessibilityConfigurationLabel forKey:@"UIAccessibilityLabel"];
    coderCopy = v11;
  }

  accessibilityConfigurationTraits = self->accessibilityConfigurationTraits;
  if (accessibilityConfigurationTraits)
  {
    [v11 encodeObject:accessibilityConfigurationTraits forKey:@"UIAccessibilityTraits"];
    coderCopy = v11;
  }

  isAccessibilityConfigurationElement = self->isAccessibilityConfigurationElement;
  if (isAccessibilityConfigurationElement)
  {
    [v11 encodeObject:isAccessibilityConfigurationElement forKey:@"UIIsAccessibilityElement"];
    coderCopy = v11;
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
    longLongValue = [(NSNumber *)accessibilityConfigurationTraits longLongValue];

    [object setAccessibilityTraits:longLongValue];
  }
}

@end