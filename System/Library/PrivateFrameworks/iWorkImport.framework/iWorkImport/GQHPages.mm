@interface GQHPages
+ (int)endPublication:(id)publication state:(id)state;
+ (int)handlePageSetup:(id)setup state:(id)state;
+ (void)handlePagesOrders:(id)orders;
+ (void)handleZOrder:(unsigned int)order cssClassName:(__CFString *)name state:(id)state;
+ (void)mapCurrentHeaderAndFooterFromPublication:(id)publication state:(id)state;
+ (void)mapCurrentHiddenPositioningFooterFromPublication:(id)publication state:(id)state;
+ (void)mapHeaderOrFooter:(id)footer isHeader:(BOOL)header toPublication:(id)publication state:(id)state;
@end

@implementation GQHPages

+ (int)endPublication:(id)publication state:(id)state
{
  generatorState = [state generatorState];
  htmlDoc = [generatorState htmlDoc];
  if ([generatorState mode] && objc_msgSend(generatorState, "mode") != 1)
  {
    [generatorState endSection];
    [htmlDoc endElement];
LABEL_14:
    [htmlDoc endElement];
    goto LABEL_15;
  }

  [generatorState inContent];
  [generatorState endSection];
  [htmlDoc endElement];
  selfCopy = self;
  [self mapCurrentHiddenPositioningFooterFromPublication:publication state:state];
  floatingDrawablesCount = [generatorState floatingDrawablesCount];
  if (floatingDrawablesCount >= 1)
  {
    v10 = floatingDrawablesCount;
    v11 = 0;
    do
    {
      v12 = [generatorState drawableAtIndex:v11];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [state setCurrentTableGenerator:objc_opt_class()];
        mode = [generatorState mode];
        [generatorState setMode:1];
        [v12 walkTableWithGenerator:objc_opt_class() state:state];
        [generatorState setMode:mode];
      }

      else
      {
        [GQHDrawable handleFloatingDrawable:v12 htmlState:generatorState];
      }

      v11 = (v11 + 1);
    }

    while (v10 != v11);
  }

  [htmlDoc endElement];
  currentAttachmentId = [generatorState currentAttachmentId];
  self = selfCopy;
  if (currentAttachmentId > 0)
  {
    v15 = currentAttachmentId;
    [htmlDoc startElement:"script"];
    [htmlDoc setAttribute:"type" value:"text/javascript"];
    [htmlDoc addContent:@"\nfunction moveSplitAttachments(){"];
    for (i = 0; i != v15; ++i)
    {
      v17 = CFStringCreateWithFormat(0, 0, @"\n    moveAttachment(%ld);", i);
      [htmlDoc addContent:v17];
      CFRelease(v17);
    }

    [htmlDoc addContent:@"\n}\n"];
    [htmlDoc addContent:@"\nmoveSplitAttachments();\n"];
    goto LABEL_14;
  }

LABEL_15:
  [self handlePagesOrders:generatorState];
  [htmlDoc endElementWithExpectedName:"body"];
  if ([generatorState finishMainHtml])
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

+ (int)handlePageSetup:(id)setup state:(id)state
{
  [setup pageSize];
  v7 = v6 + 18.0;
  v9 = v8 + 18.0;
  [objc_msgSend(state "outputBundle")];
  [state outputBundle];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(state "outputBundle")];
  }

  v10 = [[GQHPagesState alloc] initWithState:state documentSize:v7, v9];
  [state setGeneratorState:v10];

  [(GQHPagesState *)v10 setPageSize:v7, v9];
  showOutliner = [setup showOutliner];
  if (showOutliner)
  {
    v12 = 2;
  }

  else
  {
    v12 = [setup hasBody] ^ 1;
  }

  [(GQHPagesState *)v10 setMode:v12];
  htmlDoc = [(GQHState *)v10 htmlDoc];
  if ([htmlDoc isProgressive])
  {
    [objc_msgSend(state "outputBundle")];
  }

  [-[GQHState shapeContext](v10 "shapeContext")];
  if ((showOutliner & 1) == 0)
  {
    [htmlDoc startElement:"script"];
    [htmlDoc setAttribute:"type" value:"text/javascript"];
    [htmlDoc setAttribute:"src" cfStringValue:{objc_msgSend(state, "uriForBundleResource:ofType:", @"GQPages", @"js"}];
    [htmlDoc endElement];
  }

  filename = [state filename];
  if (filename)
  {
    v15 = filename;
    [htmlDoc startElement:"title"];
    [htmlDoc addContent:v15];
    [htmlDoc endElement];
  }

  [htmlDoc endElement];
  [htmlDoc startElement:"body"];
  v16 = objc_alloc_init(GQHStyle);
  if ([state isGeneratingThumbnail])
  {
    [(GQHStyle *)v16 addAttribute:off_9CE00 value:@"white"];
    [(GQHStyle *)v16 addAttribute:off_9CEB0 pxValue:0];
    [(GQHStyle *)v16 addAttribute:off_9CEF0 pxValue:0];
  }

  else
  {
    [(GQHStyle *)v16 addAttribute:off_9CE00 value:@"#ACB2BB"];
  }

  [(GQHStyle *)v16 setStyleOnCurrentNode:v10];

  if ([(GQHPagesState *)v10 mode]&& [(GQHPagesState *)v10 mode]!= 1)
  {
    if ([(GQHPagesState *)v10 mode]== 2)
    {
      [htmlDoc startElement:"div"];
      v19 = objc_alloc_init(GQHStyle);
      [(GQHStyle *)v19 addAttribute:off_9CE00 value:@"white"];
      v20 = off_9CF68;
      [setup pageSize];
      [(GQHStyle *)v19 addAttribute:v20 pxValue:v21];
      v22 = off_9CED8;
      [setup pageSize];
      [(GQHStyle *)v19 addAttribute:v22 pxValue:v23];
      [(GQHStyle *)v19 addAttribute:off_9CF18 value:off_9D040];
      [(GQHStyle *)v19 addAttribute:off_9CEC0 pxValue:0];
      [(GQHStyle *)v19 addAttribute:off_9CEC8 pxValue:0];
      [(GQHStyle *)v19 addAttribute:off_9CED0 pxValue:0];
      [(GQHStyle *)v19 addAttribute:off_9CEB8 pxValue:5];
      [(GQHStyle *)v19 addAttribute:@"-webkit-box-shadow" value:@"0px 5px 5px rgba(0, 0, 0, 0.5)"];
      [(GQHStyle *)v19 setStyleOnCurrentNode:v10];

      [htmlDoc startElement:"div"];
      v24 = objc_alloc_init(GQHStyle);
      v25 = [objc_msgSend(-[GQHState processorState](v10 "processorState")];
      v26 = off_9CF00;
      [v25 left];
      [(GQHStyle *)v24 addAttribute:v26 pxValue:v27];
      v28 = off_9CF08;
      [v25 right];
      [(GQHStyle *)v24 addAttribute:v28 pxValue:v29];
      v30 = off_9CF10;
      [v25 top];
      [(GQHStyle *)v24 addAttribute:v30 pxValue:v31];
      v32 = off_9CEF8;
      [v25 bottom];
      [(GQHStyle *)v24 addAttribute:v32 pxValue:v33];
      [(GQHStyle *)v24 addAttribute:off_9CF18 value:off_9D040];
      [(GQHStyle *)v24 setStyleOnCurrentNode:v10];
    }
  }

  else
  {
    [state setCurrentWrapPointGenerator:v10];
  }

  if ([(GQHPagesState *)v10 mode]!= 2)
  {
    [GQHTextBox createExternalWrapSandbagStyles:htmlDoc];
  }

  if ([htmlDoc isProgressive])
  {
    v17 = [htmlDoc createProgressiveeCSSwithStyleTags:0];
    [objc_msgSend(state "outputBundle")];
    CFRelease(v17);
  }

  return 1;
}

+ (void)mapCurrentHeaderAndFooterFromPublication:(id)publication state:(id)state
{
  generatorState = [state generatorState];
  v12 = 0;
  v13 = 0;
  if ([publication hasHeaders])
  {
    v8 = &v13;
  }

  else
  {
    v8 = 0;
  }

  if ([publication hasFooters])
  {
    v9 = &v12;
  }

  else
  {
    v9 = 0;
  }

  [generatorState resolveHeaderName:v8 footerName:v9];
  [generatorState setIsMappingHeadersFooters:1];
  if (v13)
  {
    v10 = [generatorState headerForName:?];
    if (v10)
    {
      [self mapHeaderOrFooter:v10 isHeader:1 toPublication:publication state:state];
    }
  }

  if (v12)
  {
    v11 = [generatorState footerForName:?];
    if (v11)
    {
      [self mapHeaderOrFooter:v11 isHeader:0 toPublication:publication state:state];
    }
  }

  [generatorState setIsMappingHeadersFooters:0];
}

+ (void)mapCurrentHiddenPositioningFooterFromPublication:(id)publication state:(id)state
{
  generatorState = [state generatorState];
  v21 = 0;
  [generatorState resolveHeaderName:0 footerName:&v21];
  [generatorState setIsMappingHeadersFooters:1];
  if (v21)
  {
    v6 = [generatorState footerForName:?];
    if (v6)
    {
      v7 = v6;
      pageMargins = [publication pageMargins];
      [publication pageSize];
      v10 = v9;
      htmlDoc = [generatorState htmlDoc];
      [htmlDoc startElement:"div"];
      v12 = objc_alloc_init(GQHStyle);
      v13 = off_9CEA0;
      [pageMargins left];
      [(GQHStyle *)v12 addAttribute:v13 pxValue:v14];
      v15 = off_9CF68;
      [pageMargins left];
      v17 = v10 - v16;
      [pageMargins right];
      [(GQHStyle *)v12 addAttribute:v15 pxValue:(v17 - v18)];
      [(GQHStyle *)v12 addAttribute:off_9CF60 value:off_9CFE8];
      v19 = off_9CEB8;
      [pageMargins footer];
      [(GQHStyle *)v12 addAttribute:v19 pxValue:v20];
      [(GQHStyle *)v12 addClass:@"dzo"];
      [(GQHStyle *)v12 setStyleOnCurrentNode:generatorState];

      [GQHTextBox handleLayoutStorage:v7 state:generatorState];
      [htmlDoc endElement];
    }
  }

  [generatorState setIsMappingHeadersFooters:0];
}

+ (void)handleZOrder:(unsigned int)order cssClassName:(__CFString *)name state:(id)state
{
  v7 = CFStringCreateWithFormat(0, 0, @".%@ {\nz-index: %u;\n}\n\n", name, order);
  [state addStyle:v7 className:name srcStyle:0];

  CFRelease(v7);
}

+ (void)handlePagesOrders:(id)orders
{
  pagesOrderToCssZOrderClassMapDictionary = [orders pagesOrderToCssZOrderClassMapDictionary];
  Count = CFDictionaryGetCount(pagesOrderToCssZOrderClassMapDictionary);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 8 * Count;
    v9 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
    v10 = malloc_type_malloc(v8, 0x6004044C4A2DFuLL);
    CFDictionaryGetKeysAndValues(pagesOrderToCssZOrderClassMapDictionary, v9, v10);
    for (i = 0; i != v7; ++i)
    {
      v12 = v9[i];
      v13 = v10[i];
      if (v12)
      {
        v14 = v13 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        valuePtr = 0;
        CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
        if (valuePtr < 0)
        {
          v15 = 100;
        }

        else
        {
          v15 = 101;
        }

        [self handleZOrder:(v15 + valuePtr) cssClassName:v13 state:orders];
      }
    }

    free(v9);
    free(v10);
  }

  [self handleZOrder:100 cssClassName:@"dzo" state:orders];
}

+ (void)mapHeaderOrFooter:(id)footer isHeader:(BOOL)header toPublication:(id)publication state:(id)state
{
  headerCopy = header;
  generatorState = [state generatorState];
  htmlDoc = [generatorState htmlDoc];
  pageMargins = [publication pageMargins];
  [publication pageSize];
  v13 = v12;
  [htmlDoc startElement:"div"];
  [htmlDoc setAttribute:"id" cfStringValue:{objc_msgSend(footer, "name")}];
  v14 = objc_alloc_init(GQHStyle);
  v15 = off_9CEA0;
  [pageMargins left];
  [(GQHStyle *)v14 addAttribute:v15 pxValue:v16];
  v17 = off_9CF68;
  [pageMargins left];
  v19 = v13 - v18;
  [pageMargins right];
  [(GQHStyle *)v14 addAttribute:v17 pxValue:(v19 - v20)];
  [(GQHStyle *)v14 addAttribute:off_9CF18 value:off_9CFA0];
  if ([generatorState mode] == 1)
  {
    [pageMargins header];
    v22 = v21;
    if (!headerCopy)
    {
LABEL_3:
      v23 = off_9CE50;
      [pageMargins footer];
      [(GQHStyle *)v14 addAttribute:v23 pxValue:v24];
      goto LABEL_7;
    }
  }

  else
  {
    v22 = 0;
    if (!headerCopy)
    {
      goto LABEL_3;
    }
  }

  [(GQHStyle *)v14 addAttribute:off_9CF50 pxValue:v22];
  if (![generatorState mode])
  {
    v25 = off_9CF10;
    [pageMargins header];
    [(GQHStyle *)v14 addAttribute:v25 pxValue:v26];
    [(GQHStyle *)v14 addAttribute:off_9CEE8 value:off_9CFE8];
  }

LABEL_7:
  [(GQHStyle *)v14 addClass:@"dzo"];
  [(GQHStyle *)v14 setStyleOnCurrentNode:generatorState];

  [GQHTextBox handleLayoutStorage:footer state:generatorState];

  [htmlDoc endElement];
}

@end