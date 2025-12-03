@interface SKUIButtonViewElement
- (BOOL)isEnabled;
- (IKViewElementStyle)buttonTitleStyle;
- (SKUIButtonViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (SKUIBuyButtonDescriptor)buyButtonDescriptor;
- (SKUIImageViewElement)additionalButtonImage;
- (SKUIViewElementText)buttonText;
- (id)_parseButtonText;
- (id)applyUpdatesWithElement:(id)element;
- (id)description;
- (id)personalizationLibraryItems;
- (unint64_t)elementType;
- (void)dealloc;
@end

@implementation SKUIButtonViewElement

- (SKUIButtonViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v12)
      {
        [(SKUIButtonViewElement *)v12 initWithDOMElement:v13 parent:v14 elementFactory:v15, v16, v17, v18, v19];
      }
    }
  }

  v82.receiver = self;
  v82.super_class = SKUIButtonViewElement;
  v20 = [(SKUIViewElement *)&v82 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v20)
  {
    v70 = factoryCopy;
    v71 = parentCopy;
    v21 = [elementCopy getAttribute:@"type"];
    v20->_buttonViewType = SKUIButtonViewTypeForString(v21);

    v22 = [elementCopy getAttribute:@"sub-type"];
    v23 = [v22 isEqualToString:@"toggle"];

    v20->_buttonViewSubType = v23;
    v24 = [elementCopy getAttribute:@"size-variant"];
    sizeVariant = v20->_sizeVariant;
    v20->_sizeVariant = v24;

    v26 = [elementCopy getAttribute:@"confirm-text"];
    confirmationText = v20->_confirmationText;
    v20->_confirmationText = v26;

    v28 = [elementCopy getAttribute:@"data-content-id"];
    v20->_itemIdentifier = [v28 longLongValue];

    v29 = [[SKUIStoreIdentifier alloc] initWithLongLong:v20->_itemIdentifier];
    storeIdentifier = v20->_storeIdentifier;
    v20->_storeIdentifier = v29;

    objc_storeStrong(&v20->_xml, element);
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 0;
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __66__SKUIButtonViewElement_initWithDOMElement_parent_elementFactory___block_invoke;
    v77[3] = &unk_2781F8568;
    v77[4] = &v78;
    [(SKUIViewElement *)v20 enumerateChildrenUsingBlock:v77];
    if ((v79[3] & 1) == 0)
    {
      _parseButtonText = [(SKUIButtonViewElement *)v20 _parseButtonText];
      buttonText = v20->_buttonText;
      v20->_buttonText = _parseButtonText;
    }

    v74 = [elementCopy getAttribute:@"data-feed-url"];
    if ([v74 length])
    {
      [(SKUIStoreIdentifier *)v20->_storeIdentifier setPodcastFeedURLIdentifier:v74];
    }

    v33 = [elementCopy getAttribute:@"bundle-id"];
    bundleIdentifier = v20->_bundleIdentifier;
    v20->_bundleIdentifier = v33;

    if ([(NSString *)v20->_bundleIdentifier length])
    {
      [(SKUIStoreIdentifier *)v20->_storeIdentifier setBundleIdentifier:v20->_bundleIdentifier];
    }

    v35 = [elementCopy getAttribute:@"selected"];
    v20->_selected = [v35 BOOLValue];

    v72 = [elementCopy getAttribute:@"badge"];
    if (v72)
    {
      v36 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v72];
      host = [v36 host];
      badgeResourceName = v20->_badgeResourceName;
      v20->_badgeResourceName = host;
    }

    v39 = [elementCopy getAttribute:@"disabled"];
    v69 = v39;
    if ([v39 length])
    {
      v40 = [v39 BOOLValue] ^ 1;
    }

    else
    {
      LOBYTE(v40) = -1;
    }

    v20->_enabled = v40;
    v41 = [elementCopy getAttribute:@"data-type"];
    v75 = [elementCopy getAttribute:@"data-variant"];
    if ([v41 length])
    {
      v76 = v41;
      if (([(__CFString *)v76 isEqualToString:@"redownload"]& 1) != 0 || ([(__CFString *)v76 isEqualToString:@"get"]& 1) != 0 || ([(__CFString *)v76 isEqualToString:@"preorder"]& 1) != 0 || ([(__CFString *)v76 isEqualToString:@"purchased"]& 1) != 0)
      {
      }

      else
      {
        v68 = [(__CFString *)v76 isEqualToString:@"update"];

        if (!v68)
        {
          goto LABEL_26;
        }
      }

      v76 = @"buy";
    }

    else
    {
      v76 = 0;
    }

LABEL_26:
    if ([v75 length] && !objc_msgSend(v75, "isEqualToString:", @"PLUS"))
    {
      if (v76 && v75)
      {
        v44 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", v76, v75, v69];
        variantIdentifier = v20->_variantIdentifier;
        v20->_variantIdentifier = v44;
        goto LABEL_34;
      }
    }

    else
    {

      v75 = 0;
    }

    if (!v76)
    {
LABEL_35:
      if (v20->_buttonViewType == 12)
      {
        v45 = [elementCopy getAttribute:@"data-content-id"];
        playItemIdentifier = v20->_playItemIdentifier;
        v20->_playItemIdentifier = v45;
      }

      if (v20->_buttonViewSubType == 1)
      {
        v47 = [elementCopy getAttribute:@"toggled-text"];
        toggledText = v20->_toggledText;
        v20->_toggledText = v47;

        v49 = [elementCopy getAttribute:@"non-toggled-text"];
        nonToggledText = v20->_nonToggledText;
        v20->_nonToggledText = v49;
      }

      v73 = [elementCopy getAttribute:@"big-hit-size"];
      if ([v73 length] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v73 floatValue];
        v20->_bigHitSize = v51;
      }

      v52 = [elementCopy getAttribute:@"big-hit"];
      if ([v52 length])
      {
        lowercaseString = [v52 lowercaseString];
        v20->_bigHitButton = [lowercaseString isEqualToString:@"true"];
      }

      v54 = [elementCopy getAttribute:@"show-on-demand"];
      if ([v54 length])
      {
        lowercaseString2 = [v54 lowercaseString];
        v20->_showOnDemand = [lowercaseString2 isEqualToString:@"true"];
      }

      v56 = [elementCopy getAttribute:@"toggled"];
      if ([v56 length])
      {
        lowercaseString3 = [v56 lowercaseString];
        v20->_toggled = [lowercaseString3 isEqualToString:@"true"];
      }

      v58 = [elementCopy getAttribute:@"toggle-id"];
      if ([v58 length])
      {
        v59 = [elementCopy getAttribute:@"toggle-id"];
        toggleItemIdentifier = v20->_toggleItemIdentifier;
        v20->_toggleItemIdentifier = v59;
      }

      v61 = [elementCopy getAttribute:@"auto-increment-count"];
      if ([v61 length])
      {
        lowercaseString4 = [v61 lowercaseString];
        v20->_autoIncrementCount = [lowercaseString4 isEqualToString:@"true"];
      }

      v63 = [elementCopy getAttribute:@"disabled-but-selectable"];
      if ([v63 length])
      {
        lowercaseString5 = [v63 lowercaseString];
        v20->_disabledButSelectable = [lowercaseString5 isEqualToString:@"true"];
      }

      v65 = [elementCopy getAttribute:@"suppress-cloud-restore"];
      if ([v65 length])
      {
        lowercaseString6 = [v65 lowercaseString];
        v20->_suppressCloudRestore = [lowercaseString6 isEqualToString:@"true"];
      }

      _Block_object_dispose(&v78, 8);
      factoryCopy = v70;
      parentCopy = v71;
      goto LABEL_57;
    }

    v42 = v76;
    variantIdentifier = v20->_variantIdentifier;
    v20->_variantIdentifier = &v42->isa;
LABEL_34:

    goto LABEL_35;
  }

LABEL_57:

  return v20;
}

void __66__SKUIButtonViewElement_initWithDOMElement_parent_elementFactory___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  if ([v7 elementType] == 138)
  {
    v5 = [v7 elementName];
    v6 = [v5 isEqualToString:@"span"];

    if (v6)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

- (void)dealloc
{
  xml = self->_xml;
  if (xml)
  {
    appDocument = [(SKUIButtonViewElement *)self appDocument];
    SKUIViewElementTextDeadlockFix(xml, appDocument);

    v5 = self->_xml;
    self->_xml = 0;
  }

  v6.receiver = self;
  v6.super_class = SKUIButtonViewElement;
  [(SKUIViewElement *)&v6 dealloc];
}

- (SKUIImageViewElement)additionalButtonImage
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__53;
  v9 = __Block_byref_object_dispose__53;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__SKUIButtonViewElement_additionalButtonImage__block_invoke;
  v4[3] = &unk_2781F8590;
  v4[4] = v11;
  v4[5] = &v5;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  _Block_object_dispose(v11, 8);

  return v2;
}

void __46__SKUIButtonViewElement_additionalButtonImage__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([a2 elementType] == 49)
  {
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 24) == 1)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a3 = 1;
    }

    else
    {
      *(v6 + 24) = 1;
    }
  }
}

- (SKUIViewElementText)buttonText
{
  buttonText = self->_buttonText;
  if (!buttonText)
  {
    _parseButtonText = [(SKUIButtonViewElement *)self _parseButtonText];
    v5 = self->_buttonText;
    self->_buttonText = _parseButtonText;

    buttonText = self->_buttonText;
  }

  return buttonText;
}

- (IKViewElementStyle)buttonTitleStyle
{
  v2 = [(SKUIViewElement *)self firstChildForElementType:138];
  v3 = v2;
  if (v2 && ([v2 elementName], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"span"), v4, (v5 & 1) == 0))
  {
    style = [v3 style];
  }

  else
  {
    style = 0;
  }

  return style;
}

- (SKUIBuyButtonDescriptor)buyButtonDescriptor
{
  v3 = [(SKUIButtonViewElement *)self buttonViewType]- 2;
  if (v3 <= 7 && ((0x87u >> v3) & 1) != 0)
  {
    v4 = qword_215F3FC00[v3];
    buyButtonDescriptor = self->_buyButtonDescriptor;
    if (!buyButtonDescriptor)
    {
      v6 = objc_alloc_init(SKUIBuyButtonDescriptor);
      v7 = self->_buyButtonDescriptor;
      self->_buyButtonDescriptor = v6;

      buyButtonDescriptor = self->_buyButtonDescriptor;
    }

    [(SKUIBuyButtonDescriptor *)buyButtonDescriptor setButtonType:v4];
    v8 = self->_buyButtonDescriptor;
    buttonText = [(SKUIButtonViewElement *)self buttonText];
    string = [buttonText string];
    [(SKUIBuyButtonDescriptor *)v8 setButtonText:string];

    v11 = self->_buyButtonDescriptor;
    confirmationText = [(SKUIButtonViewElement *)self confirmationText];
    [(SKUIBuyButtonDescriptor *)v11 setConfirmationText:confirmationText];

    [(SKUIBuyButtonDescriptor *)self->_buyButtonDescriptor setElementType:[(SKUIButtonViewElement *)self elementType]];
    [(SKUIBuyButtonDescriptor *)self->_buyButtonDescriptor setItemIdentifier:[(SKUIButtonViewElement *)self itemIdentifier]];
    v13 = self->_buyButtonDescriptor;
    storeIdentifier = [(SKUIButtonViewElement *)self storeIdentifier];
    [(SKUIBuyButtonDescriptor *)v13 setStoreIdentifier:storeIdentifier];

    v15 = self->_buyButtonDescriptor;
    variantIdentifier = [(SKUIButtonViewElement *)self variantIdentifier];
    [(SKUIBuyButtonDescriptor *)v15 setVariantIdentifier:variantIdentifier];

    [(SKUIBuyButtonDescriptor *)self->_buyButtonDescriptor setShouldSuppressCloudRestore:[(SKUIButtonViewElement *)self suppressCloudRestore]];
    v17 = self->_buyButtonDescriptor;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v26.receiver = self;
  v26.super_class = SKUIButtonViewElement;
  v5 = [(SKUIViewElement *)&v26 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy == self || v5 != self)
  {
    if (v5 == self)
    {
      goto LABEL_7;
    }

    bundleIdentifier = [(SKUIButtonViewElement *)self buyButtonDescriptor];
    [(SKUIButtonViewElement *)elementCopy setBuyButtonDescriptor:bundleIdentifier];
  }

  else
  {
    badgeResourceName = [(SKUIButtonViewElement *)elementCopy badgeResourceName];
    badgeResourceName = self->_badgeResourceName;
    self->_badgeResourceName = badgeResourceName;

    buttonText = [(SKUIButtonViewElement *)elementCopy buttonText];
    buttonText = self->_buttonText;
    self->_buttonText = buttonText;

    self->_buttonViewType = [(SKUIButtonViewElement *)elementCopy buttonViewType];
    buyButtonDescriptor = [(SKUIButtonViewElement *)elementCopy buyButtonDescriptor];
    buyButtonDescriptor = self->_buyButtonDescriptor;
    self->_buyButtonDescriptor = buyButtonDescriptor;

    confirmationText = [(SKUIButtonViewElement *)elementCopy confirmationText];
    confirmationText = self->_confirmationText;
    self->_confirmationText = confirmationText;

    self->_enabled = elementCopy->_enabled;
    self->_itemIdentifier = [(SKUIButtonViewElement *)elementCopy itemIdentifier];
    nonToggledText = [(SKUIButtonViewElement *)elementCopy nonToggledText];
    nonToggledText = self->_nonToggledText;
    self->_nonToggledText = nonToggledText;

    self->_selected = [(SKUIButtonViewElement *)elementCopy isSelected];
    storeIdentifier = [(SKUIButtonViewElement *)elementCopy storeIdentifier];
    storeIdentifier = self->_storeIdentifier;
    self->_storeIdentifier = storeIdentifier;

    toggledText = [(SKUIButtonViewElement *)elementCopy toggledText];
    toggledText = self->_toggledText;
    self->_toggledText = toggledText;

    variantIdentifier = [(SKUIButtonViewElement *)elementCopy variantIdentifier];
    variantIdentifier = self->_variantIdentifier;
    self->_variantIdentifier = variantIdentifier;

    bundleIdentifier = [(SKUIButtonViewElement *)elementCopy bundleIdentifier];
    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = bundleIdentifier;
  }

LABEL_7:

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SKUIButtonViewElement;
  v4 = [(SKUIButtonViewElement *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: Type: %ld, ID: %lld, Variant: %@", v4, self->_buttonViewType, self->_itemIdentifier, self->_variantIdentifier];

  return v5;
}

- (unint64_t)elementType
{
  v2 = self->_buttonViewType - 2;
  if (v2 > 7)
  {
    return 12;
  }

  else
  {
    return qword_215F3FC40[v2];
  }
}

- (BOOL)isEnabled
{
  enabled = self->_enabled;
  if (enabled != 255)
  {
    return enabled != 0;
  }

  v7 = v2;
  v8 = v3;
  v6.receiver = self;
  v6.super_class = SKUIButtonViewElement;
  return [(SKUIViewElement *)&v6 isEnabled];
}

- (id)personalizationLibraryItems
{
  if (self->_itemIdentifier)
  {
    v3 = objc_alloc_init(SKUILibraryItem);
    [(SKUILibraryItem *)v3 setStoreIdentifier:self->_storeIdentifier];
    v4 = [MEMORY[0x277CBEB98] setWithObject:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_parseButtonText
{
  xml = self->_xml;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__SKUIButtonViewElement__parseButtonText__block_invoke;
  v5[3] = &unk_2781FA390;
  v5[4] = self;
  v3 = [(IKTextParser *)SKUIViewElementText textWithDOMElement:xml usingParseBlock:v5];

  return v3;
}

id __41__SKUIButtonViewElement__parseButtonText__block_invoke(uint64_t a1, uint64_t a2, void *a3, BOOL *a4)
{
  v6 = a3;
  v7 = [v6 nodeName];
  v8 = [v7 isEqual:@"span"];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v6 getAttribute:*MEMORY[0x277D1AF28]];
    v11 = [v9 elementWithIdentifier:v10];

    if (v11)
    {
      v12 = SKUILabelStringAttributesWithSpanElement(v11);
      v13 = objc_alloc(MEMORY[0x277CCA898]);
      v14 = [v6 textContent];
      v15 = [v13 initWithString:v14 attributes:v12];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  *a4 = v15 == 0;

  return v15;
}

@end