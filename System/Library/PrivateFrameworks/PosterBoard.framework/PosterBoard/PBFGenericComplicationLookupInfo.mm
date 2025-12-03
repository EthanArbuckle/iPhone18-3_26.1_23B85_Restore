@interface PBFGenericComplicationLookupInfo
+ (id)complicationLookupForWidgetFamily:(id)family extensionBundleIdentifier:(id)identifier containingBundleIdentifier:(id)bundleIdentifier kind:(id)kind intent:(id)intent suggestedComplication:(id)complication;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PBFGenericComplicationLookupInfo

+ (id)complicationLookupForWidgetFamily:(id)family extensionBundleIdentifier:(id)identifier containingBundleIdentifier:(id)bundleIdentifier kind:(id)kind intent:(id)intent suggestedComplication:(id)complication
{
  familyCopy = family;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  intentCopy = intent;
  complicationCopy = complication;
  if (familyCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[PBFGenericComplicationLookupInfo complicationLookupForWidgetFamily:extensionBundleIdentifier:containingBundleIdentifier:kind:intent:suggestedComplication:];
    if (identifierCopy)
    {
LABEL_3:
      if (bundleIdentifierCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      +[PBFGenericComplicationLookupInfo complicationLookupForWidgetFamily:extensionBundleIdentifier:containingBundleIdentifier:kind:intent:suggestedComplication:];
      if (kindCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  +[PBFGenericComplicationLookupInfo complicationLookupForWidgetFamily:extensionBundleIdentifier:containingBundleIdentifier:kind:intent:suggestedComplication:];
  if (!bundleIdentifierCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (kindCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  +[PBFGenericComplicationLookupInfo complicationLookupForWidgetFamily:extensionBundleIdentifier:containingBundleIdentifier:kind:intent:suggestedComplication:];
LABEL_5:
  v19 = objc_alloc_init(PBFGenericComplicationLookupInfo);
  v20 = [familyCopy copy];
  complicationWidgetFamily = v19->_complicationWidgetFamily;
  v19->_complicationWidgetFamily = v20;

  v22 = [identifierCopy copy];
  complicationExtensionBundleIdentifier = v19->_complicationExtensionBundleIdentifier;
  v19->_complicationExtensionBundleIdentifier = v22;

  v24 = [bundleIdentifierCopy copy];
  complicationContainingBundleIdentifier = v19->_complicationContainingBundleIdentifier;
  v19->_complicationContainingBundleIdentifier = v24;

  v26 = [kindCopy copy];
  complicationWidgetKind = v19->_complicationWidgetKind;
  v19->_complicationWidgetKind = v26;

  complicationIntent = v19->_complicationIntent;
  v19->_complicationIntent = intentCopy;
  v29 = intentCopy;

  v30 = [complicationCopy copy];
  suggestedComplication = v19->_suggestedComplication;
  v19->_suggestedComplication = v30;

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PBFGenericComplicationLookupInfo);
  v5 = [(NSNumber *)self->_complicationWidgetFamily copy];
  complicationWidgetFamily = v4->_complicationWidgetFamily;
  v4->_complicationWidgetFamily = v5;

  v7 = [(NSString *)self->_complicationExtensionBundleIdentifier copy];
  complicationExtensionBundleIdentifier = v4->_complicationExtensionBundleIdentifier;
  v4->_complicationExtensionBundleIdentifier = v7;

  v9 = [(NSString *)self->_complicationContainingBundleIdentifier copy];
  complicationContainingBundleIdentifier = v4->_complicationContainingBundleIdentifier;
  v4->_complicationContainingBundleIdentifier = v9;

  v11 = [(NSString *)self->_complicationWidgetKind copy];
  complicationWidgetKind = v4->_complicationWidgetKind;
  v4->_complicationWidgetKind = v11;

  v13 = [(PRSPosterGallerySuggestedComplication *)self->_suggestedComplication copy];
  suggestedComplication = v4->_suggestedComplication;
  v4->_suggestedComplication = v13;

  v4->_hash = self->_hash;
  return v4;
}

- (unint64_t)hash
{
  hash = self->_hash;
  if (!hash)
  {
    v4 = objc_opt_new();
    v5 = [v4 appendObject:self->_complicationWidgetFamily];
    v6 = [v4 appendString:self->_complicationContainingBundleIdentifier];
    v7 = [v4 appendString:self->_complicationExtensionBundleIdentifier];
    v8 = [v4 appendString:self->_complicationWidgetKind];
    hash = [v4 hash];
    self->_hash = hash;
  }

  return hash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self || (v6 = [(PBFGenericComplicationLookupInfo *)equalCopy hash], v6 == [(PBFGenericComplicationLookupInfo *)self hash]))
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
      complicationWidgetFamily = [(PBFGenericComplicationLookupInfo *)v9 complicationWidgetFamily];
      complicationWidgetFamily2 = [(PBFGenericComplicationLookupInfo *)self complicationWidgetFamily];
      v12 = BSEqualObjects();

      if (v12 && ([(PBFGenericComplicationLookupInfo *)v9 complicationContainingBundleIdentifier], v13 = objc_claimAutoreleasedReturnValue(), [(PBFGenericComplicationLookupInfo *)self complicationContainingBundleIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, v15) && ([(PBFGenericComplicationLookupInfo *)v9 complicationExtensionBundleIdentifier], v16 = objc_claimAutoreleasedReturnValue(), [(PBFGenericComplicationLookupInfo *)self complicationExtensionBundleIdentifier], v17 = objc_claimAutoreleasedReturnValue(), v18 = BSEqualObjects(), v17, v16, v18))
      {
        complicationWidgetKind = [(PBFGenericComplicationLookupInfo *)v9 complicationWidgetKind];
        complicationWidgetKind2 = [(PBFGenericComplicationLookupInfo *)self complicationWidgetKind];
        v7 = BSEqualObjects();
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
  }

  return v7;
}

+ (void)complicationLookupForWidgetFamily:extensionBundleIdentifier:containingBundleIdentifier:kind:intent:suggestedComplication:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  [v0 handleFailureInMethod:@"widgetFamily" object:? file:? lineNumber:? description:?];
}

+ (void)complicationLookupForWidgetFamily:extensionBundleIdentifier:containingBundleIdentifier:kind:intent:suggestedComplication:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  [v0 handleFailureInMethod:@"complicationExtensionBundleIdentifier" object:? file:? lineNumber:? description:?];
}

+ (void)complicationLookupForWidgetFamily:extensionBundleIdentifier:containingBundleIdentifier:kind:intent:suggestedComplication:.cold.3()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  [v0 handleFailureInMethod:@"complicationContainingBundleIdentifier" object:? file:? lineNumber:? description:?];
}

+ (void)complicationLookupForWidgetFamily:extensionBundleIdentifier:containingBundleIdentifier:kind:intent:suggestedComplication:.cold.4()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  [v0 handleFailureInMethod:@"complicationWidgetKind" object:? file:? lineNumber:? description:?];
}

@end