@interface GQHChart
+ (__CFString)createChartImageUrlString:(id)string state:(id)state;
+ (int)handleFloatingChart:(id)chart state:(id)state;
+ (int)handleInlineChart:(id)chart state:(id)state imageUrl:(__CFString *)url;
@end

@implementation GQHChart

+ (int)handleFloatingChart:(id)chart state:(id)state
{
  v7 = [self createChartImageUrlString:? state:?];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  htmlDoc = [state htmlDoc];
  [htmlDoc startElement:"div"];
  v10 = objc_alloc_init(GQHStyle);
  [(GQHStyle *)v10 addAttribute:off_9CF18 value:off_9CFA0];
  [objc_msgSend(self geometry:{chart), "position"}];
  [GQHBounds mapPosition:0 srcGraphicStyle:v10 style:state state:?];
  [(GQHStyle *)v10 setStyleOnCurrentNode:state];

  v11 = [self handleInlineChart:chart state:state imageUrl:v8];
  [htmlDoc endElement];
  CFRelease(v8);
  return v11;
}

+ (__CFString)createChartImageUrlString:(id)string state:(id)state
{
  v7 = [self renderChart:?];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [self pdfId:string];
  if (v9 && *v9)
  {
    v10 = strdup(v9);
    v11 = strlen(v10);
    if (v11)
    {
      v12 = v10;
      do
      {
        if (*v12 == 58)
        {
          *v12 = 45;
        }

        ++v12;
        --v11;
      }

      while (v11);
    }

    v13 = sub_4658C(v8, [objc_msgSend(state "processorState")], v10);
    free(v10);
  }

  else
  {
    v13 = 0;
  }

  CFRelease(v8);
  return v13;
}

+ (int)handleInlineChart:(id)chart state:(id)state imageUrl:(__CFString *)url
{
  urlCopy = url;
  if (url || (urlCopy = [self createChartImageUrlString:chart state:state]) != 0)
  {
    htmlDoc = [state htmlDoc];
    [state enterGraphicObject];
    [htmlDoc startElement:"img"];
    v11 = objc_alloc_init(GQHStyle);
    [objc_msgSend(self geometry:{chart), "size"}];
    [GQHBounds mapSize:"mapSize:angle:srcGraphicStyle:style:state:" angle:0 srcGraphicStyle:v11 style:state state:?];
    [(GQHStyle *)v11 setStyleOnCurrentNode:state];

    [htmlDoc setAttribute:"src" cfStringValue:urlCopy];
    [htmlDoc endElement];
    [state leaveGraphicObject];
    if (!url)
    {
      CFRelease(urlCopy);
    }
  }

  return 1;
}

@end