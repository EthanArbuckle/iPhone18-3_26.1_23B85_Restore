@interface SBHWidgetStackDescriptor
- (BOOL)isEqual:(id)equal;
- (NSString)sbh_appName;
- (NSString)sbh_galleryItemIdentifier;
- (NSString)sbh_widgetDescription;
- (SBHWidgetStackDescriptor)initWithSmallStackDescriptors:(id)descriptors mediumStackDescriptors:(id)stackDescriptors largeStackDescriptors:(id)largeStackDescriptors extraLargeStackDescriptors:(id)extraLargeStackDescriptors;
- (id)descriptorsForSizeClass:(int64_t)class;
- (unint64_t)sbh_supportedSizeClasses;
@end

@implementation SBHWidgetStackDescriptor

- (SBHWidgetStackDescriptor)initWithSmallStackDescriptors:(id)descriptors mediumStackDescriptors:(id)stackDescriptors largeStackDescriptors:(id)largeStackDescriptors extraLargeStackDescriptors:(id)extraLargeStackDescriptors
{
  descriptorsCopy = descriptors;
  stackDescriptorsCopy = stackDescriptors;
  largeStackDescriptorsCopy = largeStackDescriptors;
  extraLargeStackDescriptorsCopy = extraLargeStackDescriptors;
  v24.receiver = self;
  v24.super_class = SBHWidgetStackDescriptor;
  v14 = [(SBHWidgetStackDescriptor *)&v24 init];
  if (v14)
  {
    v15 = [descriptorsCopy copy];
    smallStackDescriptors = v14->_smallStackDescriptors;
    v14->_smallStackDescriptors = v15;

    v17 = [stackDescriptorsCopy copy];
    mediumStackDescriptors = v14->_mediumStackDescriptors;
    v14->_mediumStackDescriptors = v17;

    v19 = [largeStackDescriptorsCopy copy];
    largeStackDescriptors = v14->_largeStackDescriptors;
    v14->_largeStackDescriptors = v19;

    v21 = [extraLargeStackDescriptorsCopy copy];
    extraLargeStackDescriptors = v14->_extraLargeStackDescriptors;
    v14->_extraLargeStackDescriptors = v21;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:self ofExpectedClass:objc_opt_class()];
  smallStackDescriptors = self->_smallStackDescriptors;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __36__SBHWidgetStackDescriptor_isEqual___block_invoke;
  v28[3] = &unk_1E80896E8;
  v7 = equalCopy;
  v29 = v7;
  v8 = [v5 appendObject:smallStackDescriptors counterpart:v28];
  mediumStackDescriptors = self->_mediumStackDescriptors;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __36__SBHWidgetStackDescriptor_isEqual___block_invoke_2;
  v26[3] = &unk_1E80896E8;
  v10 = v7;
  v27 = v10;
  v11 = [v5 appendObject:mediumStackDescriptors counterpart:v26];
  largeStackDescriptors = self->_largeStackDescriptors;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __36__SBHWidgetStackDescriptor_isEqual___block_invoke_3;
  v24[3] = &unk_1E80896E8;
  v13 = v10;
  v25 = v13;
  v14 = [v5 appendObject:largeStackDescriptors counterpart:v24];
  extraLargeStackDescriptors = self->_extraLargeStackDescriptors;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __36__SBHWidgetStackDescriptor_isEqual___block_invoke_4;
  v22 = &unk_1E80896E8;
  v23 = v13;
  v16 = v13;
  v17 = [v5 appendObject:extraLargeStackDescriptors counterpart:&v19];
  LOBYTE(extraLargeStackDescriptors) = [v5 isEqual];

  return extraLargeStackDescriptors;
}

- (id)descriptorsForSizeClass:(int64_t)class
{
  if ((class - 1) > 3)
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = *(&self->_sbh_galleryItemIdentifier + class);
  }

  return v4;
}

- (unint64_t)sbh_supportedSizeClasses
{
  v3 = [(NSArray *)self->_smallStackDescriptors count]!= 0;
  if ([(NSArray *)self->_mediumStackDescriptors count])
  {
    v4 = (2 * v3) | 4;
  }

  else
  {
    v4 = 2 * v3;
  }

  if ([(NSArray *)self->_largeStackDescriptors count])
  {
    v4 |= 8uLL;
  }

  if ([(NSArray *)self->_extraLargeStackDescriptors count])
  {
    return v4 | 0x10;
  }

  else
  {
    return v4;
  }
}

- (NSString)sbh_appName
{
  v2 = SBHBundle();
  v3 = [v2 localizedStringForKey:@"WIDGET_ADD_SHEET_SUGGESTED_STACK_DISPLAY_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  return v3;
}

- (NSString)sbh_widgetDescription
{
  v2 = SBHBundle();
  v3 = [v2 localizedStringForKey:@"WIDGET_ADD_SHEET_SUGGESTED_STACK_DESCRIPTION" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  return v3;
}

- (NSString)sbh_galleryItemIdentifier
{
  sbh_galleryItemIdentifier = self->_sbh_galleryItemIdentifier;
  if (!sbh_galleryItemIdentifier)
  {
    v4 = MEMORY[0x1E696AEC0];
    sbh_appName = [(SBHWidgetStackDescriptor *)self sbh_appName];
    sbh_widgetName = [(SBHWidgetStackDescriptor *)self sbh_widgetName];
    sbh_widgetDescription = [(SBHWidgetStackDescriptor *)self sbh_widgetDescription];
    v8 = [v4 stringWithFormat:@"'%@'-'%@'-'%@'-%lu", sbh_appName, sbh_widgetName, sbh_widgetDescription, -[SBHWidgetStackDescriptor sbh_supportedSizeClasses](self, "sbh_supportedSizeClasses")];
    v9 = self->_sbh_galleryItemIdentifier;
    self->_sbh_galleryItemIdentifier = v8;

    sbh_galleryItemIdentifier = self->_sbh_galleryItemIdentifier;
  }

  v10 = sbh_galleryItemIdentifier;

  return v10;
}

@end