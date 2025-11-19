@interface GQHPages
+ (int)endPublication:(id)a3 state:(id)a4;
+ (int)handlePageSetup:(id)a3 state:(id)a4;
+ (void)handlePagesOrders:(id)a3;
+ (void)handleZOrder:(unsigned int)a3 cssClassName:(__CFString *)a4 state:(id)a5;
+ (void)mapCurrentHeaderAndFooterFromPublication:(id)a3 state:(id)a4;
+ (void)mapCurrentHiddenPositioningFooterFromPublication:(id)a3 state:(id)a4;
+ (void)mapHeaderOrFooter:(id)a3 isHeader:(BOOL)a4 toPublication:(id)a5 state:(id)a6;
@end

@implementation GQHPages

+ (int)endPublication:(id)a3 state:(id)a4
{
  v7 = [a4 generatorState];
  v8 = [v7 htmlDoc];
  if ([v7 mode] && objc_msgSend(v7, "mode") != 1)
  {
    [v7 endSection];
    [v8 endElement];
LABEL_14:
    [v8 endElement];
    goto LABEL_15;
  }

  [v7 inContent];
  [v7 endSection];
  [v8 endElement];
  v19 = a1;
  [a1 mapCurrentHiddenPositioningFooterFromPublication:a3 state:a4];
  v9 = [v7 floatingDrawablesCount];
  if (v9 >= 1)
  {
    v10 = v9;
    v11 = 0;
    do
    {
      v12 = [v7 drawableAtIndex:v11];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a4 setCurrentTableGenerator:objc_opt_class()];
        v13 = [v7 mode];
        [v7 setMode:1];
        [v12 walkTableWithGenerator:objc_opt_class() state:a4];
        [v7 setMode:v13];
      }

      else
      {
        [GQHDrawable handleFloatingDrawable:v12 htmlState:v7];
      }

      v11 = (v11 + 1);
    }

    while (v10 != v11);
  }

  [v8 endElement];
  v14 = [v7 currentAttachmentId];
  a1 = v19;
  if (v14 > 0)
  {
    v15 = v14;
    [v8 startElement:"script"];
    [v8 setAttribute:"type" value:"text/javascript"];
    [v8 addContent:@"\nfunction moveSplitAttachments(){"];
    for (i = 0; i != v15; ++i)
    {
      v17 = CFStringCreateWithFormat(0, 0, @"\n    moveAttachment(%ld);", i);
      [v8 addContent:v17];
      CFRelease(v17);
    }

    [v8 addContent:@"\n}\n"];
    [v8 addContent:@"\nmoveSplitAttachments();\n"];
    goto LABEL_14;
  }

LABEL_15:
  [a1 handlePagesOrders:v7];
  [v8 endElementWithExpectedName:"body"];
  if ([v7 finishMainHtml])
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

+ (int)handlePageSetup:(id)a3 state:(id)a4
{
  [a3 pageSize];
  v7 = v6 + 18.0;
  v9 = v8 + 18.0;
  [objc_msgSend(a4 "outputBundle")];
  [a4 outputBundle];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(a4 "outputBundle")];
  }

  v10 = [[GQHPagesState alloc] initWithState:a4 documentSize:v7, v9];
  [a4 setGeneratorState:v10];

  [(GQHPagesState *)v10 setPageSize:v7, v9];
  v11 = [a3 showOutliner];
  if (v11)
  {
    v12 = 2;
  }

  else
  {
    v12 = [a3 hasBody] ^ 1;
  }

  [(GQHPagesState *)v10 setMode:v12];
  v13 = [(GQHState *)v10 htmlDoc];
  if ([v13 isProgressive])
  {
    [objc_msgSend(a4 "outputBundle")];
  }

  [-[GQHState shapeContext](v10 "shapeContext")];
  if ((v11 & 1) == 0)
  {
    [v13 startElement:"script"];
    [v13 setAttribute:"type" value:"text/javascript"];
    [v13 setAttribute:"src" cfStringValue:{objc_msgSend(a4, "uriForBundleResource:ofType:", @"GQPages", @"js"}];
    [v13 endElement];
  }

  v14 = [a4 filename];
  if (v14)
  {
    v15 = v14;
    [v13 startElement:"title"];
    [v13 addContent:v15];
    [v13 endElement];
  }

  [v13 endElement];
  [v13 startElement:"body"];
  v16 = objc_alloc_init(GQHStyle);
  if ([a4 isGeneratingThumbnail])
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
      [v13 startElement:"div"];
      v19 = objc_alloc_init(GQHStyle);
      [(GQHStyle *)v19 addAttribute:off_9CE00 value:@"white"];
      v20 = off_9CF68;
      [a3 pageSize];
      [(GQHStyle *)v19 addAttribute:v20 pxValue:v21];
      v22 = off_9CED8;
      [a3 pageSize];
      [(GQHStyle *)v19 addAttribute:v22 pxValue:v23];
      [(GQHStyle *)v19 addAttribute:off_9CF18 value:off_9D040];
      [(GQHStyle *)v19 addAttribute:off_9CEC0 pxValue:0];
      [(GQHStyle *)v19 addAttribute:off_9CEC8 pxValue:0];
      [(GQHStyle *)v19 addAttribute:off_9CED0 pxValue:0];
      [(GQHStyle *)v19 addAttribute:off_9CEB8 pxValue:5];
      [(GQHStyle *)v19 addAttribute:@"-webkit-box-shadow" value:@"0px 5px 5px rgba(0, 0, 0, 0.5)"];
      [(GQHStyle *)v19 setStyleOnCurrentNode:v10];

      [v13 startElement:"div"];
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
    [a4 setCurrentWrapPointGenerator:v10];
  }

  if ([(GQHPagesState *)v10 mode]!= 2)
  {
    [GQHTextBox createExternalWrapSandbagStyles:v13];
  }

  if ([v13 isProgressive])
  {
    v17 = [v13 createProgressiveeCSSwithStyleTags:0];
    [objc_msgSend(a4 "outputBundle")];
    CFRelease(v17);
  }

  return 1;
}

+ (void)mapCurrentHeaderAndFooterFromPublication:(id)a3 state:(id)a4
{
  v7 = [a4 generatorState];
  v12 = 0;
  v13 = 0;
  if ([a3 hasHeaders])
  {
    v8 = &v13;
  }

  else
  {
    v8 = 0;
  }

  if ([a3 hasFooters])
  {
    v9 = &v12;
  }

  else
  {
    v9 = 0;
  }

  [v7 resolveHeaderName:v8 footerName:v9];
  [v7 setIsMappingHeadersFooters:1];
  if (v13)
  {
    v10 = [v7 headerForName:?];
    if (v10)
    {
      [a1 mapHeaderOrFooter:v10 isHeader:1 toPublication:a3 state:a4];
    }
  }

  if (v12)
  {
    v11 = [v7 footerForName:?];
    if (v11)
    {
      [a1 mapHeaderOrFooter:v11 isHeader:0 toPublication:a3 state:a4];
    }
  }

  [v7 setIsMappingHeadersFooters:0];
}

+ (void)mapCurrentHiddenPositioningFooterFromPublication:(id)a3 state:(id)a4
{
  v5 = [a4 generatorState];
  v21 = 0;
  [v5 resolveHeaderName:0 footerName:&v21];
  [v5 setIsMappingHeadersFooters:1];
  if (v21)
  {
    v6 = [v5 footerForName:?];
    if (v6)
    {
      v7 = v6;
      v8 = [a3 pageMargins];
      [a3 pageSize];
      v10 = v9;
      v11 = [v5 htmlDoc];
      [v11 startElement:"div"];
      v12 = objc_alloc_init(GQHStyle);
      v13 = off_9CEA0;
      [v8 left];
      [(GQHStyle *)v12 addAttribute:v13 pxValue:v14];
      v15 = off_9CF68;
      [v8 left];
      v17 = v10 - v16;
      [v8 right];
      [(GQHStyle *)v12 addAttribute:v15 pxValue:(v17 - v18)];
      [(GQHStyle *)v12 addAttribute:off_9CF60 value:off_9CFE8];
      v19 = off_9CEB8;
      [v8 footer];
      [(GQHStyle *)v12 addAttribute:v19 pxValue:v20];
      [(GQHStyle *)v12 addClass:@"dzo"];
      [(GQHStyle *)v12 setStyleOnCurrentNode:v5];

      [GQHTextBox handleLayoutStorage:v7 state:v5];
      [v11 endElement];
    }
  }

  [v5 setIsMappingHeadersFooters:0];
}

+ (void)handleZOrder:(unsigned int)a3 cssClassName:(__CFString *)a4 state:(id)a5
{
  v7 = CFStringCreateWithFormat(0, 0, @".%@ {\nz-index: %u;\n}\n\n", a4, a3);
  [a5 addStyle:v7 className:a4 srcStyle:0];

  CFRelease(v7);
}

+ (void)handlePagesOrders:(id)a3
{
  v5 = [a3 pagesOrderToCssZOrderClassMapDictionary];
  Count = CFDictionaryGetCount(v5);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 8 * Count;
    v9 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
    v10 = malloc_type_malloc(v8, 0x6004044C4A2DFuLL);
    CFDictionaryGetKeysAndValues(v5, v9, v10);
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

        [a1 handleZOrder:(v15 + valuePtr) cssClassName:v13 state:a3];
      }
    }

    free(v9);
    free(v10);
  }

  [a1 handleZOrder:100 cssClassName:@"dzo" state:a3];
}

+ (void)mapHeaderOrFooter:(id)a3 isHeader:(BOOL)a4 toPublication:(id)a5 state:(id)a6
{
  v7 = a4;
  v9 = [a6 generatorState];
  v10 = [v9 htmlDoc];
  v11 = [a5 pageMargins];
  [a5 pageSize];
  v13 = v12;
  [v10 startElement:"div"];
  [v10 setAttribute:"id" cfStringValue:{objc_msgSend(a3, "name")}];
  v14 = objc_alloc_init(GQHStyle);
  v15 = off_9CEA0;
  [v11 left];
  [(GQHStyle *)v14 addAttribute:v15 pxValue:v16];
  v17 = off_9CF68;
  [v11 left];
  v19 = v13 - v18;
  [v11 right];
  [(GQHStyle *)v14 addAttribute:v17 pxValue:(v19 - v20)];
  [(GQHStyle *)v14 addAttribute:off_9CF18 value:off_9CFA0];
  if ([v9 mode] == 1)
  {
    [v11 header];
    v22 = v21;
    if (!v7)
    {
LABEL_3:
      v23 = off_9CE50;
      [v11 footer];
      [(GQHStyle *)v14 addAttribute:v23 pxValue:v24];
      goto LABEL_7;
    }
  }

  else
  {
    v22 = 0;
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  [(GQHStyle *)v14 addAttribute:off_9CF50 pxValue:v22];
  if (![v9 mode])
  {
    v25 = off_9CF10;
    [v11 header];
    [(GQHStyle *)v14 addAttribute:v25 pxValue:v26];
    [(GQHStyle *)v14 addAttribute:off_9CEE8 value:off_9CFE8];
  }

LABEL_7:
  [(GQHStyle *)v14 addClass:@"dzo"];
  [(GQHStyle *)v14 setStyleOnCurrentNode:v9];

  [GQHTextBox handleLayoutStorage:a3 state:v9];

  [v10 endElement];
}

@end