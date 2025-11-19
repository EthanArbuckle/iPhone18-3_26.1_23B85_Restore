@interface GQHKeynote
+ (Class)enterSlideDrawables:(id)a3 state:(id)a4;
+ (int)beginSlide:(id)a3 state:(id)a4;
+ (int)endPresentation:(id)a3 state:(id)a4;
+ (int)endSlide:(id)a3 state:(id)a4;
+ (int)handleSlideSize:(id)a3 state:(id)a4;
@end

@implementation GQHKeynote

+ (int)endPresentation:(id)a3 state:(id)a4
{
  v4 = [a4 generatorState];
  v5 = [v4 htmlDoc];
  [v5 startElement:"div"];
  [v5 setAttribute:"id" cfStringValue:@"slideId_last"];
  [v5 endElement];
  [v5 endElement];
  if ([v4 finishMainHtml])
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

+ (int)handleSlideSize:(id)a3 state:(id)a4
{
  [a3 slideSize];
  v6 = v5;
  v8 = v7;
  v9 = v7 + 18.0;
  [objc_msgSend(a4 "outputBundle")];
  [objc_msgSend(a4 "outputBundle")];
  [a4 outputBundle];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(a4 "outputBundle")];
  }

  v10 = [(GQHState *)[GQHKeynoteState alloc] initWithState:a4 documentSize:v6 + 18.0, v9];
  [a4 setGeneratorState:v10];

  v11 = [(GQHState *)v10 htmlDoc];
  if ([v11 isProgressive])
  {
    [objc_msgSend(a4 "outputBundle")];
    [(GQHKeynoteState *)v10 setProgressiveIndex:2];
  }

  [-[GQHState shapeContext](v10 "shapeContext")];
  v12 = [a4 filename];
  if (v12)
  {
    v13 = v12;
    [v11 startElement:"title"];
    [v11 addContent:v13];
    [v11 endElement];
  }

  [v11 endElement];
  [v11 startElement:"body"];
  v14 = objc_alloc_init(GQHStyle);
  if ([a4 isGeneratingThumbnail])
  {
    [(GQHStyle *)v14 addAttribute:off_9CE00 value:@"white"];
    [(GQHStyle *)v14 addAttribute:off_9CEB0 pxValue:0];
    [(GQHStyle *)v14 addAttribute:off_9CEF0 pxValue:0];
  }

  else
  {
    [(GQHStyle *)v14 addAttribute:off_9CE00 value:@"#ACB2BB"];
  }

  [(GQHStyle *)v14 setStyleOnCurrentNode:v10];

  v15 = objc_alloc_init(GQHStyle);
  v16 = off_9CE98;
  [(GQHState *)v10 scale];
  [(GQHStyle *)v15 addAttribute:v16 pxValue:(v8 * v17)];
  v18 = off_9CF68;
  [(GQHState *)v10 scale];
  [(GQHStyle *)v15 addAttribute:v18 pxValue:(v6 * v19)];
  [(GQHStyle *)v15 addAttribute:off_9CF18 value:off_9D040];
  [(GQHStyle *)v15 addAttribute:off_9CEC0 pxValue:0];
  [(GQHStyle *)v15 addAttribute:off_9CEC8 pxValue:0];
  [(GQHStyle *)v15 addAttribute:off_9CED0 pxValue:0];
  [(GQHStyle *)v15 addAttribute:off_9CEB8 pxValue:5];
  [(GQHStyle *)v15 addAttribute:off_9CEE8 value:off_9CFE8];
  [(GQHStyle *)v15 addAttribute:@"-webkit-box-shadow" value:@"5px 5px 5px rgba(0, 0, 0, 0.5)"];
  [(GQHStyle *)v15 addAttribute:off_9CE00 value:@"white"];
  v20 = [(GQHStyle *)v15 createNamedStyle:off_9D0F8];
  [v11 addStyleClass:v20];
  CFRelease(v20);

  v21 = objc_alloc_init(GQHStyle);
  [(GQHStyle *)v21 addAttribute:off_9CE98 pxValue:100];
  v22 = off_9CF68;
  [(GQHState *)v10 scale];
  [(GQHStyle *)v21 addAttribute:v22 pxValue:(v6 * v23)];
  [(GQHStyle *)v21 addAttribute:off_9CF18 value:off_9D040];
  [(GQHStyle *)v21 addAttribute:off_9CEC0 pxValue:0];
  [(GQHStyle *)v21 addAttribute:off_9CEC8 pxValue:0];
  [(GQHStyle *)v21 addAttribute:off_9CED0 pxValue:2];
  [(GQHStyle *)v21 addAttribute:off_9CEB8 pxValue:12];
  [(GQHStyle *)v21 addAttribute:off_9CEF0 pxValue:10];
  [(GQHStyle *)v21 addAttribute:off_9CEE8 value:off_9CFE8];
  [(GQHStyle *)v21 addAttribute:off_9CE60 value:@"table"];
  [(GQHStyle *)v21 addAttribute:@"-webkit-box-shadow" value:@"5px 5px 5px rgba(0, 0, 0, 0.5)"];
  [(GQHStyle *)v21 addAttribute:off_9CE00 value:@"white"];
  v24 = [(GQHStyle *)v21 createNamedStyle:off_9D100];
  [v11 addStyleClass:v24];
  CFRelease(v24);

  [GQHTextBox createExternalWrapSandbagStyles:v11];
  return 1;
}

+ (int)beginSlide:(id)a3 state:(id)a4
{
  v5 = [a4 generatorState];
  [v5 incrementCurrentSlide];
  v6 = [v5 htmlDoc];
  [v5 enterGraphicObject];
  [v6 startElement:"div"];
  [v6 setAttribute:"id" value:{objc_msgSend(a3, "ID")}];
  [v6 endElement];
  [v6 startElement:"div"];
  v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"slideId_%d", [v5 currentSlide]);
  [v6 setAttribute:"id" cfStringValue:v7];
  CFRelease(v7);
  return 1;
}

+ (int)endSlide:(id)a3 state:(id)a4
{
  v6 = [a4 generatorState];
  v7 = [v6 htmlDoc];
  [v6 leaveGraphicObject];
  [v7 endElement];
  if (([objc_msgSend(a3 "noteFrame")] & 1) == 0)
  {
    [v6 enterGraphicObject];
    [v7 startElement:"div"];
    v8 = objc_alloc_init(GQHStyle);
    [(GQHStyle *)v8 addClass:off_9D100];
    v9 = [a3 noteFrame];
    v10 = [v9 layoutStyle];
    v11 = [v9 storage];
    [GQHParagraphStyle mapStyle:v10 style:v8 state:v6];
    [(GQHStyle *)v8 setStyleOnCurrentNode:v6];

    [GQHTextBox handleLayoutStorage:v11 state:v6];
    [v7 endElement];
    [v6 leaveGraphicObject];
  }

  if ([v7 isProgressive] && objc_msgSend(v6, "shouldStreamContent"))
  {
    v12 = [v7 createProgressiveHtml];
    if ([v6 currentSlide] == 2)
    {
      v13 = [v7 createProgressiveeCSSwithStyleTags:0];
      [objc_msgSend(a4 "outputBundle")];
    }

    else
    {
      v13 = [v7 createProgressiveeCSSwithStyleTags:1];
      [v12 appendData:v13];
    }

    CFRelease(v13);
    [objc_msgSend(a4 "outputBundle")];
    CFRelease(v12);
  }

  return 1;
}

+ (Class)enterSlideDrawables:(id)a3 state:(id)a4
{
  v6 = [a4 generatorState];
  [a4 setStylesheet:{objc_msgSend(a3, "stylesheet")}];
  v7 = [a3 slideStyle];
  v12 = 0;
  v8 = objc_alloc_init(GQHStyle);
  [(GQHStyle *)v8 addClass:off_9D0F8];
  if ([v7 hasValueForObjectProperty:67 value:&v12])
  {
    [GQHGraphicStyle mapFill:v12 style:v8 state:v6];
    theString1 = 0;
    if ([(GQHStyle *)v8 getAttribute:off_9CE10 value:&theString1])
    {
      v9 = theString1 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9 || CFStringCompare(theString1, @"none", 0) == kCFCompareEqualTo)
    {
      if (!v12)
      {
        [(GQHStyle *)v8 addAttribute:off_9CE08 value:@"white"];
        [v6 setColoredBackground:1];
      }
    }

    else
    {
      [(GQHStyle *)v8 addAttribute:off_9CE08 value:@"white"];
    }
  }

  [(GQHStyle *)v8 setStyleOnCurrentNode:v6];

  return objc_opt_class();
}

@end