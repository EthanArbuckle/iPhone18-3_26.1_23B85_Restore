@interface TSADocumentRoot
+ (id)persistenceWarningsForData:(id)data isReadable:(BOOL)readable isExternal:(BOOL)external;
- (BOOL)exportToPath:(id)path exporter:(id)exporter delegate:(id)delegate error:(id *)error;
- (BOOL)hasICloudConflict;
- (BOOL)isDocumentEditedSinceLastSave;
- (BOOL)isMultiPageForQuickLook;
- (BOOL)shouldAllowDrawableInGroups:(id)groups forImport:(BOOL)import;
- (BOOL)writeData:(id)data atDocumentCachePath:(id)path;
- (CGImageSource)newImageSourceForDocumentCachePath:(id)path;
- (NSSet)missingFontWarningMessages;
- (NSString)defaultDraftName;
- (TSADocumentRoot)init;
- (TSADocumentRoot)initWithContext:(id)context;
- (TSADrawableFactory)drawableFactory;
- (id)additionalDocumentPropertiesForWrite;
- (id)dataFromDocumentCachePath:(id)path;
- (id)documentCachePath;
- (id)newExporterForType:(id)type options:(id)options preferredType:(id *)preferredType;
- (id)p_characterStyleWithProperties:(id)properties stylesheet:(id)stylesheet override:(id)override;
- (id)p_parseNumberOutOfBasename:(id)basename hasNumber:(BOOL *)number number:(unint64_t *)a5;
- (id)referencedStylesOfClass:(Class)class;
- (id)uniqueDocumentCachePathForProposedPath:(id)path;
- (id)upgradeState;
- (int64_t)addObserverForICloudTeardownWithBlock:(id)block;
- (void)addWarning:(id)warning;
- (void)changeDocumentCacheFileProtection:(id)protection;
- (void)dealloc;
- (void)didSaveWithEncryptionChange;
- (void)documentDidLoad;
- (void)fulfillPasteboardPromises;
- (void)initializeForImport;
- (void)insertTextPresetDisplayItemsPreservingGrouping:(id)grouping insertAtBeginningOfGroup:(BOOL)group;
- (void)pUpgradeHyperlinks;
- (void)p_removeStyles:(id)styles;
- (void)p_replaceStyle:(id)style andChildrenWithVariationOfStyle:(id)ofStyle;
- (void)p_replaceStyles:(id)styles andChildrenWithVariationOfStyle:(id)style;
- (void)p_updateCreationLanguage;
- (void)prepareForSavingAsTemplate;
- (void)prepareNewDocumentWithTemplateBundle:(id)bundle;
- (void)setCreationLanguage:(id)language;
- (void)setCustomFormatList:(id)list;
- (void)setTemplateIdentifier:(id)identifier;
@end

@implementation TSADocumentRoot

- (void)setCreationLanguage:(id)language
{
  [(TSPObject *)self willModify];
  v5 = [language copy];

  self->_creationLanguage = v5;
  self->_creationLanguageWritingDirection = [MEMORY[0x277CBEAF8] characterDirectionForLanguage:v5];
}

- (void)setTemplateIdentifier:(id)identifier
{
  [(TSPObject *)self willModify];
  v5 = [identifier copy];

  self->_templateIdentifier = v5;
}

- (TSADocumentRoot)initWithContext:(id)context
{
  v7.receiver = self;
  v7.super_class = TSADocumentRoot;
  v4 = [(TSKDocumentRoot *)&v7 initWithContext:?];
  v5 = v4;
  if (v4)
  {
    [(TSADocumentRoot *)v4 p_updateCreationLanguage];
    v5->_tablesCustomFormatList = [[TSTCustomFormatList alloc] initWithContext:context];
  }

  return v5;
}

- (TSADocumentRoot)init
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentRoot init]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSADocumentRoot.mm"), 237, @"Do not call method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Do not call method", "-[TSADocumentRoot init]"), 0}]);
}

- (void)prepareNewDocumentWithTemplateBundle:(id)bundle
{
  v15 = *MEMORY[0x277D85DE8];
  [(TSADocumentRoot *)self p_updateBuildVersionHistoryWithVersionOfTemplateBundle:?];
  [(TSADocumentRoot *)self p_updateCreationLanguage];
  self->super._isBeingLocalized = 1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  modelEnumerator = [(TSKDocumentRoot *)self modelEnumerator];
  v6 = [modelEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(modelEnumerator);
        }

        [objc_opt_class() localizeModelObject:*(*(&v10 + 1) + 8 * v9++) withTemplateBundle:bundle];
      }

      while (v7 != v9);
      v7 = [modelEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  self->super._isBeingLocalized = 0;
}

- (void)p_updateCreationLanguage
{
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  if ([preferredLanguages count])
  {
    v4 = [preferredLanguages objectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  [(TSADocumentRoot *)self setCreationLanguage:v4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSADocumentRoot;
  [(TSKDocumentRoot *)&v3 dealloc];
}

- (void)documentDidLoad
{
  v2.receiver = self;
  v2.super_class = TSADocumentRoot;
  [(TSKDocumentRoot *)&v2 documentDidLoad];
}

- (id)upgradeState
{
  result = self->_upgradeState;
  if (!result)
  {
    result = objc_opt_new();
    self->_upgradeState = result;
  }

  return result;
}

- (id)additionalDocumentPropertiesForWrite
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", -[TSADocumentRoot isMultiPageForQuickLook](self, "isMultiPageForQuickLook")), @"isMultiPage"}];
  v6.receiver = self;
  v6.super_class = TSADocumentRoot;
  additionalDocumentPropertiesForWrite = [(TSKDocumentRoot *)&v6 additionalDocumentPropertiesForWrite];
  if (additionalDocumentPropertiesForWrite)
  {
    [v3 addEntriesFromDictionary:additionalDocumentPropertiesForWrite];
  }

  return v3;
}

- (void)fulfillPasteboardPromises
{
  pasteboardController = [(TSKDocumentRoot *)self pasteboardController];

  [(TSKPasteboardController *)pasteboardController fulfillPasteboardPromises];
}

- (void)initializeForImport
{
  [(TSPObject *)self willModify];
  if (!self->_tablesCustomFormatList)
  {
    self->_tablesCustomFormatList = [[TSTCustomFormatList alloc] initWithContext:[(TSPObject *)self context]];
  }
}

- (void)setCustomFormatList:(id)list
{
  listCopy = list;

  self->_tablesCustomFormatList = list;
}

+ (id)persistenceWarningsForData:(id)data isReadable:(BOOL)readable isExternal:(BOOL)external
{
  if (readable)
  {
    return 0;
  }

  v15 = v6;
  v16 = v5;
  externalCopy = external;
  v11 = MEMORY[0x277CBEB98];
  v12 = TSABundle();
  if (externalCopy)
  {
    v13 = @"Some external movies are missing because they\\U2019re no longer available.";
  }

  else
  {
    v13 = @"Some images are missing because they were deleted from the document.";
  }

  v14 = [v12 localizedStringForKey:v13 value:&stru_287D36338 table:{@"TSApplication", v15, v16, v7}];

  return [v11 setWithObject:v14];
}

- (NSSet)missingFontWarningMessages
{
  v15 = *MEMORY[0x277D85DE8];
  unavailableDocumentFonts = [(TSKDocumentRoot *)self unavailableDocumentFonts];
  v3 = [unavailableDocumentFonts count];
  if (!v3)
  {
    return 0;
  }

  v4 = [MEMORY[0x277CBEB58] setWithCapacity:v3];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [unavailableDocumentFonts countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(unavailableDocumentFonts);
        }

        -[NSSet addObject:](v4, "addObject:", [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(TSABundle(), "localizedStringForKey:value:table:", @"The font %@ is missing. Your text might look different.", &stru_287D36338, @"TSApplication", *(*(&v10 + 1) + 8 * i)]);
      }

      v6 = [unavailableDocumentFonts countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)newExporterForType:(id)type options:(id)options preferredType:(id *)preferredType
{
  typeCopy = type;
  v9 = [objc_msgSend(+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")];
  if (!v9)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentRoot newExporterForType:options:preferredType:]"];
    [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSADocumentRoot.mm"), 1165, @"Can't find exporter class for type %@", typeCopy}];
  }

  v12 = [[v9 alloc] initWithDocumentRoot:self];
  if (objc_opt_respondsToSelector())
  {
    [v12 setOptions:options];
  }

  v13 = [options objectForKeyedSubscript:@"TSKExportOptionsRequiresPassphrase"];
  if ([v13 isEqual:MEMORY[0x277CBEC38]])
  {
    v14 = TSUProtocolCast();
    if (v14)
    {
      [v14 setPassphrase:objc_msgSend(options hint:{"objectForKeyedSubscript:", @"TSKExportOptionsPassphrase", objc_msgSend(options, "objectForKeyedSubscript:", @"TSKExportOptionsPassphraseHint"}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentRoot newExporterForType:options:preferredType:]"];
      [currentHandler2 handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSADocumentRoot.mm"), 1184, @"Attempting to set a passphrase and hint on an exporter that doesn't conform to TSKEncryptedDocumentExporter"}];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    documentSpecificTypeUTI = [v12 documentSpecificTypeUTI];
    if (documentSpecificTypeUTI)
    {
      typeCopy = documentSpecificTypeUTI;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [v12 setTypeUTI:typeCopy];
  }

  if (preferredType)
  {
    *preferredType = typeCopy;
  }

  return v12;
}

- (BOOL)exportToPath:(id)path exporter:(id)exporter delegate:(id)delegate error:(id *)error
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v7 = &v20;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = __Block_byref_object_copy__32;
  v24 = __Block_byref_object_dispose__32;
  v25 = 0;
  if (exporter)
  {
    exporterCopy = exporter;

    self->_warnings = 0;
    accessController = [(TSKDocumentRoot *)self accessController];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__TSADocumentRoot_exportToPath_exporter_delegate_error___block_invoke;
    v19[3] = &unk_279D4ACB8;
    v19[4] = self;
    v19[5] = exporter;
    v19[6] = path;
    v19[7] = delegate;
    v19[8] = &v26;
    v19[9] = &v20;
    [(TSKAccessController *)accessController performRead:v19];

    v7 = v21;
    v14 = *(v27 + 24);
  }

  else
  {
    v14 = 0;
  }

  v15 = v7[5];
  if (error && (v14 & 1) == 0)
  {
    *error = v15;
  }

  v16 = v15;
  v17 = *(v27 + 24);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);
  return v17;
}

uint64_t __56__TSADocumentRoot_exportToPath_exporter_delegate_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  [v2 beginAssertOnModify];
  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 40) exportToURL:objc_msgSend(MEMORY[0x277CBEBC0] delegate:"fileURLWithPath:" error:{*(a1 + 48)), *(a1 + 56), *(*(a1 + 72) + 8) + 40}];
  *(*(*(a1 + 72) + 8) + 40) = *(*(*(a1 + 72) + 8) + 40);
  return [v2 endAssertOnModify];
}

- (void)addWarning:(id)warning
{
  warnings = self->_warnings;
  if (!warnings)
  {
    warnings = objc_alloc_init(MEMORY[0x277CBEB58]);
    self->_warnings = warnings;
  }

  [(NSMutableSet *)warnings addObject:warning];
}

- (void)prepareForSavingAsTemplate
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentRoot prepareForSavingAsTemplate]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSADocumentRoot.mm"];

    [currentHandler handleFailureInFunction:v3 file:v4 lineNumber:1287 description:@"This operation must only be performed on the main thread."];
  }
}

- (void)insertTextPresetDisplayItemsPreservingGrouping:(id)grouping insertAtBeginningOfGroup:(BOOL)group
{
  groupCopy = group;
  v38 = *MEMORY[0x277D85DE8];
  [(TSPObject *)self willModify];
  theme = [(TSKDocumentRoot *)self theme];
  if ([-[TSSTheme presetsOfKind:](theme presetsOfKind:{String), "count"}])
  {
    theme2 = [(TSKDocumentRoot *)self theme];
    v9 = [-[TSSTheme presetsOfKind:](theme2 presetsOfKind:{String), "mutableCopy"}];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = [grouping countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v26)
    {
      v10 = *v34;
      if (groupCopy)
      {
        v11 = 0;
      }

      else
      {
        v11 = 2;
      }

      v25 = !groupCopy;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(grouping);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          v32 = 0;
          v31 = 0;
          v14 = -[TSADocumentRoot p_parseNumberOutOfBasename:hasNumber:number:](self, "p_parseNumberOutOfBasename:hasNumber:number:", [v13 name], &v32, &v31);
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __91__TSADocumentRoot_insertTextPresetDisplayItemsPreservingGrouping_insertAtBeginningOfGroup___block_invoke;
          v29[3] = &unk_279D4ACE0;
          v29[4] = self;
          v29[5] = v14;
          v30 = v32;
          v29[6] = v31;
          v15 = [v9 indexOfObjectWithOptions:v11 passingTest:v29];
          if (v15 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v16 = v11;
            v17 = v10;
            groupingCopy = grouping;
            protected_defaultTextPresetOrdering = [(TSADocumentRoot *)self protected_defaultTextPresetOrdering];
            v20 = [protected_defaultTextPresetOrdering indexOfObject:v14];
            if (v20 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v21 = [v9 count];
            }

            else
            {
              v28[0] = MEMORY[0x277D85DD0];
              v28[1] = 3221225472;
              v28[2] = __91__TSADocumentRoot_insertTextPresetDisplayItemsPreservingGrouping_insertAtBeginningOfGroup___block_invoke_2;
              v28[3] = &unk_279D4AD08;
              v28[4] = self;
              v28[5] = protected_defaultTextPresetOrdering;
              v28[6] = v20;
              v22 = [v9 indexOfObjectWithOptions:2 passingTest:v28];
              if (v22 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v21 = 0;
              }

              else
              {
                v21 = v22 + 1;
              }
            }

            grouping = groupingCopy;
            v10 = v17;
            v11 = v16;
          }

          else
          {
            v21 = v15 + v25;
          }

          [v9 insertObject:v13 atIndex:v21];
        }

        v26 = [grouping countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v26);
    }

    theme3 = [(TSKDocumentRoot *)self theme];
    [(TSSTheme *)theme3 setPresets:v9 ofKind:String];
  }

  else
  {
    v27 = [grouping copy];
    theme4 = [(TSKDocumentRoot *)self theme];
    [(TSSTheme *)theme4 setPresets:v27 ofKind:String];
  }
}

uint64_t __91__TSADocumentRoot_insertTextPresetDisplayItemsPreservingGrouping_insertAtBeginningOfGroup___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = 0;
  v7 = 0;
  result = [objc_msgSend(*(a1 + 32) p_parseNumberOutOfBasename:objc_msgSend(a2 hasNumber:"name") number:{&v8, &v7), "isEqualToString:", *(a1 + 40)}];
  if (result)
  {
    if (*(a1 + 56) == 1 && v8 == 1 && v7 >= *(a1 + 48))
    {
      return 0;
    }

    else
    {
      result = 1;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t __91__TSADocumentRoot_insertTextPresetDisplayItemsPreservingGrouping_insertAtBeginningOfGroup___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = 0;
  v8 = 0;
  v6 = [*(a1 + 40) indexOfObject:{objc_msgSend(*(a1 + 32), "p_parseNumberOutOfBasename:hasNumber:number:", objc_msgSend(a2, "name", 0), &v9, &v8)}];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || v6 > *(a1 + 48))
  {
    return 0;
  }

  result = 1;
  *a4 = 1;
  return result;
}

- (id)p_parseNumberOutOfBasename:(id)basename hasNumber:(BOOL *)number number:(unint64_t *)a5
{
  *number = 0;
  v8 = [basename rangeOfString:@" " options:4];
  if (v8)
  {
    v10 = v8 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    return basename;
  }

  v12 = v8;
  v13 = [basename substringFromIndex:v8 + v9];
  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v15 = [v13 length];
  if (!v15)
  {
    *number = 0;
    return basename;
  }

  v16 = v15;
  v17 = 0;
  while ([decimalDigitCharacterSet characterIsMember:{objc_msgSend(v13, "characterAtIndex:", v17)}])
  {
    if (v16 == ++v17)
    {
      v17 = v16;
      break;
    }
  }

  *number = v16 - 1 < v17;
  if (v16 - 1 >= v17)
  {
    return basename;
  }

  *a5 = [v13 intValue];

  return [basename substringToIndex:v12];
}

- (id)p_characterStyleWithProperties:(id)properties stylesheet:(id)stylesheet override:(id)override
{
  v5 = 0;
  if (properties && stylesheet)
  {
    if ([properties count])
    {
      if (override)
      {
        v9 = [stylesheet variationOfStyle:override propertyMap:properties];
        if (v9)
        {
          return v9;
        }
      }

      v9 = [stylesheet firstRootlessStyleOfClass:objc_opt_class() withOverridePropertyMap:properties];
      if (v9)
      {
        return v9;
      }

      else
      {
        v5 = -[TSSStyle initWithContext:name:overridePropertyMap:isVariation:]([TSWPCharacterStyle alloc], "initWithContext:name:overridePropertyMap:isVariation:", [stylesheet context], 0, properties, 0);
        [stylesheet addStyle:v5];
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (void)pUpgradeHyperlinks
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(TSKDocumentRoot *)self modelEnumeratorForObjectsOfClass:objc_opt_class(), 0];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(TSADocumentRoot *)self pUpgradeHyperlinksInStorage:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)p_removeStyles:(id)styles
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D6C318] setWithSet:styles];
  while (1)
  {
    v4 = [MEMORY[0x277D6C318] set];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v21 + 1) + 8 * i);
          children = [v9 children];
          if (!children || ![children count])
          {
            [v4 addObject:v9];
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v6);
    }

    if (![v4 count])
    {
      break;
    }

    [v3 minusSet:v4];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v4);
          }

          [objc_msgSend(*(*(&v17 + 1) + 8 * j) "stylesheet")];
        }

        v12 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v12);
    }
  }

  if ([v3 count])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentRoot p_removeStyles:]"];
    [currentHandler handleFailureInFunction:v16 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSADocumentRoot.mm"), 1601, @"Could not remove all requested styles."}];
  }
}

- (void)p_replaceStyles:(id)styles andChildrenWithVariationOfStyle:(id)style
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D6C318] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = styles;
  v7 = [styles countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v12 = objc_opt_class();
        if (v12 != objc_opt_class())
        {
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentRoot p_replaceStyles:andChildrenWithVariationOfStyle:]"];
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSADocumentRoot.mm"];
          v16 = TSUObjectReferenceDescription();
          [currentHandler handleFailureInFunction:v14 file:v15 lineNumber:1617 description:{@"Replaceable root style %@ is a different class than new parent %@", v16, TSUObjectReferenceDescription()}];
        }

        [v6 addObject:v11];
        children = [v11 children];
        if (children)
        {
          [v6 unionSet:children];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v18 = [MEMORY[0x277D6C318] set];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__TSADocumentRoot_p_replaceStyles_andChildrenWithVariationOfStyle___block_invoke;
  v21[3] = &unk_279D4AD58;
  v21[4] = v6;
  v21[5] = self;
  v21[6] = style;
  v21[7] = v18;
  [(TSKDocumentRoot *)self enumerateStyleClientsUsingBlock:v21];
  [v6 minusSet:v18];
  [(TSADocumentRoot *)self p_removeStyles:v6];
}

uint64_t __67__TSADocumentRoot_p_replaceStyles_andChildrenWithVariationOfStyle___block_invoke(uint64_t a1, void *a2)
{
  result = [objc_msgSend(a2 "referencedStyles")];
  if (result)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__TSADocumentRoot_p_replaceStyles_andChildrenWithVariationOfStyle___block_invoke_2;
    v6[3] = &unk_279D4AD30;
    v5 = *(a1 + 48);
    v7 = *(a1 + 32);
    v8 = v5;
    return [a2 replaceReferencedStylesUsingBlock:v6];
  }

  return result;
}

void *__67__TSADocumentRoot_p_replaceStyles_andChildrenWithVariationOfStyle___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([*(a1 + 32) containsObject:a2])
  {
    v2 = [objc_msgSend(*(a1 + 40) "stylesheet")];
    [*(a1 + 56) addObject:v2];
    if ([v2 parent])
    {
      [*(a1 + 56) addObject:{objc_msgSend(v2, "parent")}];
    }
  }

  return v2;
}

- (void)p_replaceStyle:(id)style andChildrenWithVariationOfStyle:(id)ofStyle
{
  v6 = [MEMORY[0x277D6C370] setWithObject:style];

  [(TSADocumentRoot *)self p_replaceStyles:v6 andChildrenWithVariationOfStyle:ofStyle];
}

- (BOOL)shouldAllowDrawableInGroups:(id)groups forImport:(BOOL)import
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    return [v4 isAudioOnly] ^ 1;
  }

  else
  {
    return 1;
  }
}

- (id)referencedStylesOfClass:(Class)class
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB58] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [(TSKDocumentRoot *)self modelEnumeratorForObjectsOfClass:objc_opt_class()];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 unionSet:{objc_msgSend(*(*(&v25 + 1) + 8 * v10++), "referencedStylesOfClass:", class)}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  if (objc_opt_class() == class)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    theme = [(TSKDocumentRoot *)self theme];
    v12 = [(TSSTheme *)theme presetsOfKind:String];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          defaultParagraphStyle = [*(*(&v21 + 1) + 8 * v16) defaultParagraphStyle];
          if (defaultParagraphStyle)
          {
            [v5 addObject:defaultParagraphStyle];
          }

          else
          {
            currentHandler = [MEMORY[0x277D6C290] currentHandler];
            v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentRoot referencedStylesOfClass:]"];
            [currentHandler handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSADocumentRoot.mm"), 2210, @"invalid nil value for '%s'", "paragraphStyle"}];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v14);
    }
  }

  return v5;
}

- (id)documentCachePath
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    return [(TSADocumentRootDelegate *)delegate documentCachePath];
  }

  else
  {
    1uLL = [-[NSArray objectAtIndex:](NSSearchPathForDirectoriesInDomains(NSCachesDirectory 1uLL];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if (([defaultManager fileExistsAtPath:1uLL] & 1) == 0)
    {
      v10 = 0;
      v11 = *MEMORY[0x277CCA110];
      v12[0] = MEMORY[0x277CBEC38];
      if (([defaultManager createDirectoryAtPath:1uLL withIntermediateDirectories:1 attributes:objc_msgSend(MEMORY[0x277CBEAC0] error:{"dictionaryWithObjects:forKeys:count:", v12, &v11, 1), &v10}] & 1) == 0)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentRoot documentCachePath]"];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSADocumentRoot.mm"];
        [currentHandler handleFailureInFunction:v8 file:v9 lineNumber:2244 description:{@"Could not create document cache directory: %@", v10}];
      }
    }

    return [1uLL stringByAppendingPathComponent:{-[TSADocumentRoot name](self, "name")}];
  }
}

- (id)dataFromDocumentCachePath:(id)path
{
  v4 = [-[TSADocumentRoot documentCachePath](self "documentCachePath")];
  if (![objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    return 0;
  }

  decryptionKey = [(TSPObjectContext *)[(TSPObject *)self context] decryptionKey];
  v6 = MEMORY[0x277CBEA90];
  if (decryptionKey)
  {
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
    decryptionKey2 = [(TSPObjectContext *)[(TSPObject *)self context] decryptionKey];

    return [v6 dataWithContentsOfURL:v7 decryptionKey:decryptionKey2];
  }

  else
  {
    v10 = MEMORY[0x277CBEA90];

    return [v10 dataWithContentsOfFile:v4];
  }
}

- (void)didSaveWithEncryptionChange
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  documentCachePath = [(TSADocumentRoot *)self documentCachePath];

  [defaultManager removeItemAtPath:documentCachePath error:0];
}

- (BOOL)writeData:(id)data atDocumentCachePath:(id)path
{
  v7 = [-[TSADocumentRoot documentCachePath](self "documentCachePath")];
  stringByDeletingLastPathComponent = [v7 stringByDeletingLastPathComponent];
  if (data)
  {
    v9 = stringByDeletingLastPathComponent;
    v20 = 0;
    if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentRoot writeData:atDocumentCachePath:]"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSADocumentRoot.mm"];
      [currentHandler handleFailureInFunction:v11 file:v12 lineNumber:2290 description:{@"Unable to create cache directory: %@ with error: %@", v9, v20}];
    }

    if ([(TSPObjectContext *)[(TSPObject *)self context] decryptionKey])
    {
      if (([data writeToURL:objc_msgSend(MEMORY[0x277CBEBC0] encryptionKey:{"fileURLWithPath:", v7), -[TSPObjectContext decryptionKey](-[TSPObject context](self, "context"), "decryptionKey")}] & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (([data writeToFile:v7 options:0 error:&v20] & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentRoot writeData:atDocumentCachePath:]"];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSADocumentRoot.mm"];
      [currentHandler2 handleFailureInFunction:v16 file:v17 lineNumber:2298 description:{@"Unable to write to cache path: %@ with error: %@", v7, v20}];
LABEL_14:
      currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentRoot writeData:atDocumentCachePath:]"];
      [currentHandler3 handleFailureInFunction:v19 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSADocumentRoot.mm"), 2304, @"Failed to write cache file"}];
      return 0;
    }

    return 1;
  }

  if (!path)
  {
    return 0;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];

  return [defaultManager removeItemAtPath:v7 error:0];
}

- (CGImageSource)newImageSourceForDocumentCachePath:(id)path
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = [-[TSADocumentRoot documentCachePath](self "documentCachePath")];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (![objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    return 0;
  }

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
  v13 = *MEMORY[0x277CD3618];
  v14[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  if (![(TSPObjectContext *)[(TSPObject *)self context] decryptionKey])
  {
    v10 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], v5, kCFURLPOSIXPathStyle, 0);
    if (v10)
    {
      v11 = v10;
      v9 = CGImageSourceCreateWithURL(v6, v7);
      CFRelease(v11);
      return v9;
    }

    return 0;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = CGImageSourceCreateWithData([MEMORY[0x277CBEA90] dataWithContentsOfURL:v6 decryptionKey:{-[TSPObjectContext decryptionKey](-[TSPObject context](self, "context"), "decryptionKey")}], v7);
  objc_autoreleasePoolPop(v8);
  return v9;
}

- (id)uniqueDocumentCachePathForProposedPath:(id)path
{
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  v6 = [objc_msgSend(path "lastPathComponent")];

  return [stringByDeletingLastPathComponent stringByAppendingPathComponent:v6];
}

- (void)changeDocumentCacheFileProtection:(id)protection
{
  documentCachePath = [(TSADocumentRoot *)self documentCachePath];
  if (documentCachePath)
  {
    v5 = documentCachePath;
    if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
    {
      v7 = 0;
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager changeFileProtectionAtURL:objc_msgSend(MEMORY[0x277CBEBC0] toProtection:"fileURLWithPath:" recursively:v5) error:{protection, 1, &v7}];
    }
  }
}

- (NSString)defaultDraftName
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    return [(TSADocumentRootDelegate *)delegate defaultDraftName];
  }

  else
  {

    return [(TSADocumentRoot *)self name];
  }
}

- (BOOL)isDocumentEditedSinceLastSave
{
  documentSupport = [(TSKDocumentRoot *)self documentSupport];

  return [(TSKDocumentSupport *)documentSupport isDocumentEditedSinceLastSave];
}

- (TSADrawableFactory)drawableFactory
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentRoot drawableFactory]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSADocumentRoot.mm"), 2412, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSADocumentRoot drawableFactory]"), 0}]);
}

- (int64_t)addObserverForICloudTeardownWithBlock:(id)block
{
  v4.receiver = self;
  v4.super_class = TSADocumentRoot;
  return [(TSKDocumentRoot *)&v4 addObserverForICloudTeardownWithBlock:block];
}

- (BOOL)hasICloudConflict
{
  delegate = [(TSADocumentRoot *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = 0;
    fileURL = [(TSADocumentRootDelegate *)delegate fileURL];
    v4 = [fileURL getResourceValue:&v6 forKey:*MEMORY[0x277CBE958] error:0];
    if (v4)
    {
      LOBYTE(v4) = [v6 BOOLValue];
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isMultiPageForQuickLook
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSADocumentRoot isMultiPageForQuickLook]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/application/common/TSADocumentRoot.mm"), 2463, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSADocumentRoot isMultiPageForQuickLook]"), 0}]);
}

@end