@interface WFLinkEnumerationContentItem
+ (id)_localizedTypeDescriptionWithContext:(id)context pluralizationNumber:(int64_t)number;
+ (id)localizedCountDescriptionWithValue:(int64_t)value;
+ (id)ownedTypes;
- (BOOL)getListSubtitle:(id)subtitle;
- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size;
- (LNEnumCaseMetadata)enumCaseMetadata;
- (WFLinkEnumerationCase)enumCase;
- (WFLinkEnumerationContentItem)initWithCoder:(id)coder;
- (id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFLinkEnumerationContentItem

+ (id)ownedTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size
{
  thumbnailCopy = thumbnail;
  enumCaseMetadata = [(WFLinkEnumerationContentItem *)self enumCaseMetadata];
  displayRepresentation = [enumCaseMetadata displayRepresentation];
  image = [displayRepresentation image];
  wf_image = [image wf_image];

  if (thumbnailCopy && wf_image)
  {
    thumbnailCopy[2](thumbnailCopy, wf_image, 0);
  }

  return wf_image != 0;
}

- (BOOL)getListSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  enumCaseMetadata = [(WFLinkEnumerationContentItem *)self enumCaseMetadata];
  displayRepresentation = [enumCaseMetadata displayRepresentation];
  subtitle = [displayRepresentation subtitle];
  wf_localizedString = [subtitle wf_localizedString];

  if (subtitleCopy && wf_localizedString)
  {
    subtitleCopy[2](subtitleCopy, wf_localizedString);
  }

  return wf_localizedString != 0;
}

- (id)name
{
  enumCaseMetadata = [(WFLinkEnumerationContentItem *)self enumCaseMetadata];
  displayRepresentation = [enumCaseMetadata displayRepresentation];
  title = [displayRepresentation title];
  wf_localizedString = [title wf_localizedString];

  return wf_localizedString;
}

- (LNEnumCaseMetadata)enumCaseMetadata
{
  enumCaseMetadata = self->_enumCaseMetadata;
  if (!enumCaseMetadata)
  {
    v4 = [(WFLinkEnumerationContentItem *)self objectForClass:objc_opt_class()];
    enumMetadata = [objc_opt_class() enumMetadata];
    cases = [enumMetadata cases];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__WFLinkEnumerationContentItem_enumCaseMetadata__block_invoke;
    v11[3] = &unk_1E837F1B0;
    v12 = v4;
    v7 = v4;
    v8 = [cases if_firstObjectPassingTest:v11];
    v9 = self->_enumCaseMetadata;
    self->_enumCaseMetadata = v8;

    enumCaseMetadata = self->_enumCaseMetadata;
  }

  return enumCaseMetadata;
}

uint64_t __48__WFLinkEnumerationContentItem_enumCaseMetadata__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  enumCase = [(WFLinkEnumerationContentItem *)self enumCase];
  [coderCopy encodeObject:enumCase forKey:@"enumCase"];

  enumMetadata = [objc_opt_class() enumMetadata];
  [coderCopy encodeObject:enumMetadata forKey:@"enumMetadata"];

  appBundleIdentifier = [objc_opt_class() appBundleIdentifier];
  [coderCopy encodeObject:appBundleIdentifier forKey:@"appBundleIdentifier"];
}

- (WFLinkEnumerationContentItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFLinkEnumerationContentItem;
  v5 = [(WFLinkEnumerationContentItem *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enumMetadata"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enumCase"];
    if (v7)
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
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
      v10 = [objc_msgSend(v6 wf_contentItemClassWithAppBundleIdentifier:{v9), "itemWithObject:", v7}];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (WFLinkEnumerationCase)enumCase
{
  v3 = objc_opt_class();

  return [(WFLinkEnumerationContentItem *)self objectForClass:v3];
}

+ (id)localizedCountDescriptionWithValue:(int64_t)value
{
  v16[1] = *MEMORY[0x1E69E9840];
  enumMetadata = [self enumMetadata];
  displayRepresentation = [enumMetadata displayRepresentation];
  numericFormat = [displayRepresentation numericFormat];

  if (numericFormat)
  {
    localizedPluralTypeDescription = [MEMORY[0x1E696AD98] numberWithInteger:value];
    v16[0] = localizedPluralTypeDescription;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v10 = [numericFormat localizedStringWithReplacements:v9 forLocaleIdentifier:0];
  }

  else
  {
    localizedPluralTypeDescription = [self localizedPluralTypeDescription];
    if ([self canLowercaseTypeDescription])
    {
      localizedLowercaseString = [localizedPluralTypeDescription localizedLowercaseString];

      localizedPluralTypeDescription = localizedLowercaseString;
    }

    v12 = MEMORY[0x1E696AEC0];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:value];
    v10 = [v12 stringWithFormat:@"%@ %@", v13, localizedPluralTypeDescription];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)_localizedTypeDescriptionWithContext:(id)context pluralizationNumber:(int64_t)number
{
  contextCopy = context;
  enumMetadata = [self enumMetadata];
  displayRepresentation = [enumMetadata displayRepresentation];
  name = [displayRepresentation name];
  localizedStringResource = [name localizedStringResource];

  if (localizedStringResource)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:number];
    identifier = [contextCopy localize:localizedStringResource pluralizationNumber:v11];

    if ([identifier length])
    {
      goto LABEL_5;
    }
  }

  enumMetadata2 = [self enumMetadata];
  identifier = [enumMetadata2 identifier];

LABEL_5:

  return identifier;
}

@end