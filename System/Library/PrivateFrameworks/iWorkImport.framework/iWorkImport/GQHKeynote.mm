@interface GQHKeynote
+ (Class)enterSlideDrawables:(id)drawables state:(id)state;
+ (int)beginSlide:(id)slide state:(id)state;
+ (int)endPresentation:(id)presentation state:(id)state;
+ (int)endSlide:(id)slide state:(id)state;
+ (int)handleSlideSize:(id)size state:(id)state;
@end

@implementation GQHKeynote

+ (int)endPresentation:(id)presentation state:(id)state
{
  generatorState = [state generatorState];
  htmlDoc = [generatorState htmlDoc];
  [htmlDoc startElement:"div"];
  [htmlDoc setAttribute:"id" cfStringValue:@"slideId_last"];
  [htmlDoc endElement];
  [htmlDoc endElement];
  if ([generatorState finishMainHtml])
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

+ (int)handleSlideSize:(id)size state:(id)state
{
  [size slideSize];
  v6 = v5;
  v8 = v7;
  v9 = v7 + 18.0;
  [objc_msgSend(state "outputBundle")];
  [objc_msgSend(state "outputBundle")];
  [state outputBundle];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [objc_msgSend(state "outputBundle")];
  }

  v10 = [(GQHState *)[GQHKeynoteState alloc] initWithState:state documentSize:v6 + 18.0, v9];
  [state setGeneratorState:v10];

  htmlDoc = [(GQHState *)v10 htmlDoc];
  if ([htmlDoc isProgressive])
  {
    [objc_msgSend(state "outputBundle")];
    [(GQHKeynoteState *)v10 setProgressiveIndex:2];
  }

  [-[GQHState shapeContext](v10 "shapeContext")];
  filename = [state filename];
  if (filename)
  {
    v13 = filename;
    [htmlDoc startElement:"title"];
    [htmlDoc addContent:v13];
    [htmlDoc endElement];
  }

  [htmlDoc endElement];
  [htmlDoc startElement:"body"];
  v14 = objc_alloc_init(GQHStyle);
  if ([state isGeneratingThumbnail])
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
  [htmlDoc addStyleClass:v20];
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
  [htmlDoc addStyleClass:v24];
  CFRelease(v24);

  [GQHTextBox createExternalWrapSandbagStyles:htmlDoc];
  return 1;
}

+ (int)beginSlide:(id)slide state:(id)state
{
  generatorState = [state generatorState];
  [generatorState incrementCurrentSlide];
  htmlDoc = [generatorState htmlDoc];
  [generatorState enterGraphicObject];
  [htmlDoc startElement:"div"];
  [htmlDoc setAttribute:"id" value:{objc_msgSend(slide, "ID")}];
  [htmlDoc endElement];
  [htmlDoc startElement:"div"];
  v7 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"slideId_%d", [generatorState currentSlide]);
  [htmlDoc setAttribute:"id" cfStringValue:v7];
  CFRelease(v7);
  return 1;
}

+ (int)endSlide:(id)slide state:(id)state
{
  generatorState = [state generatorState];
  htmlDoc = [generatorState htmlDoc];
  [generatorState leaveGraphicObject];
  [htmlDoc endElement];
  if (([objc_msgSend(slide "noteFrame")] & 1) == 0)
  {
    [generatorState enterGraphicObject];
    [htmlDoc startElement:"div"];
    v8 = objc_alloc_init(GQHStyle);
    [(GQHStyle *)v8 addClass:off_9D100];
    noteFrame = [slide noteFrame];
    layoutStyle = [noteFrame layoutStyle];
    storage = [noteFrame storage];
    [GQHParagraphStyle mapStyle:layoutStyle style:v8 state:generatorState];
    [(GQHStyle *)v8 setStyleOnCurrentNode:generatorState];

    [GQHTextBox handleLayoutStorage:storage state:generatorState];
    [htmlDoc endElement];
    [generatorState leaveGraphicObject];
  }

  if ([htmlDoc isProgressive] && objc_msgSend(generatorState, "shouldStreamContent"))
  {
    createProgressiveHtml = [htmlDoc createProgressiveHtml];
    if ([generatorState currentSlide] == 2)
    {
      v13 = [htmlDoc createProgressiveeCSSwithStyleTags:0];
      [objc_msgSend(state "outputBundle")];
    }

    else
    {
      v13 = [htmlDoc createProgressiveeCSSwithStyleTags:1];
      [createProgressiveHtml appendData:v13];
    }

    CFRelease(v13);
    [objc_msgSend(state "outputBundle")];
    CFRelease(createProgressiveHtml);
  }

  return 1;
}

+ (Class)enterSlideDrawables:(id)drawables state:(id)state
{
  generatorState = [state generatorState];
  [state setStylesheet:{objc_msgSend(drawables, "stylesheet")}];
  slideStyle = [drawables slideStyle];
  v12 = 0;
  v8 = objc_alloc_init(GQHStyle);
  [(GQHStyle *)v8 addClass:off_9D0F8];
  if ([slideStyle hasValueForObjectProperty:67 value:&v12])
  {
    [GQHGraphicStyle mapFill:v12 style:v8 state:generatorState];
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
        [generatorState setColoredBackground:1];
      }
    }

    else
    {
      [(GQHStyle *)v8 addAttribute:off_9CE08 value:@"white"];
    }
  }

  [(GQHStyle *)v8 setStyleOnCurrentNode:generatorState];

  return objc_opt_class();
}

@end