@interface TPSConstellationContentParser
+ (id)inlineIconPlaceHolderImage;
- (CGRect)boundsForImage:(id)image size:(CGSize)size;
- (TPSConstellationContentParser)init;
- (TPSConstellationContentParserDelegate)delegate;
- (UIFont)boldFont;
- (UIFont)italicFont;
- (double)scaledValueForSize:(double)size;
- (id)_colorForSystemColorString:(id)string;
- (id)accessibilityLabelFromAttribute:(id)attribute;
- (id)attributedStringForConstellationContent:(id)content defaultAttributes:(id)attributes identifier:(id)identifier language:(id)language assetsBaseURL:(id)l assetFileInfoManager:(id)manager supportsLinks:(BOOL)links error:(id *)self0;
- (id)attributedStringForContent:(id)content error:(id *)error;
- (id)attributedStringForInlineIconNode:(id)node;
- (id)attributedStringForParagraphNode:(id)node error:(id *)error;
- (id)attributedStringForPersonalizedTextNode:(id)node error:(id *)error;
- (id)attributedStringForSymbolNode:(id)node;
- (id)attributedStringForTextNode:(id)node;
- (id)attributesWithMarks:(id)marks;
- (int64_t)numOfActiveRemoteURLSessions;
- (void)cancelAssetFetches;
- (void)dealloc;
- (void)fetchAssetConfiguration:(id)configuration cacheIdentifier:(id)identifier textAttachment:(id)attachment;
- (void)setDelegate:(id)delegate;
@end

@implementation TPSConstellationContentParser

+ (id)inlineIconPlaceHolderImage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__TPSConstellationContentParser_inlineIconPlaceHolderImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (inlineIconPlaceHolderImage_predicate != -1)
  {
    dispatch_once(&inlineIconPlaceHolderImage_predicate, block);
  }

  v2 = inlineIconPlaceHolderImage_gInlineIconPlaceHolderImage;

  return v2;
}

void __59__TPSConstellationContentParser_inlineIconPlaceHolderImage__block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v0 = [MEMORY[0x277D755B8] imageNamed:@"InlineIconPlaceHolder" inBundle:v2 compatibleWithTraitCollection:0];
  v1 = inlineIconPlaceHolderImage_gInlineIconPlaceHolderImage;
  inlineIconPlaceHolderImage_gInlineIconPlaceHolderImage = v0;
}

- (void)dealloc
{
  [(TPSConstellationContentParser *)self cancelAssetFetches];
  v3.receiver = self;
  v3.super_class = TPSConstellationContentParser;
  [(TPSConstellationContentParser *)&v3 dealloc];
}

- (TPSConstellationContentParser)init
{
  v11.receiver = self;
  v11.super_class = TPSConstellationContentParser;
  v2 = [(TPSConstellationContentParser *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.tips.constellationContentParserQueue", v3);
    syncQueue = v2->_syncQueue;
    v2->_syncQueue = v4;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    assetsSessionItemMap = v2->_assetsSessionItemMap;
    v2->_assetsSessionItemMap = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    assetsTextAttachmentMap = v2->_assetsTextAttachmentMap;
    v2->_assetsTextAttachmentMap = dictionary2;
  }

  return v2;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    [(TPSConstellationContentParser *)self setDelegateRespondsToBoldFont:objc_opt_respondsToSelector() & 1];

    v6 = objc_loadWeakRetained(&self->_delegate);
    [(TPSConstellationContentParser *)self setDelegateRespondsToItalicFont:objc_opt_respondsToSelector() & 1];
  }
}

- (void)cancelAssetFetches
{
  assetsSessionItemMap = [(TPSConstellationContentParser *)self assetsSessionItemMap];
  v6 = [assetsSessionItemMap copy];

  assetsSessionItemMap2 = [(TPSConstellationContentParser *)self assetsSessionItemMap];
  [assetsSessionItemMap2 removeAllObjects];

  assetsTextAttachmentMap = [(TPSConstellationContentParser *)self assetsTextAttachmentMap];
  [assetsTextAttachmentMap removeAllObjects];

  [v6 enumerateKeysAndObjectsUsingBlock:&__block_literal_global];
}

void __51__TPSConstellationContentParser_cancelAssetFetches__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277D717E0];
  v4 = a3;
  v5 = [v3 defaultManager];
  [v5 cancelSessionItem:v4];
}

- (UIFont)boldFont
{
  boldFont = self->_boldFont;
  if (!boldFont)
  {
    if ([(TPSConstellationContentParser *)self delegateRespondsToBoldFont])
    {
      delegate = [(TPSConstellationContentParser *)self delegate];
      v5 = [delegate constellationContentParserBoldFont:self];
      v6 = self->_boldFont;
      self->_boldFont = v5;
    }

    boldFont = self->_boldFont;
    if (!boldFont)
    {
      defaultAttributes = [(TPSConstellationContentParser *)self defaultAttributes];
      v8 = [defaultAttributes objectForKeyedSubscript:*MEMORY[0x277D740A8]];
      v9 = self->_boldFont;
      self->_boldFont = v8;

      boldFont = self->_boldFont;
    }
  }

  return boldFont;
}

- (UIFont)italicFont
{
  italicFont = self->_italicFont;
  if (!italicFont)
  {
    if ([(TPSConstellationContentParser *)self delegateRespondsToItalicFont])
    {
      delegate = [(TPSConstellationContentParser *)self delegate];
      v5 = [delegate constellationContentParserItalicFont:self];
      v6 = self->_italicFont;
      self->_italicFont = v5;
    }

    italicFont = self->_italicFont;
    if (!italicFont)
    {
      defaultAttributes = [(TPSConstellationContentParser *)self defaultAttributes];
      v8 = [defaultAttributes objectForKeyedSubscript:*MEMORY[0x277D740A8]];
      v9 = self->_italicFont;
      self->_italicFont = v8;

      italicFont = self->_italicFont;
    }
  }

  return italicFont;
}

- (int64_t)numOfActiveRemoteURLSessions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  syncQueue = [(TPSConstellationContentParser *)self syncQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__TPSConstellationContentParser_numOfActiveRemoteURLSessions__block_invoke;
  v6[3] = &unk_2784511C0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(syncQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __61__TPSConstellationContentParser_numOfActiveRemoteURLSessions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetsSessionItemMap];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (id)attributedStringForConstellationContent:(id)content defaultAttributes:(id)attributes identifier:(id)identifier language:(id)language assetsBaseURL:(id)l assetFileInfoManager:(id)manager supportsLinks:(BOOL)links error:(id *)self0
{
  contentCopy = content;
  attributesCopy = attributes;
  identifierCopy = identifier;
  languageCopy = language;
  lCopy = l;
  managerCopy = manager;
  [(TPSConstellationContentParser *)self setIdentifier:identifierCopy];
  [(TPSConstellationContentParser *)self setDefaultAttributes:attributesCopy];
  [(TPSConstellationContentParser *)self setNumberOfParagraphTags:0];
  [(TPSConstellationContentParser *)self setLanguage:languageCopy];
  [(TPSConstellationContentParser *)self setAssetsBaseURL:lCopy];
  [(TPSConstellationContentParser *)self setAssetFileInfoManager:managerCopy];
  [(TPSConstellationContentParser *)self setSupportsLinks:links];
  v22 = [(TPSConstellationContentParser *)self attributedStringForContent:contentCopy error:error];
  if ([(TPSConstellationContentParser *)self numberOfParagraphTags]>= 2)
  {
    v23 = objc_alloc_init(MEMORY[0x277D74240]);
    [v23 setParagraphSpacing:12.0];
    [v22 addAttribute:*MEMORY[0x277D74118] value:v23 range:{0, objc_msgSend(v22, "length")}];
  }

  objc_initWeak(&location, self);
  v24 = [v22 copy];
  syncQueue = [(TPSConstellationContentParser *)self syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __166__TPSConstellationContentParser_attributedStringForConstellationContent_defaultAttributes_identifier_language_assetsBaseURL_assetFileInfoManager_supportsLinks_error___block_invoke;
  block[3] = &unk_2784511E8;
  objc_copyWeak(&v30, &location);
  v26 = v24;
  v29 = v26;
  dispatch_async(syncQueue, block);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);

  return v26;
}

void __166__TPSConstellationContentParser_attributedStringForConstellationContent_defaultAttributes_identifier_language_assetsBaseURL_assetFileInfoManager_supportsLinks_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setAttributedString:*(a1 + 32)];
}

- (id)attributedStringForContent:(id)content error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  if (contentCopy)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:&stru_28345ED28 attributes:0];
    [v7 beginEditing];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = contentCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = v9;
    v11 = *v19;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [MEMORY[0x277D716F0] contentTypeForContentDictionary:{v13, v18}];
        if (v14 <= 1)
        {
          if (v14)
          {
            if (v14 != 1)
            {
              continue;
            }

            v15 = [(TPSConstellationContentParser *)self attributedStringForParagraphNode:v13 error:error];
          }

          else
          {
            v15 = [(TPSConstellationContentParser *)self attributedStringForTextNode:v13];
          }
        }

        else
        {
          switch(v14)
          {
            case 2:
              v15 = [(TPSConstellationContentParser *)self attributedStringForSymbolNode:v13];
              break;
            case 3:
              v15 = [(TPSConstellationContentParser *)self attributedStringForInlineIconNode:v13];
              break;
            case 4:
              v15 = [(TPSConstellationContentParser *)self attributedStringForPersonalizedTextNode:v13 error:error];
              break;
            default:
              continue;
          }
        }

        v16 = v15;
        if (v15)
        {
          [v7 appendAttributedString:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (!v10)
      {
LABEL_22:

        [v7 endEditing];
        goto LABEL_24;
      }
    }
  }

  v7 = 0;
LABEL_24:

  return v7;
}

- (id)attributesWithMarks:(id)marks
{
  v35 = *MEMORY[0x277D85DE8];
  marksCopy = marks;
  if (![marksCopy count])
  {
    goto LABEL_26;
  }

  defaultAttributes = [(TPSConstellationContentParser *)self defaultAttributes];
  v6 = [defaultAttributes mutableCopy];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = marksCopy;
  v7 = marksCopy;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = v8;
  v10 = *v31;
  v11 = *MEMORY[0x277D740C0];
  v12 = *MEMORY[0x277D740A8];
  v28 = *MEMORY[0x277D740E8];
  v29 = v7;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v31 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v30 + 1) + 8 * i);
      v15 = [MEMORY[0x277D716F0] markTypeForMarkDictionary:v14];
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          if (v15 != 3)
          {
            continue;
          }

          labelColor = [MEMORY[0x277D75348] labelColor];
          v18 = v6;
          v19 = labelColor;
          v20 = v11;
          goto LABEL_20;
        }

        italicFont = [(TPSConstellationContentParser *)self italicFont];
LABEL_19:
        labelColor = italicFont;
        v18 = v6;
        v19 = labelColor;
        v20 = v12;
LABEL_20:
        [v18 setObject:v19 forKey:v20];
        goto LABEL_21;
      }

      if (v15)
      {
        if (v15 != 1)
        {
          continue;
        }

        italicFont = [(TPSConstellationContentParser *)self boldFont];
        goto LABEL_19;
      }

      if (self->_ignoreLinks)
      {
        continue;
      }

      selfCopy = self;
      v22 = v12;
      v23 = v11;
      labelColor = [MEMORY[0x277D716F0] hrefForLinkMark:v14];
      v24 = [MEMORY[0x277CBEBC0] URLWithString:labelColor];
      if (v24)
      {
        [v6 setObject:v24 forKey:v28];
      }

      v11 = v23;
      v12 = v22;
      self = selfCopy;
      v7 = v29;
LABEL_21:
    }

    v9 = [v7 countByEnumeratingWithState:&v30 objects:v34 count:16];
  }

  while (v9);
LABEL_24:

  marksCopy = v27;
  if (v6)
  {
    defaultAttributes2 = [v6 copy];

    goto LABEL_27;
  }

LABEL_26:
  defaultAttributes2 = [(TPSConstellationContentParser *)self defaultAttributes];
LABEL_27:

  return defaultAttributes2;
}

- (id)attributedStringForTextNode:(id)node
{
  nodeCopy = node;
  v5 = [nodeCopy TPSSafeArrayForKey:@"marks"];
  v6 = [(TPSConstellationContentParser *)self attributesWithMarks:v5];
  if (-[TPSConstellationContentParser supportsLinks](self, "supportsLinks") || ([v6 objectForKeyedSubscript:*MEMORY[0x277D740E8]], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v9 = [MEMORY[0x277D716F0] textForContentNode:nodeCopy];
    if (v9)
    {
      v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v9 attributes:v6];
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

  return v8;
}

- (id)attributedStringForParagraphNode:(id)node error:(id *)error
{
  nodeCopy = node;
  if ([(TPSConstellationContentParser *)self numberOfParagraphTags]< 1)
  {
    v10 = 0;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CCA898]);
    defaultAttributes = [(TPSConstellationContentParser *)self defaultAttributes];
    v9 = [v7 initWithString:@"\n" attributes:defaultAttributes];

    v10 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v9];
  }

  [(TPSConstellationContentParser *)self setNumberOfParagraphTags:[(TPSConstellationContentParser *)self numberOfParagraphTags]+ 1];
  v11 = [nodeCopy TPSSafeArrayForKey:*MEMORY[0x277D71900]];

  v12 = [(TPSConstellationContentParser *)self attributedStringForContent:v11 error:error];
  v13 = v12;
  if (v12)
  {
    if (v10)
    {
      [v10 appendAttributedString:v12];
      v14 = [v10 copy];
    }

    else
    {
      v14 = v12;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)attributedStringForSymbolNode:(id)node
{
  v4 = [node TPSSafeDictionaryForKey:*MEMORY[0x277D718F0]];
  v5 = [v4 TPSSafeStringForKey:*MEMORY[0x277D718E8]];
  if (!v5)
  {
    v9 = 0;
    goto LABEL_21;
  }

  v6 = [v4 TPSSafeStringForKey:*MEMORY[0x277D718C0]];
  v7 = v6;
  if (v6)
  {
    if ([v6 isEqualToString:*MEMORY[0x277D718D8]])
    {
      v8 = 1;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277D718D0]])
    {
      v8 = 3;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277D718C8]])
    {
      v8 = -1;
    }

    else if ([v7 isEqualToString:*MEMORY[0x277D718E0]])
    {
      v8 = 0;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 2;
  }

  v10 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:v8];
  v11 = [MEMORY[0x277D755B8] _systemImageNamed:v5 withConfiguration:v10];
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  v13 = [v4 TPSSafeStringForKey:*MEMORY[0x277D71890]];
  if (![v13 isEqualToString:*MEMORY[0x277D71898]])
  {
    v14 = [(TPSConstellationContentParser *)self _colorForSystemColorString:v13];
    v15 = [v12 imageWithTintColor:v14 renderingMode:1];

    v12 = v15;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

LABEL_18:
  v16 = [MEMORY[0x277D74270] textAttachmentWithImage:v12];
  v17 = [(TPSConstellationContentParser *)self accessibilityLabelFromAttribute:v4];
  [v16 setAccessibilityLabel:v17];
  [v16 setAccessibilityElementsHidden:{objc_msgSend(v17, "isEqualToString:", @" "}];
  v18 = objc_alloc(MEMORY[0x277CCA898]);
  defaultAttributes = [(TPSConstellationContentParser *)self defaultAttributes];
  v20 = [v18 initWithAttachment:v16 attributes:defaultAttributes];

  v9 = [objc_alloc(MEMORY[0x277CCA898]) initWithAttributedString:v20];
  v10 = v7;
  v7 = v12;
LABEL_20:

LABEL_21:

  return v9;
}

- (id)accessibilityLabelFromAttribute:(id)attribute
{
  v3 = [attribute TPSSafeStringForKey:*MEMORY[0x277D71888]];
  if (![(__CFString *)v3 length])
  {

    v3 = @" ";
  }

  return v3;
}

- (id)attributedStringForInlineIconNode:(id)node
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = [node TPSSafeDictionaryForKey:*MEMORY[0x277D718F0]];
  v5 = [v4 TPSSafeStringForKey:*MEMORY[0x277D718A8]];
  assetsBaseURL = [(TPSConstellationContentParser *)self assetsBaseURL];
  language = [(TPSConstellationContentParser *)self language];
  v8 = language;
  if (v5)
  {
    v9 = assetsBaseURL == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || language == 0)
  {
    default = [MEMORY[0x277D71778] default];
    if (os_log_type_enabled(default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220B31000, default, OS_LOG_TYPE_DEFAULT, "Unable to fetch inline icon due due to missing imageID / baseURL / language", buf, 2u);
    }

    v12 = 0;
  }

  else
  {
    traitCollection = [(TPSConstellationContentParser *)self traitCollection];
    v14 = [traitCollection userInterfaceStyle] == 2;

    traitCollection2 = [(TPSConstellationContentParser *)self traitCollection];
    [traitCollection2 displayScale];
    v17 = v16;

    if (v17 == 0.0)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v17 = v19;
    }

    assetFileInfoManager = [(TPSConstellationContentParser *)self assetFileInfoManager];
    default = [assetFileInfoManager fileInfoWithMainIdentifier:v5 userInterfaceStyle:v14 scale:v17];

    v21 = [default size];
    width = [v21 width];
    [width floatValue];
    v24 = v23;
    height = [v21 height];
    [height floatValue];
    v27 = v26;

    v28 = *(MEMORY[0x277CBF3A8] + 8);
    if (*MEMORY[0x277CBF3A8] == v24 && v28 == v27)
    {
      default2 = [MEMORY[0x277D71778] default];
      if (os_log_type_enabled(default2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v5;
        _os_log_impl(&dword_220B31000, default2, OS_LOG_TYPE_DEFAULT, "No file found with size information for identifier %@", buf, 0xCu);
      }

      v12 = 0;
    }

    else
    {
      v50 = v21;
      v30 = objc_alloc_init(MEMORY[0x277D74270]);
      v47 = v4;
      v31 = [(TPSConstellationContentParser *)self accessibilityLabelFromAttribute:v4];
      [v30 setAccessibilityLabel:v31];
      v49 = v31;
      [v30 setAccessibilityElementsHidden:{objc_msgSend(v31, "isEqualToString:", @" "}];
      v32 = objc_alloc_init(MEMORY[0x277D716A8]);
      [v32 setImageId:v5];
      [v32 setBaseURL:assetsBaseURL];
      v33 = objc_alloc(MEMORY[0x277D716B0]);
      assetFileInfoManager2 = [(TPSConstellationContentParser *)self assetFileInfoManager];
      v48 = v32;
      v35 = [v33 initWithAssets:v32 language:v8 userInterfaceStyle:v14 assetFileInfoManager:assetFileInfoManager2];

      v36 = [v35 cacheIdentifierForType:0];
      inlineIconPlaceHolderImage = [TPSImageAssetController getImageForIdentifier:v36];
      if (!inlineIconPlaceHolderImage)
      {
        inlineIconPlaceHolderImage = [objc_opt_class() inlineIconPlaceHolderImage];
        [(TPSConstellationContentParser *)self fetchAssetConfiguration:v35 cacheIdentifier:v36 textAttachment:v30];
      }

      v46 = v35;
      [v30 setImage:{inlineIconPlaceHolderImage, v36}];
      [(TPSConstellationContentParser *)self boundsForImage:inlineIconPlaceHolderImage size:v24, v27];
      [v30 setBounds:?];
      if (v30)
      {
        v38 = objc_alloc(MEMORY[0x277CCA898]);
        defaultAttributes = [(TPSConstellationContentParser *)self defaultAttributes];
        v40 = [v38 initWithAttachment:v30 attributes:defaultAttributes];

        v41 = [objc_alloc(MEMORY[0x277CCA898]) initWithAttributedString:v40];
      }

      else
      {
        v41 = 0;
      }

      v21 = v50;
      v4 = v47;
      default3 = [MEMORY[0x277D71778] default];
      if (os_log_type_enabled(default3, OS_LOG_TYPE_DEBUG))
      {
        [(TPSConstellationContentParser *)v5 attributedStringForInlineIconNode:default3, v24, v27];
      }

      default2 = v41;
      v12 = default2;
    }
  }

  return v12;
}

- (id)attributedStringForPersonalizedTextNode:(id)node error:(id *)error
{
  nodeCopy = node;
  v7 = [nodeCopy TPSSafeArrayForKey:@"marks"];
  v8 = [(TPSConstellationContentParser *)self attributesWithMarks:v7];
  v9 = [nodeCopy TPSSafeDictionaryForKey:*MEMORY[0x277D718F0]];

  v10 = [v9 TPSSafeNumberForKey:*MEMORY[0x277D718B8]];
  v11 = [v9 TPSSafeNumberForKey:*MEMORY[0x277D718B0]];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    goto LABEL_12;
  }

  integerValue = [v10 integerValue];
  integerValue2 = [v12 integerValue];
  if (!integerValue)
  {
    v16 = integerValue2;
    delegate = [(TPSConstellationContentParser *)self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      delegate2 = [(TPSConstellationContentParser *)self delegate];
      v20 = [delegate2 constellationContentParser:self personalizedStringForID:v16];

      if (v20)
      {
        goto LABEL_10;
      }
    }
  }

  v20 = [v9 objectForKeyedSubscript:*MEMORY[0x277D718A0]];
  if (![v20 length])
  {

    goto LABEL_12;
  }

  if (!v20)
  {
LABEL_12:
    if (error && !*error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.tipsUI.contentParser" code:1 userInfo:0];
      v20 = 0;
      *error = v21 = 0;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    goto LABEL_16;
  }

LABEL_10:
  v21 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v20 attributes:v8];
LABEL_16:

  return v21;
}

- (void)fetchAssetConfiguration:(id)configuration cacheIdentifier:(id)identifier textAttachment:(id)attachment
{
  configurationCopy = configuration;
  identifierCopy = identifier;
  attachmentCopy = attachment;
  if (identifierCopy)
  {
    objc_initWeak(location, self);
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy_;
    v47 = __Block_byref_object_dispose_;
    v48 = 0;
    syncQueue = [(TPSConstellationContentParser *)self syncQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__TPSConstellationContentParser_fetchAssetConfiguration_cacheIdentifier_textAttachment___block_invoke;
    block[3] = &unk_278451210;
    v42 = &v43;
    block[4] = self;
    v12 = identifierCopy;
    v41 = v12;
    dispatch_sync(syncQueue, block);

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__TPSConstellationContentParser_fetchAssetConfiguration_cacheIdentifier_textAttachment___block_invoke_2;
    aBlock[3] = &unk_278451260;
    v13 = v12;
    v36 = v13;
    selfCopy = self;
    objc_copyWeak(&v39, location);
    v38 = attachmentCopy;
    v14 = _Block_copy(aBlock);
    v15 = v14;
    v16 = v14[2];
    if (v44[5])
    {
      v16(v14);
    }

    else
    {
      v16(v14);
      v17 = [MEMORY[0x277D71708] assetPathFromAssetConfiguration:configurationCopy type:0];
      v18 = *MEMORY[0x277CCA798];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __88__TPSConstellationContentParser_fetchAssetConfiguration_cacheIdentifier_textAttachment___block_invoke_4;
      v30[3] = &unk_2784512D8;
      objc_copyWeak(&v34, location);
      v33 = &v43;
      v19 = v13;
      v31 = v19;
      selfCopy2 = self;
      LODWORD(v20) = v18;
      v21 = [TPSImageAssetController formattedDataForPath:v17 identifier:v19 priority:v30 completionHandler:v20];
      v22 = v44[5];
      v44[5] = v21;

      sessionTask = [v44[5] sessionTask];
      LODWORD(v24) = v18;
      [sessionTask setPriority:v24];

      syncQueue2 = [(TPSConstellationContentParser *)self syncQueue];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __88__TPSConstellationContentParser_fetchAssetConfiguration_cacheIdentifier_textAttachment___block_invoke_7;
      v26[3] = &unk_278451300;
      objc_copyWeak(&v29, location);
      v27 = v19;
      v28 = &v43;
      dispatch_async(syncQueue2, v26);

      objc_destroyWeak(&v29);
      objc_destroyWeak(&v34);
    }

    objc_destroyWeak(&v39);
    _Block_object_dispose(&v43, 8);

    objc_destroyWeak(location);
  }
}

void __88__TPSConstellationContentParser_fetchAssetConfiguration_cacheIdentifier_textAttachment___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) assetsSessionItemMap];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __88__TPSConstellationContentParser_fetchAssetConfiguration_cacheIdentifier_textAttachment___block_invoke_2(id *a1)
{
  if (a1[4])
  {
    v2 = [a1[5] syncQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__TPSConstellationContentParser_fetchAssetConfiguration_cacheIdentifier_textAttachment___block_invoke_3;
    block[3] = &unk_278451238;
    objc_copyWeak(&v6, a1 + 7);
    v4 = a1[4];
    v5 = a1[6];
    dispatch_async(v2, block);

    objc_destroyWeak(&v6);
  }
}

void __88__TPSConstellationContentParser_fetchAssetConfiguration_cacheIdentifier_textAttachment___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained assetsTextAttachmentMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];

  if (!v3)
  {
    v3 = [MEMORY[0x277CCAA50] hashTableWithOptions:5];
    v4 = [WeakRetained assetsTextAttachmentMap];
    [v4 setObject:v3 forKeyedSubscript:*(a1 + 32)];
  }

  [v3 addObject:*(a1 + 40)];
}

void __88__TPSConstellationContentParser_fetchAssetConfiguration_cacheIdentifier_textAttachment___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = [*(*(*(a1 + 48) + 8) + 40) sessionTask];
  v12 = [v11 identifier];
  v13 = v12;
  if (!v12)
  {
    v13 = *(a1 + 32);
  }

  v14 = v13;

  v15 = 0;
  if (v9 && !a7)
  {
    if ([*(*(*(a1 + 48) + 8) + 40) isCancelled])
    {
      v15 = 0;
    }

    else
    {
      v15 = v9;
    }
  }

  v16 = [*(a1 + 40) syncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__TPSConstellationContentParser_fetchAssetConfiguration_cacheIdentifier_textAttachment___block_invoke_5;
  block[3] = &unk_2784512B0;
  v20 = v15;
  v21 = WeakRetained;
  v22 = v14;
  v17 = v14;
  v18 = v15;
  dispatch_async(v16, block);
}

void __88__TPSConstellationContentParser_fetchAssetConfiguration_cacheIdentifier_textAttachment___block_invoke_5(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) assetsTextAttachmentMap];
    v3 = [v2 objectForKeyedSubscript:*(a1 + 48)];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v12 + 1) + 8 * v8++) setImage:*(a1 + 32)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __88__TPSConstellationContentParser_fetchAssetConfiguration_cacheIdentifier_textAttachment___block_invoke_6;
    block[3] = &unk_278451288;
    block[4] = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  if (*(a1 + 48))
  {
    v9 = [*(a1 + 40) assetsSessionItemMap];
    [v9 setObject:0 forKeyedSubscript:*(a1 + 48)];

    v10 = [*(a1 + 40) assetsTextAttachmentMap];
    [v10 setObject:0 forKeyedSubscript:*(a1 + 48)];
  }
}

void __88__TPSConstellationContentParser_fetchAssetConfiguration_cacheIdentifier_textAttachment___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 constellationContentParserAttributedStringUpdated:*(a1 + 32)];
  }
}

void __88__TPSConstellationContentParser_fetchAssetConfiguration_cacheIdentifier_textAttachment___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [WeakRetained assetsSessionItemMap];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 32)];
}

- (CGRect)boundsForImage:(id)image size:(CGSize)size
{
  height = size.height;
  width = size.width;
  [image size];
  if (width == 0.0)
  {
    if (v7 == 0.0)
    {
      width = 19.0;
    }

    else
    {
      width = v7;
    }
  }

  if (v8 == 0.0)
  {
    v9 = 19.0;
  }

  else
  {
    v9 = v8;
  }

  if (height == 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = height;
  }

  if (width <= 200.0)
  {
    v11 = width;
  }

  else
  {
    v11 = 19.0;
  }

  if (v10 <= 40.0)
  {
    v12 = v10;
  }

  else
  {
    v12 = 19.0;
  }

  [(TPSConstellationContentParser *)self scaledValueForSize:v11];
  v14 = v13;
  [(TPSConstellationContentParser *)self scaledValueForSize:v12];
  v16 = v15;
  v17 = -floor(v15 * 0.25);
  v18 = 0.0;
  v19 = v14;
  result.size.height = v16;
  result.size.width = v19;
  result.origin.y = v17;
  result.origin.x = v18;
  return result;
}

- (double)scaledValueForSize:(double)size
{
  defaultAttributes = [(TPSConstellationContentParser *)self defaultAttributes];
  v5 = [defaultAttributes objectForKeyedSubscript:*MEMORY[0x277D740A8]];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  }

  v8 = v7;

  [v8 pointSize];
  v10 = v9;
  if (size <= 0.0)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    size = size / v12;
  }

  return v10 / 17.0 * size;
}

- (id)_colorForSystemColorString:(id)string
{
  stringCopy = string;
  labelColor = [MEMORY[0x277D75348] labelColor];
  if (stringCopy && ([stringCopy isEqualToString:@"black"] & 1) == 0 && (objc_msgSend(stringCopy, "isEqualToString:", @"labelColor") & 1) == 0)
  {
    if (([stringCopy hasSuffix:@"Color"] & 1) == 0)
    {
      v5 = [stringCopy stringByAppendingString:@"Color"];

      stringCopy = v5;
    }

    v6 = [MEMORY[0x277D75348] performSelector:NSSelectorFromString(stringCopy)];

    labelColor = v6;
  }

  v7 = labelColor;

  return labelColor;
}

- (TPSConstellationContentParserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)attributedStringForInlineIconNode:(double)a3 .cold.1(uint64_t a1, NSObject *a2, double a3, double a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = NSStringFromCGSize(*&a3);
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_220B31000, a2, OS_LOG_TYPE_DEBUG, "Displaying %@ with size %@", &v7, 0x16u);
}

@end