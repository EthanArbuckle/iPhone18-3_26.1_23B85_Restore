@interface PRPosterDescriptorGalleryOptions
+ (PRPosterDescriptorGalleryOptions)galleryOptionsWithAssetLookupInfo:(id)a3;
+ (PRPosterDescriptorGalleryOptions)galleryOptionsWithAssetLookupInfo:(id)a3 galleryPresentationStyle:(unint64_t)a4;
+ (PRPosterDescriptorGalleryOptions)galleryOptionsWithAssetLookupInfo:(id)a3 galleryPresentationStyle:(unint64_t)a4 galleryDisplayStyle:(unint64_t)a5;
+ (PRPosterDescriptorGalleryOptions)galleryOptionsWithAssetLookupInfo:(id)a3 galleryPresentationStyle:(unint64_t)a4 galleryDisplayStyle:(unint64_t)a5 preferredTitleStyle:(id)a6;
+ (id)galleryOptionsFromDictionaryRepresentation:(id)a3;
- (PRPosterDescriptorGalleryOptions)initWithAssetLookupInfo:(id)a3 galleryPresentationStyle:(unint64_t)a4 galleryDisplayStyle:(unint64_t)a5 preferredTitleStyle:(id)a6;
- (PRPosterDescriptorGalleryOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterDescriptorGalleryOptions

+ (id)galleryOptionsFromDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"presentationStyle"];
  v5 = [v3 objectForKeyedSubscript:@"displayStyle"];

  v6 = PRPosterGalleryPresentationStyleFromString(v4);
  v7 = PRPosterGalleryDisplayStyleFromString(v5);
  v8 = [PRPosterDescriptorGalleryOptions alloc];
  v9 = +[PRPosterDescriptorGalleryAssetLookupInfo defaultLookupInfo];
  v10 = [(PRPosterDescriptorGalleryOptions *)v8 initWithAssetLookupInfo:v9 galleryPresentationStyle:v6 galleryDisplayStyle:v7 preferredTitleStyle:0];

  return v10;
}

+ (PRPosterDescriptorGalleryOptions)galleryOptionsWithAssetLookupInfo:(id)a3
{
  v3 = a3;
  v4 = [PRPosterDescriptorGalleryOptions alloc];
  v5 = v4;
  if (v3)
  {
    v6 = [(PRPosterDescriptorGalleryOptions *)v4 initWithAssetLookupInfo:v3 galleryPresentationStyle:0 galleryDisplayStyle:0 preferredTitleStyle:0];
  }

  else
  {
    v7 = +[PRPosterDescriptorGalleryAssetLookupInfo defaultLookupInfo];
    v6 = [(PRPosterDescriptorGalleryOptions *)v5 initWithAssetLookupInfo:v7 galleryPresentationStyle:0 galleryDisplayStyle:0 preferredTitleStyle:0];
  }

  return v6;
}

+ (PRPosterDescriptorGalleryOptions)galleryOptionsWithAssetLookupInfo:(id)a3 galleryPresentationStyle:(unint64_t)a4
{
  v5 = a3;
  v6 = [PRPosterDescriptorGalleryOptions alloc];
  v7 = v6;
  if (v5)
  {
    v8 = [(PRPosterDescriptorGalleryOptions *)v6 initWithAssetLookupInfo:v5 galleryPresentationStyle:a4 galleryDisplayStyle:0 preferredTitleStyle:0];
  }

  else
  {
    v9 = +[PRPosterDescriptorGalleryAssetLookupInfo defaultLookupInfo];
    v8 = [(PRPosterDescriptorGalleryOptions *)v7 initWithAssetLookupInfo:v9 galleryPresentationStyle:a4 galleryDisplayStyle:0 preferredTitleStyle:0];
  }

  return v8;
}

+ (PRPosterDescriptorGalleryOptions)galleryOptionsWithAssetLookupInfo:(id)a3 galleryPresentationStyle:(unint64_t)a4 galleryDisplayStyle:(unint64_t)a5
{
  v7 = a3;
  v8 = [[PRPosterDescriptorGalleryOptions alloc] initWithAssetLookupInfo:v7 galleryPresentationStyle:a4 galleryDisplayStyle:a5 preferredTitleStyle:0];

  return v8;
}

+ (PRPosterDescriptorGalleryOptions)galleryOptionsWithAssetLookupInfo:(id)a3 galleryPresentationStyle:(unint64_t)a4 galleryDisplayStyle:(unint64_t)a5 preferredTitleStyle:(id)a6
{
  v9 = a6;
  v10 = a3;
  v11 = [[PRPosterDescriptorGalleryOptions alloc] initWithAssetLookupInfo:v10 galleryPresentationStyle:a4 galleryDisplayStyle:a5 preferredTitleStyle:v9];

  return v11;
}

- (PRPosterDescriptorGalleryOptions)initWithAssetLookupInfo:(id)a3 galleryPresentationStyle:(unint64_t)a4 galleryDisplayStyle:(unint64_t)a5 preferredTitleStyle:(id)a6
{
  v11 = a3;
  v12 = a6;
  v13 = v11;
  NSClassFromString(&cfstr_Prposterdescri_5.isa);
  if (!v13)
  {
    [PRPosterDescriptorGalleryOptions initWithAssetLookupInfo:a2 galleryPresentationStyle:? galleryDisplayStyle:? preferredTitleStyle:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterDescriptorGalleryOptions initWithAssetLookupInfo:a2 galleryPresentationStyle:? galleryDisplayStyle:? preferredTitleStyle:?];
  }

  if (a4 >= 2)
  {
    [PRPosterDescriptorGalleryOptions initWithAssetLookupInfo:a2 galleryPresentationStyle:? galleryDisplayStyle:? preferredTitleStyle:?];
  }

  v20.receiver = self;
  v20.super_class = PRPosterDescriptorGalleryOptions;
  v14 = [(PRPosterDescriptorGalleryOptions *)&v20 init];
  if (v14)
  {
    v15 = [v13 copy];
    galleryAssetLookupInfo = v14->_galleryAssetLookupInfo;
    v14->_galleryAssetLookupInfo = v15;

    v14->_presentationStyle = a4;
    v14->_displayStyle = a5;
    v17 = [v12 copy];
    preferredTitleStyle = v14->_preferredTitleStyle;
    v14->_preferredTitleStyle = v17;
  }

  return v14;
}

- (PRPosterDescriptorGalleryOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"galleryAssetLookupInfo"];
  v7 = [v4 decodeIntegerForKey:@"presentationStyle"];
  v8 = [v4 decodeIntegerForKey:@"displayStyle"];
  v9 = objc_opt_self();
  v10 = [v4 decodeObjectOfClass:v9 forKey:@"preferredTitleStyle"];

  v11 = [(PRPosterDescriptorGalleryOptions *)self initWithAssetLookupInfo:v6 galleryPresentationStyle:v7 galleryDisplayStyle:v8 preferredTitleStyle:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  galleryAssetLookupInfo = self->_galleryAssetLookupInfo;
  v5 = a3;
  [v5 encodeObject:galleryAssetLookupInfo forKey:@"galleryAssetLookupInfo"];
  [v5 encodeInteger:self->_presentationStyle forKey:@"presentationStyle"];
  [v5 encodeInteger:self->_displayStyle forKey:@"displayStyle"];
  [v5 encodeObject:self->_preferredTitleStyle forKey:@"preferredTitleStyle"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  galleryAssetLookupInfo = self->_galleryAssetLookupInfo;
  presentationStyle = self->_presentationStyle;
  displayStyle = self->_displayStyle;
  preferredTitleStyle = self->_preferredTitleStyle;

  return [v4 initWithAssetLookupInfo:galleryAssetLookupInfo galleryPresentationStyle:presentationStyle galleryDisplayStyle:displayStyle preferredTitleStyle:preferredTitleStyle];
}

- (void)initWithAssetLookupInfo:(char *)a1 galleryPresentationStyle:galleryDisplayStyle:preferredTitleStyle:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRPosterDescriptorGalleryAssetLookupInfoClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithAssetLookupInfo:(char *)a1 galleryPresentationStyle:galleryDisplayStyle:preferredTitleStyle:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"presentationStyle == PRPosterGalleryPresentationStyleDefault || presentationStyle == PRPosterGalleryPresentationStyleSlideUp", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithAssetLookupInfo:(char *)a1 galleryPresentationStyle:galleryDisplayStyle:preferredTitleStyle:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end