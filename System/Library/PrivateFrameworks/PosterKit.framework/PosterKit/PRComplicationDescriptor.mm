@interface PRComplicationDescriptor
- (BOOL)hasMatchingDescriptor;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PRComplicationDescriptor)initWithCoder:(id)coder;
- (PRComplicationDescriptor)initWithPRSWidget:(id)widget;
- (PRComplicationDescriptor)initWithUniqueIdentifier:(id)identifier widget:(id)widget;
- (PRComplicationDescriptor)initWithUniqueIdentifier:(id)identifier widget:(id)widget suggestedComplication:(id)complication;
- (id)PRSWidget;
- (id)copyWithIntent:(id)intent;
- (id)copyWithZone:(_NSZone *)zone;
- (id)intent;
- (id)widgetDescriptor;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRComplicationDescriptor

- (PRComplicationDescriptor)initWithUniqueIdentifier:(id)identifier widget:(id)widget
{
  identifierCopy = identifier;
  widgetCopy = widget;
  v12.receiver = self;
  v12.super_class = PRComplicationDescriptor;
  v8 = [(PRComplicationDescriptor *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v9;

    objc_storeStrong(&v8->_widget, widget);
  }

  return v8;
}

- (PRComplicationDescriptor)initWithUniqueIdentifier:(id)identifier widget:(id)widget suggestedComplication:(id)complication
{
  complicationCopy = complication;
  v9 = [(PRComplicationDescriptor *)self initWithUniqueIdentifier:identifier widget:widget];
  v10 = v9;
  if (v9)
  {
    [(PRComplicationDescriptor *)v9 setSuggestedComplication:complicationCopy];
  }

  return v10;
}

- (PRComplicationDescriptor)initWithPRSWidget:(id)widget
{
  if (widget)
  {
    v4 = MEMORY[0x1E6994290];
    widgetCopy = widget;
    v6 = [v4 alloc];
    extensionBundleIdentifier = [widgetCopy extensionBundleIdentifier];
    containerBundleIdentifier = [widgetCopy containerBundleIdentifier];
    v9 = [v6 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier deviceIdentifier:0];

    v10 = objc_alloc(MEMORY[0x1E6994370]);
    kind = [widgetCopy kind];
    family = [widgetCopy family];
    intent = [widgetCopy intent];
    v14 = [v10 initWithExtensionIdentity:v9 kind:kind family:family intent:intent activityIdentifier:0];

    uniqueIdentifier = [widgetCopy uniqueIdentifier];

    self = [(PRComplicationDescriptor *)self initWithUniqueIdentifier:uniqueIdentifier widget:v14];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)hasMatchingDescriptor
{
  widgetDescriptor = [(PRComplicationDescriptor *)self widgetDescriptor];
  widget = [(PRComplicationDescriptor *)self widget];
  [widget family];
  v5 = CHSWidgetFamilyMaskFromWidgetFamily();

  if (widgetDescriptor)
  {
    v6 = (v5 & ~[widgetDescriptor supportedFamilies]) == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)PRSWidget
{
  v3 = objc_alloc(MEMORY[0x1E69C5060]);
  uniqueIdentifier = self->_uniqueIdentifier;
  kind = [(CHSWidget *)self->_widget kind];
  extensionBundleIdentifier = [(CHSWidget *)self->_widget extensionBundleIdentifier];
  containerBundleIdentifier = [(CHSWidget *)self->_widget containerBundleIdentifier];
  family = [(CHSWidget *)self->_widget family];
  intent = [(CHSWidget *)self->_widget intent];
  v10 = [v3 initWithUniqueIdentifier:uniqueIdentifier kind:kind extensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier family:family intent:intent];

  return v10;
}

- (id)widgetDescriptor
{
  v3 = PRSharedWidgetExtensionProvider();
  v4 = [v3 widgetDescriptorForWidget:self->_widget];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  uniqueIdentifier = self->_uniqueIdentifier;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __36__PRComplicationDescriptor_isEqual___block_invoke;
  v18[3] = &unk_1E7843888;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendString:uniqueIdentifier counterpart:v18];
  widget = self->_widget;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __36__PRComplicationDescriptor_isEqual___block_invoke_2;
  v16 = &unk_1E7844AE0;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendObject:widget counterpart:&v13];
  LOBYTE(widget) = [v5 isEqual];

  return widget;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendString:self->_uniqueIdentifier];
  v5 = [builder appendObject:self->_widget];
  v6 = [builder hash];

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_uniqueIdentifier withName:@"uniqueIdentifier" skipIfEmpty:1];
  v4 = [v3 appendObject:self->_widget withName:@"widget" skipIfNil:1];
  v5 = [v3 appendObject:self->_suggestedComplication withName:@"suggestedComplication" skipIfNil:1];
  build = [v3 build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRComplicationDescriptor alloc];
  v5 = [(NSString *)self->_uniqueIdentifier copy];
  v6 = [(CHSWidget *)self->_widget copy];
  v7 = [(ATXComplication *)self->_suggestedComplication copy];
  v8 = [(PRComplicationDescriptor *)v4 initWithUniqueIdentifier:v5 widget:v6 suggestedComplication:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueIdentifier = [(PRComplicationDescriptor *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  widget = [(PRComplicationDescriptor *)self widget];
  [coderCopy encodeObject:widget forKey:@"widget"];

  suggestedComplication = [(PRComplicationDescriptor *)self suggestedComplication];
  [coderCopy encodeObject:suggestedComplication forKey:@"suggestedComplication"];
}

- (PRComplicationDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"widget"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestedComplication"];
    self = [(PRComplicationDescriptor *)self initWithUniqueIdentifier:v5 widget:v7 suggestedComplication:v9];

    selfCopy = self;
  }

  return selfCopy;
}

- (id)intent
{
  intentReference = [(CHSWidget *)self->_widget intentReference];
  intent = [intentReference intent];

  return intent;
}

- (id)copyWithIntent:(id)intent
{
  v4 = [(CHSWidget *)self->_widget widgetByReplacingIntent:intent];
  v5 = [(PRComplicationDescriptor *)self copy];
  [v5 setWidget:v4];

  return v5;
}

@end