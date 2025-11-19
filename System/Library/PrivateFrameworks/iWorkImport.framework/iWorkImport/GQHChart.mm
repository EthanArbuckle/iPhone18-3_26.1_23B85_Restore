@interface GQHChart
+ (__CFString)createChartImageUrlString:(id)a3 state:(id)a4;
+ (int)handleFloatingChart:(id)a3 state:(id)a4;
+ (int)handleInlineChart:(id)a3 state:(id)a4 imageUrl:(__CFString *)a5;
@end

@implementation GQHChart

+ (int)handleFloatingChart:(id)a3 state:(id)a4
{
  v7 = [a1 createChartImageUrlString:? state:?];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = [a4 htmlDoc];
  [v9 startElement:"div"];
  v10 = objc_alloc_init(GQHStyle);
  [(GQHStyle *)v10 addAttribute:off_9CF18 value:off_9CFA0];
  [objc_msgSend(a1 geometry:{a3), "position"}];
  [GQHBounds mapPosition:0 srcGraphicStyle:v10 style:a4 state:?];
  [(GQHStyle *)v10 setStyleOnCurrentNode:a4];

  v11 = [a1 handleInlineChart:a3 state:a4 imageUrl:v8];
  [v9 endElement];
  CFRelease(v8);
  return v11;
}

+ (__CFString)createChartImageUrlString:(id)a3 state:(id)a4
{
  v7 = [a1 renderChart:?];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = [a1 pdfId:a3];
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

    v13 = sub_4658C(v8, [objc_msgSend(a4 "processorState")], v10);
    free(v10);
  }

  else
  {
    v13 = 0;
  }

  CFRelease(v8);
  return v13;
}

+ (int)handleInlineChart:(id)a3 state:(id)a4 imageUrl:(__CFString *)a5
{
  v9 = a5;
  if (a5 || (v9 = [a1 createChartImageUrlString:a3 state:a4]) != 0)
  {
    v10 = [a4 htmlDoc];
    [a4 enterGraphicObject];
    [v10 startElement:"img"];
    v11 = objc_alloc_init(GQHStyle);
    [objc_msgSend(a1 geometry:{a3), "size"}];
    [GQHBounds mapSize:"mapSize:angle:srcGraphicStyle:style:state:" angle:0 srcGraphicStyle:v11 style:a4 state:?];
    [(GQHStyle *)v11 setStyleOnCurrentNode:a4];

    [v10 setAttribute:"src" cfStringValue:v9];
    [v10 endElement];
    [a4 leaveGraphicObject];
    if (!a5)
    {
      CFRelease(v9);
    }
  }

  return 1;
}

@end