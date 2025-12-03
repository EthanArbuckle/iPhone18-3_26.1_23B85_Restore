@interface TSAStyleMapper
- (id)pTargetParentForStyle:(id)style withParentIdentifier:(id)identifier;
@end

@implementation TSAStyleMapper

- (id)pTargetParentForStyle:(id)style withParentIdentifier:(id)identifier
{
  result = [(TSSStylesheet *)self->super._targetStylesheet cascadedStyleWithIdentifier:identifier];
  if (result)
  {
    return result;
  }

  result = String(identifier);
  if (!result)
  {
    return result;
  }

  v8 = result;
  if ([result isEqualToString:TSWPTextPackageStringForPreset()])
  {
    if (String(identifier))
    {
LABEL_6:
      result = [(TSSStylesheet *)self->super._targetStylesheet cascadedStyleWithIdentifier:identifier componentMask:13];
      if (result)
      {
        return result;
      }

      goto LABEL_14;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        result = [(TSSStylesheet *)[(TSSStyleMapper *)self targetStylesheet] defaultListStyle];
        if (result)
        {
          return result;
        }

        goto LABEL_14;
      }

      goto LABEL_6;
    }

LABEL_13:
    result = [(TSSStylesheet *)[(TSSStyleMapper *)self targetStylesheet] defaultParagraphStyle];
    if (result)
    {
      return result;
    }

    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (([v8 isEqualToString:TSTTableNameStylePrefix[0]] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", TSTTextStylePrefix)))
  {
    goto LABEL_13;
  }

LABEL_14:
  v9.receiver = self;
  v9.super_class = TSAStyleMapper;
  result = [(TSSStyleMapper *)&v9 pTargetParentForStyle:style withParentIdentifier:identifier];
  if (!result)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [(TSSStylesheet *)[(TSSStyleMapper *)self targetStylesheet] defaultParagraphStyle];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return [(TSSStylesheet *)[(TSSStyleMapper *)self targetStylesheet] defaultCharacterStyle];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          return [(TSSStylesheet *)[(TSSStyleMapper *)self targetStylesheet] defaultListStyle];
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

@end