@interface WFLinkEntityContentItem
+ (BOOL)hasInMemoryFindAction;
+ (BOOL)hasLibrary;
+ (BOOL)isAppUsageResultEntity;
+ (BOOL)isCalendarEventEntity;
+ (BOOL)isContactEntity;
+ (BOOL)isFinderNodeEntity;
+ (BOOL)isMailMessageEntity;
+ (BOOL)isNoteEntity;
+ (BOOL)isNoteFolderEntityIdentifier:(id)identifier;
+ (BOOL)isNotes;
+ (BOOL)isPhotosAssetEntity;
+ (BOOL)isRecordingEntity;
+ (BOOL)isReminderEntity;
+ (BOOL)isWorkflowEntity;
+ (id)_localizedTypeDescriptionWithContext:(id)context pluralizationNumber:(int64_t)number;
+ (id)allProperties;
+ (id)allowedOperatorsWithQueryParameterMetadata:(id)metadata objectClasses:(id)classes operators:(id)operators;
+ (id)coercions;
+ (id)localizedCountDescriptionWithValue:(int64_t)value;
+ (id)localizedPluralFilterDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
+ (id)propertyBuildersForFilteringUsingQuery:(id)query;
+ (void)initialize;
- (BOOL)getListSubtitle:(id)subtitle;
- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size;
- (BOOL)outputsFileContent;
- (LNEntity)entity;
- (WFLinkEntityContentItem)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)name;
- (void)encodeWithCoder:(id)coder;
- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type;
- (void)generateObjectRepresentation:(id)representation options:(id)options forClass:(Class)class;
- (void)generateStructuredDataRepresentationWithTypeIdentifier:(int64_t)identifier completionHandler:(id)handler;
@end

@implementation WFLinkEntityContentItem

+ (id)ownedTypes
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

- (void)generateStructuredDataRepresentationWithTypeIdentifier:(int64_t)identifier completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69ACE60];
  handlerCopy = handler;
  entityMetadata = [objc_opt_class() entityMetadata];
  v9 = [v6 policyWithEntityMetadata:entityMetadata];

  v17 = 0;
  v10 = [v9 connectionWithError:&v17];
  v11 = v17;
  if (v10)
  {
    entity = [(WFLinkEntityContentItem *)self entity];
    identifier = [entity identifier];
    v18 = identifier;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    [v10 fetchStructuredDataWithTypeIdentifier:identifier forEntityIdentifiers:v14 completionHandler:handlerCopy];

    handlerCopy = entity;
  }

  else
  {
    v15 = getWFGeneralLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[WFLinkEntityContentItem generateStructuredDataRepresentationWithTypeIdentifier:completionHandler:]";
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_ERROR, "%s Unable to create connection for structured data representation fetch: %@", buf, 0x16u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)generateFileRepresentation:(id)representation options:(id)options forType:(id)type
{
  v48 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  typeCopy = type;
  entityMetadata = [objc_opt_class() entityMetadata];
  systemProtocolMetadata = [entityMetadata systemProtocolMetadata];
  v11 = [systemProtocolMetadata objectForKeyedSubscript:*MEMORY[0x1E69AC2C0]];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  transferableContentTypes = [entityMetadata transferableContentTypes];
  exportableTypes = [transferableContentTypes exportableTypes];
  v16 = [exportableTypes if_map:&__block_literal_global_746];

  string = [typeCopy string];
  v18 = WFBestFileTypeForSupportedContentTypes(v16, string);

  if (!v18)
  {
    supportedContentTypes = [v13 supportedContentTypes];
    v20 = [supportedContentTypes if_map:&__block_literal_global_749];

    string2 = [typeCopy string];
    v18 = WFBestFileTypeForSupportedContentTypes(v20, string2);
  }

  isFinderNodeEntity = [objc_opt_class() isFinderNodeEntity];
  if ((isFinderNodeEntity & (v18 == 0)) != 0)
  {
    v23 = @"public.item";
  }

  else
  {
    v23 = v18;
  }

  if ((isFinderNodeEntity & 1) != 0 || v18)
  {
    v26 = [MEMORY[0x1E69ACE60] policyWithEntityMetadata:entityMetadata];
    v45 = 0;
    v27 = [v26 connectionWithError:&v45];
    v41 = v45;
    if (v27)
    {
      v39 = v26;
      entity = [(WFLinkEntityContentItem *)self entity];
      v38 = [objc_alloc(MEMORY[0x1E69AC788]) initWithContentType:v23];
      v29 = [objc_alloc(MEMORY[0x1E69ACF28]) initWithContentType:v38 preferredExtractionType:0];
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      v31 = processInfo;
      v40 = v13;
      if (processInfo)
      {
        [processInfo if_auditToken];
      }

      else
      {
        memset(buf, 0, 32);
      }

      v34 = [v29 configurationWithAuditToken:buf];

      v46 = entity;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __70__WFLinkEntityContentItem_generateFileRepresentation_options_forType___block_invoke_753;
      v42[3] = &unk_1E837AAA0;
      v43 = entity;
      v44 = representationCopy;
      v36 = entity;
      [v27 exportEntities:v35 metadata:entityMetadata withConfiguration:v34 completionHandler:v42];

      v26 = v39;
      v13 = v40;
      v33 = v41;
    }

    else
    {
      v32 = getWFGeneralLogObject();
      v33 = v41;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[WFLinkEntityContentItem generateFileRepresentation:options:forType:]";
        *&buf[12] = 2112;
        *&buf[14] = v41;
        _os_log_impl(&dword_1CA256000, v32, OS_LOG_TYPE_ERROR, "%s Unable to create connection: %@", buf, 0x16u);
      }

      (*(representationCopy + 2))(representationCopy, 0, v41);
    }
  }

  else
  {
    v24 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      string3 = [typeCopy string];
      *buf = 136315394;
      *&buf[4] = "[WFLinkEntityContentItem generateFileRepresentation:options:forType:]";
      *&buf[12] = 2112;
      *&buf[14] = string3;
      _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_ERROR, "%s Failed to find a best file type for %@ returning nil!", buf, 0x16u);
    }

    (*(representationCopy + 2))(representationCopy, 0, 0);
  }

  v37 = *MEMORY[0x1E69E9840];
}

void __70__WFLinkEntityContentItem_generateFileRepresentation_options_forType___block_invoke_753(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 value];
    v7 = [v6 firstObject];
    v8 = [v7 exportedContent];

    v9 = [v8 content];
    v10 = [v9 wf_fileRepresentation];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = getWFGeneralLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [*(a1 + 32) identifier];
      v14 = 136315650;
      v15 = "[WFLinkEntityContentItem generateFileRepresentation:options:forType:]_block_invoke";
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Unable to fetch coerced value for entity with identifier: %@ - %@", &v14, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)generateObjectRepresentation:(id)representation options:(id)options forClass:(Class)class
{
  v88 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  optionsCopy = options;
  entity = [(WFLinkEntityContentItem *)self entity];
  if ([objc_opt_class() isFinderNodeEntity])
  {
    entityMetadata = [objc_opt_class() entityMetadata];
    transferableContentTypes = [entityMetadata transferableContentTypes];
    exportableTypes = [transferableContentTypes exportableTypes];

    if ([exportableTypes count])
    {
      v71 = entity;
      v14 = optionsCopy;
      v15 = [MEMORY[0x1E6996ED0] typeWithClass:class];
      entityMetadata2 = [objc_opt_class() entityMetadata];
      transferableContentTypes2 = [entityMetadata2 transferableContentTypes];
      exportableTypes2 = [transferableContentTypes2 exportableTypes];
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke;
      v84[3] = &unk_1E8373140;
      v85 = v15;
      v19 = v15;
      firstObject = [exportableTypes2 if_firstObjectPassingTest:v84];

      if (!firstObject)
      {
        entityMetadata3 = [objc_opt_class() entityMetadata];
        transferableContentTypes3 = [entityMetadata3 transferableContentTypes];
        exportableTypes3 = [transferableContentTypes3 exportableTypes];
        firstObject = [exportableTypes3 firstObject];
      }

      v24 = getWFContentGraphLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        wf_fileType = [firstObject wf_fileType];
        *buf = 136315394;
        *&buf[4] = "[WFLinkEntityContentItem generateObjectRepresentation:options:forClass:]";
        *&buf[12] = 2112;
        *&buf[14] = wf_fileType;
        _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_DEFAULT, "%s [Finder Entity] Generating a file for file type: %@", buf, 0x16u);
      }

      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_717;
      v79[3] = &unk_1E8373190;
      v80 = firstObject;
      classCopy = class;
      optionsCopy = v14;
      v81 = v14;
      v82 = representationCopy;
      v26 = firstObject;
      wf_fileType2 = [v26 wf_fileType];
      [(WFLinkEntityContentItem *)self generateFileRepresentation:v79 options:v81 forType:wf_fileType2];

      entity = v71;
    }

    else
    {
      (*(representationCopy + 2))(representationCopy, 0, 0, 0);
    }

    goto LABEL_45;
  }

  if (objc_opt_class() == class)
  {
    v32 = objc_alloc(MEMORY[0x1E69AC818]);
    identifier = [entity identifier];
    typeIdentifier = [identifier typeIdentifier];
    v35 = [v32 initWithIdentifier:typeIdentifier];

    v36 = [objc_alloc(MEMORY[0x1E69ACA90]) initWithValue:entity valueType:v35];
    (*(representationCopy + 2))(representationCopy, v36, 0, 0);
  }

  else
  {
    if (objc_opt_class() == class)
    {
      entityMetadata4 = [objc_opt_class() entityMetadata];
      systemProtocolMetadata = [entityMetadata4 systemProtocolMetadata];
      v39 = [systemProtocolMetadata objectForKeyedSubscript:*MEMORY[0x1E69AC2D0]];

      if (v39)
      {
        v40 = MEMORY[0x1E69ACE60];
        entityMetadata5 = [objc_opt_class() entityMetadata];
        v42 = [v40 policyWithEntityMetadata:entityMetadata5];

        v78 = 0;
        v43 = [v42 connectionWithError:&v78];
        v44 = v78;
        v45 = v44;
        if (v43)
        {
          v72 = v44;
          v46 = entity;
          v47 = optionsCopy;
          v48 = [objc_alloc(MEMORY[0x1E69AC788]) initWithContentType:@"public.url"];
          v49 = [objc_alloc(MEMORY[0x1E69ACF28]) initWithContentType:v48 preferredExtractionType:0];
          processInfo = [MEMORY[0x1E696AE30] processInfo];
          v51 = processInfo;
          if (processInfo)
          {
            [processInfo if_auditToken];
          }

          else
          {
            memset(buf, 0, 32);
          }

          v65 = [v49 configurationWithAuditToken:{buf, v72}];

          v66 = v46;
          v86 = v46;
          v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
          entityMetadata6 = [objc_opt_class() entityMetadata];
          v76[0] = MEMORY[0x1E69E9820];
          v76[1] = 3221225472;
          v76[2] = __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_730;
          v76[3] = &unk_1E837B530;
          v77 = representationCopy;
          [v43 exportEntities:v67 metadata:entityMetadata6 withConfiguration:v65 completionHandler:v76];

          optionsCopy = v47;
          entity = v66;
          v45 = v73;
        }

        else
        {
          v56 = getWFGeneralLogObject();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "[WFLinkEntityContentItem generateObjectRepresentation:options:forClass:]";
            *&buf[12] = 2112;
            *&buf[14] = v45;
            _os_log_impl(&dword_1CA256000, v56, OS_LOG_TYPE_ERROR, "%s Unable to create connection for URL export: %@", buf, 0x16u);
          }

          (*(representationCopy + 2))(representationCopy, 0, 0, v45);
        }

LABEL_40:
        goto LABEL_46;
      }
    }

    else if (objc_opt_class() == class || objc_opt_class() == class)
    {
      if ([objc_opt_class() isNoteEntity])
      {
        properties = [entity properties];
        exportableTypes = [properties if_firstObjectWithValue:@"contents" forKey:@"identifier"];

        value = [exportableTypes value];
        v29Value = [value value];

        if (v29Value)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = v29Value;
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = 0;
        }

        v57 = v31;

        name = [(WFLinkEntityContentItem *)self name];
        v59 = name;
        if (!v57 || !name)
        {
          (*(representationCopy + 2))(representationCopy, 0, 0, 0);
LABEL_44:

LABEL_45:
          goto LABEL_46;
        }

        v60 = [name stringByAppendingString:@"\n"];
        if (objc_opt_class() == class)
        {
          string = [v57 string];
          v61 = [v60 stringByAppendingString:string];

          (*(representationCopy + 2))(representationCopy, v61, v59, 0);
        }

        else
        {
          if (objc_opt_class() != class)
          {
LABEL_43:

            goto LABEL_44;
          }

          v61 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v60];
          titleStyle = [getICTextStyleClass() titleStyle];
          attributes = [titleStyle attributes];
          [v61 setAttributes:attributes range:{0, objc_msgSend(v61, "length")}];

          [v61 appendAttributedString:v57];
          v64 = [v61 copy];
          (*(representationCopy + 2))(representationCopy, v64, v59, 0);
        }

        goto LABEL_43;
      }

      entityMetadata7 = [objc_opt_class() entityMetadata];
      transferableContentTypes4 = [entityMetadata7 transferableContentTypes];
      exportableTypes4 = [transferableContentTypes4 exportableTypes];
      v42 = [exportableTypes4 if_firstObjectPassingTest:&__block_literal_global_742];

      if (v42)
      {
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_2;
        v74[3] = &unk_1E837E3C0;
        v75 = representationCopy;
        wf_fileType3 = [v42 wf_fileType];
        [(WFLinkEntityContentItem *)self generateFileRepresentation:v74 options:optionsCopy forType:wf_fileType3];
      }

      else
      {
        (*(representationCopy + 2))(representationCopy, 0, 0, 0);
      }

      goto LABEL_40;
    }

    (*(representationCopy + 2))(representationCopy, 0, 0, 0);
  }

LABEL_46:

  v70 = *MEMORY[0x1E69E9840];
}

uint64_t __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E6982C40];
  v4 = [a2 contentType];
  v5 = [v3 typeWithIdentifier:v4];

  v6 = [*(a1 + 32) conformsToUTType:v5];
  return v6;
}

void __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_717(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) wf_fileType];
      *buf = 136315650;
      v20 = "[WFLinkEntityContentItem generateObjectRepresentation:options:forClass:]_block_invoke";
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s [Finder Entity] Unable to generate file for file type: %@, error: %@", buf, 0x20u);
    }
  }

  v9 = [MEMORY[0x1E6996D58] itemWithFile:v5];
  v10 = [MEMORY[0x1E6996ED0] typeWithClass:*(a1 + 56)];
  v11 = *(a1 + 40);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_719;
  v16[3] = &unk_1E8373168;
  v17 = v5;
  v15 = *(a1 + 48);
  v12 = v15;
  v18 = v15;
  v13 = v5;
  [v9 getRepresentationsForType:v10 options:v11 completionHandler:v16];

  v14 = *MEMORY[0x1E69E9840];
}

void __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_730(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 value];
    v7 = [v6 firstObject];
    v8 = [v7 exportedContent];

    v9 = [v8 content];
    v10 = [v9 fileURL];

    if (v10)
    {
      v11 = *(*(a1 + 32) + 16);
    }

    else
    {
      v13 = getWFGeneralLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315138;
        v16 = "[WFLinkEntityContentItem generateObjectRepresentation:options:forClass:]_block_invoke";
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s URLRepresentable entity export did not produce a URL", &v15, 0xCu);
      }

      v11 = *(*(a1 + 32) + 16);
    }

    v11();
  }

  else
  {
    v12 = getWFGeneralLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "[WFLinkEntityContentItem generateObjectRepresentation:options:forClass:]_block_invoke";
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Unable to export URLRepresentable entity as URL: %@", &v15, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a2 data];
  v5 = [v3 wf_stringWithData:v4];

  (*(*(a1 + 32) + 16))();
}

uint64_t __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_740(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6982C40];
  v3 = [a2 contentType];
  v4 = [v2 typeWithIdentifier:v3];

  v5 = [v4 conformsToType:*MEMORY[0x1E6982F40]];
  return v5;
}

void __73__WFLinkEntityContentItem_generateObjectRepresentation_options_forClass___block_invoke_719(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = NSStringFromClass(*(a1 + 48));
      v14 = 136315906;
      v15 = "[WFLinkEntityContentItem generateObjectRepresentation:options:forClass:]_block_invoke";
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s [Finder Entity] Unable to generate representations from file: %@ to target type: %@, error: %@", &v14, 0x2Au);
    }
  }

  v10 = [v5 firstObject];
  v11 = *(a1 + 40);
  v12 = [v10 object];
  (*(v11 + 16))(v11, v12, 0, 0);

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)getListThumbnail:(id)thumbnail forSize:(CGSize)size
{
  thumbnailCopy = thumbnail;
  displayRepresentation = [(WFLinkEntityContentItem *)self displayRepresentation];
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
  displayRepresentation = [(WFLinkEntityContentItem *)self displayRepresentation];
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
  v3 = [(WFLinkEntityContentItem *)self objectForClass:objc_opt_class()];
  wfName = [v3 wfName];

  if (wfName)
  {
    wfName2 = [v3 wfName];
  }

  else
  {
    displayRepresentation = [(WFLinkEntityContentItem *)self displayRepresentation];
    title = [displayRepresentation title];
    wf_localizedString = [title wf_localizedString];
    v9 = wf_localizedString;
    if (wf_localizedString)
    {
      localizedTypeDescription = wf_localizedString;
    }

    else
    {
      localizedTypeDescription = [objc_opt_class() localizedTypeDescription];
    }

    wfName2 = localizedTypeDescription;
  }

  return wfName2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entity = [(WFLinkEntityContentItem *)self entity];
  [coderCopy encodeObject:entity forKey:@"entity"];

  entityMetadata = [objc_opt_class() entityMetadata];
  [coderCopy encodeObject:entityMetadata forKey:@"entityMetadata"];

  queryMetadata = [objc_opt_class() queryMetadata];
  [coderCopy encodeObject:queryMetadata forKey:@"queryMetadata"];

  appBundleIdentifier = [objc_opt_class() appBundleIdentifier];
  [coderCopy encodeObject:appBundleIdentifier forKey:@"appBundleIdentifier"];

  appBundleIdentifier2 = [objc_opt_class() appBundleIdentifier];
  [coderCopy encodeObject:appBundleIdentifier2 forKey:@"entityNamespace"];

  displayRepresentation = [(WFLinkEntityContentItem *)self displayRepresentation];
  [coderCopy encodeObject:displayRepresentation forKey:@"displayRepresentation"];
}

- (WFLinkEntityContentItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = WFLinkEntityContentItem;
  v5 = [(WFLinkEntityContentItem *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityMetadata"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryMetadata"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appBundleIdentifier"];
    if (!v8)
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityNamespace"];
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayedAppBundleIdentifier"];
    v10 = [v6 wf_contentItemClassWithQueryMetadata:v7 appBundleIdentifier:v8 displayedAppBundleIdentifier:v9];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entity"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayRepresentation"];
    v13 = [v10 itemWithObject:v11];
    [(WFLinkEntityContentItem *)v13 setDisplayRepresentation:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)debugDescription
{
  v3 = *MEMORY[0x1E69E1140];
  v4 = os_variant_allows_internal_security_policies();
  v5 = MEMORY[0x1E696AEC0];
  if (v4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@>", self];
  }

  else
  {
    entity = [(WFLinkEntityContentItem *)self entity];
    identifier = [entity identifier];
    v6 = [v5 stringWithFormat:@"WFLinkEntityContentItem <%@>", identifier];
  }

  return v6;
}

- (LNEntity)entity
{
  v3 = objc_opt_class();

  return [(WFLinkEntityContentItem *)self objectForClass:v3];
}

+ (id)outputTypes
{
  v32.receiver = self;
  v32.super_class = &OBJC_METACLASS___WFLinkEntityContentItem;
  v3 = objc_msgSendSuper2(&v32, sel_outputTypes);
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
  [v4 addObject:v5];

  if ([self isNoteEntity])
  {
    v6 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
    [v4 insertObject:v6 atIndex:0];
  }

  if ([self isFinderNodeEntity])
  {
    v7 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982D60]];
    [v4 insertObject:v7 atIndex:0];

    v8 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982D50]];
    [v4 insertObject:v8 atIndex:0];
  }

  entityMetadata = [self entityMetadata];
  systemProtocolMetadata = [entityMetadata systemProtocolMetadata];
  v11 = [systemProtocolMetadata objectForKeyedSubscript:*MEMORY[0x1E69AC2D0]];

  if (v11)
  {
    v12 = [MEMORY[0x1E6996ED0] typeWithClass:objc_opt_class()];
    [v4 insertObject:v12 atIndex:0];
  }

  entityMetadata2 = [self entityMetadata];
  transferableContentTypes = [entityMetadata2 transferableContentTypes];
  exportableTypes = [transferableContentTypes exportableTypes];
  v16 = [exportableTypes if_map:&__block_literal_global_759];
  v17 = v16;
  v18 = MEMORY[0x1E695E0F0];
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  v20 = v19;

  [v4 addObjectsFromArray:v20];
  entityMetadata3 = [self entityMetadata];
  systemProtocolMetadata2 = [entityMetadata3 systemProtocolMetadata];
  v23 = [systemProtocolMetadata2 objectForKeyedSubscript:*MEMORY[0x1E69AC2C0]];

  if (v23)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  supportedContentTypes = [v25 supportedContentTypes];

  v27 = [supportedContentTypes if_map:&__block_literal_global_762];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = v18;
  }

  v30 = v29;

  [v4 addObjectsFromArray:v30];

  return v4;
}

id __56__WFLinkEntityContentItem_appUsageResultCoercionHandler__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([objc_opt_class() isAppUsageResultEntity])
  {
    v6 = [v5 entity];
    v7 = [v6 properties];
    v8 = [v7 if_firstObjectWithValue:@"appIdentifier" forKey:@"identifier"];

    v9 = [v8 value];
    v10 = [v9 value];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = v11;

    v14 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v13 allowPlaceholder:0 error:a4];
    if (v14)
    {
      v12 = [objc_alloc(MEMORY[0x1E6996C80]) initWithRecord:v14];
    }

    else
    {
      v15 = getWFContentGraphLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v18 = 136315394;
        v19 = "+[WFLinkEntityContentItem appUsageResultCoercionHandler]_block_invoke";
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_INFO, "%s %@ is not an app, returning nil!", &v18, 0x16u);
      }

      v12 = 0;
    }
  }

  else
  {
    v6 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "+[WFLinkEntityContentItem appUsageResultCoercionHandler]_block_invoke";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Attempted to coerce a non-Screen Time entity to WFApp", &v18, 0xCu);
    }

    v12 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

id __49__WFLinkEntityContentItem_contactCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([objc_opt_class() isContactEntity])
  {
    v3 = [v2 entity];
    v4 = [v3 identifier];
    v5 = [v4 instanceIdentifier];

    v6 = objc_opt_new();
    v7 = [v6 contactWithIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __50__WFLinkEntityContentItem_workflowCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([objc_opt_class() isWorkflowEntity])
  {
    v3 = [v2 entity];
    v4 = [v3 identifier];
    v5 = [v4 instanceIdentifier];

    v6 = +[WFDatabaseProxy defaultDatabase];
    v7 = [v6 referenceForWorkflowID:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __53__WFLinkEntityContentItem_photosAssetCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if ([objc_opt_class() isPhotosAssetEntity])
  {
    v6 = [v4 entity];
    v7 = [v6 identifier];
    v8 = [v7 instanceIdentifier];

    v9 = [MEMORY[0x1E6996F50] sharedLibrary];
    v21 = 0;
    v10 = [v9 fetchOptionsWithError:&v21];
    v11 = v21;

    if (!v10)
    {
      v12 = getWFGeneralLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "+[WFLinkEntityContentItem photosAssetCoercionHandler]_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = 0;
        *&buf[22] = 2112;
        v28 = v11;
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Unable to get fetch options for library: %li, error: %@", buf, 0x20u);
      }
    }

    [v10 setWantsIncrementalChangeDetails:0];
    [v10 setIncludeGuestAssets:1];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v13 = getPHAssetClass_softClass;
    v25 = getPHAssetClass_softClass;
    if (!getPHAssetClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getPHAssetClass_block_invoke;
      v28 = &unk_1E837FAC0;
      v29 = &v22;
      __getPHAssetClass_block_invoke(buf);
      v13 = v23[3];
    }

    v14 = v13;
    _Block_object_dispose(&v22, 8);
    v26 = v8;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v16 = [v13 fetchAssetsWithLocalIdentifiers:v15 options:v10];

    if ([v16 count])
    {
      v17 = [v16 firstObject];
    }

    else
    {
      v18 = getWFGeneralLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "+[WFLinkEntityContentItem photosAssetCoercionHandler]_block_invoke";
        *&buf[12] = 2114;
        *&buf[14] = v8;
        *&buf[22] = 2048;
        v28 = 0;
        _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_DEFAULT, "%s No PHAsset found for asset identifier: %{public}@, library: %li", buf, 0x20u);
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

id __50__WFLinkEntityContentItem_reminderCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if ([objc_opt_class() isReminderEntity])
  {
    v6 = [v4 entity];
    v7 = [v6 identifier];
    v8 = [v7 instanceIdentifier];

    v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v8];
    if (v9)
    {
      v10 = WFGetWorkflowReminderStore();
      v20 = 0;
      v21 = &v20;
      v22 = 0x2050000000;
      v11 = getREMObjectIDClass_softClass;
      v23 = getREMObjectIDClass_softClass;
      if (!getREMObjectIDClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getREMObjectIDClass_block_invoke;
        v25 = &unk_1E837FAC0;
        v26 = &v20;
        __getREMObjectIDClass_block_invoke(buf);
        v11 = v21[3];
      }

      v12 = v11;
      _Block_object_dispose(&v20, 8);
      v13 = [v11 objectIDWithURL:v9];
      v19 = 0;
      v14 = [v10 fetchReminderWithObjectID:v13 error:&v19];
      v15 = v19;
      if (!v14)
      {
        v16 = getWFContentGraphLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "+[WFLinkEntityContentItem reminderCoercionHandler]_block_invoke";
          *&buf[12] = 2112;
          *&buf[14] = v13;
          *&buf[22] = 2112;
          v25 = v15;
          _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Failed to load reminder %@ (store returned nil): %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v10 = getWFContentGraphLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "+[WFLinkEntityContentItem reminderCoercionHandler]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Failed to load reminder %@ (instance identifier failed to URL-ify)", buf, 0x16u);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

id __55__WFLinkEntityContentItem_calendarEventCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([objc_opt_class() isCalendarEventEntity])
  {
    v3 = [v2 entity];
    v4 = [v3 identifier];
    v5 = [v4 instanceIdentifier];

    v6 = WFGetWorkflowEventStore();
    v7 = [v6 eventWithIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __53__WFLinkEntityContentItem_mailMessageCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v103 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (![objc_opt_class() isMailMessageEntity])
  {
    v60 = 0;
    goto LABEL_70;
  }

  v6 = [v4 entity];
  v7 = [v6 identifier];
  v8 = [v7 instanceIdentifier];

  v73 = v8;
  if (![(__CFString *)v8 hasPrefix:@"1%"])
  {
    v9 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v92 = "+[WFLinkEntityContentItem mailMessageCoercionHandler]_block_invoke";
      v93 = 2112;
      v94 = v8;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_ERROR, "%s Failed to parse instance identifier %@ (unrecognized version)", buf, 0x16u);
    }

    goto LABEL_50;
  }

  v9 = [(__CFString *)v8 componentsSeparatedByString:@"%"];
  if ([v9 count]!= 5)
  {
    v61 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v92 = "+[WFLinkEntityContentItem mailMessageCoercionHandler]_block_invoke";
      v93 = 2112;
      v94 = v73;
      v95 = 2048;
      v96 = [v9 count];
      _os_log_impl(&dword_1CA256000, v61, OS_LOG_TYPE_ERROR, "%s Failed to parse instance identifier %@ (expected 5 delimited items, got %tu)", buf, 0x20u);
    }

LABEL_50:
    v60 = 0;
    goto LABEL_69;
  }

  v71 = v5;
  v72 = v4;
  v10 = [v9 objectAtIndexedSubscript:3];

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v70 = v6;
  obj = [v6 properties];
  v82 = [obj countByEnumeratingWithState:&v87 objects:v102 count:16];
  if (!v82)
  {
    v77 = 0;
    v11 = 0;
    v12 = 0;
    v79 = 0;
    goto LABEL_52;
  }

  v77 = 0;
  v11 = 0;
  v12 = 0;
  v79 = 0;
  v81 = *v88;
  v74 = v10;
  do
  {
    v13 = 0;
    do
    {
      if (*v88 != v81)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v87 + 1) + 8 * v13);
      v15 = [v14 identifier];
      if ([@"account" isEqual:v15])
      {
        v16 = [v14 value];
        v17 = [v16 valueType];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_26;
        }

        v19 = v10;
        v20 = [v14 value];
        v21 = [v20 valueType];
        v22 = [v21 identifier];
        v23 = [v22 isEqual:@"AccountEntity"];

        if (v23)
        {
          v24 = [v14 value];
          v25 = [v24 value];
          v26 = [v25 identifier];
          v27 = [v26 instanceIdentifier];

          v79 = v27;
          goto LABEL_16;
        }

        goto LABEL_25;
      }

      if ([@"subject" isEqual:v15])
      {
        v19 = v10;
        v28 = [v14 value];
        v29 = [v28 valueType];
        v30 = [v29 objectClass];
        v31 = objc_opt_class();

        if (v30 == v31)
        {
          v24 = [v14 value];
          [v24 value];
          v12 = v25 = v12;
LABEL_16:
          v10 = v19;
LABEL_17:

LABEL_18:
          goto LABEL_26;
        }
      }

      else if ([@"sender" isEqual:v15])
      {
        v19 = v10;
        v32 = [v14 value];
        v33 = [v32 valueType];
        v34 = [v33 objectClass];
        v35 = objc_opt_class();

        if (v34 == v35)
        {
          v36 = [v14 value];
          v24 = [v36 value];

          v37 = [v24 personHandle];
          v38 = [v37 type];

          v10 = v19;
          if (v38 == 1)
          {
            v25 = [v24 personHandle];
            v39 = [v25 value];

            v11 = v39;
            goto LABEL_17;
          }

          goto LABEL_18;
        }
      }

      else
      {
        if (![@"to" isEqual:v15])
        {
          goto LABEL_26;
        }

        v19 = v10;
        v78 = v15;
        v40 = [v14 value];
        v41 = [v40 valueType];
        v42 = [v41 objectClass];
        v43 = objc_opt_class();

        if (v42 == v43)
        {
          v44 = objc_opt_new();
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v45 = [v14 value];
          v25 = [v45 value];

          v46 = [v25 countByEnumeratingWithState:&v83 objects:v101 count:16];
          if (v46)
          {
            v47 = v46;
            v75 = v11;
            v76 = v12;
            v48 = *v84;
            do
            {
              for (i = 0; i != v47; ++i)
              {
                if (*v84 != v48)
                {
                  objc_enumerationMutation(v25);
                }

                v50 = *(*(&v83 + 1) + 8 * i);
                v51 = [v50 valueType];
                v52 = [v51 objectClass];
                v53 = objc_opt_class();

                if (v52 == v53)
                {
                  v54 = [v50 value];
                  v55 = [v54 personHandle];
                  v56 = [v55 type];

                  if (v56 == 1)
                  {
                    v57 = [v54 personHandle];
                    v58 = [v57 value];
                    [v44 addObject:v58];
                  }
                }
              }

              v47 = [v25 countByEnumeratingWithState:&v83 objects:v101 count:16];
            }

            while (v47);
            v12 = v76;
            v24 = v77;
            v77 = v44;
            v10 = v74;
            v11 = v75;
          }

          else
          {
            v10 = v19;
            v24 = v77;
            v77 = v44;
          }

          v15 = v78;
          goto LABEL_17;
        }
      }

LABEL_25:
      v10 = v19;
LABEL_26:

      ++v13;
    }

    while (v13 != v82);
    v59 = [obj countByEnumeratingWithState:&v87 objects:v102 count:16];
    v82 = v59;
  }

  while (v59);
LABEL_52:

  if (v79 && v12 && v11 && v77)
  {
    v60 = [objc_alloc(MEMORY[0x1E6996DF8]) initWithGlobalMessageID:-[NSObject longLongValue](v10 accountIdentifier:"longLongValue") subject:v79 sender:v12 recipients:{v11, v77}];
    v62 = v11;
    v5 = v71;
    v4 = v72;
  }

  else
  {
    v62 = v11;
    v63 = getWFContentGraphLogObject();
    v5 = v71;
    v4 = v72;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v64 = &stru_1F4A1C408;
      v65 = @" accountIdentifier";
      v66 = @" subject";
      if (v79)
      {
        v65 = &stru_1F4A1C408;
      }

      if (v12)
      {
        v66 = &stru_1F4A1C408;
      }

      *buf = 136316162;
      v92 = "+[WFLinkEntityContentItem mailMessageCoercionHandler]_block_invoke";
      v67 = @" sender";
      if (v62)
      {
        v67 = &stru_1F4A1C408;
      }

      v93 = 2112;
      v94 = v65;
      v95 = 2112;
      v96 = v66;
      v97 = 2112;
      v98 = v67;
      if (!v77)
      {
        v64 = @" recipients";
      }

      v99 = 2112;
      v100 = v64;
      _os_log_impl(&dword_1CA256000, v63, OS_LOG_TYPE_ERROR, "%s Failed to populate WFEmail (nil fields:%@%@%@%@)", buf, 0x34u);
    }

    v60 = 0;
  }

  v6 = v70;

  v9 = v10;
LABEL_69:

LABEL_70:
  v68 = *MEMORY[0x1E69E9840];

  return v60;
}

+ (id)coercions
{
  v3 = objc_opt_new();
  if ([self isMailMessageEntity])
  {
    v4 = MEMORY[0x1E6996CD8];
    v5 = [MEMORY[0x1E6996ED0] typeWithClassName:@"WFEmail" frameworkName:@"ContentKit" location:1];
    mailMessageCoercionHandler = [self mailMessageCoercionHandler];
    v7 = [v4 coercionToType:v5 handler:mailMessageCoercionHandler];
    [v3 addObject:v7];
  }

  if ([self isCalendarEventEntity])
  {
    v8 = MEMORY[0x1E6996CD8];
    v9 = [MEMORY[0x1E6996ED0] typeWithClassName:@"EKEvent" frameworkName:@"EventKit" location:0];
    calendarEventCoercionHandler = [self calendarEventCoercionHandler];
    v11 = [v8 coercionToType:v9 handler:calendarEventCoercionHandler];
    [v3 addObject:v11];
  }

  if ([self isReminderEntity])
  {
    v12 = MEMORY[0x1E6996CD8];
    v13 = [MEMORY[0x1E6996ED0] typeWithClassName:@"REMReminder" frameworkName:@"ReminderKit" location:1];
    reminderCoercionHandler = [self reminderCoercionHandler];
    v15 = [v12 coercionToType:v13 handler:reminderCoercionHandler];
    [v3 addObject:v15];
  }

  if ([self isPhotosAssetEntity])
  {
    v16 = MEMORY[0x1E6996CD8];
    v17 = [MEMORY[0x1E6996ED0] typeWithClassName:@"PHAsset" frameworkName:@"Photos" location:0];
    photosAssetCoercionHandler = [self photosAssetCoercionHandler];
    v19 = [v16 coercionToType:v17 handler:photosAssetCoercionHandler];
    [v3 addObject:v19];
  }

  if ([self isWorkflowEntity])
  {
    v20 = MEMORY[0x1E6996CD8];
    v21 = [MEMORY[0x1E6996ED0] typeWithClassName:@"WFWorkflowReference" frameworkName:@"WorkflowKit" location:1];
    workflowCoercionHandler = [self workflowCoercionHandler];
    v23 = [v20 coercionToType:v21 handler:workflowCoercionHandler];
    [v3 addObject:v23];
  }

  if ([self isContactEntity])
  {
    v24 = MEMORY[0x1E6996CD8];
    v25 = [MEMORY[0x1E6996ED0] typeWithClassName:@"WFContact" frameworkName:@"WorkflowKit" location:1];
    contactCoercionHandler = [self contactCoercionHandler];
    v27 = [v24 coercionToType:v25 handler:contactCoercionHandler];
    [v3 addObject:v27];
  }

  if ([self isAppUsageResultEntity])
  {
    v28 = MEMORY[0x1E6996CD8];
    v29 = [MEMORY[0x1E6996ED0] typeWithClassName:@"WFApp" frameworkName:@"WorkflowKit" location:1];
    appUsageResultCoercionHandler = [self appUsageResultCoercionHandler];
    v31 = [v28 coercionToType:v29 handler:appUsageResultCoercionHandler];
    [v3 addObject:v31];
  }

  v32 = [v3 copy];

  return v32;
}

+ (BOOL)isRecordingEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  v4 = [appBundleIdentifier isEqualToString:*MEMORY[0x1E69E0F98]];

  if (v4)
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v7 = *MEMORY[0x1E69970E8];
    v8 = identifier;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = 0;
      if (v8 && v9)
      {
        LOBYTE(v4) = [v8 isEqualToString:v9];
      }
    }
  }

  return v4;
}

+ (BOOL)isAppUsageResultEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  v4 = [appBundleIdentifier isEqualToString:*MEMORY[0x1E69E0E98]];

  if (v4)
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v7 = identifier;
    if (identifier == @"AppUsageResultAppEntity")
    {
      LOBYTE(v4) = 1;
    }

    else if (identifier)
    {
      LOBYTE(v4) = [(__CFString *)identifier isEqualToString:@"AppUsageResultAppEntity"];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

+ (BOOL)isContactEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  v4 = [appBundleIdentifier isEqualToString:*MEMORY[0x1E69E0E58]];

  if (v4)
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v7 = identifier;
    if (identifier == @"ContactEntity")
    {
      LOBYTE(v4) = 1;
    }

    else if (identifier)
    {
      LOBYTE(v4) = [(__CFString *)identifier isEqualToString:@"ContactEntity"];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

+ (BOOL)isWorkflowEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  v4 = VCIsShortcutsAppBundleIdentifier();

  if (v4)
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v7 = *MEMORY[0x1E69970F0];
    v8 = identifier;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = 0;
      if (v8 && v9)
      {
        LOBYTE(v4) = [v8 isEqualToString:v9];
      }
    }
  }

  return v4;
}

+ (BOOL)isPhotosAssetEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  v4 = [appBundleIdentifier isEqualToString:*MEMORY[0x1E69E0EF0]];

  if (v4)
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v7 = identifier;
    if (identifier == @"AssetEntity")
    {
      LOBYTE(v4) = 1;
    }

    else if (identifier)
    {
      LOBYTE(v4) = [(__CFString *)identifier isEqualToString:@"AssetEntity"];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

+ (BOOL)isReminderEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  if ([appBundleIdentifier isEqual:*MEMORY[0x1E69E0F08]])
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v6 = [identifier isEqual:@"ReminderEntity"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isCalendarEventEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  if ([appBundleIdentifier isEqual:*MEMORY[0x1E69E0E48]])
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v6 = [identifier isEqual:@"EventEntity"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isMailMessageEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  if ([appBundleIdentifier isEqual:*MEMORY[0x1E69E0EA0]])
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v6 = [identifier isEqual:@"MailMessageEntity"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)hasLibrary
{
  queryMetadata = [self queryMetadata];
  if (queryMetadata)
  {
    hasInMemoryFindAction = 1;
  }

  else
  {
    hasInMemoryFindAction = [self hasInMemoryFindAction];
  }

  return hasInMemoryFindAction;
}

+ (id)localizedCountDescriptionWithValue:(int64_t)value
{
  v17[1] = *MEMORY[0x1E69E9840];
  entityMetadata = [self entityMetadata];
  displayRepresentation = [entityMetadata displayRepresentation];
  numericFormat = [displayRepresentation numericFormat];

  if (numericFormat)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:value];
    v17[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    v10 = [numericFormat localizedStringWithReplacements:v9 forLocaleIdentifier:0];
  }

  else
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:value];
    localizedPluralTypeDescription = [self localizedPluralTypeDescription];
    localizedLowercaseString = [localizedPluralTypeDescription localizedLowercaseString];
    v10 = [v11 stringWithFormat:@"%@ %@", v12, localizedLowercaseString];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)_localizedTypeDescriptionWithContext:(id)context pluralizationNumber:(int64_t)number
{
  contextCopy = context;
  if ([self isRecordingEntity])
  {
    localizedStringResource = WFLocalizedStringResourceWithKey(@"Recording", @"Recording");
    identifier = [contextCopy localize:localizedStringResource];
    goto LABEL_7;
  }

  entityMetadata = [self entityMetadata];
  displayRepresentation = [entityMetadata displayRepresentation];
  name = [displayRepresentation name];
  localizedStringResource = [name localizedStringResource];

  if (localizedStringResource)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:number];
    identifier = [contextCopy localize:localizedStringResource pluralizationNumber:v12];

    if ([identifier length])
    {
      goto LABEL_7;
    }
  }

  entityMetadata2 = [self entityMetadata];
  identifier = [entityMetadata2 identifier];

LABEL_7:

  return identifier;
}

+ (id)localizedPluralFilterDescriptionWithContext:(id)context
{
  contextCopy = context;
  if ([self isRecordingEntity])
  {
    v5 = WFLocalizedStringResourceWithKey(@"Recordings", @"Recordings");
    v6 = [contextCopy localize:v5];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___WFLinkEntityContentItem;
    v6 = objc_msgSendSuper2(&v8, sel_localizedPluralFilterDescriptionWithContext_, contextCopy);
  }

  return v6;
}

+ (id)allowedOperatorsWithQueryParameterMetadata:(id)metadata objectClasses:(id)classes operators:(id)operators
{
  metadataCopy = metadata;
  classesCopy = classes;
  v10 = [operators copy];
  v11 = [classesCopy if_firstObjectPassingTest:&__block_literal_global_538];

  if (v11)
  {
    v12 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v10];
    if ([v12 containsObject:&unk_1F4A9A090])
    {
      [v12 addObject:&unk_1F4A9A0A8];
      [v12 addObject:&unk_1F4A9A0C0];
      [v12 addObject:&unk_1F4A9A0D8];
    }

    array = [v12 array];

    v10 = array;
  }

  if ([self isNotes])
  {
    propertyIdentifier = [metadataCopy propertyIdentifier];
    v15 = propertyIdentifier;
    if (propertyIdentifier == @"creationDate" || propertyIdentifier && (v16 = -[__CFString isEqualToString:](propertyIdentifier, "isEqualToString:", @"creationDate"), v15, (v16 & 1) != 0) || ([metadataCopy propertyIdentifier], v17 = objc_claimAutoreleasedReturnValue(), v17 == @"modificationDate"))
    {
    }

    else
    {
      v18 = v17;
      if (!v17)
      {
LABEL_15:

        goto LABEL_16;
      }

      v19 = [(__CFString *)v17 isEqualToString:@"modificationDate"];

      if ((v19 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    [(__CFString *)v10 if_arrayByRemovingObjectsInArray:&unk_1F4A9AF60];
    v10 = v15 = v10;
    goto LABEL_15;
  }

LABEL_16:

  return v10;
}

uint64_t __94__WFLinkEntityContentItem_allowedOperatorsWithQueryParameterMetadata_objectClasses_operators___block_invoke(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();

  return [a2 isSubclassOfClass:v3];
}

+ (id)allProperties
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___WFLinkEntityContentItem;
  v2 = objc_msgSendSuper2(&v5, sel_allProperties);
  v3 = [v2 if_compactMap:&__block_literal_global_536];

  return v3;
}

id __40__WFLinkEntityContentItem_allProperties__block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 userInfo];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 objectForKey:@"WFLinkEntityContentPropertyUserInfoPropertyIdentifier"];

  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v7 = [v2 userInfo];
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

    v6 = v8;
  }

  if (([v6 isEqual:*MEMORY[0x1E69970C8]] & 1) == 0)
  {
    v9 = [v2 localizedName];
    v10 = [v9 length];

    if (v10)
    {
      v11 = v2;
      goto LABEL_21;
    }

    v12 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v2 name];
      v16 = 136315394;
      v17 = "+[WFLinkEntityContentItem allProperties]_block_invoke";
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEBUG, "%s Ignoring entity property '%@' because it doesn't have a title.", &v16, 0x16u);
    }
  }

  v11 = 0;
LABEL_21:

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)propertyBuildersForFilteringUsingQuery:(id)query
{
  queryCopy = query;
  entityMetadata = [self entityMetadata];
  properties = [entityMetadata properties];
  v7 = objc_opt_new();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke;
  v13[3] = &unk_1E8373098;
  v14 = v7;
  v15 = queryCopy;
  v16 = entityMetadata;
  selfCopy = self;
  v8 = entityMetadata;
  v9 = queryCopy;
  v10 = v7;
  v11 = [properties if_compactMap:v13];

  return v11;
}

id __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke(id *a1, void *a2)
{
  v182[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 valueType];
  v5 = [v4 wf_unionValueType];
  v6 = [v5 memberValueTypes];

  v7 = [v3 valueType];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 wf_unionValueType];
    v10 = [v9 memberValueTypes];
  }

  else
  {
    v182[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v182 count:1];
  }

  v154 = v3;
  [v3 identifier];
  v153 = v157 = a1;
  [a1[4] setObject:? forKey:?];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v12 = v10;
  v155 = v11;
  obj = v12;
  v160 = [v12 countByEnumeratingWithState:&v171 objects:v181 count:16];
  if (!v160)
  {
    goto LABEL_30;
  }

  v13 = 0x1E69E0000uLL;
  v158 = *v172;
  while (2)
  {
    v14 = 0;
    do
    {
      if (*v172 != v158)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v171 + 1) + 8 * v14);
      v16 = [v15 wf_objectClass];
      if (v16 == objc_opt_class())
      {
        v24 = [v15 wf_entityValueType];
        v25 = [*(v13 + 2416) sharedProvider];
        v26 = [v24 identifier];
        v27 = v157[7];
        v28 = [objc_opt_class() appBundleIdentifier];
        v29 = [v25 entityWithIdentifier:v26 fromBundleIdentifier:v28];

        v30 = [v157[7] queryMetadata];
        v31 = [v157[7] appBundleIdentifier];
        v32 = [v157[7] displayedAppBundleIdentifier];
        v16 = [v29 wf_contentItemClassWithQueryMetadata:v30 appBundleIdentifier:v31 displayedAppBundleIdentifier:v32];

        v11 = v155;
        goto LABEL_24;
      }

      if (v16 == objc_opt_class())
      {
        v24 = [v15 wf_enumValueType];
        v36 = [*(v13 + 2416) sharedProvider];
        v37 = [v24 enumerationIdentifier];
        v38 = v157[7];
        v39 = [objc_opt_class() appBundleIdentifier];
        v29 = [v36 enumerationWithIdentifier:v37 fromBundleIdentifier:v39];

        v40 = [v157[7] appBundleIdentifier];
        v16 = [v29 wf_contentItemClassWithAppBundleIdentifier:v40];

        v41 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v29 requiringSecureCoding:1 error:0];
        v13 = 0x1E69E0000;
        [v157[4] setObject:v41 forKey:@"WFLinkEntityContentPropertyUserInfoEnumMetadata"];

LABEL_24:
        if (!v16)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }

      v17 = v15;
      if (v17 && (v18 = v17, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v18, (isKindOfClass & 1) != 0))
      {
        v20 = v18;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;

        v23 = [v157[7] appBundleIdentifier];
        v16 = [v22 wf_contentItemClassWithAppBundleIdentifier:v23];

        if (!v16)
        {
LABEL_33:
          v47 = getWFAppIntentsLogObject();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
          {
            v43 = v154;
            v48 = [v154 identifier];
            *buf = 136315650;
            v176 = "+[WFLinkEntityContentItem propertyBuildersForFilteringUsingQuery:]_block_invoke";
            v177 = 2112;
            v178 = v48;
            v179 = 2112;
            v180 = v15;
            _os_log_impl(&dword_1CA256000, v47, OS_LOG_TYPE_FAULT, "%s Unable to get object class for entity with property metadata: %@, valueType: %@", buf, 0x20u);

            v49 = 0;
            v50 = obj;
            v51 = obj;
          }

          else
          {
            v49 = 0;
            v50 = obj;
            v51 = obj;
            v43 = v154;
          }

          goto LABEL_85;
        }
      }

      else if (v16 == objc_opt_class())
      {
        v16 = objc_opt_class();
        if (!v16)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v33 = [MEMORY[0x1E6996D68] sharedRegistry];
        v34 = [MEMORY[0x1E6996ED0] typeWithClass:v16];
        v35 = [v33 contentItemClassForType:v34];

        if (!v35)
        {
          v72 = getWFAppIntentsLogObject();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            v43 = v154;
            v73 = [v154 identifier];
            *buf = 136315650;
            v176 = "+[WFLinkEntityContentItem propertyBuildersForFilteringUsingQuery:]_block_invoke";
            v177 = 2112;
            v178 = v73;
            v179 = 2112;
            v180 = v16;
            _os_log_impl(&dword_1CA256000, v72, OS_LOG_TYPE_ERROR, "%s Not making content property (%@) because objectClass (%@) does not have a content item", buf, 0x20u);

            v49 = 0;
            v50 = obj;
            v51 = obj;
          }

          else
          {
            v49 = 0;
            v50 = obj;
            v51 = obj;
            v43 = v154;
          }

          v47 = v72;
          goto LABEL_85;
        }

        if (!v16)
        {
          goto LABEL_33;
        }
      }

LABEL_25:
      [v11 addObject:v16];
      ++v14;
    }

    while (v160 != v14);
    v12 = obj;
    v42 = [obj countByEnumeratingWithState:&v171 objects:v181 count:16];
    v160 = v42;
    if (v42)
    {
      continue;
    }

    break;
  }

LABEL_30:

  v43 = v154;
  v44 = [v154 valueType];
  objc_opt_class();
  v45 = objc_opt_isKindOfClass();

  v46 = [v154 valueType];
  v147 = v45;
  if (v46 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v151 = v46;
    v47 = [MEMORY[0x1E69E0BE8] unitTypeFromLinkMeasurementUnitType:{objc_msgSend(v46, "unitType")}];
  }

  else
  {

    v47 = 0;
    v151 = 0;
  }

  v52 = [v157[5] parameters];
  v53 = [v154 identifier];
  v159 = [v52 if_firstObjectWithValue:v53 forKey:@"propertyIdentifier"];

  v54 = [v157[5] sortingOptions];
  v55 = [v154 identifier];
  v161 = [v54 if_firstObjectWithValue:v55 forKey:@"propertyIdentifier"];

  v56 = [v157[6] systemProtocolMetadata];
  v57 = [v56 objectForKeyedSubscript:*MEMORY[0x1E69AC278]];

  v58 = v157[7];
  v59 = [objc_opt_class() appBundleIdentifier];
  v60 = [v157[6] identifier];
  v61 = WFShortcutsActionIdentifierFromLinkIdentifiers(v59, v60);

  v62 = WFIndexingKeyForForcedLinkEntityFindAction();
  v150 = v61;
  v63 = [v62 objectForKey:v61];
  v64 = [v154 identifier];
  v65 = [v63 objectForKey:v64];
  v66 = v65;
  if (v65)
  {
    v67 = v65;
  }

  else
  {
    v68 = v47;
    v69 = [v154 spotlightAttributeKey];
    v70 = v69;
    if (v69)
    {
      v71 = v69;
    }

    else
    {
      v71 = [v154 spotlightCustomAttributeKey];
    }

    v67 = v71;

    v47 = v68;
  }

  if (!v57)
  {
    v77 = 0;
    v74 = v157;
    v75 = v159;
    if (!v159)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  v74 = v157;
  v75 = v159;
  if (![v67 length])
  {
    v77 = 0;
    if (!v159)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if ([v67 length] && ((objc_msgSend(v67, "isEqualToString:", @"textContent") & 1) != 0 || objc_msgSend(v67, "isEqualToString:", @"kMDItemTextContent")))
  {
    v76 = v157[4];
    v77 = 1;
    v78 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v76 setObject:v78 forKey:@"WFLinkEntityContentPropertyUserInfoTextContentSpotlightAttributeKey"];

    if (!v159)
    {
      goto LABEL_55;
    }

LABEL_53:
    v79 = 1;
  }

  else
  {
    v77 = 1;
    if (v159)
    {
      goto LABEL_53;
    }

LABEL_55:
    v79 = v77 | [v74[7] hasInMemoryFindAction];
  }

  if (v161)
  {
    v80 = 1;
  }

  else
  {
    v80 = v77 | [v74[7] hasInMemoryFindAction];
  }

  if ([v74[7] isNotes])
  {
    v81 = [v154 title];
    v82 = [v81 key];
  }

  else
  {
    v82 = [v154 identifier];
  }

  v152 = v82;
  if (!v82)
  {
    v87 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
    {
      v88 = [v154 identifier];
      v89 = [v154 valueType];
      *buf = 136315650;
      v176 = "+[WFLinkEntityContentItem propertyBuildersForFilteringUsingQuery:]_block_invoke";
      v177 = 2112;
      v178 = v88;
      v179 = 2112;
      v180 = v89;
      _os_log_impl(&dword_1CA256000, v87, OS_LOG_TYPE_FAULT, "%s Unable to get property name for entity with property metadata: %@, valueType: %@", buf, 0x20u);
    }

    v49 = 0;
    v90 = v150;
    v51 = v151;
    goto LABEL_84;
  }

  v144 = v80;
  v145 = v79;
  v83 = [v154 title];
  v84 = [v83 wf_localizedString];

  v85 = [v154 valueType];
  objc_opt_class();
  v146 = v67;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v149 = v84;
LABEL_73:

    goto LABEL_74;
  }

  v86 = [v84 length];

  if (!v86)
  {
    v91 = [v154 valueType];
    v85 = [v91 wf_enumValueType];

    v92 = [v85 enumerationIdentifier];
    v93 = [MEMORY[0x1E69E0970] sharedProvider];
    v94 = v157[7];
    v95 = [objc_opt_class() appBundleIdentifier];
    v96 = [v93 enumerationWithIdentifier:v92 fromBundleIdentifier:v95];

    v97 = [v96 displayRepresentation];
    v98 = [v97 name];
    [v98 wf_localizedString];
    v100 = v99 = v47;

    v75 = v159;
    v74 = v157;
    v149 = v100;
    v47 = v99;
    v82 = v152;
    goto LABEL_73;
  }

  v149 = v84;
LABEL_74:
  v101 = MEMORY[0x1E696AEC0];
  v102 = WFLocalizedString(@"Not %@");
  v103 = [v101 stringWithFormat:v102, v149];

  v104 = MEMORY[0x1E6996D90];
  v168[0] = MEMORY[0x1E69E9820];
  v168[1] = 3221225472;
  v168[2] = __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_510;
  v168[3] = &unk_1E8372F90;
  v105 = v154;
  v106 = v74[7];
  v169 = v105;
  v170 = v106;
  v142 = [v104 block:v168 name:v82 classes:v11];
  v141 = [v142 multipleValues:v147 & 1];
  v143 = v47;
  v140 = [v141 measurementUnitType:v47];
  v107 = [v140 displayName:v149];
  v148 = v103;
  v108 = [v107 negativeName:v103];
  v109 = v74[7];
  v110 = [v75 wf_supportedContentOperators];
  v111 = [v109 allowedOperatorsWithQueryParameterMetadata:v75 objectClasses:v11 operators:v110];
  v112 = [v108 allowedOperators:v111];
  v113 = [v112 filterable:v145];
  [v113 sortable:v144];
  v115 = v114 = v74;
  v116 = [v115 withLinkPropertyIdentifier:v153];
  v49 = [v116 userInfo:v114[4]];

  v75 = v159;
  v117 = [v105 valueType];
  v118 = [v117 wf_objectClass];
  v119 = objc_opt_class();

  if (v159 && v118 == v119)
  {
    v165[0] = MEMORY[0x1E69E9820];
    v165[1] = 3221225472;
    v165[2] = __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_3;
    v165[3] = &unk_1E8373000;
    v120 = v105;
    v121 = v157[7];
    v166 = v120;
    v167 = v121;
    v122 = [v49 possibleValuesAsynchronousGetter:v165];

    v123 = v166;
    v49 = v122;
    v43 = v154;
    v11 = v155;
    goto LABEL_79;
  }

  v124 = [v105 valueType];
  objc_opt_class();
  v125 = objc_opt_isKindOfClass();

  if (v125)
  {
    v126 = [v105 valueType];
    v127 = [v126 wf_enumValueType];

    v123 = [v127 enumerationIdentifier];
    v128 = [MEMORY[0x1E69E0970] sharedProvider];
    v129 = v157[7];
    v130 = [objc_opt_class() appBundleIdentifier];
    v131 = [v128 enumerationWithIdentifier:v123 fromBundleIdentifier:v130];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_3_526;
    aBlock[3] = &unk_1E8373050;
    v163 = v131;
    v164 = v127;
    v132 = v127;
    v133 = v131;
    v134 = _Block_copy(aBlock);
    v135 = [v49 possibleValuesGetter:v134];

    v43 = v154;
    v49 = v135;
    v11 = v155;
LABEL_79:
    v47 = v143;
    v51 = v151;
    v67 = v146;
    v87 = v149;
  }

  else
  {
    v43 = v154;
    v11 = v155;
    v47 = v143;
    v51 = v151;
    v67 = v146;
    v87 = v149;
  }

  if ([v11 if_firstObjectPassingTest:&__block_literal_global_531])
  {
    v136 = [v49 comparableUnits:8444];
    v137 = [v136 timeUnits:8444];

    v49 = v137;
  }

  v90 = v150;

LABEL_84:
  v50 = obj;
LABEL_85:

  v138 = *MEMORY[0x1E69E9840];

  return v49;
}

void __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_510(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
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

  v9 = v8;
  v10 = [v9 entity];
  v11 = [v10 properties];
  v12 = [*(a1 + 32) identifier];
  v13 = [v11 if_firstObjectWithValue:v12 forKey:@"identifier"];

  v14 = [v9 entity];
  v15 = objc_opt_class();

  v16 = [v15 entityMetadata];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_2;
  v19[3] = &unk_1E8372F68;
  v17 = *(a1 + 40);
  v20 = v7;
  v21 = v17;
  v18 = v7;
  [v13 wf_getValueForEntity:v14 entityMetadata:v16 completionHandler:v19];
}

void __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_3(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) valueType];
  v5 = [v4 wf_entityValueType];

  v6 = [MEMORY[0x1E69E0970] sharedProvider];
  v7 = [v5 identifier];
  v8 = *(a1 + 40);
  v9 = [objc_opt_class() appBundleIdentifier];
  v10 = [v6 entityWithIdentifier:v7 fromBundleIdentifier:v9];

  v11 = [MEMORY[0x1E69ACE60] policyWithEntityMetadata:v10];
  v20 = 0;
  v12 = [v11 connectionWithError:&v20];
  v13 = v20;
  if (v12)
  {
    v14 = [v11 appEntityMangledTypeName];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_521;
    v17[3] = &unk_1E8372FD8;
    v19 = *(a1 + 40);
    v18 = v3;
    [v12 performSuggestedEntitiesQueryWithEntityMangledTypeName:v14 completionHandler:v17];
  }

  else
  {
    v15 = getWFGeneralLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "+[WFLinkEntityContentItem propertyBuildersForFilteringUsingQuery:]_block_invoke_3";
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_ERROR, "%s Unable to create connection: %@", buf, 0x16u);
    }

    (*(v3 + 2))(v3, MEMORY[0x1E695E0F0]);
  }

  v16 = *MEMORY[0x1E69E9840];
}

id __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_3_526(uint64_t a1)
{
  v2 = [*(a1 + 32) cases];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_4;
  v5[3] = &unk_1E8373028;
  v6 = *(a1 + 40);
  v3 = [v2 if_map:v5];

  return v3;
}

uint64_t __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = objc_opt_class();

  return [a2 isSubclassOfClass:v3];
}

id __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69ACA90];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 identifier];
  v7 = *(a1 + 32);
  v8 = [v4 displayRepresentation];

  v9 = [v5 initWithValue:v6 valueType:v7 displayRepresentation:v8];

  return v9;
}

void __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_521(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [v17 value];
  v4 = [v3 value];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = MEMORY[0x1E695E0F0];
  if (v6)
  {
    v7 = v6;
  }

  v8 = v7;

  v9 = *(a1 + 40);
  if (![objc_opt_class() isNotes])
  {
    goto LABEL_11;
  }

  v10 = *(a1 + 40);
  v11 = [v17 value];
  v12 = [v11 valueType];
  v13 = [v12 wf_entityValueType];
  v14 = [v13 identifier];
  LODWORD(v10) = [v10 isNoteFolderEntityIdentifier:v14];

  if (v10)
  {
    v15 = *(a1 + 32);
    v16 = [v8 if_map:&__block_literal_global];
    (*(v15 + 16))(v15, v16);
  }

  else
  {
LABEL_11:
    (*(*(a1 + 32) + 16))();
  }
}

void __66__WFLinkEntityContentItem_propertyBuildersForFilteringUsingQuery___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = [v25 valueType];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 memberValueType];

  objc_opt_class();
  LOBYTE(v5) = objc_opt_isKindOfClass();

  if (v5)
  {
    v7 = [v25 value];
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

    v24 = v8;

    v11 = *(a1 + 32);
    v12 = [v24 valueForKeyPath:@"value"];
  }

  else
  {
    v9 = [v25 valueType];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v13 = [v25 valueType];
      v14 = *(a1 + 40);
      v15 = [objc_opt_class() appBundleIdentifier];
      v16 = *(a1 + 40);
      v17 = [objc_opt_class() displayedAppBundleIdentifier];
      v12 = [v13 wf_contentCollectionFromLinkValue:v25 appBundleIdentifier:v15 displayedBundleIdentifier:v17 disclosureLevel:1];

      v18 = *(a1 + 32);
      v19 = [v12 items];
      v20 = [v19 count];
      v21 = [v12 items];
      v22 = v21;
      if (v20 == 1)
      {
        v23 = [v21 firstObject];
        (*(v18 + 16))(v18, v23);
      }

      else
      {
        (*(v18 + 16))(v18, v21);
      }

      goto LABEL_20;
    }

    v11 = *(a1 + 32);
    v12 = [v25 value];
  }

  (*(v11 + 16))(v11, v12);
LABEL_20:
}

+ (id)propertyBuilders
{
  queryMetadata = [self queryMetadata];
  v4 = [self propertyBuildersForFilteringUsingQuery:queryMetadata];

  return v4;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __37__WFLinkEntityContentItem_initialize__block_invoke;
    v3[3] = &__block_descriptor_40_e30__24__0__WFContentProperty_8_16l;
    v3[4] = self;
    [MEMORY[0x1E6996D48] registerValueMapping:v3];
  }
}

id __37__WFLinkEntityContentItem_initialize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [a2 propertyClasses];
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    v30 = v5;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v32 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v31 + 1) + 8 * v10);
      if ([v11 isSubclassOfClass:*(a1 + 32)])
      {
        v12 = *(a1 + 32);
        if (objc_opt_isKindOfClass())
        {
          v13 = v5;
          v14 = [v13 entity];
          v15 = [v11 entityMetadata];
          if ([v11 isNotes])
          {
            [v15 identifier];
            v17 = v16 = v6;
            v18 = [v11 isNoteFolderEntityIdentifier:v17];

            v6 = v16;
            if (v18)
            {
              v22 = objc_alloc(MEMORY[0x1E69ACA90]);
              v23 = objc_alloc(MEMORY[0x1E69AC818]);
              v24 = [v15 identifier];
              v25 = [v23 initWithIdentifier:v24];
              v26 = [v13 displayRepresentation];
              v27 = [v22 initWithValue:v14 valueType:v25 displayRepresentation:v26];

              v6 = v16;
              v20 = WFNotesFolderIntentsValueFromLinkValue(v27);

              v5 = v30;
LABEL_27:

              goto LABEL_28;
            }
          }

          v5 = v30;
          goto LABEL_18;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v5 value];
          if (v13)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = v13;
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }

          v14 = v19;
LABEL_18:

          if (v14)
          {
            if ([v14 isTransient])
            {
              v21 = v14;
              v14 = v21;
            }

            else
            {
              v21 = [v14 identifier];
            }

            v20 = v21;
            goto LABEL_27;
          }
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v20 = v5;
LABEL_28:

  v28 = *MEMORY[0x1E69E9840];

  return v20;
}

+ (BOOL)hasInMemoryFindAction
{
  v3 = MEMORY[0x1E696AEC0];
  appBundleIdentifier = [self appBundleIdentifier];
  entityMetadata = [self entityMetadata];
  identifier = [entityMetadata identifier];
  v7 = [v3 stringWithFormat:@"%@.%@", appBundleIdentifier, identifier];

  v8 = WFForcedLinkEntityFindActionIdentifiers();
  if ([v8 containsObject:v7])
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    queryMetadata = [self queryMetadata];
    v9 = [queryMetadata capabilities] & 1;
  }

  return v9;
}

+ (BOOL)isNoteFolderEntityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy == @"FolderEntity")
  {
    v5 = 1;
  }

  else if (identifierCopy)
  {
    v5 = [(__CFString *)identifierCopy isEqualToString:@"FolderEntity"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isNoteEntity
{
  if (![self isNotes])
  {
    return 0;
  }

  entityMetadata = [self entityMetadata];
  identifier = [entityMetadata identifier];
  v5 = identifier;
  if (identifier == @"NoteEntity")
  {
    v6 = 1;
  }

  else if (identifier)
  {
    v6 = [(__CFString *)identifier isEqualToString:@"NoteEntity"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isNotes
{
  appBundleIdentifier = [self appBundleIdentifier];
  v3 = [appBundleIdentifier isEqualToString:*MEMORY[0x1E69E0EE8]];

  return v3;
}

- (BOOL)outputsFileContent
{
  supportedTypes = [(WFLinkEntityContentItem *)self supportedTypes];
  array = [supportedTypes array];
  v4 = [array if_objectsPassingTest:&__block_literal_global_58738];
  v5 = v4 != 0;

  return v5;
}

uint64_t __53__WFLinkEntityContentItem_Finder__outputsFileContent__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

+ (BOOL)isFinderNodeEntity
{
  appBundleIdentifier = [self appBundleIdentifier];
  if ([appBundleIdentifier isEqualToString:*MEMORY[0x1E69E0E78]])
  {
    entityMetadata = [self entityMetadata];
    identifier = [entityMetadata identifier];
    v6 = identifier;
    if (identifier == @"FINodeEntity")
    {
      v7 = 1;
    }

    else if (identifier)
    {
      v7 = [(__CFString *)identifier isEqualToString:@"FINodeEntity"];
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

  return v7;
}

@end