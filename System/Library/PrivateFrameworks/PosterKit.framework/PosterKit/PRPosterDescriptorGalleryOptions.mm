@interface PRPosterDescriptorGalleryOptions
+ (PRPosterDescriptorGalleryOptions)galleryOptionsWithAssetLookupInfo:(id)info;
+ (PRPosterDescriptorGalleryOptions)galleryOptionsWithAssetLookupInfo:(id)info galleryPresentationStyle:(unint64_t)style;
+ (PRPosterDescriptorGalleryOptions)galleryOptionsWithAssetLookupInfo:(id)info galleryPresentationStyle:(unint64_t)style galleryDisplayStyle:(unint64_t)displayStyle;
+ (PRPosterDescriptorGalleryOptions)galleryOptionsWithAssetLookupInfo:(id)info galleryPresentationStyle:(unint64_t)style galleryDisplayStyle:(unint64_t)displayStyle preferredTitleStyle:(id)titleStyle;
+ (id)galleryOptionsFromDictionaryRepresentation:(id)representation;
- (PRPosterDescriptorGalleryOptions)initWithAssetLookupInfo:(id)info galleryPresentationStyle:(unint64_t)style galleryDisplayStyle:(unint64_t)displayStyle preferredTitleStyle:(id)titleStyle;
- (PRPosterDescriptorGalleryOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterDescriptorGalleryOptions

+ (id)galleryOptionsFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy objectForKeyedSubscript:@"presentationStyle"];
  v5 = [representationCopy objectForKeyedSubscript:@"displayStyle"];

  v6 = PRPosterGalleryPresentationStyleFromString(v4);
  v7 = PRPosterGalleryDisplayStyleFromString(v5);
  v8 = [PRPosterDescriptorGalleryOptions alloc];
  v9 = +[PRPosterDescriptorGalleryAssetLookupInfo defaultLookupInfo];
  v10 = [(PRPosterDescriptorGalleryOptions *)v8 initWithAssetLookupInfo:v9 galleryPresentationStyle:v6 galleryDisplayStyle:v7 preferredTitleStyle:0];

  return v10;
}

+ (PRPosterDescriptorGalleryOptions)galleryOptionsWithAssetLookupInfo:(id)info
{
  infoCopy = info;
  v4 = [PRPosterDescriptorGalleryOptions alloc];
  v5 = v4;
  if (infoCopy)
  {
    v6 = [(PRPosterDescriptorGalleryOptions *)v4 initWithAssetLookupInfo:infoCopy galleryPresentationStyle:0 galleryDisplayStyle:0 preferredTitleStyle:0];
  }

  else
  {
    v7 = +[PRPosterDescriptorGalleryAssetLookupInfo defaultLookupInfo];
    v6 = [(PRPosterDescriptorGalleryOptions *)v5 initWithAssetLookupInfo:v7 galleryPresentationStyle:0 galleryDisplayStyle:0 preferredTitleStyle:0];
  }

  return v6;
}

+ (PRPosterDescriptorGalleryOptions)galleryOptionsWithAssetLookupInfo:(id)info galleryPresentationStyle:(unint64_t)style
{
  infoCopy = info;
  v6 = [PRPosterDescriptorGalleryOptions alloc];
  v7 = v6;
  if (infoCopy)
  {
    v8 = [(PRPosterDescriptorGalleryOptions *)v6 initWithAssetLookupInfo:infoCopy galleryPresentationStyle:style galleryDisplayStyle:0 preferredTitleStyle:0];
  }

  else
  {
    v9 = +[PRPosterDescriptorGalleryAssetLookupInfo defaultLookupInfo];
    v8 = [(PRPosterDescriptorGalleryOptions *)v7 initWithAssetLookupInfo:v9 galleryPresentationStyle:style galleryDisplayStyle:0 preferredTitleStyle:0];
  }

  return v8;
}

+ (PRPosterDescriptorGalleryOptions)galleryOptionsWithAssetLookupInfo:(id)info galleryPresentationStyle:(unint64_t)style galleryDisplayStyle:(unint64_t)displayStyle
{
  infoCopy = info;
  v8 = [[PRPosterDescriptorGalleryOptions alloc] initWithAssetLookupInfo:infoCopy galleryPresentationStyle:style galleryDisplayStyle:displayStyle preferredTitleStyle:0];

  return v8;
}

+ (PRPosterDescriptorGalleryOptions)galleryOptionsWithAssetLookupInfo:(id)info galleryPresentationStyle:(unint64_t)style galleryDisplayStyle:(unint64_t)displayStyle preferredTitleStyle:(id)titleStyle
{
  titleStyleCopy = titleStyle;
  infoCopy = info;
  v11 = [[PRPosterDescriptorGalleryOptions alloc] initWithAssetLookupInfo:infoCopy galleryPresentationStyle:style galleryDisplayStyle:displayStyle preferredTitleStyle:titleStyleCopy];

  return v11;
}

- (PRPosterDescriptorGalleryOptions)initWithAssetLookupInfo:(id)info galleryPresentationStyle:(unint64_t)style galleryDisplayStyle:(unint64_t)displayStyle preferredTitleStyle:(id)titleStyle
{
  infoCopy = info;
  titleStyleCopy = titleStyle;
  v13 = infoCopy;
  NSClassFromString(&cfstr_Prposterdescri_5.isa);
  if (!v13)
  {
    [PRPosterDescriptorGalleryOptions initWithAssetLookupInfo:a2 galleryPresentationStyle:? galleryDisplayStyle:? preferredTitleStyle:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRPosterDescriptorGalleryOptions initWithAssetLookupInfo:a2 galleryPresentationStyle:? galleryDisplayStyle:? preferredTitleStyle:?];
  }

  if (style >= 2)
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

    v14->_presentationStyle = style;
    v14->_displayStyle = displayStyle;
    v17 = [titleStyleCopy copy];
    preferredTitleStyle = v14->_preferredTitleStyle;
    v14->_preferredTitleStyle = v17;
  }

  return v14;
}

- (PRPosterDescriptorGalleryOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"galleryAssetLookupInfo"];
  v7 = [coderCopy decodeIntegerForKey:@"presentationStyle"];
  v8 = [coderCopy decodeIntegerForKey:@"displayStyle"];
  v9 = objc_opt_self();
  v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"preferredTitleStyle"];

  v11 = [(PRPosterDescriptorGalleryOptions *)self initWithAssetLookupInfo:v6 galleryPresentationStyle:v7 galleryDisplayStyle:v8 preferredTitleStyle:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  galleryAssetLookupInfo = self->_galleryAssetLookupInfo;
  coderCopy = coder;
  [coderCopy encodeObject:galleryAssetLookupInfo forKey:@"galleryAssetLookupInfo"];
  [coderCopy encodeInteger:self->_presentationStyle forKey:@"presentationStyle"];
  [coderCopy encodeInteger:self->_displayStyle forKey:@"displayStyle"];
  [coderCopy encodeObject:self->_preferredTitleStyle forKey:@"preferredTitleStyle"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
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