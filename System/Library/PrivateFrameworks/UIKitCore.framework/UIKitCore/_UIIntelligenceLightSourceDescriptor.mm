@interface _UIIntelligenceLightSourceDescriptor
+ (id)_customDescriptorWithIdentifier:(id)identifier provider:(id)provider;
+ (id)directionalLightWithConfiguration:(id)configuration;
+ (id)livingLightWithPalette:(id)palette;
+ (id)livingLightWithPalette:(id)palette seed:(unsigned int)seed;
+ (id)sharedLight;
+ (id)sharedReactiveLight;
+ (id)sharedReactiveShimmeringLight;
+ (id)sharedShimmeringLight;
- (BOOL)isEqual:(id)equal;
- (_UIIntelligenceLightSourceDescriptor)descriptorWithModificationID:(id)d modifier:(id)modifier;
- (_UIIntelligenceLightSourceDescriptor)initWithIdentifier:(id)identifier lightSourceViewProvider:(id)provider;
- (id)_createLightSourceViewWithFrame:(CGRect)frame;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _UIIntelligenceLightSourceDescriptor

+ (id)livingLightWithPalette:(id)palette
{
  swift_getObjCClassMetadata();
  paletteCopy = palette;
  v5 = sub_188F7B7E4(paletteCopy);

  return v5;
}

+ (id)livingLightWithPalette:(id)palette seed:(unsigned int)seed
{
  swift_getObjCClassMetadata();
  paletteCopy = palette;
  v7 = sub_188F7B884(paletteCopy, seed);

  return v7;
}

+ (id)directionalLightWithConfiguration:(id)configuration
{
  swift_getObjCClassMetadata();
  configurationCopy = configuration;
  v5 = sub_1890DE478(configurationCopy);

  return v5;
}

+ (id)sharedLight
{
  swift_getObjCClassMetadata();
  v2 = sub_1890F1664(0x646572616873, 0xE600000000000000, sub_188DF0D1C, &block_descriptor_16_4);

  return v2;
}

+ (id)sharedReactiveLight
{
  swift_getObjCClassMetadata();
  v2 = sub_1890F1664(0x722D646572616873, 0xEF65766974636165, sub_1890F1748, &block_descriptor_10_2);

  return v2;
}

+ (id)sharedShimmeringLight
{
  swift_getObjCClassMetadata();
  v2 = sub_1890F17EC();

  return v2;
}

+ (id)sharedReactiveShimmeringLight
{
  swift_getObjCClassMetadata();
  v2 = sub_1890F1944();

  return v2;
}

- (_UIIntelligenceLightSourceDescriptor)initWithIdentifier:(id)identifier lightSourceViewProvider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = _UIIntelligenceLightSourceDescriptor;
  v9 = [(_UIIntelligenceLightSourceDescriptor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    v11 = _Block_copy(providerCopy);
    builder = v10->_builder;
    v10->_builder = v11;
  }

  return v10;
}

+ (id)_customDescriptorWithIdentifier:(id)identifier provider:(id)provider
{
  providerCopy = provider;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithIdentifier:identifierCopy lightSourceViewProvider:providerCopy];

  return v8;
}

- (id)_createLightSourceViewWithFrame:(CGRect)frame
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__205;
  v11 = __Block_byref_object_dispose__205;
  v12 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72___UIIntelligenceLightSourceDescriptor__createLightSourceViewWithFrame___block_invoke;
  v5[3] = &unk_1E710B920;
  v5[4] = self;
  v5[5] = &v7;
  frameCopy = frame;
  [UIView performWithoutAnimation:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

- (_UIIntelligenceLightSourceDescriptor)descriptorWithModificationID:(id)d modifier:(id)modifier
{
  modifierCopy = modifier;
  dCopy = d;
  v8 = [(_UIIntelligenceLightSourceDescriptor *)self copy];
  dCopy = [*(v8 + 16) stringByAppendingFormat:@".%@", dCopy];

  v10 = *(v8 + 16);
  *(v8 + 16) = dCopy;

  v11 = _Block_copy(self->_builder);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78___UIIntelligenceLightSourceDescriptor_descriptorWithModificationID_modifier___block_invoke;
  aBlock[3] = &unk_1E7124CF0;
  v18 = v11;
  v19 = modifierCopy;
  v12 = modifierCopy;
  v13 = v11;
  v14 = _Block_copy(aBlock);
  v15 = *(v8 + 8);
  *(v8 + 8) = v14;

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UIIntelligenceLightSourceDescriptor alloc];
  builder = self->_builder;
  identifier = self->_identifier;

  return [(_UIIntelligenceLightSourceDescriptor *)v4 initWithIdentifier:identifier lightSourceViewProvider:builder];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy[2] isEqualToString:self->_identifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end