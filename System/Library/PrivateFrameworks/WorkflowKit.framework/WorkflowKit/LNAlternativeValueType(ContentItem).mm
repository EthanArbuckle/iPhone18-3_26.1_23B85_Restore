@interface LNAlternativeValueType(ContentItem)
- (id)memberTypeParameterDefinitionsFromParameterMetadata:()ContentItem;
- (id)memberTypeParametersFromParameterMetadata:()ContentItem;
- (id)teamIdentifierForBundleIdentifier:()ContentItem;
- (id)uniqueTypeNameForValueType:()ContentItem;
- (id)wf_contentCollectionFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:;
- (id)wf_contentItemClassesWithAppBundleIdentifier:()ContentItem;
- (uint64_t)wf_contentItemClassWithAppBundleIdentifier:()ContentItem;
@end

@implementation LNAlternativeValueType(ContentItem)

- (id)memberTypeParametersFromParameterMetadata:()ContentItem
{
  v1 = [self memberTypeParameterDefinitionsFromParameterMetadata:?];
  v2 = [v1 if_compactMap:&__block_literal_global_71979];

  return v2;
}

- (id)uniqueTypeNameForValueType:()ContentItem
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v12 = v8;

    identifier = [v12 identifier];
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v4;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = v10;

    identifier = [v12 enumerationIdentifier];
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v4;
    if (v11)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v4;
    if (v11)
    {
LABEL_23:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v11;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_27;
    }

LABEL_26:
    v14 = 0;
LABEL_27:
    v12 = v14;

    identifier = [v12 typeIdentifierAsString];
LABEL_28:
    v15 = identifier;

    v16 = [v6 stringByAppendingFormat:@"_%@", v15];

    v6 = v16;
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v4;
    if (v11)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v4;
    if (v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    memberValueType = [v21 memberValueType];

    v17 = [self uniqueTypeNameForValueType:memberValueType];

    goto LABEL_30;
  }

LABEL_29:
  v6 = v6;
  v17 = v6;
LABEL_30:

  return v17;
}

- (id)memberTypeParameterDefinitionsFromParameterMetadata:()ContentItem
{
  v4 = a3;
  typeSpecificMetadata = [v4 typeSpecificMetadata];
  v6 = [typeSpecificMetadata objectForKey:@"LNValueTypeSpecificMetadataKeyLinkUnionMetadata"];

  memberValueTypes = [self memberValueTypes];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__LNAlternativeValueType_ContentItem__memberTypeParameterDefinitionsFromParameterMetadata___block_invoke;
  v12[3] = &unk_1E837F4A0;
  v13 = v6;
  v14 = v4;
  selfCopy = self;
  v8 = v4;
  v9 = v6;
  v10 = [memberValueTypes if_compactMap:v12];

  return v10;
}

- (id)teamIdentifierForBundleIdentifier:()ContentItem
{
  if (a3)
  {
    v3 = MEMORY[0x1E69635F8];
    v4 = a3;
    v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:0 error:0];

    teamIdentifier = [v5 teamIdentifier];
  }

  else
  {
    teamIdentifier = 0;
  }

  return teamIdentifier;
}

- (id)wf_contentCollectionFromLinkValue:()ContentItem appBundleIdentifier:displayedBundleIdentifier:
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = NSStringFromSelector(a2);
    v9 = 136315650;
    v10 = "[LNAlternativeValueType(ContentItem) wf_contentCollectionFromLinkValue:appBundleIdentifier:displayedBundleIdentifier:]";
    v11 = 2112;
    selfCopy = self;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_FAULT, "%s [%@ %@] should not be reachable; there is no such thing as an LNAlternativeValue.", &v9, 0x20u);
  }

  v6 = objc_opt_new();
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)wf_contentItemClassesWithAppBundleIdentifier:()ContentItem
{
  v4 = a3;
  memberValueTypes = [self memberValueTypes];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__LNAlternativeValueType_ContentItem__wf_contentItemClassesWithAppBundleIdentifier___block_invoke;
  v9[3] = &unk_1E837F478;
  v10 = v4;
  v6 = v4;
  v7 = [memberValueTypes if_flatMap:v9];

  return v7;
}

- (uint64_t)wf_contentItemClassWithAppBundleIdentifier:()ContentItem
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = getWFAppIntentsLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v5 = NSStringFromSelector(a2);
    v8 = 136315650;
    v9 = "[LNAlternativeValueType(ContentItem) wf_contentItemClassWithAppBundleIdentifier:]";
    v10 = 2112;
    selfCopy = self;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_FAULT, "%s [%@ %@] should not be called; use wf_contentItemClasses...", &v8, 0x20u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

@end