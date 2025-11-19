@interface _UIIntelligenceLightSourceDescriptor
+ (id)_customDescriptorWithIdentifier:(id)a3 provider:(id)a4;
+ (id)directionalLightWithConfiguration:(id)a3;
+ (id)livingLightWithPalette:(id)a3;
+ (id)livingLightWithPalette:(id)a3 seed:(unsigned int)a4;
+ (id)sharedLight;
+ (id)sharedReactiveLight;
+ (id)sharedReactiveShimmeringLight;
+ (id)sharedShimmeringLight;
- (BOOL)isEqual:(id)a3;
- (_UIIntelligenceLightSourceDescriptor)descriptorWithModificationID:(id)a3 modifier:(id)a4;
- (_UIIntelligenceLightSourceDescriptor)initWithIdentifier:(id)a3 lightSourceViewProvider:(id)a4;
- (id)_createLightSourceViewWithFrame:(CGRect)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _UIIntelligenceLightSourceDescriptor

+ (id)livingLightWithPalette:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_188F7B7E4(v4);

  return v5;
}

+ (id)livingLightWithPalette:(id)a3 seed:(unsigned int)a4
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = sub_188F7B884(v6, a4);

  return v7;
}

+ (id)directionalLightWithConfiguration:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_1890DE478(v4);

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

- (_UIIntelligenceLightSourceDescriptor)initWithIdentifier:(id)a3 lightSourceViewProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _UIIntelligenceLightSourceDescriptor;
  v9 = [(_UIIntelligenceLightSourceDescriptor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    v11 = _Block_copy(v8);
    builder = v10->_builder;
    v10->_builder = v11;
  }

  return v10;
}

+ (id)_customDescriptorWithIdentifier:(id)a3 provider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithIdentifier:v7 lightSourceViewProvider:v6];

  return v8;
}

- (id)_createLightSourceViewWithFrame:(CGRect)a3
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
  v6 = a3;
  [UIView performWithoutAnimation:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v3;
}

- (_UIIntelligenceLightSourceDescriptor)descriptorWithModificationID:(id)a3 modifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIIntelligenceLightSourceDescriptor *)self copy];
  v9 = [*(v8 + 16) stringByAppendingFormat:@".%@", v7];

  v10 = *(v8 + 16);
  *(v8 + 16) = v9;

  v11 = _Block_copy(self->_builder);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78___UIIntelligenceLightSourceDescriptor_descriptorWithModificationID_modifier___block_invoke;
  aBlock[3] = &unk_1E7124CF0;
  v18 = v11;
  v19 = v6;
  v12 = v6;
  v13 = v11;
  v14 = _Block_copy(aBlock);
  v15 = *(v8 + 8);
  *(v8 + 8) = v14;

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UIIntelligenceLightSourceDescriptor alloc];
  builder = self->_builder;
  identifier = self->_identifier;

  return [(_UIIntelligenceLightSourceDescriptor *)v4 initWithIdentifier:identifier lightSourceViewProvider:builder];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4[2] isEqualToString:self->_identifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end