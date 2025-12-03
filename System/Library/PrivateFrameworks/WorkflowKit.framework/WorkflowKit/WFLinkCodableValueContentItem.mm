@interface WFLinkCodableValueContentItem
+ (id)_localizedTypeDescriptionWithContext:(id)context pluralizationNumber:(int64_t)number;
+ (id)coercions;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (BOOL)getListSubtitle:(id)subtitle;
- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size;
- (LNCodableValue)codableValue;
- (WFLinkCodableValueContentItem)initWithCoder:(id)coder;
- (id)name;
- (void)copyStateToItem:(id)item;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFLinkCodableValueContentItem

- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size
{
  thumbnailCopy = thumbnail;
  displayRepresentation = [(WFLinkCodableValueContentItem *)self displayRepresentation];
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
  displayRepresentation = [(WFLinkCodableValueContentItem *)self displayRepresentation];
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
  displayRepresentation = [(WFLinkCodableValueContentItem *)self displayRepresentation];
  title = [displayRepresentation title];
  wf_localizedString = [title wf_localizedString];
  v5 = wf_localizedString;
  if (wf_localizedString)
  {
    localizedTypeDescription = wf_localizedString;
  }

  else
  {
    localizedTypeDescription = [objc_opt_class() localizedTypeDescription];
  }

  v7 = localizedTypeDescription;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  codableValue = [(WFLinkCodableValueContentItem *)self codableValue];
  [coderCopy encodeObject:codableValue forKey:@"codableValue"];

  displayRepresentation = [(WFLinkCodableValueContentItem *)self displayRepresentation];
  [coderCopy encodeObject:displayRepresentation forKey:@"displayRepresentation"];

  valueType = [objc_opt_class() valueType];
  [coderCopy encodeObject:valueType forKey:@"valueType"];
}

- (WFLinkCodableValueContentItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WFLinkCodableValueContentItem;
  v5 = [(WFLinkCodableValueContentItem *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"valueType"];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;
    wf_contentItemClass = [v9 wf_contentItemClass];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codableValue"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayRepresentation"];
    v8 = [wf_contentItemClass itemWithObject:v11];
    [(WFLinkCodableValueContentItem *)v8 setDisplayRepresentation:v12];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)copyStateToItem:(id)item
{
  objc_storeStrong(item + 6, self->_displayRepresentation);
  itemCopy = item;
  objc_storeStrong(itemCopy + 7, self->_codableValueType);
}

- (LNCodableValue)codableValue
{
  valueType = [objc_opt_class() valueType];
  v4 = -[WFLinkCodableValueContentItem objectForClass:](self, "objectForClass:", [valueType wf_objectClass]);

  return v4;
}

+ (id)coercions
{
  valueType = [self valueType];
  coercions = [valueType coercions];

  return coercions;
}

+ (id)outputTypes
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___WFLinkCodableValueContentItem;
  v2 = objc_msgSendSuper2(&v6, sel_outputTypes);
  v3 = [v2 mutableCopy];

  v4 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  [v3 addObject:v4];

  return v3;
}

+ (id)_localizedTypeDescriptionWithContext:(id)context pluralizationNumber:(int64_t)number
{
  contextCopy = context;
  valueType = [self valueType];
  wf_displayRepresentation = [valueType wf_displayRepresentation];

  name = [wf_displayRepresentation name];
  localizedStringResource = [name localizedStringResource];

  if (localizedStringResource)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:number];
    v12 = [contextCopy localize:localizedStringResource pluralizationNumber:v11];

    if ([(__CFString *)v12 length])
    {
      goto LABEL_5;
    }
  }

  v12 = &stru_1F4A1C408;
LABEL_5:

  return v12;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = MEMORY[0x1E6996ED0];
  valueType = [objc_opt_class() valueType];
  v5 = [v3 typeWithClass:{objc_msgSend(valueType, "wf_objectClass")}];
  v6 = [v2 orderedSetWithObject:v5];

  return v6;
}

+ (id)propertyBuilders
{
  valueType = [self valueType];
  propertyBuilders = [valueType propertyBuilders];

  return propertyBuilders;
}

@end