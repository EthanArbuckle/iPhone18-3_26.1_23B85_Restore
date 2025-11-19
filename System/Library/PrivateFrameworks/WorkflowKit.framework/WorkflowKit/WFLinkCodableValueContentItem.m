@interface WFLinkCodableValueContentItem
+ (id)_localizedTypeDescriptionWithContext:(id)a3 pluralizationNumber:(int64_t)a4;
+ (id)coercions;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (BOOL)getListSubtitle:(id)a3;
- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4;
- (LNCodableValue)codableValue;
- (WFLinkCodableValueContentItem)initWithCoder:(id)a3;
- (id)name;
- (void)copyStateToItem:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFLinkCodableValueContentItem

- (BOOL)getListThumbnail:(id)a3 forSize:(CGSize)a4
{
  v5 = a3;
  v6 = [(WFLinkCodableValueContentItem *)self displayRepresentation];
  v7 = [v6 image];
  v8 = [v7 wf_image];

  if (v5 && v8)
  {
    v5[2](v5, v8, 0);
  }

  return v8 != 0;
}

- (BOOL)getListSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(WFLinkCodableValueContentItem *)self displayRepresentation];
  v6 = [v5 subtitle];
  v7 = [v6 wf_localizedString];

  if (v4 && v7)
  {
    v4[2](v4, v7);
  }

  return v7 != 0;
}

- (id)name
{
  v2 = [(WFLinkCodableValueContentItem *)self displayRepresentation];
  v3 = [v2 title];
  v4 = [v3 wf_localizedString];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() localizedTypeDescription];
  }

  v7 = v6;

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFLinkCodableValueContentItem *)self codableValue];
  [v4 encodeObject:v5 forKey:@"codableValue"];

  v6 = [(WFLinkCodableValueContentItem *)self displayRepresentation];
  [v4 encodeObject:v6 forKey:@"displayRepresentation"];

  v7 = [objc_opt_class() valueType];
  [v4 encodeObject:v7 forKey:@"valueType"];
}

- (WFLinkCodableValueContentItem)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WFLinkCodableValueContentItem;
  v5 = [(WFLinkCodableValueContentItem *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"valueType"];
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
    v10 = [v9 wf_contentItemClass];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"codableValue"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayRepresentation"];
    v8 = [v10 itemWithObject:v11];
    [(WFLinkCodableValueContentItem *)v8 setDisplayRepresentation:v12];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)copyStateToItem:(id)a3
{
  objc_storeStrong(a3 + 6, self->_displayRepresentation);
  v5 = a3;
  objc_storeStrong(v5 + 7, self->_codableValueType);
}

- (LNCodableValue)codableValue
{
  v3 = [objc_opt_class() valueType];
  v4 = -[WFLinkCodableValueContentItem objectForClass:](self, "objectForClass:", [v3 wf_objectClass]);

  return v4;
}

+ (id)coercions
{
  v2 = [a1 valueType];
  v3 = [v2 coercions];

  return v3;
}

+ (id)outputTypes
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___WFLinkCodableValueContentItem;
  v2 = objc_msgSendSuper2(&v6, sel_outputTypes);
  v3 = [v2 mutableCopy];

  v4 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  [v3 addObject:v4];

  return v3;
}

+ (id)_localizedTypeDescriptionWithContext:(id)a3 pluralizationNumber:(int64_t)a4
{
  v6 = a3;
  v7 = [a1 valueType];
  v8 = [v7 wf_displayRepresentation];

  v9 = [v8 name];
  v10 = [v9 localizedStringResource];

  if (v10)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v12 = [v6 localize:v10 pluralizationNumber:v11];

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
  v4 = [objc_opt_class() valueType];
  v5 = [v3 typeWithClass:{objc_msgSend(v4, "wf_objectClass")}];
  v6 = [v2 orderedSetWithObject:v5];

  return v6;
}

+ (id)propertyBuilders
{
  v2 = [a1 valueType];
  v3 = [v2 propertyBuilders];

  return v3;
}

@end