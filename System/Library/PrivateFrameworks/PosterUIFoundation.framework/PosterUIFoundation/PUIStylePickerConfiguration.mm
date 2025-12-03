@interface PUIStylePickerConfiguration
+ (id)defaultStylePickerConfigurationForRole:(id)role;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStylePickerConfiguration:(id)configuration;
- (NSDirectionalEdgeInsets)edgeInsets;
- (NSString)description;
- (PUIStylePickerConfiguration)init;
- (PUIStylePickerConfiguration)initWithCoder:(id)coder;
- (PUIStylePickerConfiguration)initWithPreviewTextString:(id)string defaultRole:(id)role components:(id)components defaultPreferredTimeMaxY:(double)y defaultContentsLuminance:(double)luminance styleConfiguration:(id)configuration textLayoutConfiguration:(id)layoutConfiguration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIStylePickerConfiguration

+ (id)defaultStylePickerConfigurationForRole:(id)role
{
  roleCopy = role;
  v4 = objc_alloc(objc_opt_class());
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = [v4 initWithPreviewTextString:0 defaultRole:roleCopy components:v5 defaultPreferredTimeMaxY:v6 defaultContentsLuminance:v7 styleConfiguration:0.0 textLayoutConfiguration:0.5];

  return v8;
}

- (PUIStylePickerConfiguration)initWithPreviewTextString:(id)string defaultRole:(id)role components:(id)components defaultPreferredTimeMaxY:(double)y defaultContentsLuminance:(double)luminance styleConfiguration:(id)configuration textLayoutConfiguration:(id)layoutConfiguration
{
  stringCopy = string;
  roleCopy = role;
  componentsCopy = components;
  configurationCopy = configuration;
  layoutConfigurationCopy = layoutConfiguration;
  v22 = [componentsCopy containsComponent:4];
  if (configurationCopy && (v22 & 1) == 0)
  {
    v23 = [componentsCopy componentsByAddingComponent:4];

    componentsCopy = v23;
  }

  v24 = [componentsCopy containsComponent:1];
  if (layoutConfigurationCopy && (v24 & 1) == 0)
  {
    v25 = [componentsCopy componentsByAddingComponent:1];

    componentsCopy = v25;
  }

  if (!componentsCopy)
  {
    [PUIStylePickerConfiguration initWithPreviewTextString:a2 defaultRole:self components:? defaultPreferredTimeMaxY:? defaultContentsLuminance:? styleConfiguration:? textLayoutConfiguration:?];
  }

  v34.receiver = self;
  v34.super_class = PUIStylePickerConfiguration;
  v26 = [(PUIStylePickerConfiguration *)&v34 init];
  if (v26)
  {
    v27 = [stringCopy copy];
    v28 = *(v26 + 1);
    *(v26 + 1) = v27;

    *(v26 + 2) = y;
    *(v26 + 3) = luminance;
    v29 = [configurationCopy copy];
    v30 = *(v26 + 6);
    *(v26 + 6) = v29;

    v31 = [layoutConfigurationCopy copy];
    v32 = *(v26 + 7);
    *(v26 + 7) = v31;

    objc_storeStrong(v26 + 5, componentsCopy);
    *(v26 + 88) = 0u;
    *(v26 + 72) = 0u;
  }

  return v26;
}

- (PUIStylePickerConfiguration)init
{
  v3 = objc_opt_new();
  v4 = [(PUIStylePickerConfiguration *)self initWithPreviewTextString:0 defaultRole:0 components:v3 defaultPreferredTimeMaxY:0 defaultContentsLuminance:0 styleConfiguration:0.0 textLayoutConfiguration:0.5];

  return v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __42__PUIStylePickerConfiguration_description__block_invoke;
  v10 = &unk_1E78548A0;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PUIStylePickerConfiguration *)self isEqualToStylePickerConfiguration:v5];
  }

  return v6;
}

- (BOOL)isEqualToStylePickerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (configurationCopy == self)
  {
    v40 = 1;
  }

  else if (configurationCopy && (-[PUIStylePickerConfiguration components](configurationCopy, "components"), v6 = objc_claimAutoreleasedReturnValue(), -[PUIStylePickerConfiguration components](self, "components"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isEqual:v7], v7, v6, v8) && (-[PUIStylePickerConfiguration previewTextString](v5, "previewTextString"), v9 = objc_claimAutoreleasedReturnValue(), -[PUIStylePickerConfiguration previewTextString](self, "previewTextString"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToString:", v10), v10, v9, v11) && (-[PUIStylePickerConfiguration defaultPreferredTimeMaxY](v5, "defaultPreferredTimeMaxY"), v13 = v12, -[PUIStylePickerConfiguration defaultPreferredTimeMaxY](self, "defaultPreferredTimeMaxY"), v13 == v14) && (-[PUIStylePickerConfiguration defaultContentsLuminance](v5, "defaultContentsLuminance"), v16 = v15, -[PUIStylePickerConfiguration defaultContentsLuminance](self, "defaultContentsLuminance"), v16 == v17) && (-[PUIStylePickerConfiguration textLayoutConfiguration](v5, "textLayoutConfiguration"), v18 = objc_claimAutoreleasedReturnValue(), -[PUIStylePickerConfiguration textLayoutConfiguration](self, "textLayoutConfiguration"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "isEqual:", v19), v19, v18, v20) && (-[PUIStylePickerConfiguration styleConfiguration](v5, "styleConfiguration"), v21 = objc_claimAutoreleasedReturnValue(), -[PUIStylePickerConfiguration styleConfiguration](self, "styleConfiguration"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "isEqual:", v22), v22, v21, v23) && (-[PUIStylePickerConfiguration homeScreenConfiguration](v5, "homeScreenConfiguration"), v24 = objc_claimAutoreleasedReturnValue(), -[PUIStylePickerConfiguration homeScreenConfiguration](self, "homeScreenConfiguration"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v24, "isEqual:", v25), v25, v24, v26))
  {
    [(PUIStylePickerConfiguration *)v5 edgeInsets];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [(PUIStylePickerConfiguration *)self edgeInsets];
    v38 = v30 == v37;
    if (v28 != v39)
    {
      v38 = 0;
    }

    if (v34 != v36)
    {
      v38 = 0;
    }

    v40 = v32 == v35 && v38;
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (unint64_t)hash
{
  v3 = [(PUIStylePickerComponents *)self->_components hash];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_defaultPreferredTimeMaxY];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_defaultContentsLuminance];
  v7 = [v6 hash];
  v8 = v5 ^ v7 ^ [(PUITextLayoutConfiguration *)self->_textLayoutConfiguration hash];
  v9 = [(PUIStyleConfiguration *)self->_styleConfiguration hash];
  v10 = v9 ^ [(NSString *)self->_previewTextString hash];
  v11 = v10 ^ [(NSString *)self->_defaultRole hash];
  v12 = NSStringFromDirectionalEdgeInsets(self->_edgeInsets);
  v13 = v11 ^ [v12 hash];
  v14 = v13 ^ [(PUIStylePickerHomeScreenConfiguration *)self->_homeScreenConfiguration hash];

  return v8 ^ v14;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v4 = [streamCopy appendObject:self->_previewTextString withName:@"_previewTextString"];
  v5 = [streamCopy appendObject:self->_components withName:@"_components"];
  v6 = [streamCopy appendDouble:@"_defaultPreferredTimeMaxY" withName:5 decimalPrecision:self->_defaultPreferredTimeMaxY];
  v7 = [streamCopy appendDouble:@"_defaultContentsLuminance" withName:5 decimalPrecision:self->_defaultContentsLuminance];
  v8 = [streamCopy appendObject:self->_textLayoutConfiguration withName:@"_textLayoutConfiguration"];
  v9 = [streamCopy appendObject:self->_styleConfiguration withName:@"_styleConfiguration"];
  v10 = *&self->_edgeInsets.top;
  v11 = *&self->_edgeInsets.bottom;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*MEMORY[0x1E69DC5C0], v10), vceqq_f64(*(MEMORY[0x1E69DC5C0] + 16), v11)))) & 1) == 0)
  {
    leading = self->_edgeInsets.leading;
    trailing = self->_edgeInsets.trailing;
    v14 = NSStringFromDirectionalEdgeInsets(*v10.f64);
    v15 = [streamCopy appendObject:v14 withName:@"_edgeInsets"];
  }

  v16 = [streamCopy appendObject:self->_styleConfiguration withName:@"_styleConfiguration"];
  if ([(PUIStylePickerComponents *)self->_components containsComponent:32])
  {
    v17 = [streamCopy appendObject:self->_homeScreenConfiguration withName:@"_homeScreenConfiguration"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  previewTextString = [(PUIStylePickerConfiguration *)self previewTextString];
  [v4 setPreviewTextString:previewTextString];

  [(PUIStylePickerConfiguration *)self defaultPreferredTimeMaxY];
  [v4 setDefaultPreferredTimeMaxY:?];
  [(PUIStylePickerConfiguration *)self defaultContentsLuminance];
  [v4 setDefaultContentsLuminance:?];
  styleConfiguration = [(PUIStylePickerConfiguration *)self styleConfiguration];
  [v4 setStyleConfiguration:styleConfiguration];

  textLayoutConfiguration = [(PUIStylePickerConfiguration *)self textLayoutConfiguration];
  [v4 setTextLayoutConfiguration:textLayoutConfiguration];

  defaultRole = [(PUIStylePickerConfiguration *)self defaultRole];
  [v4 setDefaultRole:defaultRole];

  components = [(PUIStylePickerConfiguration *)self components];
  [v4 setComponents:components];

  [(PUIStylePickerConfiguration *)self edgeInsets];
  [v4 setEdgeInsets:?];
  homeScreenConfiguration = [(PUIStylePickerConfiguration *)self homeScreenConfiguration];
  [v4 setHomeScreenConfiguration:homeScreenConfiguration];

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(PUIStylePickerConfiguration *)[PUIMutableStylePickerConfiguration allocWithZone:?]];
  previewTextString = [(PUIStylePickerConfiguration *)self previewTextString];
  [(PUIStylePickerConfiguration *)v4 setPreviewTextString:previewTextString];

  [(PUIStylePickerConfiguration *)self defaultPreferredTimeMaxY];
  [(PUIStylePickerConfiguration *)v4 setDefaultPreferredTimeMaxY:?];
  [(PUIStylePickerConfiguration *)self defaultContentsLuminance];
  [(PUIStylePickerConfiguration *)v4 setDefaultContentsLuminance:?];
  styleConfiguration = [(PUIStylePickerConfiguration *)self styleConfiguration];
  [(PUIStylePickerConfiguration *)v4 setStyleConfiguration:styleConfiguration];

  textLayoutConfiguration = [(PUIStylePickerConfiguration *)self textLayoutConfiguration];
  [(PUIStylePickerConfiguration *)v4 setTextLayoutConfiguration:textLayoutConfiguration];

  defaultRole = [(PUIStylePickerConfiguration *)self defaultRole];
  [(PUIStylePickerConfiguration *)v4 setDefaultRole:defaultRole];

  components = [(PUIStylePickerConfiguration *)self components];
  [(PUIStylePickerConfiguration *)v4 setComponents:components];

  [(PUIStylePickerConfiguration *)self edgeInsets];
  [(PUIStylePickerConfiguration *)v4 setEdgeInsets:?];
  homeScreenConfiguration = [(PUIStylePickerConfiguration *)self homeScreenConfiguration];
  [(PUIStylePickerConfiguration *)v4 setHomeScreenConfiguration:homeScreenConfiguration];

  return v4;
}

- (PUIStylePickerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy _ui_decodeCGFloatForKey:@"_defaultPreferredTimeMaxY"];
  v6 = v5;
  [coderCopy _ui_decodeCGFloatForKey:@"_defaultContentsLuminance"];
  v8 = v7;
  v9 = objc_opt_self();
  v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"_defaultRole"];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_components"];
  v12 = objc_opt_self();
  v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"_previewTextString"];

  v14 = objc_opt_self();
  v15 = [coderCopy decodeObjectOfClass:v14 forKey:@"_styleConfiguration"];

  v16 = objc_opt_self();
  v17 = [coderCopy decodeObjectOfClass:v16 forKey:@"_textLayoutConfiguration"];

  v18 = objc_opt_self();
  v19 = [coderCopy decodeObjectOfClass:v18 forKey:@"_homeScreenConfiguration"];

  v20 = [(PUIStylePickerConfiguration *)self initWithPreviewTextString:v13 defaultRole:v10 components:v11 defaultPreferredTimeMaxY:v15 defaultContentsLuminance:v17 styleConfiguration:v6 textLayoutConfiguration:v8];
  if (v20)
  {
    v21 = objc_opt_self();
    v22 = [coderCopy decodeObjectOfClass:v21 forKey:@"_edgeInsets"];
    v20->_edgeInsets = NSDirectionalEdgeInsetsFromString(v22);

    objc_storeStrong(&v20->_homeScreenConfiguration, v19);
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  defaultPreferredTimeMaxY = self->_defaultPreferredTimeMaxY;
  coderCopy = coder;
  [coderCopy _ui_encodeCGFloat:@"_defaultPreferredTimeMaxY" forKey:defaultPreferredTimeMaxY];
  [coderCopy _ui_encodeCGFloat:@"_defaultContentsLuminance" forKey:self->_defaultContentsLuminance];
  defaultRole = [(PUIStylePickerConfiguration *)self defaultRole];
  [coderCopy encodeObject:defaultRole forKey:@"_defaultRole"];

  previewTextString = [(PUIStylePickerConfiguration *)self previewTextString];
  [coderCopy encodeObject:previewTextString forKey:@"_previewTextString"];

  [coderCopy encodeObject:self->_components forKey:@"_components"];
  styleConfiguration = [(PUIStylePickerConfiguration *)self styleConfiguration];
  [coderCopy encodeObject:styleConfiguration forKey:@"_styleConfiguration"];

  textLayoutConfiguration = [(PUIStylePickerConfiguration *)self textLayoutConfiguration];
  [coderCopy encodeObject:textLayoutConfiguration forKey:@"_textLayoutConfiguration"];

  [(PUIStylePickerConfiguration *)self edgeInsets];
  v10 = NSStringFromDirectionalEdgeInsets(v13);
  [coderCopy encodeObject:v10 forKey:@"_edgeInsets"];

  homeScreenConfiguration = [(PUIStylePickerConfiguration *)self homeScreenConfiguration];
  [coderCopy encodeObject:homeScreenConfiguration forKey:@"_homeScreenConfiguration"];
}

- (NSDirectionalEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  leading = self->_edgeInsets.leading;
  bottom = self->_edgeInsets.bottom;
  trailing = self->_edgeInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (void)initWithPreviewTextString:(const char *)a1 defaultRole:(uint64_t)a2 components:defaultPreferredTimeMaxY:defaultContentsLuminance:styleConfiguration:textLayoutConfiguration:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"components != 0"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"PUIStylePickerConfiguration.m";
    v16 = 1024;
    v17 = 86;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A8C85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end