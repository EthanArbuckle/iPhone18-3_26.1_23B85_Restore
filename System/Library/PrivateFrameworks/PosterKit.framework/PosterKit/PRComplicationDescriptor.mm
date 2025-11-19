@interface PRComplicationDescriptor
- (BOOL)hasMatchingDescriptor;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PRComplicationDescriptor)initWithCoder:(id)a3;
- (PRComplicationDescriptor)initWithPRSWidget:(id)a3;
- (PRComplicationDescriptor)initWithUniqueIdentifier:(id)a3 widget:(id)a4;
- (PRComplicationDescriptor)initWithUniqueIdentifier:(id)a3 widget:(id)a4 suggestedComplication:(id)a5;
- (id)PRSWidget;
- (id)copyWithIntent:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)intent;
- (id)widgetDescriptor;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRComplicationDescriptor

- (PRComplicationDescriptor)initWithUniqueIdentifier:(id)a3 widget:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PRComplicationDescriptor;
  v8 = [(PRComplicationDescriptor *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v9;

    objc_storeStrong(&v8->_widget, a4);
  }

  return v8;
}

- (PRComplicationDescriptor)initWithUniqueIdentifier:(id)a3 widget:(id)a4 suggestedComplication:(id)a5
{
  v8 = a5;
  v9 = [(PRComplicationDescriptor *)self initWithUniqueIdentifier:a3 widget:a4];
  v10 = v9;
  if (v9)
  {
    [(PRComplicationDescriptor *)v9 setSuggestedComplication:v8];
  }

  return v10;
}

- (PRComplicationDescriptor)initWithPRSWidget:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E6994290];
    v5 = a3;
    v6 = [v4 alloc];
    v7 = [v5 extensionBundleIdentifier];
    v8 = [v5 containerBundleIdentifier];
    v9 = [v6 initWithExtensionBundleIdentifier:v7 containerBundleIdentifier:v8 deviceIdentifier:0];

    v10 = objc_alloc(MEMORY[0x1E6994370]);
    v11 = [v5 kind];
    v12 = [v5 family];
    v13 = [v5 intent];
    v14 = [v10 initWithExtensionIdentity:v9 kind:v11 family:v12 intent:v13 activityIdentifier:0];

    v15 = [v5 uniqueIdentifier];

    self = [(PRComplicationDescriptor *)self initWithUniqueIdentifier:v15 widget:v14];
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)hasMatchingDescriptor
{
  v3 = [(PRComplicationDescriptor *)self widgetDescriptor];
  v4 = [(PRComplicationDescriptor *)self widget];
  [v4 family];
  v5 = CHSWidgetFamilyMaskFromWidgetFamily();

  if (v3)
  {
    v6 = (v5 & ~[v3 supportedFamilies]) == 0;
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
  v5 = [(CHSWidget *)self->_widget kind];
  v6 = [(CHSWidget *)self->_widget extensionBundleIdentifier];
  v7 = [(CHSWidget *)self->_widget containerBundleIdentifier];
  v8 = [(CHSWidget *)self->_widget family];
  v9 = [(CHSWidget *)self->_widget intent];
  v10 = [v3 initWithUniqueIdentifier:uniqueIdentifier kind:v5 extensionBundleIdentifier:v6 containerBundleIdentifier:v7 family:v8 intent:v9];

  return v10;
}

- (id)widgetDescriptor
{
  v3 = PRSharedWidgetExtensionProvider();
  v4 = [v3 widgetDescriptorForWidget:self->_widget];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  uniqueIdentifier = self->_uniqueIdentifier;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __36__PRComplicationDescriptor_isEqual___block_invoke;
  v18[3] = &unk_1E7843888;
  v7 = v4;
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendString:self->_uniqueIdentifier];
  v5 = [v3 appendObject:self->_widget];
  v6 = [v3 hash];

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_uniqueIdentifier withName:@"uniqueIdentifier" skipIfEmpty:1];
  v4 = [v3 appendObject:self->_widget withName:@"widget" skipIfNil:1];
  v5 = [v3 appendObject:self->_suggestedComplication withName:@"suggestedComplication" skipIfNil:1];
  v6 = [v3 build];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRComplicationDescriptor alloc];
  v5 = [(NSString *)self->_uniqueIdentifier copy];
  v6 = [(CHSWidget *)self->_widget copy];
  v7 = [(ATXComplication *)self->_suggestedComplication copy];
  v8 = [(PRComplicationDescriptor *)v4 initWithUniqueIdentifier:v5 widget:v6 suggestedComplication:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRComplicationDescriptor *)self uniqueIdentifier];
  [v4 encodeObject:v5 forKey:@"uniqueIdentifier"];

  v6 = [(PRComplicationDescriptor *)self widget];
  [v4 encodeObject:v6 forKey:@"widget"];

  v7 = [(PRComplicationDescriptor *)self suggestedComplication];
  [v4 encodeObject:v7 forKey:@"suggestedComplication"];
}

- (PRComplicationDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"widget"];
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
    v10 = 0;
  }

  else
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestedComplication"];
    self = [(PRComplicationDescriptor *)self initWithUniqueIdentifier:v5 widget:v7 suggestedComplication:v9];

    v10 = self;
  }

  return v10;
}

- (id)intent
{
  v2 = [(CHSWidget *)self->_widget intentReference];
  v3 = [v2 intent];

  return v3;
}

- (id)copyWithIntent:(id)a3
{
  v4 = [(CHSWidget *)self->_widget widgetByReplacingIntent:a3];
  v5 = [(PRComplicationDescriptor *)self copy];
  [v5 setWidget:v4];

  return v5;
}

@end