void *_OILabelRetain(uint64_t a1, void *a2)
{
  result = a2;
  ++*a2;
  return result;
}

uint64_t OILabelCreate(const void *a1, double a2, double a3, double a4, double a5)
{
  if (!a1)
  {
    return 0;
  }

  Default = CFAllocatorGetDefault();
  v11 = MEMORY[0x266701C00](Default, 96, 0x1060040CE6DF567, 0);
  *v11 = 1;
  *(v11 + 8) = CFRetain(a1);
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  *(v11 + 48) = 0x4024000000000000;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0x3FF0000000000000;
  *(v11 + 80) = OIColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
  *(v11 + 88) = 0;
  return v11;
}

void OILabelRelease(void *a1)
{
  if (a1)
  {
    if ((*a1)-- == 1)
    {
      v3 = a1[1];
      if (v3)
      {
        CFRelease(v3);
      }

      v4 = a1[7];
      if (v4)
      {
        CGColorRelease(v4);
      }

      v5 = a1[8];
      if (v5)
      {
        CGColorRelease(v5);
      }

      v6 = a1[10];
      if (v6)
      {
        CGColorRelease(v6);
      }

      Default = CFAllocatorGetDefault();

      CFAllocatorDeallocate(Default, a1);
    }
  }
}

uint64_t OILabelCreateFromDictionary(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"kOIChartLabelKey");
  v17 = 0u;
  v18 = 0u;
  v3 = CFDictionaryGetValue(a1, @"kOIChartTitleAreaKey");
  if (v3)
  {
    OIRectMakeWithDictionaryRepresentation(v3, &v17);
    v5 = *(&v17 + 1);
    v4 = *&v17;
    v7 = *(&v18 + 1);
    v6 = *&v18;
  }

  else
  {
    v7 = 0.0;
    v6 = 0.0;
    v5 = 0.0;
    v4 = 0.0;
  }

  v8 = OILabelCreate(Value, v4, v5, v6, v7);
  if (v8)
  {
    valuePtr = 0;
    v9 = CFDictionaryGetValue(a1, @"kOIChartHasShadowKey");
    if (v9)
    {
      CFNumberGetValue(v9, kCFNumberNSIntegerType, &valuePtr);
      *(v8 + 88) = valuePtr != 0;
    }

    v10 = CFDictionaryGetValue(a1, @"kOIChartStrokeColorKey");
    if (v10)
    {
      OILabelSetStrokeColor(v8, v10);
    }

    v15 = 0;
    v11 = CFDictionaryGetValue(a1, @"kOIChartStrokeWidthKey");
    if (v11)
    {
      CFNumberGetValue(v11, kCFNumberCGFloatType, &v15);
      *(v8 + 72) = v15;
    }

    v12 = CFDictionaryGetValue(a1, @"kOIChartFillColorKey");
    if (v12)
    {
      OILabelSetFillColor(v8, v12);
    }

    v13 = CFDictionaryGetValue(a1, @"kOIChartTextColorKey");
    if (v13)
    {
      OILabelSetTextColor(v8, v13);
    }
  }

  return v8;
}

CGColor *OILabelSetStrokeColor(uint64_t a1, CGColorRef color)
{
  result = *(a1 + 64);
  if (result != color)
  {
    if (result)
    {
      CGColorRelease(result);
    }

    result = CGColorRetain(color);
    *(a1 + 64) = result;
  }

  return result;
}

CGColor *OILabelSetFillColor(uint64_t a1, CGColorRef color)
{
  result = *(a1 + 56);
  if (result != color)
  {
    if (result)
    {
      CGColorRelease(result);
    }

    result = CGColorRetain(color);
    *(a1 + 56) = result;
  }

  return result;
}

CGColor *OILabelSetTextColor(uint64_t a1, CGColorRef color)
{
  result = *(a1 + 80);
  if (result != color)
  {
    if (result)
    {
      CGColorRelease(result);
    }

    result = CGColorRetain(color);
    *(a1 + 80) = result;
  }

  return result;
}

CFTypeRef OILabelSetString(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 8);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = CFRetain(cf);
    *(a1 + 8) = result;
  }

  return result;
}

double *OILabelSetFrame(double *result, double a2, double a3, double a4, double a5)
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  return result;
}

void OIChartSetupRendererMapping(uint64_t a1)
{
  String = OILabelGetString(a1);
  v3 = MEMORY[0x277CBF138];
  Mutable = CFDictionaryCreateMutable(String, 0, MEMORY[0x277CBF138], &DummyValueCallbacks);
  v5 = CFDictionaryCreateMutable(String, 0, v3, &DummyValueCallbacks);
  v6 = CFDictionaryCreateMutable(String, 0, v3, &DummyValueCallbacks);
  v7 = CFDictionaryCreateMutable(String, 0, v3, &DummyValueCallbacks);
  CFDictionarySetValue(Mutable, @"kOIChartColumnType", OIRenderOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChartColumnType", OIRenderOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChartColumnType", OIRenderColumnsInChart);
  CFDictionarySetValue(v7, @"kOIChartColumnType", OIRenderLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChartStackedColumnType", OIRenderOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChartStackedColumnType", OIRenderOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChartStackedColumnType", OIRenderStackedColumnsInChart);
  CFDictionarySetValue(v7, @"kOIChartStackedColumnType", OIRenderLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChartPercentStackedColumnType", OIRenderOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChartPercentStackedColumnType", OIRenderOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChartPercentStackedColumnType", OIRenderPercentStackedColumnsInChart);
  CFDictionarySetValue(v7, @"kOIChartPercentStackedColumnType", OIRenderLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChartBarType", OIRenderOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChartBarType", OIRenderOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChartBarType", OIRenderBarsInChart);
  CFDictionarySetValue(v7, @"kOIChartBarType", OIRenderLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChartStackedBarType", OIRenderOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChartStackedBarType", OIRenderOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChartStackedBarType", OIRenderStackedBarsInChart);
  CFDictionarySetValue(v7, @"kOIChartStackedBarType", OIRenderLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChartPercentStackedBarType", OIRenderOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChartPercentStackedBarType", OIRenderOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChartPercentStackedBarType", OIRenderPercentStackedBarsInChart);
  CFDictionarySetValue(v7, @"kOIChartStackedBarType", OIRenderLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChartLineType", OIRenderOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChartLineType", OIRenderOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChartLineType", OIRenderLinesInChart);
  CFDictionarySetValue(v7, @"kOIChartLineType", OIRenderLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChartStackedLineType", OIRenderOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChartStackedLineType", OIRenderOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChartStackedLineType", OIRenderStackedLinesInChart);
  CFDictionarySetValue(v7, @"kOIChartStackedLineType", OIRenderLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChartPercentStackedLineType", OIRenderOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChartPercentStackedLineType", OIRenderOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChartPercentStackedLineType", OIRenderPercentStackedLinesInChart);
  CFDictionarySetValue(v7, @"kOIChartPercentStackedLineType", OIRenderLegendInChart);
  CFDictionarySetValue(v6, @"kOIChartPieType", OIRenderPieInChart);
  CFDictionarySetValue(v7, @"kOIChartPieType", OIRenderLegendInChart);
  CFDictionarySetValue(v6, @"kOIChart3DPieType", OIRender3DPieInChart);
  CFDictionarySetValue(v7, @"kOIChart3DPieType", OIRenderLegendInChart);
  CFDictionarySetValue(v6, @"kOIChartDoughnutType", OIRenderDoughnutInChart);
  CFDictionarySetValue(v7, @"kOIChartDoughnutType", OIRenderLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChartXYType", OIRenderOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChartXYType", OIRenderOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChartXYType", OIRenderXYInChart);
  CFDictionarySetValue(v7, @"kOIChartXYType", OIRenderXYLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChartRadarType", OIRenderRadarAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChartRadarType", OIRenderRadarAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChartRadarType", OIRenderRadarInChart);
  CFDictionarySetValue(v7, @"kOIChartRadarType", OIRenderLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChartBubbleType", OIRenderOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChartBubbleType", OIRenderOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChartBubbleType", OIRenderBubblesInChart);
  CFDictionarySetValue(v7, @"kOIChartBubbleType", OIRenderBubbleLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChartStockType", OIRenderOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChartStockType", OIRenderOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChartStockType", OIRenderStocksInChart);
  CFDictionarySetValue(Mutable, @"kOIChart3DColumnType", OIRender3DOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChart3DColumnType", OIRender3DOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChart3DColumnType", OIRender3DColumnsInChart);
  CFDictionarySetValue(v7, @"kOIChart3DColumnType", OIRenderLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChart3DLayeredColumnType", OIRender3DLayeredOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChart3DLayeredColumnType", OIRender3DLayeredOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChart3DLayeredColumnType", OIRender3DLayeredColumnsInChart);
  CFDictionarySetValue(v7, @"kOIChart3DLayeredColumnType", OIRenderLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChart3DStackedColumnType", OIRender3DOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChart3DStackedColumnType", OIRender3DOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChart3DStackedColumnType", OIRender3DStackedColumnsInChart);
  CFDictionarySetValue(v7, @"kOIChart3DStackedColumnType", OIRenderLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChart3DPercentStackedColumnType", OIRender3DOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChart3DPercentStackedColumnType", OIRender3DOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChart3DPercentStackedColumnType", OIRender3DPercentStackedColumnsInChart);
  CFDictionarySetValue(v7, @"kOIChart3DPercentStackedColumnType", OIRenderLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChart3DBarType", OIRender3DFlippedOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChart3DBarType", OIRender3DFlippedOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChart3DBarType", OIRender3DBarsInChart);
  CFDictionarySetValue(v7, @"kOIChart3DBarType", OIRenderLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChart3DStackedBarType", OIRender3DFlippedOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChart3DStackedBarType", OIRender3DFlippedOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChart3DStackedBarType", OIRender3DStackedBarsInChart);
  CFDictionarySetValue(v7, @"kOIChart3DStackedBarType", OIRenderLegendInChart);
  CFDictionarySetValue(Mutable, @"kOIChart3DPercentStackedBarType", OIRender3DFlippedOrthoAxisBackgroundInChart);
  CFDictionarySetValue(v5, @"kOIChart3DPercentStackedBarType", OIRender3DFlippedOrthoAxisForegroundInChart);
  CFDictionarySetValue(v6, @"kOIChart3DPercentStackedBarType", OIRender3DPercentStackedBarsInChart);
  CFDictionarySetValue(v7, @"kOIChart3DPercentStackedBarType", OIRenderLegendInChart);
  OIChartSetBackgroundAxisRendererMapping(a1, Mutable);
  OIChartSetForegroundAxisRendererMapping(a1, v5);
  OIChartSetChartRendererMapping(a1, v6);
  OIChartSetLegendRendererMapping(a1, v7);
  CFRelease(Mutable);
  CFRelease(v5);
  CFRelease(v6);

  CFRelease(v7);
}

void _OIRenderLinesInChart(uint64_t a1, CFArrayRef theArray)
{
  if (theArray)
  {
    v2 = theArray;
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      Type = OIAxisGetType(a1);
      PlotArea = OIChartGetPlotArea(a1);
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v12 = OIAxisAreLabelsCentered(a1);
      CGContextSaveGState(Type);
      v65 = v7;
      v68.origin.x = PlotArea;
      v68.origin.y = v7;
      v68.size.width = v9;
      v68.size.height = v11;
      CGContextClipToRect(Type, v68);
      if (v12)
      {
        v67.width = 2.0;
        v67.height = -2.0;
        CGContextSetShadow(Type, v67, 3.0);
      }

      v61 = OILabelCollectionCreate();
      v63 = OIErrorBarRendererCreate(1);
      if (Count >= 1)
      {
        v13 = 0;
        c = Type;
        v56 = v2;
        while (1)
        {
          v59 = v13;
          ValueAtIndex = CFArrayGetValueAtIndex(v2, v13);
          TextColor = OILabelGetTextColor(ValueAtIndex);
          StrokeColor = OILabelGetStrokeColor(ValueAtIndex);
          Values = OISeriesGetValues(ValueAtIndex);
          Labels = OIAxisGetLabels(ValueAtIndex);
          String = OILabelGetString(ValueAtIndex);
          v19 = OIAxisGetType(ValueAtIndex);
          v20 = OIAxisAreLabelsCentered(String);
          Scale = OIAxisGetScale(String);
          v64 = OIAxisGetScale(v19);
          v22 = Scale * 0.5;
          v23 = floor(Scale * 0.5);
          v24 = v20 ? v23 : 0.0;
          Mutable = CGPathCreateMutable();
          if (Labels)
          {
            v26 = CGPathCreateMutable();
            MarkerWidth = OISeriesGetMarkerWidth(ValueAtIndex);
          }

          else
          {
            v26 = 0;
            MarkerWidth = 0.0;
          }

          v28 = CFArrayGetCount(Values);
          if (v28 >= 1)
          {
            break;
          }

          v47 = -1;
LABEL_29:
          OISeriesSetupStrokeAndFillForContext(ValueAtIndex, Type);
          if (TextColor)
          {
            MutableCopy = CGPathCreateMutableCopy(Mutable);
            BaseValueAtIndex = OISeriesGetBaseValueAtIndex(ValueAtIndex, v47);
            v50 = PlotArea + OIAxisConvertValueToLocal(String, BaseValueAtIndex);
            v51 = OIAxisConvertValueToLocal(v19, 0.0);
            CGPathAddLineToPoint(MutableCopy, 0, floor(v24 + v50) + 0.5, floor(v65 + v51) + 0.5);
            v52 = PlotArea + OIAxisConvertValueToLocal(String, 0.0);
            v53 = OIAxisConvertValueToLocal(v19, 0.0);
            CGPathAddLineToPoint(MutableCopy, 0, floor(v24 + v52) + 0.5, floor(v65 + v53) + 0.5);
            CGContextAddPath(Type, MutableCopy);
            CGContextFillPath(Type);
            CGPathRelease(MutableCopy);
          }

          if (StrokeColor)
          {
            CGContextAddPath(Type, Mutable);
            CGContextSetStrokeColorWithColor(Type, StrokeColor);
            CGContextStrokePath(Type);
          }

          v2 = v56;
          if (Labels)
          {
            MarkerColor = OISeriesGetMarkerColor(ValueAtIndex);
            CGContextSetFillColorWithColor(Type, MarkerColor);
            CGContextAddPath(Type, v26);
            CGContextFillPath(Type);
          }

          if (v26)
          {
            CGPathRelease(v26);
          }

          if (Mutable)
          {
            CGPathRelease(Mutable);
          }

          v13 = v59 + 1;
          if (v59 + 1 == Count)
          {
            goto LABEL_40;
          }
        }

        v29 = v28;
        v30 = 0;
        v31 = MarkerWidth * 0.5;
        v32 = ceil(MarkerWidth);
        v33 = Scale / 3.0;
        v60 = v22 * 0.5;
        v62 = Scale / 3.0 * 0.5;
        v34 = ceil(v22);
        v35 = ceil(v33);
        while (1)
        {
          v36 = OISeriesGetBaseValueAtIndex(ValueAtIndex, v30);
          valuePtr[0] = 0.0;
          v37 = CFArrayGetValueAtIndex(Values, v30);
          CFNumberGetValue(v37, kCFNumberCGFloatType, valuePtr);
          v38 = PlotArea + OIAxisConvertValueToLocal(String, v36);
          v39 = v65 + OIAxisConvertValueToLocal(v19, valuePtr[0]);
          v40 = v24 + v38;
          v41 = floor(v40) + 0.5;
          v42 = floor(v39) + 0.5;
          if (!v30)
          {
            break;
          }

          CGPathAddLineToPoint(Mutable, 0, v41, v42);
          if (Labels)
          {
            goto LABEL_17;
          }

LABEL_18:
          if (OISeriesGetShowValues(ValueAtIndex))
          {
            v43 = v39;
            v44 = v40;
            if (TextColor)
            {
              v45 = v65 + OIAxisConvertValueToLocal(v19, 0.0);
              v44 = v40 - v60;
              v43 = (v39 + v45) * 0.5;
            }

            OILabelCollectionAddNumber(v61, 0, valuePtr[0], floor(v44) + 0.5, floor(v43 - v62) + 0.5, v34, v35);
          }

          PlotFillColor = OIChartGetPlotFillColor(ValueAtIndex);
          if (PlotFillColor)
          {
            OIErrorBarRendererAddPoint(v63, PlotFillColor, v40, v39, valuePtr[0], v64);
          }

          if (v29 == ++v30)
          {
            v47 = v30 - 1;
            Type = c;
            goto LABEL_29;
          }
        }

        CGPathMoveToPoint(Mutable, 0, v41, v42);
        if (!Labels)
        {
          goto LABEL_18;
        }

LABEL_17:
        v69.origin.x = floor(v40 - v31) + 0.5;
        v69.origin.y = floor(v39 - v31) + 0.5;
        v69.size.width = v32;
        v69.size.height = v32;
        CGPathAddRect(v26, 0, v69);
        goto LABEL_18;
      }

LABEL_40:
      OIErrorBarRendererRenderInContext(v63, Type);
      OIErrorBarRendererRelease(v63);
      OILabelCollectionRenderInContext(v61, Type);
      OILabelCollectionRelease(v61);
      CGContextRestoreGState(Type);
    }
  }
}

void _OIRenderStackedLinesInChart(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v6 = Count;
      idx = Count - 1;
      Type = OIAxisGetType(a1);
      PlotArea = OIChartGetPlotArea(a1);
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v81 = OIAxisAreLabelsCentered(a1);
      CGContextSaveGState(Type);
      v89 = PlotArea;
      v97.origin.x = PlotArea;
      v92 = v10;
      v97.origin.y = v10;
      v97.size.width = v12;
      v97.size.height = v14;
      CGContextClipToRect(Type, v97);
      CGContextBeginPath(Type);
      v87 = OILabelCollectionCreate();
      v86 = OIErrorBarRendererCreate(1);
      v15 = malloc_type_calloc(v6, 8uLL, 0x6004044C4A2DFuLL);
      v93 = malloc_type_calloc(v6, 8uLL, 0x6004044C4A2DFuLL);
      v16 = 0;
      v17 = 0;
      do
      {
        v15[v16] = CGPathCreateMutable();
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
        Labels = OIAxisGetLabels(ValueAtIndex);
        Values = OISeriesGetValues(ValueAtIndex);
        v21 = CFArrayGetCount(Values);
        if (v21 > v17)
        {
          v17 = v21;
        }

        if (Labels)
        {
          Mutable = CGPathCreateMutable();
        }

        else
        {
          Mutable = 0;
        }

        v93[v16++] = Mutable;
      }

      while (v6 != v16);
      c = Type;
      v90 = v15;
      if (v17 >= 1)
      {
        v23 = 0;
        v84 = v6;
        do
        {
          v85 = v17;
          v24 = 0.0;
          if (a3 == 1)
          {
            for (i = 0; i != v6; ++i)
            {
              v26 = CFArrayGetValueAtIndex(theArray, i);
              v27 = OISeriesGetValues(v26);
              if (CFArrayGetCount(v27) > v23)
              {
                valuePtr[0] = 0.0;
                v28 = CFArrayGetValueAtIndex(v27, v23);
                CFNumberGetValue(v28, kCFNumberCGFloatType, valuePtr);
                v24 = v24 + fabs(valuePtr[0]);
              }
            }
          }

          v29 = 0;
          v88 = v24;
          v30 = 0.0;
          v31 = v6;
          do
          {
            v32 = CFArrayGetValueAtIndex(theArray, v29);
            TextColor = OILabelGetTextColor(v32);
            v34 = OISeriesGetValues(v32);
            String = OILabelGetString(v32);
            v36 = OIAxisGetType(v32);
            v37 = OIAxisAreLabelsCentered(String);
            Scale = OIAxisGetScale(String);
            v39 = OIAxisGetScale(v36);
            if (CFArrayGetCount(v34) > v23)
            {
              v40 = Scale * 0.5;
              v41 = floor(Scale * 0.5);
              if (v37)
              {
                v42 = v41;
              }

              else
              {
                v42 = 0.0;
              }

              valuePtr[0] = 0.0;
              v43 = CFArrayGetValueAtIndex(v34, v23);
              CFNumberGetValue(v43, kCFNumberCGFloatType, valuePtr);
              if (a3 == 1)
              {
                v44 = valuePtr[0] / v24;
              }

              else
              {
                v44 = valuePtr[0];
              }

              v91 = OIAxisConvertValueToLocal(v36, v30);
              v30 = v30 + v44;
              v45 = v89 + OIAxisConvertValueToLocal(String, v23);
              v46 = OIAxisConvertValueToLocal(v36, v30);
              v47 = v90[v29];
              v48 = v92 + v46;
              v49 = v42 + v45;
              v50 = floor(v49) + 0.5;
              v51 = floor(v48) + 0.5;
              if (v23)
              {
                CGPathAddLineToPoint(v47, 0, v50, v51);
              }

              else
              {
                CGPathMoveToPoint(v47, 0, v50, v51);
              }

              if (v93[v29])
              {
                MarkerWidth = OISeriesGetMarkerWidth(v32);
                if (OIAxisGetLabels(v32) == 1)
                {
                  v98.origin.x = floor(v49 - MarkerWidth * 0.5) + 0.5;
                  v98.origin.y = floor(v48 - MarkerWidth * 0.5) + 0.5;
                  v98.size.width = ceil(MarkerWidth);
                  v98.size.height = v98.size.width;
                  CGPathAddRect(v93[v29], 0, v98);
                }
              }

              if (OISeriesGetShowValues(v32))
              {
                v53 = Scale / 3.0;
                if (TextColor)
                {
                  v54 = 0.5;
                  v55 = v49 - v40 * 0.5;
                  v56 = (v92 + v91 + v48) * 0.5 - v53 * 0.5;
                }

                else
                {
                  v54 = 0.5;
                  if (a3 == 1 && v31 == 1)
                  {
                    v56 = v48 - v53;
                  }

                  else
                  {
                    v56 = v48 + v53 * -0.5;
                  }

                  v55 = v49;
                }

                OILabelCollectionAddNumber(v87, 0, valuePtr[0], floor(v55) + v54, floor(v56) + v54, ceil(v40), ceil(v53));
              }

              if (!a3)
              {
                PlotFillColor = OIChartGetPlotFillColor(v32);
                if (PlotFillColor)
                {
                  OIErrorBarRendererAddPoint(v86, PlotFillColor, v49, v48, v44, v39);
                }
              }

              v24 = v88;
            }

            ++v29;
            --v31;
          }

          while (v31);
          ++v23;
          v6 = v84;
          v17 = v85;
        }

        while (v23 != v85);
      }

      if (v81)
      {
        v96.width = 2.0;
        v96.height = -2.0;
        CGContextSetShadow(c, v96, 3.0);
      }

      v58 = idx;
      do
      {
        v59 = CFArrayGetValueAtIndex(theArray, v58);
        v60 = OISeriesGetValues(v59);
        v61 = OILabelGetTextColor(v59);
        StrokeColor = OILabelGetStrokeColor(v59);
        v63 = OILabelGetString(v59);
        v64 = OIAxisGetType(v59);
        v65 = OIAxisAreLabelsCentered(v63);
        v66 = OIAxisGetScale(v63);
        OISeriesSetupStrokeAndFillForContext(v59, c);
        if (v61)
        {
          v67 = floor(v66 * 0.5);
          if (v65)
          {
            v68 = v67;
          }

          else
          {
            v68 = 0.0;
          }

          v69 = StrokeColor;
          MutableCopy = CGPathCreateMutableCopy(v90[v58]);
          v71 = CFArrayGetCount(v60);
          v72 = v89 + OIAxisConvertValueToLocal(v63, (v71 - 1));
          v73 = OIAxisConvertValueToLocal(v64, 0.0);
          CGPathAddLineToPoint(MutableCopy, 0, floor(v68 + v72) + 0.5, floor(v92 + v73) + 0.5);
          v74 = v89 + OIAxisConvertValueToLocal(v63, 0.0);
          v75 = OIAxisConvertValueToLocal(v64, 0.0);
          CGPathAddLineToPoint(MutableCopy, 0, floor(v68 + v74) + 0.5, floor(v92 + v75) + 0.5);
          CGContextAddPath(c, MutableCopy);
          CGContextFillPath(c);
          v76 = MutableCopy;
          StrokeColor = v69;
          CGPathRelease(v76);
        }

        if (StrokeColor)
        {
          CGContextAddPath(c, v90[v58]);
          CGContextStrokePath(c);
        }

        v77 = v90[v58];
        if (v77)
        {
          CGPathRelease(v77);
        }

        if (v93[v58])
        {
          MarkerColor = OISeriesGetMarkerColor(v59);
          CGContextSetFillColorWithColor(c, MarkerColor);
          CGContextAddPath(c, v93[v58]);
          CGContextFillPath(c);
          v79 = v93[v58];
          if (v79)
          {
            CGPathRelease(v79);
          }
        }

        v80 = v58-- + 1;
      }

      while (v80 > 1);
      OIErrorBarRendererRenderInContext(v86, c);
      OIErrorBarRendererRelease(v86);
      OILabelCollectionRenderInContext(v87, c);
      OILabelCollectionRelease(v87);
      free(v90);
      free(v93);
      CGContextRestoreGState(c);
    }
  }
}

void OIRenderOrthoAxisBackgroundInChart(uint64_t a1)
{
  Type = OIAxisGetType(a1);
  v3 = OIAxisAreLabelsCentered(a1);
  CGContextSaveGState(Type);
  _OIChartOrthoBackgroundBackground(a1);
  CGContextBeginPath(Type);
  if (v3)
  {
    v9.width = 0.0;
    v9.height = 0.0;
    CGContextSetShadow(Type, v9, 0.0);
  }

  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  if (Axis)
  {
    v5 = Axis;
    if (OIAxisGetDrawMajorGridlines(Axis))
    {
      _OIAxisRenderVerticallUnitLines(a1, v5, 0.0, 0.0);
    }
  }

  v6 = OIChartGetAxis(a1, @"kOIChartAxisYKey");
  if (v6)
  {
    v7 = v6;
    if (OIAxisGetDrawMajorGridlines(v6))
    {
      _OIAxisRenderHorizontalUnitLines(a1, v7, 0.0, 0.0);
    }
  }

  CGContextRestoreGState(Type);
}

void _OIChartOrthoBackgroundBackground(uint64_t a1)
{
  Type = OIAxisGetType(a1);
  PlotArea = OIChartGetPlotArea(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  PlotFillColor = OIChartGetPlotFillColor(a1);
  StrokeColor = OIAxisGetStrokeColor(a1);
  PlotStrokeWidth = OIChartGetPlotStrokeWidth(a1);
  if (PlotFillColor)
  {
    CGContextSetFillColorWithColor(Type, PlotFillColor);
    v18.origin.x = floor(PlotArea) + 0.5;
    v18.origin.y = floor(v5) + 0.5;
    v18.size.width = ceil(v7);
    v18.size.height = ceil(v9);
    CGContextFillRect(Type, v18);
  }

  if (StrokeColor && PlotStrokeWidth > 0.0)
  {
    CGContextSetLineWidth(Type, PlotStrokeWidth);
    CGContextSetStrokeColorWithColor(Type, StrokeColor);
    v13 = floor(PlotArea) + 0.5;
    v14 = floor(v5) + 0.5;
    v15 = ceil(v7);
    v16 = ceil(v9);

    CGContextStrokeRect(Type, *&v13);
  }
}

void _OIAxisRenderVerticallUnitLines(uint64_t a1, uint64_t a2, double a3, double a4)
{
  Type = OIAxisGetType(a1);
  PlotArea = OIChartGetPlotArea(a1);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (OIAxisAreLabelsCentered(a1))
  {
    v37.width = 0.0;
    v37.height = 0.0;
    CGContextSetShadow(Type, v37, 0.0);
  }

  StrokeColor = OIAxisGetStrokeColor(a2);
  if (StrokeColor)
  {
    v15 = StrokeColor;
    Alpha = CGColorGetAlpha(StrokeColor);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(v15, Alpha * 0.25);
    CGContextSetStrokeColorWithColor(Type, CopyWithAlpha);
    CGColorRelease(CopyWithAlpha);
  }

  else
  {
    CGContextSetRGBStrokeColor(Type, 0.0, 0.0, 0.0, 0.5);
  }

  StrokeWidth = OIAxisGetStrokeWidth(a2);
  CGContextSetLineWidth(Type, StrokeWidth);
  MinValue = OIAxisGetMinValue(a2);
  FontSize = OILabelGetFontSize(a2);
  Unit = OIAxisGetUnit(a2);
  v22 = MinValue / Unit;
  v23 = FontSize / Unit + 1.0;
  v24 = v22;
  if (v23 > v24)
  {
    v25 = v13;
    v26 = PlotArea + v11;
    v27 = a4 == 0.0 && a3 == 0.0;
    v28 = floor(v9) + 0.5;
    v33 = floor(a4 + v9) + 0.5;
    v29 = floor(v9 + v25) + 0.5;
    v30 = v22 + 1;
    do
    {
      v31 = PlotArea + OIAxisConvertValueToLocal(a2, Unit * v24);
      if (v31 > v26)
      {
        break;
      }

      v32 = floor(v31) + 0.5;
      CGContextMoveToPoint(Type, v32, v28);
      if (!v27)
      {
        v32 = floor(a3 + v31) + 0.5;
        CGContextAddLineToPoint(Type, v32, v33);
      }

      CGContextAddLineToPoint(Type, v32, v29);
      v24 = v30++;
    }

    while (v23 > v24);
  }

  CGContextStrokePath(Type);
}

void _OIAxisRenderHorizontalUnitLines(uint64_t a1, uint64_t a2, double a3, double a4)
{
  Type = OIAxisGetType(a1);
  PlotArea = OIChartGetPlotArea(a1);
  v35 = v9;
  v11 = v10;
  v13 = v12;
  if (OIAxisAreLabelsCentered(a1))
  {
    v37.width = 0.0;
    v37.height = 0.0;
    CGContextSetShadow(Type, v37, 0.0);
  }

  StrokeColor = OIAxisGetStrokeColor(a2);
  if (StrokeColor)
  {
    v15 = StrokeColor;
    Alpha = CGColorGetAlpha(StrokeColor);
    CopyWithAlpha = CGColorCreateCopyWithAlpha(v15, Alpha * 0.25);
    CGContextSetStrokeColorWithColor(Type, CopyWithAlpha);
    CGColorRelease(CopyWithAlpha);
  }

  else
  {
    CGContextSetRGBStrokeColor(Type, 0.0, 0.0, 0.0, 0.5);
  }

  StrokeWidth = OIAxisGetStrokeWidth(a2);
  CGContextSetLineWidth(Type, StrokeWidth);
  MinValue = OIAxisGetMinValue(a2);
  FontSize = OILabelGetFontSize(a2);
  Unit = OIAxisGetUnit(a2);
  v22 = MinValue / Unit;
  v23 = FontSize / Unit + 1.0;
  v24 = v22;
  if (v23 > v24)
  {
    v25 = v11;
    v26 = v35 + v13;
    v27 = a4 == 0.0 && a3 == 0.0;
    v28 = floor(PlotArea) + 0.5;
    x = floor(a3 + PlotArea) + 0.5;
    v29 = floor(PlotArea + v25) + 0.5;
    v30 = v22 + 1;
    do
    {
      v31 = v35 + OIAxisConvertValueToLocal(a2, Unit * v24);
      if (v31 > v26)
      {
        break;
      }

      v32 = floor(v31) + 0.5;
      CGContextMoveToPoint(Type, v28, v32);
      if (!v27)
      {
        v32 = floor(a4 + v31) + 0.5;
        CGContextAddLineToPoint(Type, x, v32);
      }

      CGContextAddLineToPoint(Type, v29, v32);
      v24 = v30++;
    }

    while (v23 > v24);
  }

  CGContextStrokePath(Type);
}

void OIRenderOrthoAxisForegroundInChart(uint64_t a1)
{
  Type = OIAxisGetType(a1);
  CGContextSaveGState(Type);
  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  if (Axis)
  {
    v4 = Axis;
    if (OIAxisGetType(Axis))
    {
      v5 = OIAxisGetType(v4);
      v6 = OIChartGetAxis(a1, @"kOIChartAxisYKey");
      if (v5 == 2)
      {
        _OIAxisRenderHorizontalDates(a1, v4, v6, 0, 0.0);
      }

      else
      {
        _OIAxisRenderHorizontalUnits(a1, v4, 0.0, v7, 0);
      }
    }

    else
    {
      v8 = OIChartGetAxis(a1, @"kOIChartAxisYKey");
      _OIAxisRenderHorizontalLabels(a1, v4, v8, 0, 0.0);
    }
  }

  v9 = OIChartGetAxis(a1, @"kOIChartAxisSecondaryXKey");
  if (v9)
  {
    v10 = v9;
    if (OIAxisGetType(v9))
    {
      v11 = OIAxisGetType(v10);
      v12 = OIChartGetAxis(a1, @"kOIChartAxisSecondaryYKey");
      if (v11 == 2)
      {
        _OIAxisRenderHorizontalDates(a1, v10, v12, 1, 0.0);
      }

      else
      {
        _OIAxisRenderHorizontalUnits(a1, v10, 0.0, v13, 1);
      }
    }

    else
    {
      v14 = OIChartGetAxis(a1, @"kOIChartAxisSecondaryYKey");
      _OIAxisRenderHorizontalLabels(a1, v10, v14, 1, 0.0);
    }
  }

  v15 = OIChartGetAxis(a1, @"kOIChartAxisYKey");
  if (v15)
  {
    v16 = v15;
    if (OIAxisGetType(v15))
    {
      v17 = OIAxisGetType(v16);
      v18 = OIChartGetAxis(a1, @"kOIChartAxisXKey");
      if (v17 == 2)
      {
        _OIAxisRenderVerticalDates(a1, v16, v18, 0, 0.0, 0.0);
      }

      else
      {
        _OIAxisRenderVerticalUnits(a1, v16, 0.0, 0.0, v19, 0);
      }
    }

    else
    {
      v20 = OIChartGetAxis(a1, @"kOIChartAxisXKey");
      _OIAxisRenderVerticalLabels(a1, v16, v20, 0, 0.0, 0.0);
    }
  }

  v21 = OIChartGetAxis(a1, @"kOIChartAxisSecondaryYKey");
  if (v21)
  {
    v22 = v21;
    if (OIAxisGetType(v21))
    {
      v23 = OIAxisGetType(v22);
      v24 = OIChartGetAxis(a1, @"kOIChartAxisSecondaryXKey");
      if (v23 == 2)
      {
        _OIAxisRenderVerticalDates(a1, v22, v24, 1, 0.0, 0.0);
      }

      else
      {
        _OIAxisRenderVerticalUnits(a1, v22, 0.0, 0.0, v25, 1);
      }
    }

    else
    {
      v26 = OIChartGetAxis(a1, @"kOIChartAxisSecondaryXKey");
      _OIAxisRenderVerticalLabels(a1, v22, v26, 1, 0.0, 0.0);
    }
  }

  CGContextRestoreGState(Type);
}

void _OIAxisRenderHorizontalLabels(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  if ((OIAxisIsHidden(a2) & 1) == 0)
  {
    v56 = a5;
    Type = OIAxisGetType(a1);
    PlotArea = OIChartGetPlotArea(a1);
    v13 = v12;
    v57 = v14;
    v16 = v15;
    if (OIAxisAreLabelsCentered(a1))
    {
      v62.width = 0.0;
      v62.height = 0.0;
      CGContextSetShadow(Type, v62, 0.0);
    }

    v58 = v13;
    if (a3 && OIAxisGetMinValue(a3) < 0.0 && OILabelGetFontSize(a3) > 0.0)
    {
      v13 = v13 + OIAxisConvertValueToLocal(a3, 0.0);
      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    StrokeColor = OIAxisGetStrokeColor(a2);
    if (StrokeColor)
    {
      CGContextSetStrokeColorWithColor(Type, StrokeColor);
    }

    else
    {
      CGContextSetRGBStrokeColor(Type, 0.0, 0.0, 0.0, 1.0);
    }

    StrokeWidth = OIAxisGetStrokeWidth(a2);
    CGContextSetLineWidth(Type, StrokeWidth);
    v20 = floor(v16 / 100.0);
    v55 = v16;
    if (OIAxisGetStrokeWidth(a2) > 1.0)
    {
      v20 = v20 + floor(OIAxisGetStrokeWidth(a2));
    }

    v21 = OIAxisAreLabelsCentered(a2);
    v22 = OIAxisGetValueCount(a2) - (v21 ^ 1u);
    v23 = v22;
    if (v22 >= 1)
    {
      v24 = v58 + v55;
      if (!a4)
      {
        v24 = v13;
      }

      v25 = floor(v24) + 0.5;
      v26 = floor(v24 - v20) + 0.5;
      v27 = 0.0;
      v28 = 1;
      do
      {
        v29 = floor(PlotArea + v27 * (v57 / v23)) + 0.5;
        CGContextMoveToPoint(Type, v29, v25);
        CGContextAddLineToPoint(Type, v29, v26);
        v27 = v28++;
      }

      while (v27 < v23);
    }

    v30 = 0.5;
    v31 = floor(PlotArea) + 0.5;
    v32 = floor(PlotArea + v57 - v56) + 0.5;
    if (v17)
    {
      v33 = v13;
    }

    else
    {
      v33 = v58;
    }

    v34 = floor(v33) + 0.5;
    CGContextMoveToPoint(Type, v31, v34);
    CGContextAddLineToPoint(Type, v32, v34);
    CGContextStrokePath(Type);
    Labels = OIAxisGetLabels(a2);
    if (Labels)
    {
      v36 = Labels;
      if (!OIAxisAreLabelsCentered(a2))
      {
        v30 = 0.0;
      }

      OIChartGetSize(a1);
      v38 = fmin(v37 * 0.08, 10.0);
      v61[0] = 0.0;
      Count = CFArrayGetCount(v36);
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = ___OIAxisRenderHorizontalLabels_block_invoke;
      v60[3] = &__block_descriptor_64_e25_____CFString__24__0q8_B16l;
      v60[4] = Count;
      *&v60[5] = v22;
      v60[6] = a2;
      v60[7] = v36;
      v40 = _OIAxisRenderBuildStringArrayAndComputeWidth(v60, 0, v38, Type, v61);
      Scale = OIAxisGetScale(a2);
      v42 = [MEMORY[0x277CBEB38] dictionary];
      if (v61[0] <= Scale)
      {
        v44 = 1;
      }

      else
      {
        v43 = v38 * Scale / v61[0];
        if (v43 >= 8.0)
        {
          v44 = 1;
        }

        else
        {
          v44 = (1.5 / (Scale / v61[0]));
          v43 = 8.0;
        }

        v45 = OICreateDefaultFontWithSize(v43);
        [v42 setObject:v45 forKeyedSubscript:*MEMORY[0x277CC4838]];
      }

      [v42 setObject:OIAxisGetTextColor(a2) forKeyedSubscript:*MEMORY[0x277CC49C0]];
      v46 = CFArrayGetCount(v36);
      if (v46 >= 1 && v22 >= 1)
      {
        v47 = v46;
        v48 = 0;
        v49 = *MEMORY[0x277CBEEE8];
        if (a4)
        {
          v50 = v58 + v55;
        }

        else
        {
          v50 = v33;
        }

        v51 = 0.0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v40, v48);
          if (ValueAtIndex != v49)
          {
            v53 = ValueAtIndex;
            v54 = OIAxisConvertValueToLocal(a2, v30 + v51);
            v59[0] = MEMORY[0x277D85DD0];
            v59[1] = 3221225472;
            v59[2] = ___OIAxisRenderHorizontalLabels_block_invoke_2;
            v59[3] = &__block_descriptor_48_e29__CGPoint_dd_24__0_CGSize_dd_8l;
            *&v59[4] = PlotArea + v54;
            *&v59[5] = v50;
            OIDrawStringWithAttributes(v53, v42, Type, v59);
          }

          v48 += v44;
          if (v48 >= v47)
          {
            break;
          }

          v51 = v48;
        }

        while (v48 < v23);
      }

      CFRelease(v40);
    }
  }
}

void _OIAxisRenderHorizontalDates(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  if ((OIAxisIsHidden(a2) & 1) == 0)
  {
    Type = OIAxisGetType(a1);
    PlotArea = OIChartGetPlotArea(a1);
    v13 = v12;
    v52 = v14;
    v16 = v15;
    if (OIAxisAreLabelsCentered(a1))
    {
      v56.width = 0.0;
      v56.height = 0.0;
      CGContextSetShadow(Type, v56, 0.0);
    }

    if (a3 && OIAxisGetMinValue(a3) < 0.0 && OILabelGetFontSize(a3) > 0.0)
    {
      v51 = v13 + OIAxisConvertValueToLocal(a3, 0.0);
      v17 = 1;
    }

    else
    {
      v17 = 0;
      v51 = v13;
    }

    StrokeColor = OIAxisGetStrokeColor(a2);
    if (StrokeColor)
    {
      CGContextSetStrokeColorWithColor(Type, StrokeColor);
    }

    else
    {
      CGContextSetRGBStrokeColor(Type, 0.0, 0.0, 0.0, 1.0);
    }

    StrokeWidth = OIAxisGetStrokeWidth(a2);
    CGContextSetLineWidth(Type, StrokeWidth);
    v20 = floor(v16 / 100.0);
    if (OIAxisGetStrokeWidth(a2) > 1.0)
    {
      v20 = v20 + floor(OIAxisGetStrokeWidth(a2));
    }

    v21 = OIAxisAreLabelsCentered(a2);
    v22 = OIAxisGetValueCount(a2) - (v21 ^ 1u);
    v23 = v22;
    v24 = v13;
    v50 = v13 + v16;
    if (v22 >= 1)
    {
      v25 = v13 + v16;
      if (!a4)
      {
        v25 = v51;
      }

      v26 = floor(v25) + 0.5;
      v27 = floor(v25 - v20) + 0.5;
      v28 = 0.0;
      v29 = 1;
      do
      {
        v30 = floor(PlotArea + v28 * (v52 / v23)) + 0.5;
        CGContextMoveToPoint(Type, v30, v26);
        CGContextAddLineToPoint(Type, v30, v27);
        v28 = v29++;
      }

      while (v28 < v23);
    }

    v31 = floor(PlotArea) + 0.5;
    v32 = floor(PlotArea + v52 - a5) + 0.5;
    if (v17)
    {
      v33 = v51;
    }

    else
    {
      v33 = v24;
    }

    v34 = floor(v33) + 0.5;
    CGContextMoveToPoint(Type, v31, v34);
    CGContextAddLineToPoint(Type, v32, v34);
    CGContextStrokePath(Type);
    if (OIAxisAreLabelsCentered(a2))
    {
      v35 = 0.5;
    }

    else
    {
      v35 = 0.0;
    }

    OIChartGetSize(a1);
    v37 = fmin(v36 * 0.08, 10.0);
    v54[6] = a1;
    v55[0] = 0.0;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = ___OIAxisRenderHorizontalDates_block_invoke;
    v54[3] = &__block_descriptor_56_e25_____CFString__24__0q8_B16l;
    *&v54[4] = v23;
    v54[5] = a2;
    v38 = _OIAxisRenderBuildStringArrayAndComputeWidth(v54, 0, v37, Type, v55);
    Scale = OIAxisGetScale(a2);
    if (v55[0] <= Scale || (v37 = v37 * Scale / v55[0], v37 >= 8.0))
    {
      v40 = 1;
    }

    else
    {
      v40 = (1.5 / (Scale / v55[0]));
      v37 = 8.0;
    }

    v41 = [MEMORY[0x277CBEB38] dictionary];
    v42 = OICreateDefaultFontWithSize(v37);
    [v41 setObject:v42 forKeyedSubscript:*MEMORY[0x277CC4838]];

    [v41 setObject:OIAxisGetTextColor(a2) forKeyedSubscript:*MEMORY[0x277CC49C0]];
    Count = CFArrayGetCount(v38);
    if (Count >= 1)
    {
      v44 = Count;
      v45 = 0;
      v46 = *MEMORY[0x277CBEEE8];
      v47 = v52 / Count;
      if (a4)
      {
        v48 = v50;
      }

      else
      {
        v48 = v33;
      }

      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v38, v45);
        if (ValueAtIndex != v46)
        {
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = ___OIAxisRenderHorizontalDates_block_invoke_2;
          v53[3] = &__block_descriptor_48_e29__CGPoint_dd_24__0_CGSize_dd_8l;
          *&v53[4] = PlotArea + v47 * (v35 + v45);
          *&v53[5] = v48;
          OIDrawStringWithAttributes(ValueAtIndex, v41, Type, v53);
        }

        v45 += v40;
      }

      while (v45 < v44);
    }

    CFRelease(v38);
  }
}

void _OIAxisRenderHorizontalUnits(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  Type = OIAxisGetType(a1);
  PlotArea = OIChartGetPlotArea(a1);
  v57 = v9;
  v11 = v10;
  v13 = v12;
  v14 = OIAxisAreLabelsCentered(a1);
  MinValue = OIAxisGetMinValue(a2);
  FontSize = OILabelGetFontSize(a2);
  Unit = OIAxisGetUnit(a2);
  if (MinValue == 0.0)
  {
    v17 = floor(v11 / 120.0);
    if (v17 < 3.0)
    {
      v17 = 3.0;
    }
  }

  else
  {
    v17 = 0.0;
  }

  v55 = v17;
  if (v14)
  {
    v64.width = 0.0;
    v64.height = 0.0;
    CGContextSetShadow(Type, v64, 0.0);
  }

  StrokeColor = OIAxisGetStrokeColor(a2);
  if (StrokeColor)
  {
    CGContextSetStrokeColorWithColor(Type, StrokeColor);
  }

  else
  {
    CGContextSetRGBStrokeColor(Type, 0.0, 0.0, 0.0, 1.0);
  }

  StrokeWidth = OIAxisGetStrokeWidth(a2);
  CGContextSetLineWidth(Type, StrokeWidth);
  v20 = OIAxisGetStrokeWidth(a2) <= 1.0;
  v58 = floor(v13 / 150.0);
  v21 = v58;
  if (!v20)
  {
    v21 = v58 + floor(OIAxisGetStrokeWidth(a2));
  }

  v22 = (MinValue / Unit);
  v53 = FontSize;
  v23 = FontSize / Unit + 1.0;
  v24 = v22;
  v25 = PlotArea + v11;
  v26 = PlotArea;
  if (v23 > v22)
  {
    if (a5)
    {
      v27 = v57 + v13;
    }

    else
    {
      v27 = v57;
    }

    v28 = floor(v27) + 0.5;
    v29 = floor(v57 + v13 + v21);
    v30 = floor(v57 - v21);
    if (a5)
    {
      v30 = v29;
    }

    v31 = v30 + 0.5;
    v32 = v22 + 1;
    v33 = v22;
    do
    {
      v34 = floor(PlotArea + OIAxisConvertValueToLocal(a2, Unit * v33));
      if (v34 > v25)
      {
        break;
      }

      v35 = v34 + 0.5;
      CGContextMoveToPoint(Type, v34 + 0.5, v28);
      v36 = v35;
      PlotArea = v26;
      CGContextAddLineToPoint(Type, v36, v31);
      v33 = v32++;
    }

    while (v23 > v33);
  }

  v37 = floor(PlotArea) + 0.5;
  v38 = PlotArea;
  v39 = floor(v57) + 0.5;
  CGContextMoveToPoint(Type, v37, v39);
  CGContextAddLineToPoint(Type, floor(v25 - a3) + 0.5, v39);
  CGContextStrokePath(Type);
  if ((OIAxisIsHidden(a2) & 1) == 0)
  {
    v40 = Unit * OIAxisGetScale(a2);
    if (v40 >= 20.0)
    {
      v41 = 10.0;
    }

    else
    {
      v41 = v40 * 0.5;
    }

    v42 = [MEMORY[0x277CBEB38] dictionary];
    [v42 setObject:OIAxisGetTextColor(a2) forKeyedSubscript:*MEMORY[0x277CC49C0]];
    v63[0] = 0.0;
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = ___OIAxisRenderHorizontalUnits_block_invoke;
    v62[3] = &__block_descriptor_64_e25_____CFString__24__0q8_B16l;
    v62[4] = v54;
    *&v62[5] = Unit;
    v62[6] = a2;
    v62[7] = a1;
    v43 = _OIAxisRenderBuildStringArrayAndComputeWidth(v62, v22, v41, Type, v63);
    v44 = v38 - v55 + -10.0;
    if (v63[0] > v44)
    {
      v41 = v41 * (v44 / v63[0]);
    }

    v45 = OICreateDefaultFontWithSize(v41);
    [v42 setObject:v45 forKeyedSubscript:*MEMORY[0x277CC4838]];

    if (v23 > v24)
    {
      v46 = 0;
      if (a5)
      {
        v47 = v57 + v13;
      }

      else
      {
        v47 = v57;
      }

      v48 = *MEMORY[0x277CBEEE8];
      v49 = v22 + 1;
      do
      {
        if ((OIAxisIsLogarithmic(a2) & (Unit * v24 <= 0.0)) != 0)
        {
          v50 = 1.0;
        }

        else
        {
          v50 = Unit * v24;
        }

        v51 = v26 + OIAxisConvertValueToLocal(a2, v50);
        if (floor(v51) > v25)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v43, v46);
        if (ValueAtIndex != v48)
        {
          v61[0] = MEMORY[0x277D85DD0];
          v61[1] = 3221225472;
          v61[2] = ___OIAxisRenderHorizontalUnits_block_invoke_2;
          v61[3] = &__block_descriptor_64_e29__CGPoint_dd_24__0_CGSize_dd_8l;
          *&v61[4] = v51;
          *&v61[5] = v47;
          v61[6] = a5;
          *&v61[7] = v58;
          OIDrawStringWithAttributes(ValueAtIndex, v42, Type, v61);
        }

        v24 = v49++;
        ++v46;
      }

      while (v23 > v24);
    }

    CFRelease(v43);
  }
}

void _OIAxisRenderVerticalLabels(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if ((OIAxisIsHidden(a2) & 1) == 0)
  {
    v54 = a6;
    Type = OIAxisGetType(a1);
    PlotArea = OIChartGetPlotArea(a1);
    v14 = v13;
    v57 = v15;
    v17 = v16;
    if (OIAxisAreLabelsCentered(a1))
    {
      v62.width = 0.0;
      v62.height = 0.0;
      CGContextSetShadow(Type, v62, 0.0);
    }

    if (a3 && OIAxisGetMinValue(a3) < 0.0 && OILabelGetFontSize(a3) > 0.0)
    {
      v55 = PlotArea + OIAxisConvertValueToLocal(a3, 0.0);
      v56 = 1;
      v18 = 1;
    }

    else
    {
      v56 = 0;
      v18 = 0;
      v55 = PlotArea;
    }

    StrokeColor = OIAxisGetStrokeColor(a2);
    if (StrokeColor)
    {
      CGContextSetStrokeColorWithColor(Type, StrokeColor);
    }

    else
    {
      CGContextSetRGBStrokeColor(Type, 0.0, 0.0, 0.0, 1.0);
    }

    StrokeWidth = OIAxisGetStrokeWidth(a2);
    CGContextSetLineWidth(Type, StrokeWidth);
    v21 = floor(v17 / 100.0);
    if (OIAxisGetStrokeWidth(a2) > 1.0)
    {
      v21 = v21 + floor(OIAxisGetStrokeWidth(a2));
    }

    v22 = OIAxisAreLabelsCentered(a2);
    FontSize = OILabelGetFontSize(a2);
    if (v22)
    {
      v24 = FontSize + 1.0;
    }

    else
    {
      v24 = FontSize;
    }

    if (v24 > 0.0)
    {
      v25 = 3.0;
      if (v21 >= 3.0)
      {
        v25 = v21;
      }

      v26 = PlotArea + v57;
      if (!a4)
      {
        v26 = v55;
      }

      v27 = floor(v26) + 0.5;
      v28 = floor(v26 - v25) + 0.5;
      v29 = 0.0;
      v30 = 1;
      do
      {
        v31 = floor(v14 + OIAxisConvertValueToLocal(a2, v29)) + 0.5;
        CGContextMoveToPoint(Type, v27, v31);
        CGContextAddLineToPoint(Type, v28, v31);
        v29 = v30++;
      }

      while (v24 > v29);
    }

    v32 = floor(v14) + 0.5;
    v33 = floor(v14 + v17 - v54) + 0.5;
    if (v18)
    {
      v34 = v55;
    }

    else
    {
      v34 = PlotArea;
    }

    v35 = floor(v34) + 0.5;
    CGContextMoveToPoint(Type, v35, v32);
    CGContextAddLineToPoint(Type, v35, v33);
    CGContextStrokePath(Type);
    Labels = OIAxisGetLabels(a2);
    if (Labels)
    {
      v37 = Labels;
      if (OIAxisAreLabelsCentered(a2))
      {
        v38 = 0.5;
      }

      else
      {
        v38 = 0.0;
      }

      v61[0] = 0.0;
      Count = CFArrayGetCount(v37);
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = ___OIAxisRenderVerticalLabels_block_invoke;
      v60[3] = &__block_descriptor_64_e25_____CFString__24__0q8_B16l;
      v60[4] = Count;
      *&v60[5] = v24;
      v60[6] = a2;
      v60[7] = v37;
      v40 = 10.0;
      v41 = _OIAxisRenderBuildStringArrayAndComputeWidth(v60, 0, 10.0, Type, v61);
      if (v61[0] > PlotArea + -5.0)
      {
        v40 = (PlotArea + -5.0) * 10.0 / v61[0];
      }

      v42 = [MEMORY[0x277CBEB38] dictionary];
      v43 = OICreateDefaultFontWithSize(v40);
      [v42 setObject:v43 forKeyedSubscript:*MEMORY[0x277CC4838]];

      [v42 setObject:OIAxisGetTextColor(a2) forKeyedSubscript:*MEMORY[0x277CC49C0]];
      v44 = floor(v57 / 100.0);
      if (v44 >= 3.0)
      {
        v45 = v44;
      }

      else
      {
        v45 = 3.0;
      }

      v46 = CFArrayGetCount(v41);
      if (v46 >= 1)
      {
        v47 = v46;
        v48 = 0;
        v49 = *MEMORY[0x277CBEEE8];
        if (a4)
        {
          v50 = PlotArea + v57;
        }

        else
        {
          v50 = v34;
        }

        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v41, v48);
          if (ValueAtIndex != v49)
          {
            v52 = ValueAtIndex;
            v53 = OIAxisConvertValueToLocal(a2, v38 + v48);
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = ___OIAxisRenderVerticalLabels_block_invoke_2;
            v58[3] = &__block_descriptor_89_e29__CGPoint_dd_24__0_CGSize_dd_8l;
            *&v58[4] = v50;
            *&v58[5] = v14 + v53;
            v59 = v56;
            *&v58[6] = PlotArea;
            *&v58[7] = v14;
            *&v58[8] = v57;
            *&v58[9] = v17;
            *&v58[10] = v45;
            OIDrawStringWithAttributes(v52, v42, Type, v58);
          }

          ++v48;
        }

        while (v47 != v48);
      }

      CFRelease(v41);
    }
  }
}

void _OIAxisRenderVerticalDates(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if ((OIAxisIsHidden(a2) & 1) == 0)
  {
    Type = OIAxisGetType(a1);
    PlotArea = OIChartGetPlotArea(a1);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    if (OIAxisAreLabelsCentered(a1))
    {
      v60.width = 0.0;
      v60.height = 0.0;
      CGContextSetShadow(Type, v60, 0.0);
    }

    if (a3 && OIAxisGetMinValue(a3) < 0.0 && OILabelGetFontSize(a3) > 0.0)
    {
      v54 = PlotArea + OIAxisConvertValueToLocal(a3, 0.0);
      v19 = 1;
      v20 = 1;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v54 = PlotArea;
    }

    StrokeColor = OIAxisGetStrokeColor(a2);
    if (StrokeColor)
    {
      CGContextSetStrokeColorWithColor(Type, StrokeColor);
    }

    else
    {
      CGContextSetRGBStrokeColor(Type, 0.0, 0.0, 0.0, 1.0);
    }

    StrokeWidth = OIAxisGetStrokeWidth(a2);
    CGContextSetLineWidth(Type, StrokeWidth);
    v23 = floor(v18 / 100.0);
    v51 = a6;
    if (OIAxisGetStrokeWidth(a2) > 1.0)
    {
      v23 = v23 + floor(OIAxisGetStrokeWidth(a2));
    }

    v24 = OIAxisAreLabelsCentered(a2);
    v25 = OIAxisGetValueCount(a2) - (v24 ^ 1u);
    v26 = v25;
    v53 = v16;
    if (v25 >= 1)
    {
      v27 = PlotArea + v16;
      v28 = 3.0;
      if (v23 >= 3.0)
      {
        v28 = v23;
      }

      if (!a4)
      {
        v27 = v54;
      }

      v29 = floor(v27) + 0.5;
      v30 = floor(v27 - v28) + 0.5;
      v31 = 0.0;
      v32 = 1;
      do
      {
        v33 = floor(v14 + v31 * (v18 / v26)) + 0.5;
        CGContextMoveToPoint(Type, v29, v33);
        CGContextAddLineToPoint(Type, v30, v33);
        v31 = v32++;
      }

      while (v31 < v26);
    }

    v34 = floor(v14) + 0.5;
    v35 = floor(v14 + v18 - v51) + 0.5;
    v36 = v54;
    if (!v20)
    {
      v36 = PlotArea;
    }

    v52 = v36;
    v37 = floor(v36) + 0.5;
    CGContextMoveToPoint(Type, v37, v34);
    CGContextAddLineToPoint(Type, v37, v35);
    CGContextStrokePath(Type);
    if (OIAxisAreLabelsCentered(a2))
    {
      v38 = 0.5;
    }

    else
    {
      v38 = 0.0;
    }

    v59 = 0.0;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = ___OIAxisRenderVerticalDates_block_invoke;
    v58[3] = &__block_descriptor_56_e25_____CFString__24__0q8_B16l;
    *&v58[4] = v26;
    v58[5] = a2;
    v58[6] = a1;
    v39 = 10.0;
    v40 = _OIAxisRenderBuildStringArrayAndComputeWidth(v58, 0, 10.0, Type, &v59);
    if (v59 > PlotArea + -5.0)
    {
      v39 = (PlotArea + -5.0) * 10.0 / v59;
    }

    v41 = [MEMORY[0x277CBEB38] dictionary];
    v42 = OICreateDefaultFontWithSize(v39);
    [v41 setObject:v42 forKeyedSubscript:*MEMORY[0x277CC4838]];

    [v41 setObject:OIAxisGetTextColor(a2) forKeyedSubscript:*MEMORY[0x277CC49C0]];
    v43 = floor(v16 / 100.0);
    if (v43 < 3.0)
    {
      v43 = 3.0;
    }

    v55 = v43;
    Count = CFArrayGetCount(v40);
    if (Count >= 1)
    {
      v45 = Count;
      v46 = 0;
      v47 = v18 / Count;
      if (a4)
      {
        v48 = PlotArea + v16;
      }

      else
      {
        v48 = v52;
      }

      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v40, v46);
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = ___OIAxisRenderVerticalDates_block_invoke_2;
        v56[3] = &__block_descriptor_89_e29__CGPoint_dd_24__0_CGSize_dd_8l;
        *&v56[4] = v48;
        *&v56[5] = v50 + v47 * (v38 + v46);
        v57 = v19;
        *&v56[6] = PlotArea;
        *&v56[7] = v50;
        *&v56[8] = v53;
        *&v56[9] = v18;
        *&v56[10] = v55;
        OIDrawStringWithAttributes(ValueAtIndex, v41, Type, v56);
        ++v46;
      }

      while (v45 != v46);
    }

    CFRelease(v40);
  }
}

void _OIAxisRenderVerticalUnits(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  Type = OIAxisGetType(a1);
  PlotArea = OIChartGetPlotArea(a1);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = OIAxisAreLabelsCentered(a1);
  MinValue = OIAxisGetMinValue(a2);
  FontSize = OILabelGetFontSize(a2);
  Unit = OIAxisGetUnit(a2);
  if (v15)
  {
    v61.width = 0.0;
    v61.height = 0.0;
    CGContextSetShadow(Type, v61, 0.0);
  }

  StrokeColor = OIAxisGetStrokeColor(a2);
  if (StrokeColor)
  {
    CGContextSetStrokeColorWithColor(Type, StrokeColor);
  }

  else
  {
    CGContextSetRGBStrokeColor(Type, 0.0, 0.0, 0.0, 1.0);
  }

  StrokeWidth = OIAxisGetStrokeWidth(a2);
  CGContextSetLineWidth(Type, StrokeWidth);
  v20 = floor(v12 / 150.0);
  v21 = OIAxisGetStrokeWidth(a2) <= 1.0;
  v22 = v20;
  if (!v21)
  {
    v22 = v20 + floor(OIAxisGetStrokeWidth(a2));
  }

  v52 = v20;
  v53 = FontSize;
  v23 = (MinValue / Unit);
  v24 = FontSize / Unit + 1.0;
  v25 = v23;
  v26 = v10;
  if (v24 <= v23)
  {
    v27 = v10 + v14;
LABEL_21:
    v37 = v10;
  }

  else
  {
    if (v22 < 3.0)
    {
      v22 = 3.0;
    }

    v27 = v10 + v14;
    if (a6)
    {
      v28 = PlotArea + v12;
    }

    else
    {
      v28 = PlotArea;
    }

    v29 = floor(v28) + 0.5;
    v30 = floor(PlotArea + v12 + v22);
    v31 = floor(PlotArea - v22);
    if (a6)
    {
      v31 = v30;
    }

    v32 = v31 + 0.5;
    v33 = v23 + 1;
    v34 = v23;
    while (1)
    {
      v35 = floor(v10 + OIAxisConvertValueToLocal(a2, Unit * v34));
      if (v35 > v27)
      {
        break;
      }

      v36 = v35 + 0.5;
      CGContextMoveToPoint(Type, v29, v35 + 0.5);
      CGContextAddLineToPoint(Type, v32, v36);
      v34 = v33++;
      v10 = v26;
      if (v24 <= v34)
      {
        goto LABEL_21;
      }
    }

    v37 = v26;
  }

  v38 = floor(PlotArea) + 0.5;
  CGContextMoveToPoint(Type, v38, floor(v37) + 0.5);
  CGContextAddLineToPoint(Type, v38, floor(v27 - a4) + 0.5);
  CGContextStrokePath(Type);
  if ((OIAxisIsHidden(a2) & 1) == 0)
  {
    v39 = fmin(Unit * OIAxisGetScale(a2), 10.0);
    v40 = [MEMORY[0x277CBEB38] dictionary];
    [v40 setObject:OIAxisGetTextColor(a2) forKeyedSubscript:*MEMORY[0x277CC49C0]];
    if (v52 >= 3.0)
    {
      v41 = v52;
    }

    else
    {
      v41 = 3.0;
    }

    v60[0] = 0.0;
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = ___OIAxisRenderVerticalUnits_block_invoke;
    v59[3] = &__block_descriptor_64_e25_____CFString__24__0q8_B16l;
    *&v59[4] = v53;
    *&v59[5] = Unit;
    v59[6] = a2;
    v59[7] = a1;
    v42 = _OIAxisRenderBuildStringArrayAndComputeWidth(v59, v23, v39, Type, v60);
    v43 = PlotArea - v41 + -10.0;
    if (v60[0] > v43)
    {
      v39 = v39 * (v43 / v60[0]);
    }

    v44 = OICreateDefaultFontWithSize(v39);
    [v40 setObject:v44 forKeyedSubscript:*MEMORY[0x277CC4838]];

    if (v24 > v25)
    {
      v45 = 0;
      if (a6)
      {
        v46 = PlotArea + v12;
      }

      else
      {
        v46 = PlotArea;
      }

      v47 = *MEMORY[0x277CBEEE8];
      v48 = v23 + 1;
      do
      {
        if ((OIAxisIsLogarithmic(a2) & (Unit * v25 <= 0.0)) != 0)
        {
          v49 = 1.0;
        }

        else
        {
          v49 = Unit * v25;
        }

        v50 = v26 + OIAxisConvertValueToLocal(a2, v49);
        if (floor(v50) > v27)
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v42, v45);
        if (ValueAtIndex != v47)
        {
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = ___OIAxisRenderVerticalUnits_block_invoke_2;
          v58[3] = &__block_descriptor_64_e29__CGPoint_dd_24__0_CGSize_dd_8l;
          *&v58[4] = v46;
          *&v58[5] = v50;
          v58[6] = a6;
          *&v58[7] = v41;
          OIDrawStringWithAttributes(ValueAtIndex, v40, Type, v58);
        }

        v25 = v48++;
        ++v45;
      }

      while (v24 > v25);
    }

    CFRelease(v42);
  }
}

void _OIRender3DOrthoAxisBackgroundInChart(uint64_t a1, double a2, double a3)
{
  Type = OIAxisGetType(a1);
  GenericRGB = OIColorCreateGenericRGB(0.8, 0.8, 0.8, 1.0);
  v8 = OIColorCreateGenericRGB(0.5, 0.5, 0.5, 1.0);
  PlotStrokeWidth = OIChartGetPlotStrokeWidth(a1);
  PlotArea = OIChartGetPlotArea(a1);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  Axis = OIChartGetAxis(a1, @"kOIChartAxisYKey");
  v17 = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  v18 = v13 - a2;
  OIAxisUpdateScaleForLength(v17, v13 - a2);
  v29 = v15 - a3;
  OIAxisUpdateScaleForLength(Axis, v15 - a3);
  v19 = OICreateDimmedColorFromColor(GenericRGB, 0.5);
  Mutable = CGPathCreateMutable();
  v21 = floor(v11) + 0.5;
  v31 = floor(PlotArea) + 0.5;
  CGPathMoveToPoint(Mutable, 0, v31, v21);
  v22 = floor(a2 + PlotArea) + 0.5;
  v33 = a3;
  v23 = floor(a3 + v11) + 0.5;
  CGPathAddLineToPoint(Mutable, 0, v22, v23);
  v24 = PlotArea + v18;
  v25 = floor(a2 + v24) + 0.5;
  CGPathAddLineToPoint(Mutable, 0, v25, v23);
  v30 = v21;
  CGPathAddLineToPoint(Mutable, 0, floor(v24) + 0.5, v21);
  CGPathCloseSubpath(Mutable);
  if (v19)
  {
    CGContextSetFillColorWithColor(Type, v19);
    CGContextAddPath(Type, Mutable);
    CGContextFillPath(Type);
  }

  if (v8)
  {
    CGContextSetStrokeColorWithColor(Type, v8);
    CGContextAddPath(Type, Mutable);
    CGContextSetLineWidth(Type, PlotStrokeWidth);
    CGContextStrokePath(Type);
  }

  CGPathRelease(Mutable);
  CGColorRelease(v19);
  v26 = CGPathCreateMutable();
  CGPathMoveToPoint(v26, 0, v22, v23);
  v27 = floor(v33 + v11 + v29) + 0.5;
  CGPathAddLineToPoint(v26, 0, v22, v27);
  CGPathAddLineToPoint(v26, 0, v25, v27);
  CGPathAddLineToPoint(v26, 0, v25, v23);
  CGPathCloseSubpath(v26);
  if (GenericRGB)
  {
    CGContextSetFillColorWithColor(Type, GenericRGB);
    CGContextAddPath(Type, v26);
    CGContextFillPath(Type);
  }

  if (v8)
  {
    CGContextSetStrokeColorWithColor(Type, v8);
    CGContextAddPath(Type, v26);
    CGContextSetLineWidth(Type, PlotStrokeWidth);
    CGContextStrokePath(Type);
  }

  CGPathRelease(v26);
  v28 = CGPathCreateMutable();
  CGPathMoveToPoint(v28, 0, v31, v30);
  CGPathAddLineToPoint(v28, 0, v31, floor(v11 + v29) + 0.5);
  CGPathAddLineToPoint(v28, 0, v22, v27);
  CGPathAddLineToPoint(v28, 0, v22, v23);
  CGPathCloseSubpath(v28);
  if (GenericRGB)
  {
    CGContextSetFillColorWithColor(Type, GenericRGB);
    CGContextAddPath(Type, v28);
    CGContextFillPath(Type);
  }

  if (v8)
  {
    CGContextSetStrokeColorWithColor(Type, v8);
    CGContextAddPath(Type, v28);
    CGContextSetLineWidth(Type, PlotStrokeWidth);
    CGContextStrokePath(Type);
  }

  CGPathRelease(v28);
  if (v17 && OIAxisGetDrawMajorGridlines(v17))
  {
    _OIAxisRenderVerticallUnitLines(a1, v17, a2, v33);
  }

  if (Axis && OIAxisGetDrawMajorGridlines(Axis))
  {
    _OIAxisRenderHorizontalUnitLines(a1, Axis, a2, v33);
  }

  CGColorRelease(GenericRGB);

  CGColorRelease(v8);
}

void OIRender3DOrthoAxisBackgroundInChart(uint64_t a1)
{
  OIChartGetPlotArea(a1);
  v3 = v2;
  v5 = v4;
  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  v7 = (2 * OILabelGetFontSize(Axis));
  v8 = OIChartGetRotation(a1) / 45.0 * (v3 / v7);
  v9 = OIChartGetElevation(a1) / 90.0 * (v5 / v7);

  _OIRender3DOrthoAxisBackgroundInChart(a1, v8, v9);
}

void OIRender3DLayeredOrthoAxisBackgroundInChart(uint64_t a1)
{
  OIChartGetPlotArea(a1);
  v3 = v2;
  v5 = v4;
  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  SeriesCount = OIChartGetSeriesCount(a1);
  FontSize = OILabelGetFontSize(Axis);
  v9 = OIChartGetRotation(a1) / 45.0 * (v3 * SeriesCount / FontSize);
  v10 = v5 * SeriesCount / FontSize * (OIChartGetElevation(a1) / 90.0);

  _OIRender3DOrthoAxisBackgroundInChart(a1, v9, v10);
}

void _OIRender3DOrthoAxisForegroundInChart(uint64_t a1, double a2, double a3)
{
  Type = OIAxisGetType(a1);
  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  v8 = OIChartGetAxis(a1, @"kOIChartAxisYKey");
  CGContextSaveGState(Type);
  if (!Axis)
  {
LABEL_7:
    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (!OIAxisGetType(Axis))
  {
    _OIAxisRenderHorizontalLabels(a1, Axis, v8, 0, a2);
    goto LABEL_7;
  }

  if (OIAxisGetType(Axis) == 2)
  {
    _OIAxisRenderHorizontalDates(a1, Axis, v8, 0, a2);
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    _OIAxisRenderHorizontalUnits(a1, Axis, a2, v9, 0);
    if (!v8)
    {
      goto LABEL_15;
    }
  }

LABEL_8:
  if (OIAxisGetType(v8))
  {
    if (OIAxisGetType(v8) == 2)
    {
      _OIAxisRenderVerticalDates(a1, v8, Axis, 0, a2, a3);
    }

    else
    {
      _OIAxisRenderVerticalUnits(a1, v8, a2, a3, v10, 0);
    }
  }

  else
  {
    _OIAxisRenderVerticalLabels(a1, v8, Axis, 0, a2, a3);
  }

LABEL_15:

  CGContextRestoreGState(Type);
}

void OIRender3DOrthoAxisForegroundInChart(uint64_t a1)
{
  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  OIChartGetPlotArea(a1);
  v4 = v3;
  v6 = v5;
  v7 = (2 * OILabelGetFontSize(Axis));
  v8 = OIChartGetRotation(a1) / 45.0 * (v4 / v7);
  v9 = OIChartGetElevation(a1) / 90.0 * (v6 / v7);

  _OIRender3DOrthoAxisForegroundInChart(a1, v8, v9);
}

void OIRender3DLayeredOrthoAxisForegroundInChart(uint64_t a1)
{
  OIChartGetPlotArea(a1);
  v3 = v2;
  v5 = v4;
  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  SeriesCount = OIChartGetSeriesCount(a1);
  FontSize = OILabelGetFontSize(Axis);
  v9 = OIChartGetRotation(a1) / 45.0 * (v3 * SeriesCount / FontSize);
  v10 = v5 * SeriesCount / FontSize * (OIChartGetElevation(a1) / 90.0);

  _OIRender3DOrthoAxisForegroundInChart(a1, v9, v10);
}

void OIRender3DFlippedOrthoAxisBackgroundInChart(uint64_t a1)
{
  Type = OIAxisGetType(a1);
  PlotArea = OIChartGetPlotArea(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  GenericRGB = OIColorCreateGenericRGB(0.8, 0.8, 0.8, 1.0);
  v11 = OIColorCreateGenericRGB(0.5, 0.5, 0.5, 1.0);
  PlotStrokeWidth = OIChartGetPlotStrokeWidth(a1);
  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  v13 = OIChartGetAxis(a1, @"kOIChartAxisYKey");
  v14 = (2 * OILabelGetFontSize(v13));
  v15 = OIChartGetRotation(a1) / 45.0 * (v7 / v14);
  v16 = OIChartGetElevation(a1) / 90.0 * (v9 / v14);
  v17 = v7 - v15;
  OIAxisUpdateScaleForLength(Axis, v17);
  v28 = v9 - v16;
  OIAxisUpdateScaleForLength(v13, v9 - v16);
  Mutable = CGPathCreateMutable();
  v19 = floor(v5) + 0.5;
  v29 = floor(PlotArea) + 0.5;
  CGPathMoveToPoint(Mutable, 0, v29, v19);
  v20 = floor(PlotArea + v15) + 0.5;
  v31 = v16;
  v21 = floor(v5 + v16) + 0.5;
  CGPathAddLineToPoint(Mutable, 0, v20, v21);
  v22 = PlotArea + v17;
  v23 = floor(v15 + v22) + 0.5;
  CGPathAddLineToPoint(Mutable, 0, v23, v21);
  CGPathAddLineToPoint(Mutable, 0, floor(v22) + 0.5, v19);
  CGPathCloseSubpath(Mutable);
  if (GenericRGB)
  {
    CGContextSetFillColorWithColor(Type, GenericRGB);
    CGContextAddPath(Type, Mutable);
    CGContextFillPath(Type);
  }

  if (v11)
  {
    CGContextSetStrokeColorWithColor(Type, v11);
    CGContextAddPath(Type, Mutable);
    CGContextSetLineWidth(Type, PlotStrokeWidth);
    CGContextStrokePath(Type);
  }

  CGPathRelease(Mutable);
  v24 = CGPathCreateMutable();
  CGPathMoveToPoint(v24, 0, v20, v21);
  v25 = floor(v31 + v5 + v28) + 0.5;
  CGPathAddLineToPoint(v24, 0, v20, v25);
  CGPathAddLineToPoint(v24, 0, v23, v25);
  CGPathAddLineToPoint(v24, 0, v23, v21);
  CGPathCloseSubpath(v24);
  if (GenericRGB)
  {
    CGContextSetFillColorWithColor(Type, GenericRGB);
    CGContextAddPath(Type, v24);
    CGContextFillPath(Type);
  }

  if (v11)
  {
    CGContextSetStrokeColorWithColor(Type, v11);
    CGContextAddPath(Type, v24);
    CGContextSetLineWidth(Type, PlotStrokeWidth);
    CGContextStrokePath(Type);
  }

  CGPathRelease(v24);
  v26 = OICreateDimmedColorFromColor(GenericRGB, 0.5);
  v27 = CGPathCreateMutable();
  CGPathMoveToPoint(v27, 0, v29, v19);
  CGPathAddLineToPoint(v27, 0, v29, floor(v5 + v28) + 0.5);
  CGPathAddLineToPoint(v27, 0, v20, v25);
  CGPathAddLineToPoint(v27, 0, v20, v21);
  CGPathCloseSubpath(v27);
  if (v26)
  {
    CGContextSetFillColorWithColor(Type, v26);
    CGContextAddPath(Type, v27);
    CGContextFillPath(Type);
  }

  if (v11)
  {
    CGContextSetStrokeColorWithColor(Type, v11);
    CGContextAddPath(Type, v27);
    CGContextSetLineWidth(Type, PlotStrokeWidth);
    CGContextStrokePath(Type);
  }

  CGPathRelease(v27);
  CGColorRelease(v26);
  if (Axis && OIAxisGetDrawMajorGridlines(Axis))
  {
    _OIAxisRenderVerticallUnitLines(a1, Axis, v15, v31);
  }

  if (v13 && OIAxisGetDrawMajorGridlines(v13))
  {
    _OIAxisRenderHorizontalUnitLines(a1, v13, v15, v31);
  }

  CGColorRelease(GenericRGB);

  CGColorRelease(v11);
}

void OIRender3DFlippedOrthoAxisForegroundInChart(uint64_t a1)
{
  Type = OIAxisGetType(a1);
  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  v4 = OIChartGetAxis(a1, @"kOIChartAxisYKey");
  FontSize = OILabelGetFontSize(v4);
  OIChartGetPlotArea(a1);
  v7 = v6;
  v8 = (2 * FontSize);
  v10 = OIChartGetRotation(a1) / 45.0 * (v9 / v8);
  v11 = v7 / v8 * (OIChartGetElevation(a1) / 90.0);
  CGContextSaveGState(Type);
  if (Axis)
  {
    if (!OIAxisGetType(Axis))
    {
      _OIAxisRenderHorizontalLabels(a1, Axis, v4, 0, v10);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    _OIAxisRenderHorizontalUnits(a1, Axis, v10, v12, 0);
  }

  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (OIAxisGetType(v4))
  {
    _OIAxisRenderVerticalUnits(a1, v4, v10, v11, v13, 0);
  }

  else
  {
    _OIAxisRenderVerticalLabels(a1, v4, Axis, 0, v10, v11);
  }

LABEL_10:

  CGContextRestoreGState(Type);
}

void OIRenderRadarAxisBackgroundInChart(uint64_t a1)
{
  Type = OIAxisGetType(a1);
  PlotArea = OIChartGetPlotArea(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OIAxisAreLabelsCentered(a1);
  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  v12 = OIChartGetAxis(a1, @"kOIChartAxisYKey");
  CGContextSaveGState(Type);
  CGContextBeginPath(Type);
  if (v10)
  {
    v35.width = 0.0;
    v35.height = 0.0;
    CGContextSetShadow(Type, v35, 0.0);
  }

  CGContextSetRGBStrokeColor(Type, 0.0, 0.0, 0.0, 1.0);
  CGContextSetLineWidth(Type, 0.3);
  FontSize = OILabelGetFontSize(Axis);
  MinValue = OIAxisGetMinValue(v12);
  v14 = OILabelGetFontSize(v12);
  Unit = OIAxisGetUnit(v12);
  v16 = MinValue / Unit;
  v31 = Unit;
  v17 = v14 / Unit + 1.0;
  v18 = (MinValue / Unit);
  v32 = v17;
  if (v17 > v18)
  {
    v19 = PlotArea + v7 * 0.5;
    v20 = v16;
    v21 = v5 + v9 * 0.5;
    v22 = FontSize + 1.0;
    do
    {
      if (v22 > 0.0)
      {
        v23 = 0;
        v24 = v31 * v18;
        v25 = 1;
        do
        {
          v26 = OIAxisConvertValueToLocal(v12, v24) * 0.5;
          v27 = __sincos_stret(v23 * -3.14159265 / FontSize + 1.57079633);
          v28 = floor(v19 + v26 * v27.__cosval) + 0.5;
          v29 = floor(v21 + v26 * v27.__sinval) + 0.5;
          if (v25 == 1)
          {
            CGContextMoveToPoint(Type, v28, v29);
          }

          else
          {
            CGContextAddLineToPoint(Type, v28, v29);
          }

          v30 = v25++;
          v23 += 2;
        }

        while (v22 > v30);
      }

      CGContextStrokePath(Type);
      v18 = ++v20;
    }

    while (v32 > v20);
  }

  CGContextRestoreGState(Type);
}

void OIRenderRadarAxisForegroundInChart(uint64_t a1)
{
  v43[2] = *MEMORY[0x277D85DE8];
  Type = OIAxisGetType(a1);
  PlotArea = OIChartGetPlotArea(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OIAxisAreLabelsCentered(a1);
  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  v11 = OIChartGetAxis(a1, @"kOIChartAxisYKey");
  CGContextSaveGState(Type);
  CGContextBeginPath(Type);
  if (v10)
  {
    v44.width = 0.0;
    v44.height = 0.0;
    CGContextSetShadow(Type, v44, 0.0);
  }

  v40 = v5 + v9 * 0.5;
  v12 = PlotArea + v7 * 0.5;
  CGContextSetRGBStrokeColor(Type, 0.0, 0.0, 0.0, 1.0);
  CGContextSetLineWidth(Type, 0.3);
  FontSize = OILabelGetFontSize(Axis);
  MinValue = OIAxisGetMinValue(v11);
  v14 = OILabelGetFontSize(v11);
  if (FontSize > 0.0)
  {
    v15 = 0;
    v37 = floor(v40) + 0.5;
    v38 = floor(v12) + 0.5;
    v16 = 1;
    do
    {
      v17 = v14;
      v18 = OIAxisConvertValueToLocal(v11, v14) * 0.5;
      v19 = __sincos_stret(v15 * -3.14159265 / FontSize + 1.57079633);
      v20 = v12 + v18 * v19.__cosval;
      CGContextMoveToPoint(Type, v38, v37);
      v21 = floor(v40 + v18 * v19.__sinval);
      v14 = v17;
      CGContextAddLineToPoint(Type, floor(v20) + 0.5, v21 + 0.5);
      v22 = v16++;
      v15 += 2;
    }

    while (FontSize > v22);
  }

  CGContextStrokePath(Type);
  Scale = OIAxisGetScale(v11);
  Unit = OIAxisGetUnit(v11);
  v25 = v14 / Unit + 1.0;
  v26 = (MinValue / Unit);
  if (v25 > v26)
  {
    v27 = fmin(Scale * Unit, 10.0);
    v28 = *MEMORY[0x277CC4838];
    v29 = *MEMORY[0x277CC49C0];
    v30 = (MinValue / Unit) + 1;
    do
    {
      v31 = Unit * v26;
      v32 = 0x277CCA000uLL;
      if (v14 >= 1.0)
      {
        LODWORD(v32) = llround(v31);
        [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v32];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%f, 1", *&v31];
      }
      v33 = ;
      v42[0] = v28;
      v34 = OICreateDefaultFontWithSize(v27);
      v42[1] = v29;
      v43[0] = v34;
      v43[1] = OIAxisGetTextColor(Axis);
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __OIRenderRadarAxisForegroundInChart_block_invoke;
      v41[3] = &__block_descriptor_64_e29__CGPoint_dd_24__0_CGSize_dd_8l;
      v41[4] = v11;
      *&v41[5] = v31;
      *&v41[6] = v12;
      *&v41[7] = v40;
      OIDrawStringWithAttributes(v33, v35, Type, v41);

      v26 = v30++;
    }

    while (v25 > v26);
  }

  CGContextRestoreGState(Type);
}

__CFArray *_OIAxisRenderBuildStringArrayAndComputeWidth(void *a1, uint64_t a2, CGFloat a3, uint64_t a4, double *a5)
{
  v8 = a1;
  v16 = 0;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v10 = *MEMORY[0x277CBEEE8];
  v11 = 0.0;
  do
  {
    v12 = v8[2](v8, a2, &v16);
    if (v16)
    {
      break;
    }

    v13 = v12;
    if (v12)
    {
      CFArrayAppendValue(Mutable, v12);
      CFRelease(v13);
    }

    else
    {
      CFArrayAppendValue(Mutable, v10);
    }

    v14 = OISizeForStringInContext(v13, a3) + 2.0;
    if (v14 > v11)
    {
      v11 = v14;
    }

    ++a2;
  }

  while (v16 != 1);
  if (a5)
  {
    *a5 = v11;
  }

  return Mutable;
}

CFStringRef OIFormatterCreateStringFromDouble(const __CFString *a1, double a2)
{
  valuePtr = a2;
  v3 = CFLocaleCopyCurrent();
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFNumberFormatterCreate(*MEMORY[0x277CBECE8], v3, kCFNumberFormatterDecimalStyle);
  v6 = v5;
  if (a1)
  {
    CFNumberFormatterSetFormat(v5, a1);
  }

  CFRelease(v3);
  v7 = CFNumberFormatterCreateStringWithValue(v4, v6, kCFNumberDoubleType, &valuePtr);
  CFRelease(v6);
  return v7;
}

CFStringRef OIFormatterCreateDateStringFromDouble(const __CFString *a1, CFAbsoluteTime a2)
{
  v4 = CFLocaleCopyCurrent();
  v5 = *MEMORY[0x277CBECE8];
  v6 = CFDateFormatterCreate(*MEMORY[0x277CBECE8], v4, kCFDateFormatterShortStyle, kCFDateFormatterNoStyle);
  v7 = v6;
  if (a1)
  {
    CFDateFormatterSetFormat(v6, a1);
  }

  CFRelease(v4);
  v8 = CFDateCreate(v5, a2);
  StringWithDate = CFDateFormatterCreateStringWithDate(v5, v7, v8);
  CFRelease(v7);
  CFRelease(v8);
  return StringWithDate;
}

CFStringRef OIFormatterCreatePercentStringFromDouble(const __CFString *a1, double a2)
{
  valuePtr = a2;
  v3 = CFLocaleCopyCurrent();
  v4 = *MEMORY[0x277CBECE8];
  v5 = CFNumberFormatterCreate(*MEMORY[0x277CBECE8], v3, kCFNumberFormatterPercentStyle);
  v6 = v5;
  if (a1)
  {
    CFNumberFormatterSetFormat(v5, a1);
  }

  v10 = 0x3FF0000000000000;
  v7 = CFNumberCreate(v4, kCFNumberFloatType, &v10);
  CFNumberFormatterSetProperty(v6, *MEMORY[0x277CBEF78], v7);
  CFRelease(v7);
  CFRelease(v3);
  v8 = CFNumberFormatterCreateStringWithValue(v4, v6, kCFNumberDoubleType, &valuePtr);
  CFRelease(v6);
  return v8;
}

uint64_t OIFormatterCreateStringUsingCustomFormatter(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {

    return a2();
  }

  else
  {
    CFShow(@"formatterCallback not defined");
    return 0;
  }
}

void *_OIErrorBarRetain(uint64_t a1, void *a2)
{
  result = a2;
  ++*a2;
  return result;
}

double OIErrorBarCreate()
{
  Default = CFAllocatorGetDefault();
  v1 = MEMORY[0x266701C00](Default, 24, 0x1000040504FFAC1, 0);
  *v1 = 1;
  *&result = 0x200000000;
  v1[1] = 0x200000000;
  v1[2] = 0x3FF0000000000000;
  return result;
}

void OIErrorBarRelease(void *a1)
{
  if (a1)
  {
    if ((*a1)-- == 1)
    {
      Default = CFAllocatorGetDefault();

      CFAllocatorDeallocate(Default, a1);
    }
  }
}

uint64_t OIErrorBarCreateFromDictionary(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Default = CFAllocatorGetDefault();
  v3 = MEMORY[0x266701C00](Default, 24, 0x1000040504FFAC1, 0);
  *v3 = 1;
  *(v3 + 8) = 0x200000000;
  *(v3 + 16) = 0x3FF0000000000000;
  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, @"kOIChartSeriesErrorBarTypeKey");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberNSIntegerType, &valuePtr);
    v5 = valuePtr;
  }

  else
  {
    v5 = 0;
  }

  *(v3 + 8) = v5;
  v6 = 2;
  v12 = 2;
  v7 = CFDictionaryGetValue(a1, @"kOIChartSeriesErrorBarValueTypeKey");
  if (v7)
  {
    CFNumberGetValue(v7, kCFNumberNSIntegerType, &v12);
    v6 = v12;
  }

  *(v3 + 12) = v6;
  v11 = 0x3FF0000000000000;
  v8 = CFDictionaryGetValue(a1, @"kOIChartSeriesErrorBarValueKey");
  if (v8)
  {
    CFNumberGetValue(v8, kCFNumberCGFloatType, &v11);
    v9 = *&v11;
  }

  else
  {
    v9 = 1.0;
  }

  *(v3 + 16) = v9;
  return v3;
}

void *_OIAxisRetain(uint64_t a1, void *a2)
{
  result = a2;
  ++*a2;
  return result;
}

uint64_t _OIAxisCreate()
{
  Default = CFAllocatorGetDefault();
  v1 = MEMORY[0x266701C00](Default, 176, 0x10E004021925281, 0);
  *v1 = 1;
  *(v1 + 96) = 0;
  *(v1 + 72) = 0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 112) = 0;
  *(v1 + 104) = 1;
  *(v1 + 136) = 0;
  *(v1 + 152) = OIColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
  *(v1 + 144) = OIColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
  *(v1 + 160) = 0x3FF0000000000000;
  *(v1 + 168) = 0;
  return v1;
}

double OIAxisCreateWithLabelCount(uint64_t a1)
{
  v2 = _OIAxisCreate();
  *(v2 + 16) = 0;
  *(v2 + 40) = 0;
  result = a1;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0x3FF0000000000000;
  return result;
}

double OIAxisCreateWithRange(double a1, double a2)
{
  v4 = _OIAxisCreate();
  *(v4 + 16) = 1;
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  result = fabs((a2 - a1) / 5.0);
  *(v4 + 56) = result;
  return result;
}

void OIAxisRelease(void *a1)
{
  if (a1)
  {
    if ((*a1)-- == 1)
    {
      v3 = a1[1];
      if (v3)
      {
        CFRelease(v3);
      }

      v4 = a1[4];
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = a1[12];
      if (v5)
      {
        CFRelease(v5);
      }

      v6 = a1[14];
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = a1[18];
      if (v7)
      {
        CGColorRelease(v7);
      }

      v8 = a1[19];
      if (v8)
      {
        CGColorRelease(v8);
      }

      v9 = a1[15];
      if (v9)
      {
        CFRelease(v9);
      }

      v10 = a1[16];
      if (v10)
      {
        CFRelease(v10);
      }

      Default = CFAllocatorGetDefault();

      CFAllocatorDeallocate(Default, a1);
    }
  }
}

uint64_t _OIAxisGetMinMaxFromArray(uint64_t result, double *a2, double *a3)
{
  if (result)
  {
    v5 = result;
    result = CFArrayGetCount(result);
    if (result < 1)
    {
      v9 = 2.22507386e-308;
      v8 = 1.79769313e308;
    }

    else
    {
      v6 = result;
      v7 = 0;
      v8 = 1.79769313e308;
      v9 = 2.22507386e-308;
      do
      {
        valuePtr = 0.0;
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v7);
        result = CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &valuePtr);
        if (valuePtr > v9)
        {
          v9 = valuePtr;
        }

        if (valuePtr < v8)
        {
          v8 = valuePtr;
        }

        ++v7;
      }

      while (v6 != v7);
    }

    v11 = 0.0;
    if (v8 != 1.79769313e308)
    {
      v11 = v8;
    }

    v12 = 1.0;
    if (v9 != 2.22507386e-308)
    {
      v12 = v9;
    }
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  *a2 = v11;
  *a3 = v12;
  return result;
}

const __CFNumber *OIAxisUpdateWithDictionaryDescription(const __CFNumber *result, CFDictionaryRef theDict)
{
  if (!result || !theDict)
  {
    return result;
  }

  v3 = result;
  v61 = 0.0;
  Value = CFDictionaryGetValue(theDict, @"kOIChartAxisValueTypeKey");
  if (Value)
  {
    LODWORD(valuePtr) = 0;
    if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
    {
      v5 = 3;
      if (LODWORD(valuePtr) != 3)
      {
        v5 = 1;
      }

      v6 = 2;
      if (LODWORD(valuePtr) != 2)
      {
        v6 = v5;
      }

      *(v3 + 16) = v6;
    }
  }

  v7 = CFDictionaryGetValue(theDict, @"kOIChartAxisValuesKey");
  if (v7)
  {
    v8 = v7;
    Count = CFArrayGetCount(v7);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
        v13 = CFGetTypeID(ValueAtIndex);
        if (v13 == CFNumberGetTypeID())
        {
          CFArrayInsertValueAtIndex(Mutable, i, ValueAtIndex);
        }

        else
        {
          LODWORD(valuePtr) = 0;
          v14 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
          CFArrayInsertValueAtIndex(Mutable, i, v14);
          CFRelease(v14);
        }
      }
    }
  }

  else
  {
    Mutable = 0;
  }

  *(v3 + 112) = Mutable;
  v15 = CFDictionaryGetValue(theDict, @"kOIChartAxisLabelsKey");
  *(v3 + 96) = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  if (*(v3 + 24) != 3)
  {
    v16 = *(v3 + 16);
    switch(v16)
    {
      case 3:
        goto LABEL_25;
      case 2:
        v24 = *(v3 + 96);
        if (v24)
        {
          v25 = CFArrayGetCount(v24);
          *(v3 + 40) = xmmword_26143D350;
          if (v25 < 1)
          {
            *(v3 + 56) = 0x7FEFFFFFFFFFFFFFLL;
            v31 = 2.22507386e-308;
            v32 = 1.79769313e308;
            v30 = 1.79769313e308;
          }

          else
          {
            v26 = v25;
            for (j = 0; j != v26; ++j)
            {
              valuePtr = 0.0;
              v28 = CFArrayGetValueAtIndex(*(v3 + 96), j);
              CFNumberGetValue(v28, kCFNumberCGFloatType, &valuePtr);
              v29 = valuePtr;
              v30 = *(v3 + 40);
              if (valuePtr < v30)
              {
                *(v3 + 40) = valuePtr;
                v30 = v29;
              }

              v31 = *(v3 + 48);
              if (v29 > v31)
              {
                *(v3 + 48) = v29;
                v31 = v29;
              }
            }

            *(v3 + 56) = 0x7FEFFFFFFFFFFFFFLL;
            if (v26 == 1)
            {
              v32 = 1.79769313e308;
            }

            else
            {
              v38 = 0;
              v39 = v26 - 2;
              do
              {
                v59 = 0.0;
                valuePtr = 0.0;
                v40 = CFArrayGetValueAtIndex(*(v3 + 96), v38);
                CFNumberGetValue(v40, kCFNumberCGFloatType, &valuePtr);
                v41 = CFArrayGetValueAtIndex(*(v3 + 96), ++v38);
                CFNumberGetValue(v41, kCFNumberCGFloatType, &v59);
                if (v59 - valuePtr != 0.0)
                {
                  v42 = vabdd_f64(v59, valuePtr);
                  if (v42 < *(v3 + 56))
                  {
                    *(v3 + 56) = v42;
                  }
                }
              }

              while (v38 - 1 != v39);
              v30 = *(v3 + 40);
              v31 = *(v3 + 48);
              v32 = *(v3 + 56);
            }
          }

          *(v3 + 88) = (ceil((v31 - v30) / v32) + 1.0);
          *(v3 + 104) = 1;
        }

        else
        {
          v34 = *(v3 + 40);
          v33 = *(v3 + 48);
          v35 = (v33 - v34) / 6.0;
          v36 = v34 - v35;
          v37 = v33 + v35;
          *(v3 + 40) = v36;
          *(v3 + 48) = v37;
          *(v3 + 56) = v35;
          *(v3 + 88) = (ceil((v37 - v36) / v35) + 1.0);
        }

        break;
      case 1:
LABEL_25:
        OIAxisImproveAxisRange(v3);
        v59 = 0.0;
        valuePtr = 0.0;
        _OIAxisGetMinMaxFromArray(*(v3 + 112), &valuePtr, &v59);
        if (valuePtr != 0.0 || v59 != 0.0)
        {
          _OIAxisImproveAxisRange(&valuePtr, &v59, 0);
        }

        v17 = CFDictionaryGetValue(theDict, @"kOIChartAxisMinKey");
        v61 = 0.0;
        if (!v17 || (CFNumberGetValue(v17, kCFNumberCGFloatType, &v61), v18 = v61, v61 == 0.0))
        {
          if (!*(v3 + 112))
          {
LABEL_33:
            v19 = CFDictionaryGetValue(theDict, @"kOIChartAxisMaxKey");
            v61 = 0.0;
            if (!v19 || (CFNumberGetValue(v19, kCFNumberCGFloatType, &v61), v20 = v61, v61 == 0.0))
            {
              if (!*(v3 + 112))
              {
                goto LABEL_38;
              }

              v20 = v59;
            }

            *(v3 + 48) = v20;
LABEL_38:
            v21 = CFDictionaryGetValue(theDict, @"kOIChartAxisUnitKey");
            if (v21)
            {
              v61 = 0.0;
              CFNumberGetValue(v21, kCFNumberCGFloatType, &v61);
              if (v61 > 0.0)
              {
                *(v3 + 56) = v61;
              }
            }

            v22 = CFDictionaryGetValue(theDict, @"kOIChartAxisHasLogarithmicScaleKey");
            if (v22)
            {
              CFNumberGetValue(v22, kCFNumberSInt8Type, (v3 + 72));
            }

            v23 = CFDictionaryGetValue(theDict, @"kOIChartAxisCenterLabelsKey");
            if (v23)
            {
              CFNumberGetValue(v23, kCFNumberSInt8Type, (v3 + 104));
            }

            break;
          }

          v18 = valuePtr;
        }

        *(v3 + 40) = v18;
        goto LABEL_33;
    }
  }

  v43 = CFDictionaryGetValue(theDict, @"kOIChartAxisHideTextKey");
  if (v43)
  {
    CFNumberGetValue(v43, kCFNumberSInt8Type, (v3 + 136));
  }

  v44 = CFDictionaryGetValue(theDict, @"kOIChartStrokeColorKey");
  if (v44)
  {
    v45 = v44;
    v46 = *(v3 + 144);
    if (v46)
    {
      CGColorRelease(v46);
    }

    *(v3 + 144) = CGColorRetain(v45);
  }

  v47 = CFDictionaryGetValue(theDict, @"kOIChartStrokeWidthKey");
  if (v47)
  {
    CFNumberGetValue(v47, kCFNumberCGFloatType, (v3 + 160));
  }

  v48 = CFDictionaryGetValue(theDict, @"kOIChartLabelKey");
  *(v3 + 32) = v48;
  if (v48)
  {
    CFRetain(v48);
  }

  v49 = CFDictionaryGetValue(theDict, @"kOIChartAxisValueFormatKey");
  *(v3 + 120) = v49;
  if (v49)
  {
    CFRetain(v49);
  }

  v50 = CFDictionaryGetValue(theDict, @"kOIChartAxisCustomFormatterKey");
  *(v3 + 128) = v50;
  if (v50)
  {
    CFRetain(v50);
  }

  v51 = CFDictionaryGetValue(theDict, @"kOIChartTextColorKey");
  if (v51)
  {
    v52 = v51;
    v53 = *(v3 + 152);
    if (v53)
    {
      CGColorRelease(v53);
    }

    *(v3 + 152) = CGColorRetain(v52);
  }

  result = CFDictionaryGetValue(theDict, @"kOIChartAxisDrawMajorGridlines");
  if (result)
  {
    result = CFNumberGetValue(result, kCFNumberSInt8Type, (v3 + 168));
  }

  v54 = *(v3 + 40);
  v55 = *(v3 + 48);
  if (v54 <= v55)
  {
    v56 = *(v3 + 48);
    if (v54 == v55)
    {
      *(v3 + 40) = xmmword_26143D360;
      v54 = 0.0;
      v56 = 100.0;
    }
  }

  else
  {
    *(v3 + 40) = v55;
    *(v3 + 48) = v54;
    v56 = v54;
    v54 = v55;
  }

  v57 = *(v3 + 56);
  v58 = vabdd_f64(v56, v54) / 100.0;
  if (v57 < v58)
  {
    *(v3 + 56) = v58;
    v57 = v58;
  }

  if (v57 == 0.0)
  {
    v57 = (fabs(v56) - fabs(v54)) / 5.0;
    *(v3 + 56) = v57;
  }

  if (v57 < 0.0)
  {
    *(v3 + 56) = fabs(v57);
  }

  if (v54 <= 0.0 && (*(v3 + 72) & 1) != 0 && v56 > 1.0)
  {
    *(v3 + 40) = 0x3FF0000000000000;
  }

  return result;
}

void OIAxisImproveAxisRange(uint64_t a1)
{
  if (a1 && (*(a1 + 16) | 2) == 3 && *(a1 + 24) != 3)
  {
    _OIAxisImproveAxisRange((a1 + 40), (a1 + 48), (a1 + 56));
  }
}

void _OIAxisImproveAxisRange(double *a1, double *a2, double *a3)
{
  v10 = 0.0;
  v11 = 0.0;
  _OIAxisRoundUpValue(&v10, *a2);
  *a2 = v6;
  _OIAxisRoundDownValue(&v11, *a1);
  *a1 = v7;
  v8 = *a2;
  if (v7 > 0.0 && v8 > 0.0 && v7 < v8 * 9.0 / 10.0)
  {
    *a1 = 0.0;
    v8 = *a2;
    v7 = 0.0;
LABEL_10:
    if (v8 != v7)
    {
      goto LABEL_16;
    }

    if (v8 > 0.0)
    {
      *a1 = 0.0;
      if (!a3)
      {
        return;
      }

      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v7 >= 0.0 || v8 >= 0.0 || v8 <= v7 * 9.0 / 10.0)
  {
    goto LABEL_10;
  }

  *a2 = 0.0;
  v7 = *a1;
  if (*a1 != 0.0)
  {
LABEL_16:
    if (!a3)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_14:
  if (v7 < 0.0)
  {
    *a2 = 0.0;
    goto LABEL_16;
  }

  *a2 = 1.0;
  if (!a3)
  {
    return;
  }

LABEL_17:
  v9 = v11;
  if (v10 > v11)
  {
    v9 = v10;
  }

  *a3 = v9;
}

void _OIAxisRoundUpValue(double *a1, double a2)
{
  v4 = 0.0;
  if (a2 == 0.0)
  {
    goto LABEL_14;
  }

  v5 = fabs(a2);
  v6 = log10(v5);
  v7 = __exp10(trunc(v6));
  v8 = v5 / v7;
  v9 = 2.0;
  if (a2 >= 0.0)
  {
    if (v8 < 2.0)
    {
      v10 = v7 * 0.4;
      goto LABEL_11;
    }

    v9 = 4.0;
    if (v8 >= 4.0)
    {
      v9 = 5.0;
      v10 = v7;
      if (v8 >= 5.0)
      {
        v9 = 6.0;
        v10 = v7 + v7;
        if (v8 >= 6.0)
        {
          v9 = 8.0;
          if (v8 >= 8.0)
          {
            v9 = 10.0;
          }
        }
      }

      goto LABEL_11;
    }

LABEL_10:
    v10 = v7;
    goto LABEL_11;
  }

  if (v8 >= 2.0)
  {
    v9 = 4.0;
    if (v8 >= 4.0)
    {
      v10 = v7;
      if (v8 >= 5.0)
      {
        v9 = 6.0;
        v10 = v7 + v7;
        if (v8 >= 6.0)
        {
          if (v8 >= 8.0)
          {
            v9 = 8.0;
          }
        }

        else
        {
          v9 = 5.0;
        }
      }

      goto LABEL_11;
    }

    v9 = 2.0;
    goto LABEL_10;
  }

  v10 = v7 * 0.4;
  v9 = 0.0;
LABEL_11:
  v11 = fabs(v7 * v9);
  if (!a1)
  {
    return;
  }

  v12 = v11 == INFINITY;
  v4 = 2.0e307;
  if (!v12)
  {
    v4 = v10;
  }

LABEL_14:
  *a1 = v4;
}

void _OIAxisRoundDownValue(double *a1, double a2)
{
  v4 = 0.0;
  if (a2 == 0.0)
  {
    goto LABEL_14;
  }

  v5 = fabs(a2);
  v6 = log10(v5);
  v7 = __exp10(trunc(v6));
  v8 = v5 / v7;
  v9 = 2.0;
  if (a2 < 0.0)
  {
    if (v8 < 2.0)
    {
      v10 = v7 * 0.4;
      goto LABEL_11;
    }

    v9 = 4.0;
    if (v8 >= 4.0)
    {
      v9 = 5.0;
      v10 = v7;
      if (v8 >= 5.0)
      {
        v9 = 6.0;
        v10 = v7 + v7;
        if (v8 >= 6.0)
        {
          v9 = 8.0;
          if (v8 >= 8.0)
          {
            v9 = 10.0;
          }
        }
      }

      goto LABEL_11;
    }

LABEL_10:
    v10 = v7;
    goto LABEL_11;
  }

  if (v8 >= 2.0)
  {
    v9 = 4.0;
    if (v8 >= 4.0)
    {
      v10 = v7;
      if (v8 >= 5.0)
      {
        v9 = 6.0;
        v10 = v7 + v7;
        if (v8 >= 6.0)
        {
          if (v8 >= 8.0)
          {
            v9 = 8.0;
          }
        }

        else
        {
          v9 = 5.0;
        }
      }

      goto LABEL_11;
    }

    v9 = 2.0;
    goto LABEL_10;
  }

  v10 = v7 * 0.4;
  v9 = 0.0;
LABEL_11:
  v11 = fabs(v7 * v9);
  if (!a1)
  {
    return;
  }

  v12 = v11 == INFINITY;
  v4 = 2.0e307;
  if (!v12)
  {
    v4 = v10;
  }

LABEL_14:
  *a1 = v4;
}

double _OIAxisBestUnit(double a1, double a2, double a3, double a4)
{
  if (a4 <= a3)
  {
    return a3;
  }

  else
  {
    return a4;
  }
}

void OIAxisUpdateScaleForLength(uint64_t a1, double a2)
{
  if (a1)
  {
    if (*(a1 + 72) == 1)
    {
      v4 = *(a1 + 48) - *(a1 + 40);
      if (v4 != 1.0)
      {
        v5 = v4;
        v6 = log10f(v5);
LABEL_12:
        a2 = a2 / v6;
      }
    }

    else
    {
      if (*(a1 + 16) == 2)
      {
        v6 = *(a1 + 88);
        goto LABEL_12;
      }

      if ((*(a1 + 104) & 1) == 0 && *(a1 + 96))
      {
        v6 = *(a1 + 48) + -1.0 - *(a1 + 40);
        goto LABEL_12;
      }

      v8 = *(a1 + 40);
      v7 = *(a1 + 48);
      if (v7 != v8)
      {
        v6 = v7 - v8;
        goto LABEL_12;
      }
    }

    *(a1 + 64) = a2;
  }
}

double OIAxisConvertValueToLocal(uint64_t a1, double result)
{
  v2 = result;
  if (a1)
  {
    if (*(a1 + 16) == 2)
    {
      v4 = (result - *(a1 + 40)) / *(a1 + 56) * *(a1 + 64);
    }

    else
    {
      result = *(a1 + 40);
      v5 = v2 - result;
      if (*(a1 + 72) && v5 > 0.0)
      {
        if (v5 == 1.0)
        {
          return result;
        }

        v6 = v5;
        v7 = log10f(v6);
        v5 = *(a1 + 64);
      }

      else
      {
        v7 = *(a1 + 64);
      }

      v4 = v5 * v7;
    }

    return round(v4);
  }

  return result;
}

const __CFArray *OIAxisGetValueCount(void *a1)
{
  v1 = a1[2];
  if (v1 == 2)
  {
    return a1[11];
  }

  if (v1)
  {
    return 0;
  }

  result = a1[12];
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

CGColor *OIAxisSetStrokeColor(uint64_t a1, CGColorRef color)
{
  result = *(a1 + 144);
  if (result != color)
  {
    if (result)
    {
      CGColorRelease(result);
    }

    result = CGColorRetain(color);
    *(a1 + 144) = result;
  }

  return result;
}

void OIRenderDoughnutInChart(uint64_t a1, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v5 = Count;
      Type = OIAxisGetType(a1);
      PlotArea = OIChartGetPlotArea(a1);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = OIAxisAreLabelsCentered(a1);
      if (v5 >= 1)
      {
        v15 = v14;
        v16 = 0;
        for (i = 0; i != v5; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          Values = OISeriesGetValues(ValueAtIndex);
          if (Values)
          {
            v20 = CFArrayGetCount(Values);
            v21 = v20 <= v16 ? v16 : v20;
            if (v20)
            {
              v16 = v21;
            }
          }
        }

        if (v16)
        {
          CGContextSaveGState(Type);
          if (v11 >= v13)
          {
            v22 = v13;
          }

          else
          {
            v22 = v11;
          }

          if (v15)
          {
            v57.width = 0.0;
            v57.height = -4.0;
            CGContextSetShadow(Type, v57, 6.0);
          }

          if (v16 >= 1)
          {
            v23 = 0;
            v54 = v9 + v13 * 0.5;
            v55 = PlotArea + v11 * 0.5;
            v53 = v22 * 0.9 * 0.5 / (v16 + 1);
            do
            {
              v24 = 0;
              v25 = 0.0;
              do
              {
                v26 = CFArrayGetValueAtIndex(theArray, v24);
                v27 = OISeriesGetValues(v26);
                if (v27)
                {
                  v28 = v27;
                  if (v23 < CFArrayGetCount(v27))
                  {
                    v29 = CFArrayGetValueAtIndex(v28, v23);
                    valuePtr = 0.0;
                    CFNumberGetValue(v29, kCFNumberCGFloatType, &valuePtr);
                    v25 = v25 + fabs(valuePtr);
                  }
                }

                ++v24;
              }

              while (v5 != v24);
              if (v25 == 0.0)
              {
                v30 = v23 + 1;
              }

              else
              {
                v31 = 0;
                v32 = 1.57079633;
                v33 = v53 * (v23 + 1);
                v34 = v53 * (v23 + 2);
                do
                {
                  v35 = CFArrayGetValueAtIndex(theArray, v31);
                  v36 = OISeriesGetValues(v35);
                  TextColor = OILabelGetTextColor(v35);
                  StrokeColor = OILabelGetStrokeColor(v35);
                  Offset = OISeriesGetOffset(v35);
                  if (v36 && (v40 = Offset, v23 < CFArrayGetCount(v36)))
                  {
                    v41 = CFArrayGetValueAtIndex(v36, v23);
                    valuePtr = 0.0;
                    CFNumberGetValue(v41, kCFNumberCGFloatType, &valuePtr);
                    v42 = fabs(valuePtr);
                    valuePtr = v42;
                    v43 = 0.0;
                    v44 = 0.0;
                    if (v23 >= v16 - 1)
                    {
                      v45 = __sincos_stret(v32 + v42 * -3.14159265 / v25);
                      v43 = v40 * v45.__cosval;
                      v44 = v40 * v45.__sinval;
                    }

                    v46 = v55 + v43;
                    v47 = __sincos_stret(v32);
                    v48 = v54 + v44;
                    CGContextMoveToPoint(Type, v46 + v33 * v47.__cosval, v48 + v33 * v47.__sinval);
                    CGContextAddLineToPoint(Type, v46 + v34 * v47.__cosval, v48 + v34 * v47.__sinval);
                    v49 = v32 + valuePtr / v25 * -6.28318531;
                    CGContextAddArc(Type, v46, v48, v34, v32, v49, 1);
                    v50 = __sincos_stret(v49);
                    CGContextAddLineToPoint(Type, v46 + v33 * v50.__cosval, v48 + v33 * v50.__sinval);
                    CGContextAddArc(Type, v46, v48, v33, v49, v32, 0);
                    OISeriesSetupStrokeAndFillForContext(v35, Type);
                    if (StrokeColor | TextColor)
                    {
                      if (StrokeColor && TextColor)
                      {
                        v51 = kCGPathFillStroke;
                      }

                      else if (TextColor || !StrokeColor)
                      {
                        if (StrokeColor)
                        {
                          v52 = 1;
                        }

                        else
                        {
                          v52 = TextColor == 0;
                        }

                        if (v52)
                        {
                          v51 = kCGPathFillStroke;
                        }

                        else
                        {
                          v51 = kCGPathFill;
                        }
                      }

                      else
                      {
                        v51 = kCGPathStroke;
                      }

                      CGContextDrawPath(Type, v51);
                    }
                  }

                  else
                  {
                    v49 = v32;
                  }

                  ++v31;
                  v32 = v49;
                }

                while (v5 != v31);
                v30 = v23 + 1;
              }

              v23 = v30;
            }

            while (v30 != v16);
          }

          CGContextRestoreGState(Type);
        }
      }
    }
  }
}

uint64_t OIChartCreate(CFAllocatorRef Default, CGContext *a2, double a3, double a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  if (a3 > 0.0 && a4 > 0.0)
  {
    v8 = Default;
    if (!Default)
    {
      Default = CFAllocatorGetDefault();
    }

    v5 = MEMORY[0x266701C00](Default, 312, 0x10E0040094D3691, 0);
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 72) = 0u;
    *(v5 + 88) = 0u;
    *(v5 + 216) = 0u;
    *(v5 + 232) = 0u;
    *(v5 + 104) = 1;
    *v5 = 1;
    *(v5 + 8) = v8;
    *(v5 + 272) = 0;
    *(v5 + 24) = a3;
    *(v5 + 32) = a4;
    *(v5 + 16) = CGContextRetain(a2);
    *(v5 + 256) = 0;
    *(v5 + 264) = 0;
    *(v5 + 280) = 15;
    *(v5 + 288) = 20;
    *(v5 + 112) = OIColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    *(v5 + 120) = OIColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
    *(v5 + 128) = 0x4000000000000000;
    *(v5 + 136) = 0;
    *(v5 + 144) = 0;
    *(v5 + 152) = 0x3FF0000000000000;
    *(v5 + 160) = 0;
    *(v5 + 168) = 0;
    *(v5 + 176) = 0x3FF0000000000000;
    *(v5 + 184) = OIColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
    *(v5 + 192) = 0;
    *(v5 + 200) = -1;
    *(v5 + 296) = 0;
    v9 = MEMORY[0x277CBF138];
    *(v5 + 208) = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], &OIAxisDictionaryValueCallbacks);
    *(v5 + 248) = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v10 = MEMORY[0x277CBF150];
    Mutable = CFDictionaryCreateMutable(0, 0, v9, MEMORY[0x277CBF150]);
    CFArrayAppendValue(*(v5 + 248), Mutable);
    CFRelease(Mutable);
    v12 = CFDictionaryCreateMutable(0, 0, v9, v10);
    CFArrayAppendValue(*(v5 + 248), v12);
    CFRelease(v12);
    *(v5 + 304) = 0;
    OIChartSetupRendererMapping(v5);
  }

  return v5;
}

void OIChartRelease(void *ptr)
{
  if (ptr)
  {
    if ((*ptr)-- == 1)
    {
      v3 = ptr[2];
      if (v3)
      {
        CGContextRelease(v3);
      }

      v4 = ptr[14];
      if (v4)
      {
        CGColorRelease(v4);
      }

      v5 = ptr[15];
      if (v5)
      {
        CGColorRelease(v5);
      }

      v6 = ptr[17];
      if (v6)
      {
        CGColorRelease(v6);
      }

      v7 = ptr[18];
      if (v7)
      {
        CGColorRelease(v7);
      }

      v8 = ptr[20];
      if (v8)
      {
        CGColorRelease(v8);
      }

      v9 = ptr[21];
      if (v9)
      {
        CGColorRelease(v9);
      }

      v10 = ptr[23];
      if (v10)
      {
        CGColorRelease(v10);
      }

      v11 = ptr[26];
      if (v11)
      {
        CFRelease(v11);
      }

      v12 = ptr[27];
      if (v12)
      {
        CFRelease(v12);
      }

      v13 = ptr[28];
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = ptr[29];
      if (v14)
      {
        CFRelease(v14);
      }

      v15 = ptr[30];
      if (v15)
      {
        CFRelease(v15);
      }

      v16 = ptr[31];
      if (v16)
      {
        CFRelease(v16);
      }

      v17 = ptr[32];
      if (v17)
      {
        CFRelease(v17);
      }

      v18 = ptr[33];
      if (v18)
      {
        CFRelease(v18);
      }

      Default = ptr[1];
      if (!Default)
      {
        Default = CFAllocatorGetDefault();
      }

      CFAllocatorDeallocate(Default, ptr);
    }
  }
}

const __CFArray *OIChartGetSeriesCount(uint64_t a1)
{
  result = *(a1 + 264);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

void OIChartAddLabel(uint64_t a1, void *value)
{
  if (value)
  {
    Mutable = *(a1 + 256);
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(0, 0, &OILabelArrayCallbacks);
      *(a1 + 256) = Mutable;
    }

    CFArrayAppendValue(Mutable, value);
  }
}

void _OIChartAddSerieToRenderTree(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 248);
  v4 = OISeriesIsOnSecondaryAxis(a2);
  ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
  SubType = OIAxisGetSubType(a2);
  Value = CFDictionaryGetValue(ValueAtIndex, SubType);
  if (!Value)
  {
    Value = CFArrayCreateMutable(0, 0, &OISeriesArrayCallbacks);
    CFDictionarySetValue(ValueAtIndex, SubType, Value);
    CFRelease(Value);
  }

  CFArrayAppendValue(Value, a2);
}

void OIChartAddSeries(uint64_t a1, void *value)
{
  if (value)
  {
    Mutable = *(a1 + 264);
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(0, 0, &OISeriesArrayCallbacks);
      *(a1 + 264) = Mutable;
    }

    CFArrayAppendValue(Mutable, value);

    _OIChartAddSerieToRenderTree(a1, value);
  }
}

CFIndex OIChartGetValueCountForAxis(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 264);
  if (!v2)
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a1 + 264));
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  for (i = 0; i != v5; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
    if (OIAxisGetType(ValueAtIndex) == a2)
    {
      Values = OISeriesGetValues(ValueAtIndex);
      v10 = CFArrayGetCount(Values);
      if (v10 > v6)
      {
        v6 = v10;
      }
    }
  }

  return v6;
}

void OIChartDraw(uint64_t a1)
{
  v2 = 0x6004044C4A2DFLL;
  _OIChartDrawCanvas(a1);
  Copy = 0;
  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = v5;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 248), v4);
    Count = CFDictionaryGetCount(ValueAtIndex);
    if (Count >= 1)
    {
      v9 = Count;
      if (Copy)
      {
        v10 = 1;
        if (Count != 1)
        {
          goto LABEL_10;
        }

        v11 = malloc_type_calloc(1uLL, 8uLL, 0x6004044C4A2DFuLL);
        CFDictionaryGetKeysAndValues(ValueAtIndex, v11, 0);
        v12 = CFStringCompare(Copy, *v11, 1uLL);
        free(v11);
        if (v12)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      }

      v13 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
      CFDictionaryGetKeysAndValues(ValueAtIndex, v13, 0);
      Copy = CFStringCreateCopy(0, *v13);
      free(v13);
      if (v9 != 1)
      {
        break;
      }
    }

LABEL_8:
    v5 = 0;
    v10 = 0;
    v4 = 1;
    if ((v6 & 1) == 0)
    {
      if (!Copy)
      {
        return;
      }

      goto LABEL_10;
    }
  }

  v10 = 1;
  if (!Copy)
  {
    return;
  }

LABEL_10:
  if ((*(a1 + 296) & 1) == 0)
  {
    Value = CFDictionaryGetValue(*(a1 + 216), Copy);
    if (Value)
    {
      Value(a1);
    }

    key = Copy;
    if (v10)
    {
      v15 = *(a1 + 264);
      v16 = CFArrayGetCount(v15);
      v17 = v16 - 1;
      if (v16 >= 1)
      {
        v18 = v16;
        Mutable = 0;
        v20 = 0;
        do
        {
          v21 = CFArrayGetValueAtIndex(v15, v20);
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(0, 0, &OISeriesArrayCallbacks);
          }

          SubType = OIAxisGetSubType(v21);
          CFArrayAppendValue(Mutable, v21);
          if (v20 < v17 && (v23 = CFArrayGetValueAtIndex(v15, v20 + 1), OIAxisGetSubType(v23) == SubType))
          {
            ++v20;
          }

          else
          {
            v24 = CFDictionaryGetValue(*(a1 + 232), SubType);
            if (v24)
            {
              v25 = v24;
              v26 = OISeriesIsOnSecondaryAxis(v21);
              v25(a1, Mutable, v26);
            }

            CFRelease(Mutable);
            Mutable = 0;
            ++v20;
          }
        }

        while (v20 != v18);
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }

    else
    {
      v27 = 0;
      v28 = 1;
      do
      {
        v29 = v28;
        v30 = CFArrayGetValueAtIndex(*(a1 + 248), v27);
        v31 = CFDictionaryGetCount(v30);
        v32 = malloc_type_calloc(v31, 8uLL, v2);
        v33 = v2;
        v34 = malloc_type_calloc(v31, 8uLL, v2);
        CFDictionaryGetKeysAndValues(v30, v32, v34);
        if (v31 >= 1)
        {
          v35 = v32;
          v36 = v34;
          do
          {
            v37 = *v36;
            v38 = CFDictionaryGetValue(*(a1 + 232), *v35);
            if (v38)
            {
              v38(a1, v37, v27);
            }

            ++v36;
            ++v35;
            --v31;
          }

          while (v31);
        }

        free(v32);
        free(v34);
        v28 = 0;
        v27 = 1;
        v2 = v33;
      }

      while ((v29 & 1) != 0);
    }

    Copy = key;
    v39 = CFDictionaryGetValue(*(a1 + 224), key);
    if (v39)
    {
      v39(a1);
    }
  }

  if ((*(a1 + 297) & 1) == 0)
  {
    v40 = CFDictionaryGetValue(*(a1 + 240), Copy);
    if (v40)
    {
      v40(a1);
    }
  }

  if ((*(a1 + 296) & 1) == 0)
  {
    _OIChartDrawLabels(a1);
  }

  CFRelease(Copy);
}

void _OIChartDrawCanvas(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 112);
  if (v4)
  {
    CGContextSetFillColorWithColor(*(a1 + 16), v4);
    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = v2;
    v12.size.height = v3;
    CGContextFillRect(*(a1 + 16), v12);
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    CGContextSetStrokeColorWithColor(*(a1 + 16), v5);
    CGContextSetLineWidth(*(a1 + 16), *(a1 + 128));
    v6 = *(a1 + 16);
    v7 = 0;
    v8 = 0;
    v9 = v2;
    v10 = v3;

    CGContextStrokeRect(v6, *&v7);
  }
}

void _OIChartDrawLabels(uint64_t a1)
{
  v2 = *(a1 + 256);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 256), i);
        OILabelRenderInContext(ValueAtIndex, *(a1 + 16));
      }
    }
  }
}

CGImageRef OIChartCreateImage(uint64_t a1)
{
  if (*(a1 + 272))
  {
    return 0;
  }

  else
  {
    return CGBitmapContextCreateImage(*(a1 + 16));
  }
}

CFTypeRef OIChartSetBackgroundAxisRendererMapping(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 216);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = CFRetain(cf);
    *(a1 + 216) = result;
  }

  return result;
}

CFTypeRef OIChartSetForegroundAxisRendererMapping(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 224);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = CFRetain(cf);
    *(a1 + 224) = result;
  }

  return result;
}

CFTypeRef OIChartSetChartRendererMapping(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 232);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = CFRetain(cf);
    *(a1 + 232) = result;
  }

  return result;
}

CFTypeRef OIChartSetLegendRendererMapping(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 240);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = CFRetain(cf);
    *(a1 + 240) = result;
  }

  return result;
}

double *OIChartSetPlotArea(double *result, double a2, double a3, double a4, double a5)
{
  result[5] = a2;
  result[6] = a3;
  result[7] = a4;
  result[8] = a5;
  return result;
}

double *OIChartSetLegendArea(double *result, double a2, double a3, double a4, double a5)
{
  result[9] = a2;
  result[10] = a3;
  result[11] = a4;
  result[12] = a5;
  return result;
}

CGColor *OIChartSetCanvasFillColor(uint64_t a1, CGColorRef color)
{
  result = *(a1 + 112);
  if (result != color)
  {
    if (result)
    {
      CGColorRelease(result);
    }

    result = CGColorRetain(color);
    *(a1 + 112) = result;
  }

  return result;
}

CGColor *OIChartSetCanvasStrokeColor(uint64_t a1, CGColorRef color)
{
  result = *(a1 + 120);
  if (result != color)
  {
    if (result)
    {
      CGColorRelease(result);
    }

    result = CGColorRetain(color);
    *(a1 + 120) = result;
  }

  return result;
}

CGColor *OIChartSetPlotFillColor(uint64_t a1, CGColorRef color)
{
  result = *(a1 + 136);
  if (result != color)
  {
    if (result)
    {
      CGColorRelease(result);
    }

    result = CGColorRetain(color);
    *(a1 + 136) = result;
  }

  return result;
}

CGColor *OIChartSetLegendFillColor(uint64_t a1, CGColorRef color)
{
  result = *(a1 + 160);
  if (result != color)
  {
    if (result)
    {
      CGColorRelease(result);
    }

    result = CGColorRetain(color);
    *(a1 + 160) = result;
  }

  return result;
}

CGColor *OIChartSetLegendStrokeColor(uint64_t a1, CGColorRef color)
{
  result = *(a1 + 168);
  if (result != color)
  {
    if (result)
    {
      CGColorRelease(result);
    }

    result = CGColorRetain(color);
    *(a1 + 168) = result;
  }

  return result;
}

CGColor *OIChartSetLegendTextColor(uint64_t a1, CGColorRef color)
{
  result = *(a1 + 184);
  if (result != color)
  {
    if (result)
    {
      CGColorRelease(result);
    }

    result = CGColorRetain(color);
    *(a1 + 184) = result;
  }

  return result;
}

void *_OILabelCollectionRetain(uint64_t a1, void *a2)
{
  result = a2;
  if (a2)
  {
    ++*a2;
  }

  return result;
}

void *OILabelCollectionCreate()
{
  Default = CFAllocatorGetDefault();
  v1 = MEMORY[0x266701C00](Default, 16, 0x10200405730B0C9, 0);
  *v1 = 1;
  v2 = CFAllocatorGetDefault();
  v1[1] = CFArrayCreateMutable(v2, 0, &OILabelArrayCallbacks);
  return v1;
}

void *OILabelCollectionRetain(void *result)
{
  if (result)
  {
    ++*result;
  }

  return result;
}

void OILabelCollectionRelease(void *a1)
{
  if (a1)
  {
    if ((*a1)-- == 1)
    {
      v3 = a1[1];
      if (v3)
      {
        CFRelease(v3);
      }

      Default = CFAllocatorGetDefault();

      CFAllocatorDeallocate(Default, a1);
    }
  }
}

void OILabelCollectionAddString(uint64_t a1, const void *a2, double a3, double a4, double a5, double a6)
{
  v7 = OILabelCreate(a2, a3, a4, a5, a6);
  if (v7)
  {
    v8 = v7;
    OILabelSetAlignment(v7, 2);
    CFArrayAppendValue(*(a1 + 8), v8);

    OILabelRelease(v8);
  }
}

void OILabelCollectionAddNumber(uint64_t a1, const __CFString *a2, double a3, double a4, double a5, double a6, double a7)
{
  StringFromDouble = OIFormatterCreateStringFromDouble(a2, a3);
  if (StringFromDouble)
  {
    v13 = StringFromDouble;
    OILabelCollectionAddString(a1, StringFromDouble, a4, a5, a6, a7);

    CFRelease(v13);
  }
}

void OILabelCollectionAddNumberWithFormatter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), double a4, double a5, double a6, double a7, double a8)
{
  StringUsingCustomFormatter = OIFormatterCreateStringUsingCustomFormatter(a2, a3);
  if (StringUsingCustomFormatter)
  {
    v14 = StringUsingCustomFormatter;
    OILabelCollectionAddString(a1, StringUsingCustomFormatter, a5, a6, a7, a8);

    CFRelease(v14);
  }
}

void OIRenderPieInChart(uint64_t a1, uint64_t a2)
{
  v3 = [[OIPieChartRenderer alloc] initWithChart:a1];
  [(OIPieChartRenderer *)v3 renderThreeDimensional:0 pieFromSeriesArray:a2];
}

void _OIRenderPieInChart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [[OIPieChartRenderer alloc] initWithChart:a1];
  [(OIPieChartRenderer *)v6 renderThreeDimensional:a4 pieFromSeriesArray:a2];
}

void OIRender3DPieInChart(uint64_t a1, uint64_t a2)
{
  v3 = [[OIPieChartRenderer alloc] initWithChart:a1];
  [(OIPieChartRenderer *)v3 renderThreeDimensional:1 pieFromSeriesArray:a2];
}

void OIRenderStocksInChart(uint64_t a1, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count > 2)
    {
      v5 = Count;
      Type = OIAxisGetType(a1);
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      v8 = CFArrayGetValueAtIndex(theArray, 1);
      v9 = CFArrayGetValueAtIndex(theArray, 2);
      v10 = 0;
      if (v5 == 4)
      {
        v10 = CFArrayGetValueAtIndex(theArray, 3);
      }

      CGContextSaveGState(Type);
      v12.origin.x = OIChartGetPlotArea(a1);
      CGContextClipToRect(Type, v12);
      _OIRenderStockDayRangesInChart(a1, ValueAtIndex, v8);
      _OIRenderStockOpeningRangesInChart(a1, v10, v9);

      CGContextRestoreGState(Type);
    }

    else
    {

      OIChartSetStatus(a1, 5);
    }
  }
}

void _OIRenderStockDayRangesInChart(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Type = OIAxisGetType(a1);
  PlotArea = OIChartGetPlotArea(a1);
  v9 = v8;
  v10 = OIAxisAreLabelsCentered(a1);
  String = OILabelGetString(a2);
  v12 = OIAxisGetType(a2);
  if (String)
  {
    v13 = v12;
    if (v12)
    {
      Values = OISeriesGetValues(a2);
      v15 = OISeriesGetValues(a3);
      Count = CFArrayGetCount(Values);
      if (Count)
      {
        v17 = Count;
        if (Count == CFArrayGetCount(v15))
        {
          StrokeColor = OILabelGetStrokeColor(a2);
          CGContextSetStrokeColorWithColor(Type, StrokeColor);
          if (OILabelGetStrokeColor(a2))
          {
            StrokeWidth = OILabelGetStrokeWidth(a2);
          }

          else
          {
            StrokeWidth = 1.0;
          }

          CGContextSetLineWidth(Type, StrokeWidth);
          Scale = OIAxisGetScale(String);
          v21 = OIAxisAreLabelsCentered(String);
          v22 = floor(Scale * 0.5);
          v23 = 0;
          if (v21)
          {
            v24 = v22;
          }

          else
          {
            v24 = 0.0;
          }

          if (v10)
          {
            v25 = 0;
            CGContextSetShadow(Type, *(&v23 - 1), 0.0);
          }

          if (v17 >= 1)
          {
            for (i = 0; i != v17; ++i)
            {
              valuePtr = 0.0;
              ValueAtIndex = CFArrayGetValueAtIndex(Values, i);
              CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &valuePtr);
              v33 = 0.0;
              v28 = CFArrayGetValueAtIndex(v15, i);
              CFNumberGetValue(v28, kCFNumberCGFloatType, &v33);
              v29 = PlotArea + OIAxisConvertValueToLocal(String, i);
              v30 = v9 + OIAxisConvertValueToLocal(v13, valuePtr);
              v31 = PlotArea + OIAxisConvertValueToLocal(String, i);
              v32 = v9 + OIAxisConvertValueToLocal(v13, v33);
              CGContextMoveToPoint(Type, floor(v24 + v29) + 0.5, floor(v30) + 0.5);
              CGContextAddLineToPoint(Type, floor(v24 + v31) + 0.5, floor(v32) + 0.5);
            }
          }

          CGContextStrokePath(Type);
        }
      }
    }
  }
}

void _OIRenderStockOpeningRangesInChart(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Type = OIAxisGetType(a1);
  PlotArea = OIChartGetPlotArea(a1);
  v9 = v8;
  v10 = OIAxisAreLabelsCentered(a1);
  String = OILabelGetString(a3);
  v12 = OIAxisGetType(a3);
  if (String)
  {
    v13 = v12;
    if (v12)
    {
      Values = OISeriesGetValues(a2);
      v15 = OISeriesGetValues(a3);
      Count = 0;
      if (a2 && Values)
      {
        Count = CFArrayGetCount(Values);
      }

      if (v15 && Count == CFArrayGetCount(v15))
      {
        StrokeColor = OILabelGetStrokeColor(a3);
        CGContextSetStrokeColorWithColor(Type, StrokeColor);
        if (OILabelGetStrokeColor(a3))
        {
          StrokeWidth = OILabelGetStrokeWidth(a3);
        }

        else
        {
          StrokeWidth = 1.0;
        }

        CGContextSetLineWidth(Type, StrokeWidth);
        Scale = OIAxisGetScale(String);
        OIAxisAreLabelsCentered(String);
        if (v10)
        {
          v36.width = 0.0;
          v36.height = 0.0;
          CGContextSetShadow(Type, v36, 0.0);
        }

        if (Count >= 1)
        {
          v20 = 0;
          v21 = Scale * 0.25;
          v22 = Scale * 0.5;
          do
          {
            valuePtr = 0.0;
            ValueAtIndex = CFArrayGetValueAtIndex(Values, v20);
            CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &valuePtr);
            v34 = 0.0;
            v24 = CFArrayGetValueAtIndex(v15, v20);
            CFNumberGetValue(v24, kCFNumberCGFloatType, &v34);
            v25 = OIAxisConvertValueToLocal(String, v20);
            v26 = OIAxisConvertValueToLocal(v13, valuePtr);
            OIAxisConvertValueToLocal(String, v20);
            v27 = OIAxisConvertValueToLocal(v13, v34);
            if (valuePtr >= v34)
            {
              v28 = 0.0;
              v29 = 0.0;
              v30 = 0.0;
            }

            else
            {
              v28 = 1.0;
              v29 = 1.0;
              v30 = 1.0;
            }

            CGContextSetRGBFillColor(Type, v28, v29, v30, 1.0);
            v31 = v9 + v26;
            v32 = v21 + PlotArea + v25;
            v33 = v9 + v27 - v31;
            v37.origin.x = v32;
            v37.origin.y = v31;
            v37.size.width = v22;
            v37.size.height = v33;
            CGContextFillRect(Type, v37);
            v38.origin.x = v32;
            v38.origin.y = v31;
            v38.size.width = v22;
            v38.size.height = v33;
            CGContextStrokeRect(Type, v38);
            ++v20;
          }

          while (Count != v20);
        }

        CGContextStrokePath(Type);
      }
    }
  }
}

void OIRenderLegendInChart(uint64_t a1)
{
  Series = OIChartGetSeries(a1);

  _OIRenderLegendForSeriesInChart(a1, Series);
}

void _OIRenderLegendForSeriesInChart(uint64_t a1, const __CFArray *a2)
{
  Type = OIAxisGetType(a1);
  v5 = OIAxisAreLabelsCentered(a1);
  LegendFillColor = OIChartGetLegendFillColor(a1);
  LegendTextColor = OIChartGetLegendTextColor(a1);
  LegendStrokeColor = OIChartGetLegendStrokeColor(a1);
  LegendStrokeWidth = OIChartGetLegendStrokeWidth(a1);
  LegendArea = OIChartGetLegendArea(a1);
  if (v13 == 0.0)
  {
    return;
  }

  v14 = LegendArea;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  CGContextSaveGState(Type);
  if ((OIChartGetLegendHasShadow(a1) & v5) == 1)
  {
    v79.width = 0.0;
    v79.height = -4.0;
    CGContextSetShadow(Type, v79, 6.0);
  }

  if (LegendFillColor)
  {
    CGContextSetFillColorWithColor(Type, LegendFillColor);
    v81.origin.x = floor(v14) + 0.5;
    v81.origin.y = floor(v15) + 0.5;
    v81.size.width = ceil(v16);
    v81.size.height = ceil(v17);
    CGContextFillRect(Type, v81);
  }

  if (v5)
  {
    v80.width = 0.0;
    v80.height = 0.0;
    CGContextSetShadow(Type, v80, 0.0);
  }

  if (a2)
  {
    v75 = LegendTextColor;
    v58 = LegendStrokeWidth;
    CGContextSaveGState(Type);
    v18 = OIChartGetLegendPlacement(a1) & 0xFFFFFFFFFFFFFFFDLL;
    v67 = v14;
    v82.origin.x = v14;
    v82.origin.y = v15;
    v82.size.width = v16;
    v82.size.height = v17;
    CGContextClipToRect(Type, v82);
    Count = CFArrayGetCount(a2);
    v20 = Count;
    v21 = Count + 1;
    v22 = v17 / (Count + 1);
    v23 = v22 > 11.0 || v18 == 0;
    v24 = v22 + -1.0;
    if (v23)
    {
      v25 = 10.0;
    }

    else
    {
      v25 = v24;
    }

    v62 = v18 == 0;
    if (v24 >= 10.0 || v18 == 0)
    {
      v27 = 10.0;
    }

    else
    {
      v27 = v24;
    }

    v74 = v18;
    v64 = v15;
    if (v18)
    {
      if (Count >= 11)
      {
        v21 = (floor(Count / 10.0) + 1.0);
        v28 = Count / v21 + 1;
        goto LABEL_29;
      }

      v21 = 1;
      v28 = Count;
    }

    else
    {
      if (Count >= 7)
      {
        v28 = (floor(Count / 6.0) + 1.0);
        v21 = Count / v28 + 1;
        goto LABEL_29;
      }

      v28 = 1;
    }

    if (Count < 1)
    {
      v30 = 0.0;
LABEL_34:
      v34 = ceil(v25);
      v35 = v16 / v21;
      v65 = v17;
      if (v17 / v28 <= 25.0)
      {
        v36 = v17 / v28;
      }

      else
      {
        v36 = 25.0;
      }

      v59 = LegendStrokeColor;
      if (v30 <= v35)
      {
        v63 = v34;
      }

      else
      {
        v63 = v34 * (v35 / v30);
        v27 = v27 * (v35 / v30);
      }

      v66 = v21;
      if (v21 >= 1)
      {
        v68 = 0;
        v57 = v28 / 2;
        v37 = ceil(v63);
        v56 = v67 + v16 * 0.5;
        v55 = v21 >> 1;
        v54 = -v35;
        v70 = *MEMORY[0x277CC4838];
        v69 = *MEMORY[0x277CC49C0];
        idx = v20 - 1;
        v72 = a2;
        c = Type;
        v71 = v28;
        while (v28 < 1)
        {
LABEL_58:
          idx -= v28;
          if (++v68 == v66)
          {
            goto LABEL_59;
          }
        }

        v38 = 0;
        v39 = floor(v67 + v35 * v68);
        v61 = floor(v56 + v54 * ((v55 - v68) + -0.5));
        v40 = idx;
        v41 = v57;
        while ((v40 & 0x8000000000000000) == 0)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v40);
          Label = OIAxisGetLabel(ValueAtIndex);
          Labels = OIAxisGetLabels(ValueAtIndex);
          TextColor = OILabelGetTextColor(ValueAtIndex);
          StrokeColor = OILabelGetStrokeColor(ValueAtIndex);
          MarkerColor = OISeriesGetMarkerColor(ValueAtIndex);
          if (v74)
          {
            v47 = v64 + v65 * 0.5 + v36 * v41;
            v48 = v39;
          }

          else
          {
            v47 = v64 + v65 + -v36 * (v38 + 1);
            v48 = v61;
          }

          v49 = floor(v47) + 0.5;
          v50 = v48 + 0.5;
          v51 = [MEMORY[0x277CBEB38] dictionary];
          v52 = OICreateDefaultFontWithSize(v27);
          [v51 setObject:v52 forKeyedSubscript:v70];

          [v51 setObject:v75 forKeyedSubscript:v69];
          if (Labels && MarkerColor)
          {
            Type = c;
            CGContextSetFillColorWithColor(c, MarkerColor);
            v83.origin.x = v50;
            v83.origin.y = v49;
            v83.size.width = v37;
            v83.size.height = v37;
            CGContextFillRect(c, v83);
            a2 = v72;
          }

          else
          {
            Type = c;
            if (TextColor)
            {
              CGContextSetFillColorWithColor(c, TextColor);
              v84.origin.x = v50;
              v84.origin.y = v49;
              v84.size.width = v37;
              v84.size.height = v37;
              CGContextFillRect(c, v84);
            }

            a2 = v72;
            if (StrokeColor)
            {
              CGContextSetStrokeColorWithColor(c, StrokeColor);
              StrokeWidth = OILabelGetStrokeWidth(ValueAtIndex);
              CGContextSetLineWidth(c, StrokeWidth);
              CGContextSetLineJoin(c, kCGLineJoinRound);
              CGContextSetLineCap(c, kCGLineCapRound);
              v85.origin.x = v50;
              v85.origin.y = v49;
              v85.size.width = v37;
              v85.size.height = v37;
              CGContextStrokeRect(c, v85);
            }
          }

          v28 = v71;
          if (Label)
          {
            v77[0] = MEMORY[0x277D85DD0];
            v77[1] = 3221225472;
            v77[2] = ___OIRenderLegendForSeriesInChart_block_invoke;
            v77[3] = &__block_descriptor_121_e29__CGPoint_dd_24__0_CGSize_dd_8l;
            v78 = v62;
            *&v77[4] = v67;
            *&v77[5] = v64;
            *&v77[6] = v16;
            *&v77[7] = v65;
            *&v77[8] = v35;
            *&v77[9] = v36;
            v77[10] = v66;
            v77[11] = v68;
            *&v77[12] = v63;
            v77[13] = v38;
            v77[14] = v71;
            OIDrawStringWithAttributes(Label, v51, Type, v77);
          }

          ++v38;
          --v41;
          --v40;
          if (v71 == v38)
          {
            goto LABEL_58;
          }
        }
      }

LABEL_59:
      CGContextRestoreGState(Type);
      LegendStrokeColor = v59;
      v17 = v65;
      v15 = v64;
      v14 = v67;
      LegendStrokeWidth = v58;
      goto LABEL_60;
    }

LABEL_29:
    v29 = 0;
    v30 = 0.0;
    do
    {
      v31 = CFArrayGetValueAtIndex(a2, v29);
      v32 = OIAxisGetLabel(v31);
      if (v32)
      {
        v33 = OISizeForStringInContext(v32, v27);
        if (v33 > v30)
        {
          v30 = v33;
        }
      }

      ++v29;
    }

    while (v20 != v29);
    goto LABEL_34;
  }

LABEL_60:
  if (LegendStrokeColor)
  {
    CGContextSetLineWidth(Type, LegendStrokeWidth);
    CGContextSetStrokeColorWithColor(Type, LegendStrokeColor);
    v86.origin.x = floor(v14) + 0.5;
    v86.origin.y = floor(v15) + 0.5;
    v86.size.width = ceil(v16);
    v86.size.height = ceil(v17);
    CGContextStrokeRect(Type, v86);
  }

  CGContextRestoreGState(Type);
}

void OIRenderXYLegendInChart(uint64_t a1)
{
  Series = OIChartGetSeries(a1);

  _OIRenderLegendForSeriesInChart(a1, Series);
}

void OIRenderBubbleLegendInChart(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 0, &OISeriesArrayCallbacks);
  Series = OIChartGetSeries(a1);
  if (Series)
  {
    v4 = Series;
    Count = CFArrayGetCount(Series);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i < v6; i += 2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }
  }

  _OIRenderLegendForSeriesInChart(a1, Mutable);

  CFRelease(Mutable);
}

void *_OISeriesRetain(uint64_t a1, void *a2)
{
  result = a2;
  ++*a2;
  return result;
}

uint64_t OISeriesCreate(const __CFArray *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  v5 = 0;
  if (a2 && Count)
  {
    Default = CFAllocatorGetDefault();
    v5 = MEMORY[0x266701C00](Default, 144, 0x106004015106B85, 0);
    *v5 = 1;
    v7 = CFArrayGetCount(a1);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (v7 >= 1)
    {
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        v11 = CFGetTypeID(ValueAtIndex);
        if (v11 == CFNumberGetTypeID())
        {
          CFArrayInsertValueAtIndex(Mutable, i, ValueAtIndex);
        }

        else
        {
          valuePtr = 0;
          v12 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
          CFArrayInsertValueAtIndex(Mutable, i, v12);
          CFRelease(v12);
        }
      }
    }

    *(v5 + 48) = Mutable;
    *(v5 + 24) = CFRetain(a2);
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
    *(v5 + 72) = 0x4000000000000000;
    *(v5 + 80) = 0u;
    *(v5 + 96) = 0u;
    *(v5 + 112) = xmmword_26143D3D0;
    *(v5 + 128) = 0;
    *(v5 + 136) = 0;
  }

  return v5;
}

void OISeriesRelease(void *a1)
{
  if (a1)
  {
    if ((*a1)-- == 1)
    {
      v3 = a1[7];
      if (v3)
      {
        CFRelease(v3);
      }

      v4 = a1[1];
      if (v4)
      {
        OIAxisRelease(v4);
      }

      v5 = a1[2];
      if (v5)
      {
        OIAxisRelease(v5);
      }

      v6 = a1[3];
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = a1[4];
      if (v7)
      {
        CFRelease(v7);
      }

      v8 = a1[6];
      if (v8)
      {
        CFRelease(v8);
      }

      v9 = a1[8];
      if (v9)
      {
        CGColorRelease(v9);
      }

      v10 = a1[10];
      if (v10)
      {
        CGColorRelease(v10);
      }

      v11 = a1[11];
      if (v11)
      {
        CGImageRelease(v11);
      }

      v12 = a1[13];
      if (v12)
      {
        CGColorRelease(v12);
      }

      v13 = a1[17];
      if (v13)
      {
        OIErrorBarRelease(v13);
      }

      Default = CFAllocatorGetDefault();

      CFAllocatorDeallocate(Default, a1);
    }
  }
}

uint64_t OISeriesCreateFromDictionary(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"kOIChartSeriesTypeKey");
  if (Value)
  {
    v3 = Value;
  }

  else
  {
    v3 = @"kOIChartColumnType";
  }

  v4 = CFDictionaryGetValue(a1, @"kOIChartSeriesValuesKey");
  v5 = OISeriesCreate(v4, v3);
  if (v5)
  {
    v6 = CFDictionaryGetValue(a1, @"kOIChartSeriesBaseValuesKey");
    if (v6)
    {
      OISeriesSetBaseValues(v5, v6);
    }

    valuePtr = 0;
    v7 = CFDictionaryGetValue(a1, @"kOIChartSeriesOnSecondaryAxisKey");
    if (v7)
    {
      CFNumberGetValue(v7, kCFNumberSInt8Type, &valuePtr);
      v8 = valuePtr;
    }

    else
    {
      v8 = 0;
    }

    *(v5 + 40) = v8;
    v9 = CFDictionaryGetValue(a1, @"kOIChartLabelKey");
    OISeriesSetLabel(v5, v9);
    v10 = CFDictionaryGetValue(a1, @"kOIChartStrokeColorKey");
    OILabelSetStrokeColor(v5, v10);
    v30 = 0;
    v11 = CFDictionaryGetValue(a1, @"kOIChartStrokeWidthKey");
    if (v11)
    {
      CFNumberGetValue(v11, kCFNumberCGFloatType, &v30);
      v12 = v30;
    }

    else
    {
      v12 = 0;
    }

    *(v5 + 72) = v12;
    v13 = CFDictionaryGetValue(a1, @"kOIChartFillColorKey");
    OILabelSetTextColor(v5, v13);
    v14 = CFDictionaryGetValue(a1, @"kOIChartFillImageKey");
    OISeriesSetFillImage(v5, v14);
    v29 = 0;
    v15 = CFDictionaryGetValue(a1, @"kOIChartSeriesMarkerTypeKey");
    if (v15)
    {
      CFNumberGetValue(v15, kCFNumberNSIntegerType, &v29);
      v16 = v29;
      *(v5 + 96) = v29;
      if (v16)
      {
        v17 = CFDictionaryGetValue(a1, @"kOIChartSeriesMarkerColorKey");
        if (!v17)
        {
          v17 = *(v5 + 64);
        }

        OISeriesSetMarkerColor(v5, v17);
        v28 = 0;
        v18 = CFDictionaryGetValue(a1, @"kOIChartSeriesMarkerWidthKey");
        if (v18)
        {
          CFNumberGetValue(v18, kCFNumberCGFloatType, &v28);
          v19 = v28;
        }

        else
        {
          v19 = 0;
        }

        *(v5 + 112) = v19;
      }
    }

    else
    {
      *(v5 + 96) = 0;
    }

    v28 = 0;
    v20 = CFDictionaryGetValue(a1, @"kOIChartSeriesOffsetKey");
    if (v20)
    {
      CFNumberGetValue(v20, kCFNumberCGFloatType, &v28);
      v21 = v28;
    }

    else
    {
      v21 = 0;
    }

    *(v5 + 120) = v21;
    v27 = 0;
    v22 = CFDictionaryGetValue(a1, @"kOIChartSeriesShowValuesKey");
    if (v22)
    {
      CFNumberGetValue(v22, kCFNumberNSIntegerType, &v27);
      v23 = v27 != 0;
    }

    else
    {
      v23 = 0;
    }

    *(v5 + 128) = v23;
    v24 = CFDictionaryGetValue(a1, @"kOIChartSeriesErrorBarKey");
    if (v24)
    {
      v25 = OIErrorBarCreateFromDictionary(v24);
      OISeriesSetErrorBar(v5, v25);
      OIErrorBarRelease(v25);
    }
  }

  return v5;
}

CFTypeRef OISeriesSetBaseValues(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 56);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = CFRetain(cf);
    *(a1 + 56) = result;
  }

  return result;
}

CFTypeRef OISeriesSetLabel(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 32);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
    }

    result = CFRetain(cf);
    *(a1 + 32) = result;
  }

  return result;
}

CGImage *OISeriesSetFillImage(uint64_t a1, CGImageRef image)
{
  result = *(a1 + 88);
  if (result != image)
  {
    if (result)
    {
      CGImageRelease(result);
    }

    result = CGImageRetain(image);
    *(a1 + 88) = result;
  }

  return result;
}

CGColor *OISeriesSetMarkerColor(uint64_t a1, CGColorRef color)
{
  result = *(a1 + 104);
  if (result != color)
  {
    if (result)
    {
      CGColorRelease(result);
    }

    result = CGColorRetain(color);
    *(a1 + 104) = result;
  }

  return result;
}

void *OISeriesSetErrorBar(uint64_t a1, void *a2)
{
  result = *(a1 + 136);
  if (result != a2)
  {
    if (result)
    {
      OIErrorBarRelease(result);
    }

    result = OILabelRetain(a2);
    *(a1 + 136) = result;
  }

  return result;
}

void *OISeriesSetBaseAxis(uint64_t a1, void *a2)
{
  result = *(a1 + 8);
  if (result != a2)
  {
    if (result)
    {
      OIAxisRelease(result);
    }

    result = OILabelRetain(a2);
    *(a1 + 8) = result;
  }

  return result;
}

void *OISeriesSetValueAxis(uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  if (result != a2)
  {
    if (result)
    {
      OIAxisRelease(result);
    }

    result = OILabelRetain(a2);
    *(a1 + 16) = result;
  }

  return result;
}

double OISeriesGetBaseValueAtIndex(uint64_t a1, CFIndex a2)
{
  v4 = *(a1 + 56);
  if (v4 && CFArrayGetCount(v4) > a2 && (valuePtr = 0.0, ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), a2), CFNumberGetValue(ValueAtIndex, kCFNumberCGFloatType, &valuePtr)))
  {
    return valuePtr;
  }

  else
  {
    return a2;
  }
}

void OISeriesSetupFillImageForContext(uint64_t a1, CGContext *a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    callbacks = *byte_2873C9DE8;
    Pattern = CGColorSpaceCreatePattern(0);
    CGContextSetFillColorSpace(a2, Pattern);
    CGColorSpaceRelease(Pattern);
    CFRetain(v2);
    Width = CGImageGetWidth(v2);
    Height = CGImageGetHeight(v2);
    v7 = CGImageGetWidth(v2);
    v8 = CGImageGetHeight(v2);
    v9 = *(MEMORY[0x277CBF2C0] + 16);
    *&v14.a = *MEMORY[0x277CBF2C0];
    *&v14.c = v9;
    *&v14.tx = *(MEMORY[0x277CBF2C0] + 32);
    v10 = 0;
    *&v9 = 0;
    v11 = Width;
    v12 = Height;
    v13 = CGPatternCreate(v2, *(&v9 - 8), &v14, v7, v8, kCGPatternTilingNoDistortion, 1, &callbacks);
    v14.a = 1.0;
    CGContextSetFillPattern(a2, v13, &v14.a);
    CGPatternRelease(v13);
  }
}

void drawImagePattern(CGImage *a1, CGContext *a2)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v6 = 0;
  v7 = 0;
  v8 = Width;

  CGContextDrawImage(a2, *&v6, a1);
}

void OISeriesSetupStrokeAndFillForContext(uint64_t a1, CGContextRef c)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    CGContextSetFillColorWithColor(c, v4);
  }

  OISeriesSetupFillImageForContext(a1, c);
  v5 = *(a1 + 64);
  if (v5)
  {
    CGContextSetStrokeColorWithColor(c, v5);
    CGContextSetLineWidth(c, *(a1 + 72));
    CGContextSetLineJoin(c, kCGLineJoinRound);

    CGContextSetLineCap(c, kCGLineCapRound);
  }
}

void _OIRenderColumnsInChart(uint64_t a1, CFArrayRef theArray, double a3, double a4)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v7 = Count;
      Type = OIAxisGetType(a1);
      PlotArea = OIChartGetPlotArea(a1);
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = OIAxisAreLabelsCentered(a1);
      CGContextSaveGState(Type);
      v52 = PlotArea;
      v57.origin.x = PlotArea;
      v57.origin.y = v11;
      v57.size.width = v13;
      v57.size.height = v15;
      CGContextClipToRect(Type, v57);
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      String = OILabelGetString(ValueAtIndex);
      v19 = OIAxisGetType(ValueAtIndex);
      MinValue = OIAxisGetMinValue(v19);
      FontSize = OILabelGetFontSize(v19);
      Scale = OIAxisGetScale(String);
      v48 = OIAxisGetScale(v19);
      v23 = OIAxisAreLabelsCentered(String);
      v24 = Scale * -0.5;
      if (v23)
      {
        v24 = 0.0;
      }

      v51 = v24;
      if (v16)
      {
        v56.width = 4.0;
        v56.height = -4.0;
        CGContextSetShadow(Type, v56, 3.0);
      }

      v44 = Type;
      v25 = 0;
      if (v7 >= 1)
      {
        for (i = 0; i != v7; ++i)
        {
          v27 = CFArrayGetValueAtIndex(theArray, i);
          Values = OISeriesGetValues(v27);
          v29 = CFArrayGetCount(Values);
          if (v29 > v25)
          {
            v25 = v29;
          }
        }
      }

      v49 = OIErrorBarRendererCreate(1);
      v47 = OILabelCollectionCreate();
      if (v25 >= 1)
      {
        v30 = 0;
        v31 = floor(Scale / (v7 + 1));
        v50 = floor(v31 * 0.5);
        v45 = ceil(v31 * 0.5);
        v46 = ceil(v31 + 4.0);
        do
        {
          if (v7 >= 1)
          {
            for (j = 0; j != v7; ++j)
            {
              v33 = CFArrayGetValueAtIndex(theArray, j);
              BaseValueAtIndex = OISeriesGetBaseValueAtIndex(v33, v30);
              v35 = OISeriesGetValues(v33);
              if (v30 < CFArrayGetCount(v35))
              {
                valuePtr[0] = 0.0;
                v36 = CFArrayGetValueAtIndex(v35, v30);
                CFNumberGetValue(v36, kCFNumberCGFloatType, valuePtr);
                v37 = valuePtr[0];
                if (valuePtr[0] <= FontSize)
                {
                  v38 = valuePtr[0] < MinValue;
                }

                else
                {
                  v37 = FontSize;
                  v38 = 1;
                }

                if (v38)
                {
                  if (v37 < MinValue)
                  {
                    v37 = MinValue;
                  }

                  valuePtr[0] = v37;
                }

                OIAxisConvertValueToLocal(String, BaseValueAtIndex);
                v39 = v11 + OIAxisConvertValueToLocal(v19, 0.0);
                v40 = v50 + v51 + v52 + OIAxisConvertValueToLocal(String, BaseValueAtIndex) + v31 * j;
                v41 = v11 + OIAxisConvertValueToLocal(v19, valuePtr[0]) - v39;
                _OIRenderColumnFloor(a1, v40, v39, v31, v41, a3, a4);
                _OIRenderColumn(a1, v33, v40, v39, v31, v41, a3, a4);
                v42 = v39 + v41;
                if (OISeriesGetShowValues(v33))
                {
                  OILabelCollectionAddNumber(v47, 0, valuePtr[0], floor(v40 + -2.0) + 0.5, floor(v42) + 0.5, v46, v45);
                }

                PlotFillColor = OIChartGetPlotFillColor(v33);
                if (PlotFillColor)
                {
                  OIErrorBarRendererAddPoint(v49, PlotFillColor, v31 * 0.5 + v40, v42, valuePtr[0], v48);
                }
              }
            }
          }

          ++v30;
        }

        while (v30 != v25);
      }

      OIErrorBarRendererRenderInContext(v49, v44);
      OIErrorBarRendererRelease(v49);
      OILabelCollectionRenderInContext(v47, v44);
      OILabelCollectionRelease(v47);
      CGContextRestoreGState(v44);
    }
  }
}

void _OIRenderStackedColumnsInChart(uint64_t a1, CFArrayRef theArray, int a3, double a4, double a5)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v9 = Count;
      Type = OIAxisGetType(a1);
      PlotArea = OIChartGetPlotArea(a1);
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = OIAxisAreLabelsCentered(a1);
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      String = OILabelGetString(ValueAtIndex);
      v21 = OIAxisGetType(ValueAtIndex);
      FontSize = OILabelGetFontSize(String);
      MinValue = OIAxisGetMinValue(v21);
      v68 = OILabelGetFontSize(v21);
      Scale = OIAxisGetScale(v21);
      v23 = OIAxisGetScale(String);
      if (FontSize > 0x2000)
      {
        NSLog(&cfstr_SkippingRender.isa, v23, FontSize);
        return;
      }

      v24 = v23;
      CGContextSaveGState(Type);
      v79.origin.x = PlotArea;
      v70 = v13;
      v79.origin.y = v13;
      v79.size.width = v15;
      v79.size.height = v17;
      CGContextClipToRect(Type, v79);
      v25 = OIAxisAreLabelsCentered(String);
      v26 = v24 * -0.5;
      if (v25)
      {
        v26 = 0.0;
      }

      v72 = v26;
      if (v18)
      {
        v78.width = 4.0;
        v78.height = -4.0;
        CGContextSetShadow(Type, v78, 3.0);
      }

      v60 = Type;
      v63 = OIErrorBarRendererCreate(1);
      v65 = OILabelCollectionCreate();
      v27 = v13;
      if (FontSize < 1)
      {
        goto LABEL_50;
      }

      v28 = 0;
      v71 = floor(v24 * 0.25);
      v76 = floor(v24 * 0.5);
      if (v9 > 0)
      {
        v29 = a3;
      }

      else
      {
        v29 = 0;
      }

      v61 = v29;
      v62 = FontSize;
      while (1)
      {
        v75 = v28;
        OIAxisConvertValueToLocal(String, v28);
        v30 = OIAxisConvertValueToLocal(v21, 0.0);
        v31 = 0.0;
        if (v61)
        {
          for (i = 0; i != v9; ++i)
          {
            v33 = CFArrayGetValueAtIndex(theArray, i);
            Values = OISeriesGetValues(v33);
            if (CFArrayGetCount(Values) > v28)
            {
              valuePtr[0] = 0.0;
              v35 = CFArrayGetValueAtIndex(Values, v28);
              CFNumberGetValue(v35, kCFNumberCGFloatType, valuePtr);
              v31 = v31 + fabs(valuePtr[0]);
            }
          }
        }

        if (v9 < 1)
        {
LABEL_48:
          v58 = v72 + PlotArea + OIAxisConvertValueToLocal(String, v75);
          v59 = OIAxisConvertValueToLocal(v21, 0.0);
          _OIRenderColumnFloor(a1, floor(v71 + v58) + 0.5, floor(v27 + v59) + 0.5, v76, 0.0, a4, a5);
          goto LABEL_49;
        }

        v36 = 0;
        v37 = v27 + v30;
        v38 = 0.0;
        v66 = v37;
        v67 = 0.0;
        do
        {
          v39 = CFArrayGetValueAtIndex(theArray, v36);
          v40 = OISeriesGetValues(v39);
          if (CFArrayGetCount(v40) <= v28)
          {
            goto LABEL_46;
          }

          valuePtr[0] = 0.0;
          v41 = CFArrayGetValueAtIndex(v40, v28);
          CFNumberGetValue(v41, kCFNumberCGFloatType, valuePtr);
          v42 = valuePtr[0];
          if (a3)
          {
            if (valuePtr[0] == 0.0)
            {
              v43 = 0.0;
              if (v31 == 0.0)
              {
                goto LABEL_34;
              }
            }

            v42 = valuePtr[0] / v31;
          }

          if (v42 >= 0.0)
          {
            v43 = v42;
LABEL_34:
            v50 = v38 + v43;
            if (v38 + v43 > v68)
            {
              v50 = v68;
            }

            if (v50 >= MinValue)
            {
              v38 = v50;
            }

            else
            {
              v38 = MinValue;
            }

            v46 = OIAxisConvertValueToLocal(String, v75);
            v51 = v27 + OIAxisConvertValueToLocal(v21, v38);
            v49 = v51 - v37;
            v48 = v37;
            v42 = v43;
            v37 = v51;
            goto LABEL_40;
          }

          v44 = v67 + v42;
          if (v67 + v42 < MinValue)
          {
            v44 = MinValue;
          }

          if (v44 <= v68)
          {
            v45 = v44;
          }

          else
          {
            v45 = v68;
          }

          v46 = OIAxisConvertValueToLocal(String, v75);
          v67 = v45;
          v47 = v27 + OIAxisConvertValueToLocal(v21, v45);
          v48 = v66;
          v49 = v47 - v66;
          v66 = v47;
LABEL_40:
          v52 = PlotArea;
          v53 = floor(v71 + v72 + PlotArea + v46);
          v54 = ceil(v49);
          v55 = floor(v48) + 0.5;
          v56 = v53 + 0.5;
          _OIRenderColumn(a1, v39, v53 + 0.5, v55, v76, v54, a4, a5);
          if (OISeriesGetShowValues(v39))
          {
            OILabelCollectionAddNumber(v65, 0, valuePtr[0], floor(v56) + 0.5, floor(v55) + 0.5, v76, v54);
          }

          if ((a3 & 1) == 0)
          {
            PlotFillColor = OIChartGetPlotFillColor(v39);
            if (PlotFillColor)
            {
              OIErrorBarRendererAddPoint(v63, PlotFillColor, v76 * 0.5 + v56, v55 + v54, v42, Scale);
            }
          }

          PlotArea = v52;
          v27 = v70;
LABEL_46:
          ++v36;
        }

        while (v9 != v36);
        if (v38 == 0.0)
        {
          goto LABEL_48;
        }

LABEL_49:
        if (++v28 == v62)
        {
LABEL_50:
          OIErrorBarRendererRenderInContext(v63, v60);
          OIErrorBarRendererRelease(v63);
          OILabelCollectionRenderInContext(v65, v60);
          OILabelCollectionRelease(v65);
          CGContextRestoreGState(v60);
          return;
        }
      }
    }
  }
}

void OIRender3DColumnsInChart(uint64_t a1, const __CFArray *a2)
{
  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  OIChartGetPlotArea(a1);
  v6 = v5;
  v8 = v7;
  v9 = (2 * OILabelGetFontSize(Axis));
  v10 = OIChartGetRotation(a1) / 45.0 * (v6 / v9);
  v11 = OIChartGetElevation(a1) / 90.0 * (v8 / v9);

  _OIRenderColumnsInChart(a1, a2, v10, v11);
}

void OIRender3DLayeredColumnsInChart(uint64_t a1, const __CFArray *a2)
{
  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  OIChartGetPlotArea(a1);
  v6 = v5;
  v8 = v7;
  SeriesCount = OIChartGetSeriesCount(a1);
  FontSize = OILabelGetFontSize(Axis);
  v11 = OIChartGetRotation(a1) / 45.0 * (v6 * SeriesCount / FontSize);
  v12 = v8 * SeriesCount / FontSize * (OIChartGetElevation(a1) / 90.0);

  _OIRenderMultiLevelColumnsInChart(a1, a2, v11, v12);
}

void _OIRenderMultiLevelColumnsInChart(uint64_t a1, CFArrayRef theArray, double a3, double a4)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      Type = OIAxisGetType(a1);
      PlotArea = OIChartGetPlotArea(a1);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = OIAxisAreLabelsCentered(a1);
      CGContextSaveGState(Type);
      v44 = v9;
      v45 = PlotArea;
      v51.origin.x = PlotArea;
      v51.origin.y = v9;
      v51.size.width = v11;
      v51.size.height = v13;
      CGContextClipToRect(Type, v51);
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      String = OILabelGetString(ValueAtIndex);
      v17 = OIAxisGetType(ValueAtIndex);
      FontSize = OILabelGetFontSize(String);
      MinValue = OIAxisGetMinValue(v17);
      v43 = OILabelGetFontSize(v17);
      Scale = OIAxisGetScale(String);
      v20 = OIAxisAreLabelsCentered(String);
      v21 = Scale * -0.5;
      if (v20)
      {
        v21 = 0.0;
      }

      v42 = v21;
      if (v14)
      {
        v50.width = 4.0;
        v50.height = -4.0;
        CGContextSetShadow(Type, v50, 3.0);
      }

      c = Type;
      v22 = FontSize;
      if (FontSize >= 1)
      {
        v23 = 0;
        v24 = floor(Scale * 0.5);
        v41 = floor(Scale * 0.25);
        v25 = Count;
        v26 = a4 / Count;
        v27 = a3 / Count;
        do
        {
          if (Count >= 1)
          {
            v28 = Count + 1;
            do
            {
              v29 = v28 - 2;
              v30 = CFArrayGetValueAtIndex(theArray, v28 - 2);
              Values = OISeriesGetValues(v30);
              if (v23 < CFArrayGetCount(Values))
              {
                valuePtr[0] = 0.0;
                v32 = CFArrayGetValueAtIndex(Values, v23);
                CFNumberGetValue(v32, kCFNumberCGFloatType, valuePtr);
                v33 = valuePtr[0];
                if (valuePtr[0] <= v43)
                {
                  v34 = valuePtr[0] < MinValue;
                }

                else
                {
                  v33 = v43;
                  v34 = 1;
                }

                if (v34)
                {
                  if (v33 < MinValue)
                  {
                    v33 = MinValue;
                  }

                  valuePtr[0] = v33;
                }

                OIAxisConvertValueToLocal(String, v23);
                v35 = v44 + OIAxisConvertValueToLocal(v17, 0.0);
                v36 = a3 * v29 / v25 + v41 + v42 + v45 + OIAxisConvertValueToLocal(String, v23);
                v37 = a4 * v29 / v25 + v35;
                v38 = v44 + OIAxisConvertValueToLocal(v17, valuePtr[0]) - v35;
                _OIRenderColumnFloor(a1, v36, v37, v24, v38, v27, v26);
                _OIRenderColumn(a1, v30, v36, v37, v24, v38, v27, v26);
              }

              --v28;
            }

            while (v28 > 1);
          }

          ++v23;
        }

        while (v23 != v22);
      }

      CGContextRestoreGState(c);
    }
  }
}

void OIRender3DStackedColumnsInChart(uint64_t a1, const __CFArray *a2)
{
  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  OIChartGetPlotArea(a1);
  v6 = v5;
  v8 = v7;
  v9 = (2 * OILabelGetFontSize(Axis));
  v10 = OIChartGetRotation(a1) / 45.0 * (v6 / v9);
  v11 = OIChartGetElevation(a1) / 90.0 * (v8 / v9);

  _OIRenderStackedColumnsInChart(a1, a2, 0, v10, v11);
}

void OIRender3DPercentStackedColumnsInChart(uint64_t a1, const __CFArray *a2)
{
  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  OIChartGetPlotArea(a1);
  v6 = v5;
  v8 = v7;
  v9 = (2 * OILabelGetFontSize(Axis));
  v10 = OIChartGetRotation(a1) / 45.0 * (v6 / v9);
  v11 = OIChartGetElevation(a1) / 90.0 * (v8 / v9);

  _OIRenderStackedColumnsInChart(a1, a2, 1, v10, v11);
}

void _OIRenderColumnFloor(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  Type = OIAxisGetType(a1);
  v13 = a2 + a6 * 0.25;
  v14 = a3 + a7 * 0.25;
  v15 = a6 * 0.5;
  v16 = a7 * 0.5;
  Mutable = CGPathCreateMutable();
  GenericRGB = OIColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
  v19 = floor(v14) + 0.5;
  CGPathMoveToPoint(Mutable, 0, floor(v13) + 0.5, v19);
  v20 = floor(v16 + v14) + 0.5;
  CGPathAddLineToPoint(Mutable, 0, floor(v15 + v13) + 0.5, v20);
  v21 = a4 + v13;
  CGPathAddLineToPoint(Mutable, 0, floor(v15 + v21) + 0.5, v20);
  CGPathAddLineToPoint(Mutable, 0, floor(v21) + 0.5, v19);
  CGPathCloseSubpath(Mutable);
  CGContextSetFillColorWithColor(Type, GenericRGB);
  CGContextAddPath(Type, Mutable);
  CGContextFillPath(Type);
  CGPathRelease(Mutable);

  CGColorRelease(GenericRGB);
}

void _OIRenderColumn(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  Type = OIAxisGetType(a1);
  TextColor = OILabelGetTextColor(a2);
  StrokeColor = OILabelGetStrokeColor(a2);
  FillImage = OISeriesGetFillImage(a2);
  StrokeWidth = OILabelGetStrokeWidth(a2);
  v20 = StrokeWidth;
  if (a7 == 0.0 && a8 == 0.0)
  {
    if (FillImage)
    {
      OISeriesSetupFillImageForContext(a2, Type);
    }

    else
    {
      if (!TextColor)
      {
        goto LABEL_27;
      }

      CGContextSetFillColorWithColor(Type, TextColor);
    }

    v53.origin.x = a3;
    v53.origin.y = a4;
    v53.size.width = a5;
    v53.size.height = a6;
    CGContextFillRect(Type, v53);
LABEL_27:
    if (StrokeColor)
    {
      CGContextSetStrokeColorWithColor(Type, StrokeColor);
      CGContextSetLineWidth(Type, v20);
      v41 = a3;
      v42 = a4;
      v43 = a5;
      v44 = a6;

      CGContextStrokeRect(Type, *&v41);
    }

    return;
  }

  width = StrokeWidth;
  v21 = a3 + a7 * 0.25;
  v22 = a4 + a8 * 0.25;
  Mutable = CGPathCreateMutable();
  v24 = floor(v21) + 0.5;
  v25 = a5;
  v26 = floor(v22) + 0.5;
  CGPathMoveToPoint(Mutable, 0, v24, v26);
  v50 = a6;
  v48 = v22;
  v27 = a6 + v22;
  v28 = v26;
  v47 = v27;
  v29 = floor(v27) + 0.5;
  x = v24;
  CGPathAddLineToPoint(Mutable, 0, v24, v29);
  v46 = v21;
  v30 = v25 + v21;
  v31 = floor(v25 + v21) + 0.5;
  v49 = v29;
  CGPathAddLineToPoint(Mutable, 0, v31, v29);
  CGPathAddLineToPoint(Mutable, 0, v31, v28);
  CGPathCloseSubpath(Mutable);
  if (FillImage)
  {
    OISeriesSetupFillImageForContext(a2, Type);
    v32 = a8;
LABEL_9:
    CGContextAddPath(Type, Mutable);
    CGContextFillPath(Type);
    goto LABEL_10;
  }

  v32 = a8;
  if (TextColor)
  {
    CGContextSetFillColorWithColor(Type, TextColor);
    goto LABEL_9;
  }

LABEL_10:
  v34 = v32 * 0.5;
  if (StrokeColor)
  {
    CGContextSetStrokeColorWithColor(Type, StrokeColor);
    CGContextAddPath(Type, Mutable);
    CGContextSetLineWidth(Type, width);
    CGContextStrokePath(Type);
  }

  CGPathRelease(Mutable);
  v35 = OICreateDimmedColorFromColor(TextColor, 0.5);
  v36 = CGPathCreateMutable();
  CGPathMoveToPoint(v36, 0, v31, v28);
  CGPathAddLineToPoint(v36, 0, v31, v49);
  v33 = a7 * 0.5;
  v37 = floor(a7 * 0.5 + v30) + 0.5;
  v38 = floor(v34 + v47) + 0.5;
  CGPathAddLineToPoint(v36, 0, v37, v38);
  CGPathAddLineToPoint(v36, 0, v37, floor(v34 + v48) + 0.5);
  CGPathCloseSubpath(v36);
  if (v35)
  {
    CGContextSetFillColorWithColor(Type, v35);
    CGContextAddPath(Type, v36);
    CGContextFillPath(Type);
  }

  if (StrokeColor)
  {
    CGContextSetStrokeColorWithColor(Type, StrokeColor);
    CGContextAddPath(Type, v36);
    CGContextSetLineWidth(Type, width);
    CGContextStrokePath(Type);
  }

  CGPathRelease(v36);
  CGColorRelease(v35);
  if (v50 >= 0.0)
  {
    v39 = CGPathCreateMutable();
    v40 = OICreateDimmedColorFromColor(TextColor, 0.8);
    CGPathMoveToPoint(v39, 0, x, v49);
    CGPathAddLineToPoint(v39, 0, floor(v33 + v46) + 0.5, v38);
    CGPathAddLineToPoint(v39, 0, v37, v38);
    CGPathAddLineToPoint(v39, 0, v31, v49);
    CGPathCloseSubpath(v39);
    if (v40)
    {
      CGContextSetFillColorWithColor(Type, v40);
      CGContextAddPath(Type, v39);
      CGContextFillPath(Type);
    }

    if (StrokeColor)
    {
      CGContextSetStrokeColorWithColor(Type, StrokeColor);
      CGContextAddPath(Type, v39);
      CGContextSetLineWidth(Type, width);
      CGContextStrokePath(Type);
    }

    CGPathRelease(v39);

    CGColorRelease(v40);
  }
}

void OIRenderRadarInChart(uint64_t a1, CFArrayRef theArray)
{
  if (theArray)
  {
    v2 = theArray;
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v5 = Count;
      Type = OIAxisGetType(a1);
      PlotArea = OIChartGetPlotArea(a1);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v42 = OIAxisAreLabelsCentered(a1);
      CGContextSaveGState(Type);
      v47.origin.x = PlotArea;
      v47.origin.y = v9;
      v47.size.width = v11;
      v47.size.height = v13;
      CGContextClipToRect(Type, v47);
      ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
      String = OILabelGetString(ValueAtIndex);
      v16 = OIAxisGetType(ValueAtIndex);
      FontSize = OILabelGetFontSize(String);
      if (v5 >= 1)
      {
        v18 = 0;
        v19 = PlotArea + v11 * 0.5;
        v20 = v9 + v13 * 0.5;
        v21 = FontSize;
        v22 = FontSize;
        x = floor(v19) + 0.5;
        v23 = floor(v20) + 0.5;
        v40 = v5;
        v41 = v2;
        do
        {
          v24 = CFArrayGetValueAtIndex(v2, v18);
          Values = OISeriesGetValues(v24);
          TextColor = OILabelGetTextColor(v24);
          StrokeColor = OILabelGetStrokeColor(v24);
          if (v42)
          {
            v46.width = 0.0;
            v46.height = -2.0;
            CGContextSetShadow(Type, v46, 3.0);
          }

          valuePtr = 0.0;
          v27 = CFArrayGetCount(Values);
          if (!v27)
          {
            goto LABEL_24;
          }

          v28 = v27;
          v43 = StrokeColor;
          v29 = v21;
          if (v27 >= v21)
          {
            v30 = v21;
          }

          else
          {
            v30 = v27;
          }

          if (v30 >= 1)
          {
            v31 = 0;
            for (i = 0; i != v30; ++i)
            {
              v33 = CFArrayGetValueAtIndex(Values, i);
              CFNumberGetValue(v33, kCFNumberCGFloatType, &valuePtr);
              v34 = OIAxisConvertValueToLocal(v16, valuePtr) * 0.5;
              v35 = __sincos_stret(v31 * -3.14159265 / v22 + 1.57079633);
              v36 = floor(v19 + v34 * v35.__cosval) + 0.5;
              v37 = floor(v20 + v34 * v35.__sinval) + 0.5;
              if (i)
              {
                CGContextAddLineToPoint(Type, v36, v37);
              }

              else
              {
                CGContextMoveToPoint(Type, v36, v37);
              }

              v31 += 2;
            }
          }

          OISeriesSetupStrokeAndFillForContext(v24, Type);
          v21 = v29;
          if (v28 >= v29)
          {
            CGContextClosePath(Type);
            v5 = v40;
            v2 = v41;
            v38 = v43;
            if (!TextColor)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v5 = v40;
            v2 = v41;
            v38 = v43;
            if (!TextColor)
            {
              goto LABEL_22;
            }

            CGContextAddLineToPoint(Type, x, v23);
            CGContextClosePath(Type);
          }

          CGContextFillPath(Type);
LABEL_22:
          if (v38)
          {
            CGContextStrokePath(Type);
          }

LABEL_24:
          ++v18;
        }

        while (v18 != v5);
      }

      CGContextRestoreGState(Type);
    }
  }
}

void OILabelRenderInContext(uint64_t a1, CGContextRef c)
{
  v31[2] = *MEMORY[0x277D85DE8];
  CGContextSaveGState(c);
  HasShadow = OILabelHasShadow(a1);
  if (HasShadow)
  {
    v32.width = 0.0;
    v32.height = -4.0;
    CGContextSetShadow(c, v32, 6.0);
  }

  String = OILabelGetString(a1);
  Frame = OILabelGetFrame(a1);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  FillColor = OILabelGetFillColor(a1);
  v14 = OILabelGetFillColor(a1);
  TextColor = OILabelGetTextColor(a1);
  StrokeWidth = OILabelGetStrokeWidth(a1);
  if (FillColor)
  {
    CGContextSetFillColorWithColor(c, FillColor);
    v34.origin.x = floor(Frame) + 0.5;
    v34.origin.y = floor(v8) + 0.5;
    v34.size.width = ceil(v10);
    v34.size.height = ceil(v12);
    CGContextFillRect(c, v34);
  }

  if (HasShadow)
  {
    v33.width = 0.0;
    v33.height = 0.0;
    CGContextSetShadow(c, v33, 0.0);
  }

  v35.origin.x = Frame;
  v35.origin.y = v8;
  v35.size.width = v10;
  v35.size.height = v12;
  CGContextClipToRect(c, v35);
  FontSize = OILabelGetFontSize(a1);
  if (FontSize <= v12)
  {
    v17 = FontSize;
  }

  else
  {
    v17 = v12 + -1.0;
  }

  CGContextSetTextDrawingMode(c, kCGTextFill);
  v19 = OISizeForStringInContext(String, v17);
  if (v19 > v10 + -4.0)
  {
    v17 = v17 * ((v10 + -4.0) / v19);
    v19 = OISizeForStringInContext(String, v17);
  }

  v20 = v18;
  Alignment = OILabelGetAlignment(a1);
  v22 = Frame + v10 - v19;
  if (Alignment != 1)
  {
    v22 = Frame;
  }

  if (Alignment == 2)
  {
    v23 = Frame + v10 * 0.5 - v19 * 0.5;
  }

  else
  {
    v23 = v22;
  }

  v24 = MEMORY[0x277CBEB38];
  v30[0] = *MEMORY[0x277CC4838];
  v25 = OICreateDefaultFontWithSize(v17);
  v30[1] = *MEMORY[0x277CC49C0];
  v31[0] = v25;
  v31[1] = TextColor;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v27 = [v24 dictionaryWithDictionary:v26];

  if (v14 && StrokeWidth != 0.0)
  {
    CGContextSetLineWidth(c, StrokeWidth);
    CGContextSetStrokeColorWithColor(c, v14);
    v36.origin.x = floor(Frame) + 0.5;
    v36.origin.y = floor(v8) + 0.5;
    v36.size.width = ceil(v10);
    v36.size.height = ceil(v12);
    CGContextStrokeRect(c, v36);
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __OILabelRenderInContext_block_invoke;
  v29[3] = &__block_descriptor_48_e29__CGPoint_dd_24__0_CGSize_dd_8l;
  *&v29[4] = v23;
  *&v29[5] = v8 + (v12 + -4.0 - v20) * 0.5 + 2.0;
  OIDrawStringWithAttributes(String, v27, c, v29);
  CGContextRestoreGState(c);
}

double __OILabelRenderInContext_block_invoke(float64x2_t *a1)
{
  __asm { FMOV            V1.2D, #0.5 }

  *&result = *&vaddq_f64(vrndmq_f64(a1[2]), _Q1);
  return result;
}

void OILabelCollectionRenderInContext(uint64_t a1, CGContext *a2)
{
  String = OILabelGetString(a1);
  Count = CFArrayGetCount(String);
  if (Count < 1)
  {
    v7 = 100.0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    v7 = 100.0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(String, v6);
      MinFontSize = _OILabelGetMinFontSize(ValueAtIndex);
      if (MinFontSize < v7)
      {
        v7 = MinFontSize;
      }

      ++v6;
    }

    while (v5 != v6);
  }

  v10 = CFArrayGetCount(String);
  if (v10 >= 1)
  {
    v11 = v10;
    for (i = 0; i != v11; ++i)
    {
      v13 = CFArrayGetValueAtIndex(String, i);
      OILabelSetFontSize(v13, v7);
    }
  }

  CGContextSaveGState(a2);
  v14 = *(MEMORY[0x277CBF2C0] + 16);
  *&v19.a = *MEMORY[0x277CBF2C0];
  *&v19.c = v14;
  *&v19.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGContextSetTextMatrix(a2, &v19);
  v15 = CFArrayGetCount(String);
  if (v15 >= 1)
  {
    v16 = v15;
    for (j = 0; j != v16; ++j)
    {
      v18 = CFArrayGetValueAtIndex(String, j);
      OILabelRenderInContext(v18, a2);
    }
  }

  CGContextRestoreGState(a2);
}

double _OILabelGetMinFontSize(uint64_t a1)
{
  String = OILabelGetString(a1);
  OILabelGetFrame(a1);
  v4 = v3;
  FontSize = OILabelGetFontSize(a1);
  v6 = OISizeForStringInContext(String, FontSize);
  if (v6 > v4 + -4.0)
  {
    return FontSize * ((v4 + -4.0) / v6);
  }

  return FontSize;
}

CGImageRef OIChartingCreateImageRefWithFormatterCallback(const __CFDictionary *a1, uint64_t a2, _DWORD *a3, double a4, double a5)
{
  if (!a1)
  {
    return 0;
  }

  Image = 0;
  if (a4 > 0.0 && a5 > 0.0)
  {
    v11 = vcvtd_n_u64_f64(a4, 2uLL);
    v12 = malloc_type_calloc(a5, v11, 0x8896415FuLL);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v14 = CGBitmapContextCreate(v12, a4, a5, 8uLL, v11, DeviceRGB, 0x2002u);
    if (v14)
    {
      v15 = v14;
      CGContextSetShouldAntialias(v14, 1);
      ChartFromData = _OIChartingCreateChartFromData(a1, v15, a2, a4, a5);
      if (ChartFromData)
      {
        v17 = ChartFromData;
        if (OIChartGetStatus(ChartFromData))
        {
          Image = 0;
        }

        else
        {
          OIChartDraw(v17);
          Image = OIChartCreateImage(v17);
        }

        *a3 = OIChartGetStatus(v17);
        OIChartRelease(v17);
      }

      else
      {
        CFShow(@"Cannot create chart object");
        Image = 0;
        *a3 = 1;
      }

      CGContextRelease(v15);
      if (!DeviceRGB)
      {
        goto LABEL_16;
      }
    }

    else
    {
      CFShow(@"Cannot create context");
      Image = 0;
      *a3 = 0;
      if (!DeviceRGB)
      {
LABEL_16:
        if (v12)
        {
          free(v12);
        }

        return Image;
      }
    }

    CGColorSpaceRelease(DeviceRGB);
    goto LABEL_16;
  }

  return Image;
}

double *_OIChartingCreateChartFromData(const __CFDictionary *a1, CGContext *a2, uint64_t a3, double a4, double a5)
{
  v7 = OIChartCreate(0, a2, a4, a5);
  v8 = v7;
  if (v7)
  {
    OIChartSetCustomFormatterCallback(v7, a3);
    _OIChartingSetupColors(v8, a1);
    _OIChartingGetSeriesFromData(v8, a1);
    _OIChartingSetupAxisRanges(v8);
    _OIChartingSetupArea(v8, a1);
    _OIChartingUpdateAxisWithData(v8, a1);
    _OIChartingGetLabelsFromData(v8, a1);
  }

  return v8;
}

__CFData *OIChartingCreatePDFDataWithFormatterCallback(const __CFDictionary *a1, uint64_t a2, _DWORD *a3, CGFloat a4, CGFloat a5)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = 0;
  if (a4 > 0.0 && a5 > 0.0)
  {
    Mutable = CFDataCreateMutable(0, 0);
    v11 = CGDataConsumerCreateWithCFData(Mutable);
    if (v11)
    {
      v12 = v11;
      v18.origin.x = 0.0;
      v18.origin.y = 0.0;
      v18.size.width = a4;
      v18.size.height = a5;
      v13 = CGPDFContextCreate(v11, &v18, 0);
      if (v13)
      {
        v14 = v13;
        ChartFromData = _OIChartingCreateChartFromData(a1, v13, a2, a4, a5);
        if (ChartFromData)
        {
          v16 = ChartFromData;
          if (!OIChartGetStatus(ChartFromData))
          {
            CGContextBeginPage(v14, &v18);
            CGContextSetShouldAntialias(v14, 1);
            OIChartDraw(v16);
            CGContextEndPage(v14);
          }

          *a3 = OIChartGetStatus(v16);
          OIChartRelease(v16);
        }

        CGContextRelease(v14);
      }

      else
      {
        CFShow(@"Cannot create PDF context");
        *a3 = 0;
      }

      CGDataConsumerRelease(v12);
    }

    else
    {
      CFShow(@"Cannot create DataConsumer");
      *a3 = 0;
    }
  }

  return Mutable;
}

uint64_t _OIChartingSetupColors(uint64_t a1, CFDictionaryRef theDict)
{
  v31 = 0.0;
  Value = CFDictionaryGetValue(theDict, @"kOIChartUseShadowsKey");
  if (Value)
  {
    valuePtr = 0;
    if (CFNumberGetValue(Value, kCFNumberNSIntegerType, &valuePtr))
    {
      OIChartSetUseShadows(a1, valuePtr != 0);
    }
  }

  v5 = CFDictionaryGetValue(theDict, @"kOIChartCanvasKey");
  if (v5)
  {
    v6 = v5;
    v7 = CFDictionaryGetValue(v5, @"kOIChartStrokeColorKey");
    v8 = CFDictionaryGetValue(v6, @"kOIChartFillColorKey");
    v9 = CFDictionaryGetValue(v6, @"kOIChartStrokeWidthKey");
    if (v9 && CFNumberGetValue(v9, kCFNumberCGFloatType, &v31))
    {
      OIChartSetCanvasStrokeWidth(a1, v31);
    }

    if (v8)
    {
      OIChartSetCanvasFillColor(a1, v8);
    }

    if (v7)
    {
      OIChartSetCanvasStrokeColor(a1, v7);
    }
  }

  v10 = CFDictionaryGetValue(theDict, @"kOIChartPlotKey");
  if (v10)
  {
    v11 = v10;
    v12 = CFDictionaryGetValue(v10, @"kOIChartStrokeColorKey");
    v13 = CFDictionaryGetValue(v11, @"kOIChartFillColorKey");
    v14 = CFDictionaryGetValue(v11, @"kOIChartStrokeWidthKey");
    if (v13)
    {
      OIChartSetPlotFillColor(a1, v13);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      GenericRGB = OIColorCreateGenericRGB(0.8, 0.8, 0.8, 1.0);
      OIChartSetPlotFillColor(a1, GenericRGB);
      CGColorRelease(GenericRGB);
      if (v12)
      {
LABEL_15:
        OIAxisSetStrokeColor(a1, v12);
        if (v14)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      }
    }

    v18 = OIColorCreateGenericRGB(0.5, 0.5, 0.5, 1.0);
    OIAxisSetStrokeColor(a1, v18);
    CGColorRelease(v18);
    if (v14)
    {
LABEL_16:
      v15 = CFNumberGetValue(v14, kCFNumberCGFloatType, &v31);
      v16 = v31;
      if (!v15)
      {
        v16 = 1.0;
      }

      goto LABEL_22;
    }

LABEL_21:
    v16 = 1.0;
LABEL_22:
    OIChartSetPlotStrokeWidth(a1, v16);
    v19 = CFDictionaryGetValue(v11, @"kOIChartHidePlotAreaKey");
    if (v19)
    {
      valuePtr = 0;
      if (CFNumberGetValue(v19, kCFNumberNSIntegerType, &valuePtr))
      {
        OIChartSetHidePlotArea(a1, valuePtr != 0);
      }
    }
  }

  result = CFDictionaryGetValue(theDict, @"kOIChartLegendKey");
  if (result)
  {
    v21 = result;
    v29 = 0;
    valuePtr = 0;
    v22 = CFDictionaryGetValue(result, @"kOIChartStrokeColorKey");
    v23 = CFDictionaryGetValue(v21, @"kOIChartFillColorKey");
    v24 = CFDictionaryGetValue(v21, @"kOIChartTextColorKey");
    v25 = CFDictionaryGetValue(v21, @"kOIChartStrokeWidthKey");
    if (v25 && CFNumberGetValue(v25, kCFNumberCGFloatType, &v31))
    {
      OIChartSetLegendStrokeWidth(a1, v31);
    }

    v26 = CFDictionaryGetValue(v21, @"kOIChartHasShadowKey");
    if (v26 && CFNumberGetValue(v26, kCFNumberCGFloatType, &valuePtr))
    {
      OIChartSetLegendHasShadow(a1, valuePtr != 0);
    }

    v27 = CFDictionaryGetValue(v21, @"kOIChartLegendPlacementKey");
    if (v27 && CFNumberGetValue(v27, kCFNumberNSIntegerType, &v29))
    {
      OIChartSetLegendPlacement(a1, v29);
    }

    if (v24)
    {
      OIChartSetLegendTextColor(a1, v24);
    }

    if (v23)
    {
      OIChartSetLegendFillColor(a1, v23);
    }

    if (v22)
    {
      OIChartSetLegendStrokeColor(a1, v22);
    }

    result = CFDictionaryGetValue(v21, @"kOIChartHideLegendKey");
    if (result)
    {
      v28 = 0;
      result = CFNumberGetValue(result, kCFNumberNSIntegerType, &v28);
      if (result)
      {
        return OIChartSetHideLegend(a1, v28 != 0);
      }
    }
  }

  return result;
}

void _OIChartingGetSeriesFromData(uint64_t a1, CFDictionaryRef theDict)
{
  v24 = *MEMORY[0x277D85DE8];
  Value = CFDictionaryGetValue(theDict, @"kOIChartSeriesKey");
  if (!Value)
  {
    return;
  }

  v4 = Value;
  memset(v23, 0, sizeof(v23));
  Count = CFArrayGetCount(Value);
  if (Count < 1)
  {
    return;
  }

  v6 = Count;
  v7 = 0;
  for (i = 0; i != v6; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
    v10 = OISeriesCreateFromDictionary(ValueAtIndex);
    if (!v10)
    {
      continue;
    }

    v11 = v10;
    SubType = OIAxisGetSubType(v10);
    if (CFStringCompare(SubType, @"kOIChartStackedColumnType", 0) && CFStringCompare(SubType, @"kOIChart3DStackedColumnType", 0))
    {
      if (CFStringCompare(SubType, @"kOIChartPercentStackedColumnType", 0) == kCFCompareEqualTo || CFStringCompare(SubType, @"kOIChart3DPercentStackedColumnType", 0) == kCFCompareEqualTo)
      {
        goto LABEL_28;
      }

      if (CFStringCompare(SubType, @"kOIChartBarType", 0) == kCFCompareEqualTo || CFStringCompare(SubType, @"kOIChart3DBarType", 0) == kCFCompareEqualTo)
      {
        v19 = 0;
LABEL_57:
        _OIChartingSetupBarTypeAxis(a1, v11, v19);
        goto LABEL_30;
      }

      if (CFStringCompare(SubType, @"kOIChartStackedBarType", 0) == kCFCompareEqualTo || CFStringCompare(SubType, @"kOIChart3DStackedBarType", 0) == kCFCompareEqualTo)
      {
        v19 = 2;
        goto LABEL_57;
      }

      if (CFStringCompare(SubType, @"kOIChartPercentStackedBarType", 0) == kCFCompareEqualTo || CFStringCompare(SubType, @"kOIChart3DPercentStackedBarType", 0) == kCFCompareEqualTo)
      {
        v19 = 3;
        goto LABEL_57;
      }

      if (CFStringCompare(SubType, @"kOIChartStackedLineType", 0) && CFStringCompare(SubType, @"kOIChartStackedLineType", 0))
      {
        if (CFStringCompare(SubType, @"kOIChartPercentStackedLineType", 0) && CFStringCompare(SubType, @"kOIChartPercentStackedLineType", 0))
        {
          if (CFStringCompare(SubType, @"kOIChartXYType", 0) == kCFCompareEqualTo || CFStringCompare(SubType, @"kOIChartBubbleType", 0) == kCFCompareEqualTo)
          {
            _OIChartingSetupXYTypeAxis(a1, v11);
            goto LABEL_30;
          }

          if (CFStringCompare(SubType, @"kOIChartPieType", 0) == kCFCompareEqualTo || CFStringCompare(SubType, @"kOIChart3DPieType", 0) == kCFCompareEqualTo || (v13 = CFStringCompare(SubType, @"kOIChartDoughnutType", 0), v14 = 0, v13 == kCFCompareEqualTo))
          {
            if ((OIChartGetHidePlotArea(a1) & 1) == 0)
            {
              OIChartSetLegendPlacement(a1, 3);
            }

            v15 = 1;
            goto LABEL_31;
          }

          goto LABEL_29;
        }

LABEL_28:
        v14 = 3;
        goto LABEL_29;
      }
    }

    v14 = 2;
LABEL_29:
    _OIChartingSetupColumnTypeAxis(a1, v11, v14);
LABEL_30:
    v15 = v16;
LABEL_31:
    if (!OILabelGetTextColor(v11) && (!OILabelGetStrokeColor(v11) || OILabelGetStrokeWidth(v11) == 0.0))
    {
      if ((v7 & 1) == 0)
      {
        valuePtr = 0;
        v17 = CFDictionaryGetValue(theDict, @"kOIChartColorThemeKey");
        if (v17 && !CFNumberGetValue(v17, kCFNumberNSIntegerType, &valuePtr))
        {
          valuePtr = 0;
        }

        _OIChartingInitColors(v23, valuePtr);
      }

      if (CFStringCompare(SubType, @"kOIChartXYType", 0) && CFStringCompare(SubType, @"kOIChartLineType", 0) && CFStringCompare(SubType, @"kOIChartStackedLineType", 0) && CFStringCompare(SubType, @"kOIChartPercentStackedLineType", 0))
      {
        OILabelSetTextColor(v11, *(v23 + (i & 7)));
      }

      else
      {
        v18 = *(v23 + (i & 7));
        OILabelSetStrokeColor(v11, v18);
        if (OILabelGetStrokeWidth(v11) == 0.0)
        {
          OILabelSetStrokeWidth(v11, 1.0);
        }

        if (OIAxisGetLabels(v11))
        {
          OISeriesSetMarkerColor(v11, v18);
        }
      }

      v7 = 1;
    }

    if (v15)
    {
      OIChartAddSeries(a1, v11);
    }

    OISeriesRelease(v11);
  }

  if (v7)
  {
    for (j = 0; j != 64; j += 8)
    {
      CGColorRelease(*(v23 + j));
    }
  }
}

void _OIChartingSetupAxisRanges(uint64_t a1)
{
  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  if (Axis)
  {
    v3 = Axis;
    if (OIAxisGetType(Axis) == 1)
    {
      if (OIAxisGetSubType(v3) == 1)
      {
        _OIChartingUpdateAxisRangeWithBaseValuesFromSeries(a1, v3);
      }

      else
      {
        _OIChartingUpdateAxisRangeWithValuesFromSeries(a1, v3);
      }
    }
  }

  v4 = OIChartGetAxis(a1, @"kOIChartAxisYKey");
  if (v4)
  {
    v5 = v4;
    if (OIAxisGetType(v4) == 1 && OIAxisGetSubType(v5) != 1)
    {
      _OIChartingUpdateAxisRangeWithValuesFromSeries(a1, v5);
    }
  }

  v6 = OIChartGetAxis(a1, @"kOIChartAxisSecondaryXKey");
  if (v6)
  {
    v7 = v6;
    if (OIAxisGetType(v6) == 1)
    {
      if (OIAxisGetSubType(v7) == 1)
      {
        _OIChartingUpdateAxisRangeWithBaseValuesFromSeries(a1, v7);
      }

      else
      {
        _OIChartingUpdateAxisRangeWithValuesFromSeries(a1, v7);
      }
    }
  }

  v8 = OIChartGetAxis(a1, @"kOIChartAxisSecondaryYKey");
  if (v8)
  {
    v9 = v8;
    if (OIAxisGetType(v8) == 1 && OIAxisGetSubType(v9) != 1)
    {

      _OIChartingUpdateAxisRangeWithValuesFromSeries(a1, v9);
    }
  }
}

double *_OIChartingSetupArea(double *a1, const __CFDictionary *a2)
{
  Size = OIChartGetSize(a1);
  v6 = v5;
  v7 = v5 * 0.98;
  Value = CFDictionaryGetValue(a2, @"kOIChartTitleKey");
  if (Value)
  {
    v9 = CFDictionaryGetValue(Value, @"kOIChartTitleAreaKey");
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v7 + -28.0;
    }
  }

  else
  {
    v9 = 0;
    v10 = v7;
  }

  v11 = Size * 0.01;
  v12 = v6 * 0.01;
  v13 = Size * 0.98;
  v14 = CFDictionaryGetValue(a2, @"kOIChartLegendKey");
  if (!v14)
  {
    if (OIChartGetLegendPlacement(a1) == -1)
    {
      v15 = v11;
      v16 = v12;
      v17 = v13;
      goto LABEL_44;
    }

    memset(&v36, 0, sizeof(v36));
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_13:
    v18 = (floor(OIChartGetSeriesCount(a1) / 10.0) + 1.0);
    LegendPlacement = OIChartGetLegendPlacement(a1);
    if (LegendPlacement > 2)
    {
      if (LegendPlacement != 3)
      {
        if (LegendPlacement == 4)
        {
          v36.origin.x = v11;
          v36.origin.y = v12;
          v25 = v13 * (v18 * 0.15);
          if (v25 > v13 * 0.5)
          {
            v25 = v13 * 0.5;
          }

          v36.size.width = v25;
          v36.size.height = v10;
          v17 = v13 - v25;
          v15 = v11 + v25;
          goto LABEL_37;
        }

        if (LegendPlacement != 7)
        {
          goto LABEL_9;
        }
      }

      v21 = v13 * (v18 * 0.15);
      if (v21 > v13 * 0.5)
      {
        v21 = v13 * 0.5;
      }

      v36.size.width = v21;
      v36.size.height = v10;
      v17 = v13 - v21;
      v36.origin.x = v13 - v21;
      v36.origin.y = v12;
    }

    else
    {
      if (!LegendPlacement)
      {
        v36.origin.x = v11;
        v36.origin.y = v12;
        v22 = (20 * v18);
        if (v10 * 0.5 < v22)
        {
          v22 = v10 * 0.5;
        }

        v36.size.width = v13;
        v36.size.height = v22;
        v10 = v10 - v22;
        v16 = v12 + v22;
        v15 = v11;
        goto LABEL_10;
      }

      if (LegendPlacement != 1)
      {
        if (LegendPlacement == 2)
        {
          v20 = (20 * v18);
          if (v10 * 0.5 < v20)
          {
            v20 = v10 * 0.5;
          }

          v36.size.width = v13;
          v36.size.height = v20;
          v10 = v10 - v20;
          v36.origin.x = v11;
          v36.origin.y = v10;
        }

        goto LABEL_9;
      }

      v23 = v13 * (v18 * 0.15);
      if (v23 > v13 * 0.5)
      {
        v23 = v13 * 0.5;
      }

      v36.size.width = v23;
      v17 = v13 - v23;
      v36.origin.x = v13 - v23;
      SeriesCount = OIChartGetSeriesCount(a1);
      v10 = v10 - (10 * SeriesCount);
      v36.size.height = (10 * SeriesCount);
      v36.origin.y = v10;
    }

    v15 = v11;
LABEL_37:
    v16 = v12;
    goto LABEL_38;
  }

  memset(&v36, 0, sizeof(v36));
  v9 = CFDictionaryGetValue(v14, @"kOIChartLegendAreaKey");
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_8:
  CGRectMakeWithDictionaryRepresentation(v9, &v36);
LABEL_9:
  v15 = v11;
  v16 = v12;
LABEL_10:
  v17 = v13;
LABEL_38:
  if (v36.size.width > 0.0 && v36.size.height > 0.0)
  {
    if (OIChartGetHidePlotArea(a1))
    {
      v36.origin.x = v11;
      v36.origin.y = v12;
      height = v7;
      width = v13;
      y = v12;
      x = v11;
      v36.size.width = v13;
      v36.size.height = v7;
    }

    else
    {
      y = v36.origin.y;
      x = v36.origin.x;
      height = v36.size.height;
      width = v36.size.width;
    }

    OIChartSetLegendArea(a1, x, y, width, height);
  }

LABEL_44:
  HideLegend = OIChartGetHideLegend(a1);
  if (HideLegend)
  {
    v31 = v11;
  }

  else
  {
    v31 = v15;
  }

  if (HideLegend)
  {
    v32 = v12;
  }

  else
  {
    v32 = v16;
  }

  if (HideLegend)
  {
    v33 = v13;
  }

  else
  {
    v33 = v17;
  }

  if (HideLegend)
  {
    v34 = v7;
  }

  else
  {
    v34 = v10;
  }

  return OIChartSetPlotArea(a1, v31 + v33 * 0.12, v32 + v34 * 0.12, v33 - (v33 * 0.12 + v33 * 0.12 * 0.5), v34 + v34 * 0.12 * -2.0);
}

const __CFDictionary *_OIChartingUpdateAxisWithData(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"kOIChartAxisKey");
  if (Value)
  {
    v5 = Value;
    v6 = CFDictionaryGetValue(Value, @"kOIChartAxisXKey");
    if (v6)
    {
      v7 = v6;
      Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
      OIAxisUpdateWithDictionaryDescription(Axis, v7);
    }

    v9 = CFDictionaryGetValue(v5, @"kOIChartAxisYKey");
    if (v9)
    {
      v10 = v9;
      v11 = OIChartGetAxis(a1, @"kOIChartAxisYKey");
      OIAxisUpdateWithDictionaryDescription(v11, v10);
    }

    v12 = CFDictionaryGetValue(v5, @"kOIChartAxisSecondaryXKey");
    if (v12)
    {
      v13 = v12;
      v14 = OIChartGetAxis(a1, @"kOIChartAxisSecondaryXKey");
      OIAxisUpdateWithDictionaryDescription(v14, v13);
    }

    v15 = CFDictionaryGetValue(v5, @"kOIChartAxisSecondaryYKey");
    if (v15)
    {
      v16 = v15;
      v17 = OIChartGetAxis(a1, @"kOIChartAxisSecondaryYKey");
      OIAxisUpdateWithDictionaryDescription(v17, v16);
    }
  }

  OIChartGetPlotArea(a1);
  v19 = v18;
  v21 = v20;
  v22 = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  OIAxisUpdateScaleForLength(v22, v19);
  v23 = OIChartGetAxis(a1, @"kOIChartAxisSecondaryXKey");
  OIAxisUpdateScaleForLength(v23, v19);
  v24 = OIChartGetAxis(a1, @"kOIChartAxisYKey");
  OIAxisUpdateScaleForLength(v24, v21);
  v25 = OIChartGetAxis(a1, @"kOIChartAxisSecondaryYKey");
  OIAxisUpdateScaleForLength(v25, v21);
  result = CFDictionaryGetValue(theDict, @"kOIChart3DSettingsKey");
  if (result)
  {
    v27 = result;
    v28 = CFDictionaryGetValue(result, @"kOIChart3DRotationKey");
    if (v28)
    {
      valuePtr = 0;
      CFNumberGetValue(v28, kCFNumberNSIntegerType, &valuePtr);
      OIChartSetRotation(a1, valuePtr);
    }

    result = CFDictionaryGetValue(v27, @"kOIChart3DElevationKey");
    if (result)
    {
      valuePtr = 0;
      CFNumberGetValue(result, kCFNumberNSIntegerType, &valuePtr);
      return OIChartSetElevation(a1, valuePtr);
    }
  }

  return result;
}

void _OIChartingGetLabelsFromData(uint64_t a1, const __CFDictionary *a2)
{
  OIAxisGetType(a1);
  PlotArea = OIChartGetPlotArea(a1);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  Size = OIChartGetSize(a1);
  v13 = v12;
  Value = CFDictionaryGetValue(a2, @"kOIChartTitleKey");
  if (Value)
  {
    v15 = Value;
    v16 = OILabelCreateFromDictionary(Value);
    if (v16)
    {
      v17 = v16;
      OILabelSetAlignment(v16, 2);
      OILabelSetFontSize(v17, 14.0);
      v18 = CFDictionaryGetValue(v15, @"kOIChartTextColorKey");
      if (v18)
      {
        OILabelSetTextColor(v17, v18);
      }

      OILabelGetFrame(v17);
      if (v20 == 0.0 || v19 == 0.0)
      {
        String = OILabelGetString(v17);
        v22 = OISizeForStringInContext(String, 14.0);
        OILabelSetFrame(v17, (Size - v22) * 0.5, v13 - v23, v22, v23);
      }

      OIChartAddLabel(a1, v17);
      OILabelRelease(v17);
    }
  }

  v24 = CFDictionaryGetValue(a2, @"kOIChartAxisKey");
  if (v24)
  {
    v25 = v24;
    if (OIChartGetAxis(a1, @"kOIChartAxisXKey"))
    {
      v26 = CFDictionaryGetValue(v25, @"kOIChartAxisXKey");
      if (v26)
      {
        v27 = CFDictionaryGetValue(v26, @"kOIChartAxisTitleKey");
        if (v27)
        {
          v28 = OILabelCreateFromDictionary(v27);
          if (v28)
          {
            v29 = v28;
            OILabelSetFontSize(v28, 10.0);
            OILabelGetFrame(v29);
            if (v31 == 0.0 || v30 == 0.0)
            {
              v32 = OILabelGetString(v29);
              v33 = OISizeForStringInContext(v32, 10.0);
              v34 = v6 + -30.0;
              v35 = v6 * 0.8;
              if (v6 + -30.0 < 0.0)
              {
                v34 = 0.0;
              }

              if (v35 > v13 * 0.8)
              {
                v35 = v13 * 0.8;
              }

              OILabelSetFrame(v29, PlotArea + v8 * 0.5 - v33, v34, v33 + v33, v35);
            }

            OIChartAddLabel(a1, v29);
            OILabelRelease(v29);
          }
        }
      }
    }

    if (OIChartGetAxis(a1, @"kOIChartAxisYKey"))
    {
      v36 = CFDictionaryGetValue(v25, @"kOIChartAxisYKey");
      if (v36)
      {
        v37 = CFDictionaryGetValue(v36, @"kOIChartAxisTitleKey");
        if (v37)
        {
          v38 = OILabelCreateFromDictionary(v37);
          if (v38)
          {
            v39 = v38;
            OILabelSetFontSize(v38, 10.0);
            OILabelGetFrame(v39);
            if (v41 == 0.0 || v40 == 0.0)
            {
              v42 = OILabelGetString(v39);
              v43 = OISizeForStringInContext(v42, 10.0);
              OILabelSetFrame(v39, PlotArea - v43, v6 + v10 + 5.0, v43 + v43, (v13 - (v6 + v10)) * 0.7);
            }

            OIChartAddLabel(a1, v39);
            OILabelRelease(v39);
          }
        }
      }
    }

    if (OIChartGetAxis(a1, @"kOIChartAxisSecondaryXKey"))
    {
      v44 = CFDictionaryGetValue(v25, @"kOIChartAxisSecondaryXKey");
      if (v44)
      {
        v45 = CFDictionaryGetValue(v44, @"kOIChartAxisTitleKey");
        if (v45)
        {
          v46 = OILabelCreateFromDictionary(v45);
          if (v46)
          {
            v47 = v46;
            OILabelSetFontSize(v46, 10.0);
            OILabelGetFrame(v47);
            if (v49 == 0.0 || v48 == 0.0)
            {
              v50 = OILabelGetString(v47);
              v51 = OISizeForStringInContext(v50, 10.0);
              OILabelSetFrame(v47, PlotArea + v8 * 0.5 - v51, v6 + v10 + 5.0, v51 + v51, v6 * 0.8);
            }

            OIChartAddLabel(a1, v47);
            OILabelRelease(v47);
          }
        }
      }
    }

    if (OIChartGetAxis(a1, @"kOIChartAxisSecondaryYKey"))
    {
      v52 = CFDictionaryGetValue(v25, @"kOIChartAxisSecondaryYKey");
      if (v52)
      {
        v53 = CFDictionaryGetValue(v52, @"kOIChartAxisTitleKey");
        if (v53)
        {
          v54 = OILabelCreateFromDictionary(v53);
          if (v54)
          {
            v55 = v54;
            OILabelSetFontSize(v54, 10.0);
            OILabelGetFrame(v55);
            if (v57 == 0.0 || v56 == 0.0)
            {
              v58 = OILabelGetString(v55);
              v59 = OISizeForStringInContext(v58, 10.0);
              OILabelSetFrame(v55, PlotArea + v8 - v59, v6 + v10 + 5.0, v59 + v59, (v13 - (v6 + v10)) * 0.7);
            }

            OIChartAddLabel(a1, v55);

            OILabelRelease(v55);
          }
        }
      }
    }
  }
}

void _OIChartingSetupBarTypeAxis(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Axis = OIChartGetAxis(a1, @"kOIChartAxisYKey");
  if (!Axis)
  {
    Values = OISeriesGetValues(a2);
    Count = CFArrayGetCount(Values);
    OIAxisCreateWithLabelCount(Count);
    if (!v11)
    {
      return;
    }

    v7 = v11;
    v12 = @"kOIChartAxisYKey";
LABEL_10:
    OILabelSetString(v7, v12);
    OIChartSetAxis(a1, v12, v7);
    OIAxisRelease(v7);
    goto LABEL_11;
  }

  v7 = Axis;
  if (!OIAxisGetType(Axis))
  {
    goto LABEL_11;
  }

  v8 = OIChartGetAxis(a1, @"kOIChartAxisSecondaryYKey");
  if (!v8)
  {
    v13 = OISeriesGetValues(a2);
    v14 = CFArrayGetCount(v13);
    OIAxisCreateWithLabelCount(v14);
    if (!v15)
    {
      return;
    }

    v7 = v15;
    v12 = @"kOIChartAxisSecondaryYKey";
    goto LABEL_10;
  }

  v7 = v8;
  if (OIAxisGetType(v8))
  {
    return;
  }

LABEL_11:
  OISeriesSetBaseAxis(a2, v7);
  if (OISeriesIsOnSecondaryAxis(a2))
  {
    v16 = @"kOIChartAxisSecondaryXKey";
  }

  else
  {
    v16 = @"kOIChartAxisXKey";
  }

  v17 = OIChartGetAxis(a1, v16);
  if (!v17)
  {
    OIAxisCreateWithRange(0.0, 100.0);
    if (!v19)
    {
      return;
    }

    v18 = v19;
    OILabelSetString(v19, v16);
    OIChartSetAxis(a1, v16, v18);
    OIAxisRelease(v18);
    goto LABEL_19;
  }

  v18 = v17;
  if (OIAxisGetType(v17) == 1)
  {
LABEL_19:
    OIAxisSetSubType(v18, a3);
    OISeriesSetValueAxis(a2, v18);
  }
}

void _OIChartingSetupColumnTypeAxis(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  if (!Axis)
  {
    Values = OISeriesGetValues(a2);
    Count = CFArrayGetCount(Values);
    OIAxisCreateWithLabelCount(Count);
    if (!v11)
    {
      return;
    }

    v7 = v11;
    v12 = @"kOIChartAxisXKey";
LABEL_10:
    OILabelSetString(v7, v12);
    OIChartSetAxis(a1, v12, v7);
    OIAxisRelease(v7);
    goto LABEL_11;
  }

  v7 = Axis;
  if (!OIAxisGetType(Axis))
  {
    goto LABEL_11;
  }

  v8 = OIChartGetAxis(a1, @"kOIChartAxisSecondaryXKey");
  if (!v8)
  {
    v13 = OISeriesGetValues(a2);
    v14 = CFArrayGetCount(v13);
    OIAxisCreateWithLabelCount(v14);
    if (!v15)
    {
      return;
    }

    v7 = v15;
    v12 = @"kOIChartAxisSecondaryXKey";
    goto LABEL_10;
  }

  v7 = v8;
  if (OIAxisGetType(v8))
  {
    return;
  }

LABEL_11:
  OISeriesSetBaseAxis(a2, v7);
  if (OISeriesIsOnSecondaryAxis(a2))
  {
    v16 = @"kOIChartAxisSecondaryYKey";
  }

  else
  {
    v16 = @"kOIChartAxisYKey";
  }

  v17 = OIChartGetAxis(a1, v16);
  if (!v17)
  {
    OIAxisCreateWithRange(0.0, 100.0);
    if (!v19)
    {
      return;
    }

    v18 = v19;
    OILabelSetString(v19, v16);
    OIChartSetAxis(a1, v16, v18);
    OIAxisRelease(v18);
    goto LABEL_19;
  }

  v18 = v17;
  if (OIAxisGetType(v17) == 1)
  {
LABEL_19:
    OIAxisSetSubType(v18, a3);
    OISeriesSetValueAxis(a2, v18);
  }
}

void _OIChartingSetupXYTypeAxis(uint64_t a1, uint64_t a2)
{
  Axis = OIChartGetAxis(a1, @"kOIChartAxisXKey");
  if (!Axis)
  {
    OIAxisCreateWithRange(0.0, 100.0);
    if (!v7)
    {
      return;
    }

    v5 = v7;
    v8 = @"kOIChartAxisXKey";
LABEL_10:
    OILabelSetString(v5, v8);
    OIChartSetAxis(a1, v8, v5);
    OIAxisRelease(v5);
    goto LABEL_11;
  }

  v5 = Axis;
  if (OIAxisGetType(Axis) == 1)
  {
    goto LABEL_11;
  }

  v6 = OIChartGetAxis(a1, @"kOIChartAxisSecondaryXKey");
  if (!v6)
  {
    OIAxisCreateWithRange(0.0, 100.0);
    if (!v9)
    {
      return;
    }

    v5 = v9;
    v8 = @"kOIChartAxisSecondaryXKey";
    goto LABEL_10;
  }

  v5 = v6;
  if (OIAxisGetType(v6) != 1)
  {
    return;
  }

LABEL_11:
  OIAxisSetSubType(v5, 1);
  OISeriesSetBaseAxis(a2, v5);
  if (OISeriesIsOnSecondaryAxis(a2))
  {
    v10 = @"kOIChartAxisSecondaryYKey";
  }

  else
  {
    v10 = @"kOIChartAxisYKey";
  }

  v11 = OIChartGetAxis(a1, v10);
  if (!v11)
  {
    OIAxisCreateWithRange(0.0, 1.0);
    if (!v13)
    {
      return;
    }

    v12 = v13;
    OILabelSetString(v13, v10);
    OIChartSetAxis(a1, v10, v12);
    OIAxisRelease(v12);
    goto LABEL_19;
  }

  v12 = v11;
  if (OIAxisGetType(v11) == 1)
  {
LABEL_19:
    OISeriesSetValueAxis(a2, v12);
  }
}

void _OIChartingUpdateAxisRangeWithValuesFromSeries(uint64_t a1, uint64_t a2)
{
  Series = OIChartGetSeries(a1);
  if (Series)
  {
    v5 = Series;
    Count = CFArrayGetCount(Series);
    if (Count)
    {
      v7 = Count;
      SubType = OIAxisGetSubType(a2);
      ValueCountForAxis = OIChartGetValueCountForAxis(a1, a2);
      if (ValueCountForAxis < 1)
      {
        v16 = 1.79769313e308;
        v12 = 2.22507386e-308;
      }

      else
      {
        v10 = ValueCountForAxis;
        v11 = 0;
        v12 = 2.22507386e-308;
        v13 = 1.79769313e308;
        do
        {
          if (v7 < 1)
          {
            v16 = 0.0;
            v15 = 0.0;
          }

          else
          {
            v14 = 0;
            v15 = 0.0;
            v16 = 0.0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v5, v14);
              if (OIAxisGetType(ValueAtIndex) == a2)
              {
                Values = OISeriesGetValues(ValueAtIndex);
                if (Values)
                {
                  v19 = Values;
                  if (v11 < CFArrayGetCount(Values))
                  {
                    valuePtr = 0.0;
                    v20 = CFArrayGetValueAtIndex(v19, v11);
                    CFNumberGetValue(v20, kCFNumberCGFloatType, &valuePtr);
                    if (valuePtr <= v12)
                    {
                      v21 = v12;
                    }

                    else
                    {
                      v21 = valuePtr;
                    }

                    if (valuePtr < v13)
                    {
                      v22 = valuePtr;
                    }

                    else
                    {
                      v22 = v13;
                    }

                    v23 = v16 + valuePtr;
                    v24 = v15 + valuePtr;
                    if (valuePtr <= 0.0)
                    {
                      v24 = v15;
                    }

                    else
                    {
                      v23 = v16;
                    }

                    if (SubType == 2)
                    {
                      v16 = v23;
                      v15 = v24;
                    }

                    else
                    {
                      v12 = v21;
                      v13 = v22;
                    }
                  }
                }
              }

              ++v14;
            }

            while (v7 != v14);
          }

          if (SubType == 2)
          {
            if (v15 <= v12)
            {
              v25 = v12;
            }

            else
            {
              v25 = v15;
            }

            if (v15 >= v13)
            {
              v26 = v13;
            }

            else
            {
              v26 = v15;
            }

            if (v16 <= v25)
            {
              v12 = v25;
            }

            else
            {
              v12 = v16;
            }

            if (v16 >= v26)
            {
              v16 = v26;
            }
          }

          else
          {
            v16 = v13;
          }

          ++v11;
          v13 = v16;
        }

        while (v11 != v10);
      }

      if (v16 == 1.79769313e308)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v16;
      }

      v28 = 1.0;
      if (v12 == 2.22507386e-308)
      {
        v29 = 1.0;
      }

      else
      {
        v29 = v12;
      }

      if (SubType == 3)
      {
        v30 = -0.4;
        if (v27 <= -0.4)
        {
          v30 = -1.0;
        }

        if (v27 >= 0.0)
        {
          v27 = 0.0;
        }

        else
        {
          v27 = v30;
        }

        OIAxisSetUnit(a2, 0.2);
      }

      else
      {
        v28 = v29;
      }

      OIAxisSetMinValue(a2, v27);
      OILabelSetFontSize(a2, v28);
      OIAxisImproveAxisRange(a2);
    }
  }
}

void _OIChartingUpdateAxisRangeWithBaseValuesFromSeries(uint64_t a1, uint64_t a2)
{
  Series = OIChartGetSeries(a1);
  if (Series)
  {
    v4 = Series;
    Count = CFArrayGetCount(Series);
    if (Count)
    {
      v6 = Count;
      if (Count < 1)
      {
        v9 = 1.79769313e308;
        v8 = 2.22507386e-308;
      }

      else
      {
        v7 = 0;
        v8 = 2.22507386e-308;
        v9 = 1.79769313e308;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
          if (OILabelGetString(ValueAtIndex) == a2)
          {
            FillColor = OILabelGetFillColor(ValueAtIndex);
            if (FillColor)
            {
              v12 = FillColor;
              v13 = CFArrayGetCount(FillColor);
              if (v13 >= 1)
              {
                v14 = v13;
                for (i = 0; i != v14; ++i)
                {
                  valuePtr = 0.0;
                  v16 = CFArrayGetValueAtIndex(v12, i);
                  CFNumberGetValue(v16, kCFNumberCGFloatType, &valuePtr);
                  if (valuePtr > v8)
                  {
                    v8 = valuePtr;
                  }

                  if (valuePtr < v9)
                  {
                    v9 = valuePtr;
                  }
                }
              }
            }
          }

          ++v7;
        }

        while (v7 != v6);
      }

      v17 = 0.0;
      if (v9 != 1.79769313e308)
      {
        v17 = v9;
      }

      if (v8 == 2.22507386e-308)
      {
        v8 = 1.0;
      }

      OIAxisSetMinValue(a2, v17);
      OILabelSetFontSize(a2, v8);
      OIAxisImproveAxisRange(a2);
    }
  }
}

CGColorRef _OIChartingInitColors(CGColorRef *a1, uint64_t a2)
{
  if (a2 == 1)
  {
    *a1 = OIColorCreateGenericRGB(0.949019608, 0.874509804, 0.607843137, 1.0);
    a1[1] = OIColorCreateGenericRGB(0.77254902, 0.866666667, 0.71372549, 1.0);
    a1[2] = OIColorCreateGenericRGB(0.349019608, 0.768627451, 0.870588235, 1.0);
    a1[3] = OIColorCreateGenericRGB(0.4, 0.560784314, 0.894117647, 1.0);
    a1[4] = OIColorCreateGenericRGB(0.552941176, 0.447058824, 0.866666667, 1.0);
    a1[5] = OIColorCreateGenericRGB(0.741176471, 0.509803922, 0.807843137, 1.0);
    a1[6] = OIColorCreateGenericRGB(0.949019608, 0.874509804, 0.607843137, 1.0);
    v6 = 1.0;
    v5 = 0.77254902;
    v3 = 0.866666667;
    v4 = 0.71372549;
  }

  else
  {
    if (a2 == 2)
    {
      *a1 = OIColorCreateGenericRGB(0.337254902, 0.584313725, 0.847058824, 1.0);
      a1[1] = OIColorCreateGenericRGB(0.956862745, 0.376470588, 0.392156863, 1.0);
      a1[2] = OIColorCreateGenericRGB(0.619607843, 0.823529412, 0.396078431, 1.0);
      a1[3] = OIColorCreateGenericRGB(0.643137255, 0.501960784, 0.756862745, 1.0);
      a1[4] = OIColorCreateGenericRGB(0.141176471, 0.756862745, 0.870588235, 1.0);
      a1[5] = OIColorCreateGenericRGB(1.0, 0.580392157, 0.278431373, 1.0);
      a1[6] = OIColorCreateGenericRGB(0.588235294, 0.741176471, 0.933333333, 1.0);
      v3 = 0.603921569;
      v4 = 0.611764706;
      v5 = 1.0;
    }

    else
    {
      *a1 = OIColorCreateGenericRGB(0.4, 0.7, 0.99, 1.0);
      a1[1] = OIColorCreateGenericRGB(1.0, 0.0, 0.0, 1.0);
      a1[2] = OIColorCreateGenericRGB(1.0, 0.95, 0.55, 1.0);
      a1[3] = OIColorCreateGenericRGB(0.305882353, 0.88627451, 0.341176471, 1.0);
      a1[4] = OIColorCreateGenericRGB(0.403921569, 0.0666666667, 1.0, 1.0);
      a1[5] = OIColorCreateGenericRGB(0.996078431, 0.654901961, 0.274509804, 1.0);
      a1[6] = OIColorCreateGenericRGB(0.525490196, 0.325490196, 0.341176471, 1.0);
      v5 = 0.635294118;
      v3 = 0.741176471;
      v4 = 0.564705882;
    }

    v6 = 1.0;
  }

  result = OIColorCreateGenericRGB(v5, v3, v4, v6);
  a1[7] = result;
  return result;
}

void _OIChartingReleaseColors(uint64_t a1)
{
  for (i = 0; i != 64; i += 8)
  {
    CGColorRelease(*(a1 + i));
  }
}

void OIRenderXYInChart(uint64_t a1, CFArrayRef theArray)
{
  if (theArray)
  {
    v2 = theArray;
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v5 = Count;
      Type = OIAxisGetType(a1);
      PlotArea = OIChartGetPlotArea(a1);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v39 = OIAxisAreLabelsCentered(a1);
      CGContextSaveGState(Type);
      c = Type;
      v46.origin.x = PlotArea;
      v46.origin.y = v9;
      v46.size.width = v11;
      v46.size.height = v13;
      CGContextClipToRect(Type, v46);
      if (v5 >= 1)
      {
        v14 = 0;
        v37 = v5;
        v38 = v2;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v2, v14);
          Labels = OIAxisGetLabels(ValueAtIndex);
          Values = OISeriesGetValues(ValueAtIndex);
          StrokeColor = OILabelGetStrokeColor(ValueAtIndex);
          StrokeWidth = OILabelGetStrokeWidth(ValueAtIndex);
          String = OILabelGetString(ValueAtIndex);
          v20 = OIAxisGetType(ValueAtIndex);
          FillColor = OILabelGetFillColor(ValueAtIndex);
          if (FillColor)
          {
            v22 = FillColor;
            Mutable = CGPathCreateMutable();
            if (Labels)
            {
              path = CGPathCreateMutable();
              MarkerWidth = OISeriesGetMarkerWidth(ValueAtIndex);
            }

            else
            {
              path = 0;
              MarkerWidth = 0.0;
            }

            CGContextSetLineWidth(c, StrokeWidth);
            CGContextSetLineJoin(c, kCGLineJoinRound);
            CGContextSetLineCap(c, kCGLineCapRound);
            if (v39)
            {
              v45.width = 0.0;
              v45.height = -2.0;
              CGContextSetShadow(c, v45, 3.0);
            }

            v25 = CFArrayGetCount(v22);
            if (v25 >= 1)
            {
              v26 = v25;
              v27 = 0;
              v28 = MarkerWidth * 0.5;
              v29 = ceil(MarkerWidth);
              do
              {
                if (v27 < CFArrayGetCount(Values))
                {
                  valuePtr = 0.0;
                  v30 = CFArrayGetValueAtIndex(v22, v27);
                  CFNumberGetValue(v30, kCFNumberCGFloatType, &valuePtr);
                  v43 = 0.0;
                  v31 = CFArrayGetValueAtIndex(Values, v27);
                  CFNumberGetValue(v31, kCFNumberCGFloatType, &v43);
                  v32 = PlotArea + OIAxisConvertValueToLocal(String, valuePtr);
                  v33 = v9 + OIAxisConvertValueToLocal(v20, v43);
                  v34 = floor(v32) + 0.5;
                  v35 = floor(v33) + 0.5;
                  if (!v27)
                  {
                    CGPathMoveToPoint(Mutable, 0, v34, v35);
                    if (!Labels)
                    {
                      goto LABEL_17;
                    }

LABEL_16:
                    v47.origin.x = floor(v32 - v28) + 0.5;
                    v47.origin.y = floor(v33 - v28) + 0.5;
                    v47.size.width = v29;
                    v47.size.height = v29;
                    CGPathAddRect(path, 0, v47);
                    goto LABEL_17;
                  }

                  CGPathAddLineToPoint(Mutable, 0, v34, v35);
                  if (Labels)
                  {
                    goto LABEL_16;
                  }
                }

LABEL_17:
                ++v27;
              }

              while (v26 != v27);
            }

            v2 = v38;
            if (StrokeColor)
            {
              CGContextSetLineJoin(c, kCGLineJoinRound);
              CGContextSetLineCap(c, kCGLineCapRound);
              CGContextAddPath(c, Mutable);
              CGContextSetStrokeColorWithColor(c, StrokeColor);
              CGContextSetLineWidth(c, StrokeWidth);
              CGContextStrokePath(c);
            }

            v5 = v37;
            if (Labels)
            {
              MarkerColor = OISeriesGetMarkerColor(ValueAtIndex);
              CGContextSetFillColorWithColor(c, MarkerColor);
              CGContextAddPath(c, path);
              CGContextFillPath(c);
            }

            if (path)
            {
              CGPathRelease(path);
            }

            if (Mutable)
            {
              CGPathRelease(Mutable);
            }
          }

          ++v14;
        }

        while (v14 != v5);
      }

      CGContextRestoreGState(c);
    }
  }
}

CGColor *OICreateDimmedColorFromColor(CGColor *result, double a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = result;
    v3 = CGColorGetComponents(result);
    v4 = vmulq_n_f64(*v3, a2);
    __asm { FMOV            V1.2D, #1.0 }

    *components = vbslq_s8(vcgtq_f64(v4, _Q1), _Q1, v4);
    v10 = *(v3 + 3);
    v11 = v3[2] * a2;
    if (v11 > 1.0)
    {
      v11 = 1.0;
    }

    v15 = v11;
    v16 = v10;
    ColorSpace = CGColorGetColorSpace(v2);
    return CGColorCreate(ColorSpace, components);
  }

  return result;
}

CGColorRef OIColorCreateGenericRGB(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x277D85DE8];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  v4 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF458]);
  v5 = CGColorCreate(v4, components);
  CGColorSpaceRelease(v4);
  return v5;
}

const __CFNumber *OIRectMakeWithDictionaryRepresentation(const __CFDictionary *a1, uint64_t a2)
{
  result = CFDictionaryGetValue(a1, @"X");
  if (result)
  {
    CFNumberGetValue(result, kCFNumberFloatType, a2);
    result = CFDictionaryGetValue(a1, @"Y");
    if (result)
    {
      CFNumberGetValue(result, kCFNumberFloatType, (a2 + 8));
      result = CFDictionaryGetValue(a1, @"Width");
      if (result)
      {
        CFNumberGetValue(result, kCFNumberFloatType, (a2 + 16));
        result = CFDictionaryGetValue(a1, @"Height");
        if (result)
        {
          CFNumberGetValue(result, kCFNumberFloatType, (a2 + 24));
          return 1;
        }
      }
    }
  }

  return result;
}

CTFontRef OICreateDefaultFontWithSize(CGFloat a1)
{
  keys[1] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CC48B8];
  values = @"Arial";
  keys[0] = v2;
  v3 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = CTFontDescriptorCreateWithAttributes(v3);
  CFRelease(v3);
  v5 = CTFontCreateWithFontDescriptor(v4, a1, 0);
  CFRelease(v4);
  if (!v5)
  {
    return CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, a1, 0);
  }

  return v5;
}

double OISizeForStringInContext(const __CFString *a1, CGFloat a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277CC4838];
  v3 = OICreateDefaultFontWithSize(a2);
  v14[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v5 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:a1 attributes:v4];
  Length = CFStringGetLength(a1);
  result.location = 0;
  result.length = 0;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
  v16.location = 0;
  v16.length = Length;
  if (CFStringFindCharacterFromSet(a1, Predefined, v16, 0, &result))
  {
    v8 = CTFramesetterCreateWithAttributedString(v5);
    v17.width = 3.40282347e38;
    v15.location = 0;
    v15.length = Length;
    v17.height = 3.40282347e38;
    *&TypographicBounds = *&CTFramesetterSuggestFrameSizeWithConstraints(v8, v15, 0, v17, &result);
  }

  else
  {
    v8 = CTLineCreateWithAttributedString(v5);
    v11 = 0;
    TypographicBounds = CTLineGetTypographicBounds(v8, &v11, 0, 0);
  }

  CFRelease(v8);

  return TypographicBounds;
}

void OIDrawStringWithAttributes(const __CFString *a1, void *a2, CGContext *a3, void *a4)
{
  v7 = MEMORY[0x277CCA898];
  v8 = a4;
  v9 = a2;
  v10 = [[v7 alloc] initWithString:a1 attributes:v9];

  Length = CFStringGetLength(a1);
  result.location = 0;
  result.length = 0;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
  v27.location = 0;
  v27.length = Length;
  if (CFStringFindCharacterFromSet(a1, Predefined, v27, 0, &result))
  {
    v13 = CTFramesetterCreateWithAttributedString(v10);
    v28.width = 1.79769313e308;
    v25.location = 0;
    v25.length = Length;
    v28.height = 1.79769313e308;
    v14 = CTFramesetterSuggestFrameSizeWithConstraints(v13, v25, 0, v28, &result);
    width = v14.width;
    height = v14.height;
    v17 = 0;
  }

  else
  {
    v17 = CTLineCreateWithAttributedString(v10);
    ascent = 0.0;
    width = CTLineGetTypographicBounds(v17, &ascent, 0, 0);
    v13 = 0;
    height = ascent;
  }

  v18 = v8[2](v8, width, height);
  v20 = v19;

  if (v13)
  {
    v29.origin.x = v18;
    v29.origin.y = v20;
    v29.size.width = width;
    v29.size.height = height;
    v21 = CGPathCreateWithRect(v29, 0);
    v26.location = 0;
    v26.length = Length;
    Frame = CTFramesetterCreateFrame(v13, v26, v21, 0);
    CTFrameDraw(Frame, a3);
    CFRelease(Frame);
    CFRelease(v21);
LABEL_8:
    CFRelease(v13);
    goto LABEL_9;
  }

  if (v17)
  {
    CGContextSetTextPosition(a3, v18, v20);
    CTLineDraw(v17, a3);
    v13 = v17;
    goto LABEL_8;
  }

LABEL_9:
}

void *_OIErrorBarRendererRetain(uint64_t a1, void *a2)
{
  result = a2;
  if (a2)
  {
    ++*a2;
  }

  return result;
}

uint64_t OIErrorBarRendererCreate(char a1)
{
  Default = CFAllocatorGetDefault();
  v3 = MEMORY[0x266701C00](Default, 32, 0x10200405FA63936, 0);
  *v3 = 1;
  *(v3 + 16) = a1;
  *(v3 + 24) = CGPathCreateMutable();
  return v3;
}

void OIErrorBarRendererRelease(void *a1)
{
  if (a1)
  {
    if ((*a1)-- == 1)
    {
      v3 = a1[3];
      if (v3)
      {
        CFRelease(v3);
      }

      Default = CFAllocatorGetDefault();

      CFAllocatorDeallocate(Default, a1);
    }
  }
}

void OIErrorBarRendererAddPoint(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  Type = OIErrorBarGetType(a2);
  ValueType = OIErrorBarGetValueType(a2);
  Value = OIErrorBarGetValue(a2);
  if (ValueType == 2)
  {
    v15 = Value * a6;
  }

  else
  {
    if (ValueType != 1)
    {
      return;
    }

    v15 = a5 * a6 * Value / 100.0;
  }

  if (v15 != 0.0)
  {
    v16 = *(a1 + 24);
    if (*(a1 + 16) != 1)
    {
      if (Type == 2)
      {
        CGPathMoveToPoint(v16, 0, a3, a4);
        v19 = *(a1 + 24);
        v20 = a3 + v15;
      }

      else
      {
        if (Type != 1)
        {
          CGPathMoveToPoint(v16, 0, a3 - v15, a4 + -2.0);
          CGPathAddLineToPoint(*(a1 + 24), 0, a3 - v15, a4 + 2.0);
          CGPathMoveToPoint(*(a1 + 24), 0, a3 - v15, a4);
          v24 = a3 + v15;
          CGPathAddLineToPoint(*(a1 + 24), 0, v24, a4);
          CGPathMoveToPoint(*(a1 + 24), 0, v24, a4 + -2.0);
          v21 = *(a1 + 24);
          v22 = v24;
          v23 = a4 + 2.0;
          goto LABEL_21;
        }

        CGPathMoveToPoint(v16, 0, a3, a4);
        v19 = *(a1 + 24);
        v20 = a3 - v15;
      }

      CGPathAddLineToPoint(v19, 0, v20, a4);
      CGPathMoveToPoint(*(a1 + 24), 0, v20, a4 + -2.0);
      v21 = *(a1 + 24);
      v23 = a4 + 2.0;
      v22 = v20;
LABEL_21:

      CGPathAddLineToPoint(v21, 0, v22, v23);
      return;
    }

    if (Type == 2)
    {
      CGPathMoveToPoint(v16, 0, a3, a4);
      v17 = *(a1 + 24);
      v18 = a4 + v15;
    }

    else
    {
      if (Type != 1)
      {
        CGPathMoveToPoint(v16, 0, a3 + -2.0, a4 - v15);
        CGPathAddLineToPoint(*(a1 + 24), 0, a3 + 2.0, a4 - v15);
        CGPathMoveToPoint(*(a1 + 24), 0, a3, a4 - v15);
        v18 = a4 + v15;
        CGPathAddLineToPoint(*(a1 + 24), 0, a3, v18);
        CGPathMoveToPoint(*(a1 + 24), 0, a3 + -2.0, v18);
        v21 = *(a1 + 24);
        v22 = a3 + 2.0;
        goto LABEL_19;
      }

      CGPathMoveToPoint(v16, 0, a3, a4);
      v17 = *(a1 + 24);
      v18 = a4 - v15;
    }

    CGPathAddLineToPoint(v17, 0, a3, v18);
    CGPathMoveToPoint(*(a1 + 24), 0, a3 + -2.0, v18);
    v21 = *(a1 + 24);
    v22 = a3 + 2.0;
LABEL_19:
    v23 = v18;
    goto LABEL_21;
  }
}

void OIErrorBarRendererRenderInContext(uint64_t a1, CGContext *a2)
{
  GenericRGB = OIColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
  CGContextSetStrokeColorWithColor(a2, GenericRGB);
  CGContextAddPath(a2, *(a1 + 24));
  CGContextStrokePath(a2);

  CGColorRelease(GenericRGB);
}

void OIRenderBubblesInChart(uint64_t a1, CFArrayRef theArray)
{
  if (theArray)
  {
    v2 = theArray;
    Count = CFArrayGetCount(theArray);
    if (Count >= 2)
    {
      v5 = Count;
      Type = OIAxisGetType(a1);
      PlotArea = OIChartGetPlotArea(a1);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = OIAxisAreLabelsCentered(a1);
      CGContextSaveGState(Type);
      c = Type;
      v50.origin.x = PlotArea;
      v50.origin.y = v9;
      v50.size.width = v11;
      v50.size.height = v13;
      CGContextClipToRect(Type, v50);
      if (v11 > v13)
      {
        v11 = v13;
      }

      if (v14)
      {
        v49.width = 4.0;
        v49.height = -4.0;
        CGContextSetShadow(Type, v49, 3.0);
      }

      v15 = 0;
      v43 = v5 - 1;
      v16 = v11 / 5.0;
      do
      {
        v17 = v2;
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v15);
        Values = OISeriesGetValues(ValueAtIndex);
        TextColor = OILabelGetTextColor(ValueAtIndex);
        StrokeColor = OILabelGetStrokeColor(ValueAtIndex);
        String = OILabelGetString(ValueAtIndex);
        v22 = OIAxisGetType(ValueAtIndex);
        FillColor = OILabelGetFillColor(ValueAtIndex);
        if (FillColor)
        {
          v24 = FillColor;
          OISeriesSetupStrokeAndFillForContext(ValueAtIndex, c);
          v25 = CFArrayGetValueAtIndex(v17, v15 | 1);
          v26 = OISeriesGetValues(v25);
          v27 = CFArrayGetCount(v26);
          if (v27 >= 1)
          {
            v28 = v27;
            v29 = 0;
            v30 = 0.0;
            do
            {
              v31 = CFArrayGetValueAtIndex(v26, v29);
              if (v31)
              {
                valuePtr = 0.0;
                CFNumberGetValue(v31, kCFNumberCGFloatType, &valuePtr);
                v30 = v30 + fabs(valuePtr);
              }

              ++v29;
            }

            while (v28 != v29);
            if (v30 != 0.0)
            {
              v32 = CFArrayGetCount(v24);
              if (v32 >= 1)
              {
                v33 = v32;
                for (i = 0; i != v33; ++i)
                {
                  if (i < CFArrayGetCount(Values) && i < CFArrayGetCount(v26))
                  {
                    valuePtr = 0.0;
                    v35 = CFArrayGetValueAtIndex(v24, i);
                    CFNumberGetValue(v35, kCFNumberCGFloatType, &valuePtr);
                    v47 = 0.0;
                    v36 = CFArrayGetValueAtIndex(Values, i);
                    CFNumberGetValue(v36, kCFNumberCGFloatType, &v47);
                    v46 = 0.0;
                    v37 = CFArrayGetValueAtIndex(v26, i);
                    CFNumberGetValue(v37, kCFNumberCGFloatType, &v46);
                    v46 = v16 * v46 / v30;
                    v38 = PlotArea + OIAxisConvertValueToLocal(String, valuePtr);
                    v39 = OIAxisConvertValueToLocal(v22, v47);
                    v40 = v38 - v46;
                    v41 = v9 + v39 - v46;
                    v42 = v46 + v46;
                    if (TextColor)
                    {
                      v51.origin.x = v40;
                      v51.origin.y = v41;
                      v51.size.width = v46 + v46;
                      v51.size.height = v46 + v46;
                      CGContextFillEllipseInRect(c, v51);
                    }

                    if (StrokeColor)
                    {
                      v52.origin.x = v40;
                      v52.origin.y = v41;
                      v52.size.width = v42;
                      v52.size.height = v42;
                      CGContextStrokeEllipseInRect(c, v52);
                    }
                  }
                }
              }
            }
          }
        }

        v15 += 2;
        v2 = v17;
      }

      while (v15 < v43);
      CGContextRestoreGState(c);
    }
  }
}

void _OIRenderBarsInChart(uint64_t a1, CFArrayRef theArray, double a3, double a4)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v7 = Count;
      Type = OIAxisGetType(a1);
      PlotArea = OIChartGetPlotArea(a1);
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v16 = OIAxisAreLabelsCentered(a1);
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      v18 = OIAxisGetType(ValueAtIndex);
      String = OILabelGetString(ValueAtIndex);
      FontSize = OILabelGetFontSize(v18);
      MinValue = OIAxisGetMinValue(v18);
      Scale = OIAxisGetScale(v18);
      CGContextSaveGState(Type);
      v52 = PlotArea;
      v57.origin.x = PlotArea;
      v57.origin.y = v11;
      v57.size.width = v13;
      v57.size.height = v15;
      CGContextClipToRect(Type, v57);
      v22 = OIAxisGetScale(String);
      v23 = OIAxisAreLabelsCentered(String);
      v24 = v22 * -0.5;
      if (v23)
      {
        v24 = 0.0;
      }

      v51 = v24;
      if (v16)
      {
        v56.width = 4.0;
        v56.height = -4.0;
        CGContextSetShadow(Type, v56, 3.0);
      }

      v45 = Type;
      v25 = 0;
      if (v7 >= 1)
      {
        for (i = 0; i != v7; ++i)
        {
          v27 = CFArrayGetValueAtIndex(theArray, i);
          Values = OISeriesGetValues(v27);
          v29 = CFArrayGetCount(Values);
          if (v29 > v25)
          {
            v25 = v29;
          }
        }
      }

      v47 = OILabelCollectionCreate();
      v49 = OIErrorBarRendererCreate(0);
      if (v25 >= 1)
      {
        v30 = 0;
        v31 = floor(v22 / (v7 + 1));
        v50 = floor(v31 * 0.5);
        v46 = ceil(v31 * 3.0);
        do
        {
          if (v7 >= 1)
          {
            for (j = 0; j != v7; ++j)
            {
              v33 = CFArrayGetValueAtIndex(theArray, j);
              BaseValueAtIndex = OISeriesGetBaseValueAtIndex(v33, v30);
              v35 = OISeriesGetValues(v33);
              if (v30 < CFArrayGetCount(v35))
              {
                valuePtr[0] = 0.0;
                v36 = CFArrayGetValueAtIndex(v35, v30);
                CFNumberGetValue(v36, kCFNumberCGFloatType, valuePtr);
                v37 = valuePtr[0];
                if (valuePtr[0] <= FontSize)
                {
                  v38 = valuePtr[0] < MinValue;
                }

                else
                {
                  v37 = FontSize;
                  v38 = 1;
                }

                if (v38)
                {
                  if (v37 < MinValue)
                  {
                    v37 = MinValue;
                  }

                  valuePtr[0] = v37;
                }

                v39 = v52 + OIAxisConvertValueToLocal(v18, 0.0);
                OIAxisConvertValueToLocal(String, BaseValueAtIndex);
                v40 = v52 + OIAxisConvertValueToLocal(v18, valuePtr[0]);
                v41 = v50 + v51 + v11 + OIAxisConvertValueToLocal(String, BaseValueAtIndex) + v31 * j;
                v42 = v40 - v39;
                _OIRenderBarFloor(a1, v39, v41, v42, v31, a3, a4);
                _OIRenderBar(a1, v33, v39, v41, v42, v31, a3, a4);
                v43 = v39 + v42;
                if (OISeriesGetShowValues(v33))
                {
                  OILabelCollectionAddNumber(v47, 0, valuePtr[0], floor(v43) + 0.5, floor(v41) + 0.5, v46, v31);
                }

                PlotFillColor = OIChartGetPlotFillColor(v33);
                if (PlotFillColor)
                {
                  OIErrorBarRendererAddPoint(v49, PlotFillColor, v43, v31 * 0.5 + v41, valuePtr[0], Scale);
                }
              }
            }
          }

          ++v30;
        }

        while (v30 != v25);
      }

      OIErrorBarRendererRenderInContext(v49, v45);
      OIErrorBarRendererRelease(v49);
      OILabelCollectionRenderInContext(v47, v45);
      OILabelCollectionRelease(v47);
      CGContextRestoreGState(v45);
    }
  }
}

void _OIRenderStackedBarsInChart(uint64_t a1, const __CFArray *a2, uint64_t a3, double a4, double a5)
{
  Type = OIAxisGetType(a1);
  PlotArea = OIChartGetPlotArea(a1);
  v69 = v10;
  v70 = PlotArea;
  v12 = v11;
  v14 = v13;
  v15 = OIAxisAreLabelsCentered(a1);
  if (a2)
  {
    v16 = v15;
    Count = CFArrayGetCount(a2);
    if (Count)
    {
      v18 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
      v20 = OIAxisGetType(ValueAtIndex);
      String = OILabelGetString(ValueAtIndex);
      FontSize = OILabelGetFontSize(v20);
      MinValue = OIAxisGetMinValue(v20);
      v22 = OILabelGetFontSize(String);
      Scale = OIAxisGetScale(v20);
      CGContextSaveGState(Type);
      v75.origin.y = v69;
      v75.origin.x = v70;
      v75.size.width = v12;
      v75.size.height = v14;
      CGContextClipToRect(Type, v75);
      v23 = OIAxisGetScale(String);
      v58 = v22;
      v24 = OIAxisAreLabelsCentered(String);
      v25 = v23 * -0.5;
      if (v24)
      {
        v25 = 0.0;
      }

      v66 = v25;
      if (v16)
      {
        v74.width = 4.0;
        v74.height = -4.0;
        CGContextSetShadow(Type, v74, 3.0);
      }

      v56 = Type;
      v61 = OILabelCollectionCreate();
      v60 = OIErrorBarRendererCreate(0);
      if (v58 >= 1)
      {
        v26 = 0;
        v65 = floor(v23 * 0.25);
        v72 = floor(v23 * 0.5);
        v28 = a3 != 1 || v18 < 1;
        v57 = v28;
        do
        {
          v29 = OIAxisConvertValueToLocal(v20, 0.0);
          v71 = v26;
          OIAxisConvertValueToLocal(String, v26);
          v30 = 0.0;
          if (!v57)
          {
            for (i = 0; i != v18; ++i)
            {
              v32 = CFArrayGetValueAtIndex(a2, i);
              Values = OISeriesGetValues(v32);
              if (CFArrayGetCount(Values) > v26)
              {
                valuePtr[0] = 0.0;
                v34 = CFArrayGetValueAtIndex(Values, v26);
                CFNumberGetValue(v34, kCFNumberCGFloatType, valuePtr);
                v30 = v30 + fabs(valuePtr[0]);
              }
            }
          }

          if (v18 < 1)
          {
            goto LABEL_45;
          }

          v35 = 0;
          v36 = v70 + v29;
          v37 = 0.0;
          v64 = 0.0;
          v38 = v36;
          do
          {
            v39 = CFArrayGetValueAtIndex(a2, v35);
            v40 = OISeriesGetValues(v39);
            if (CFArrayGetCount(v40) > v26)
            {
              valuePtr[0] = 0.0;
              v41 = CFArrayGetValueAtIndex(v40, v26);
              CFNumberGetValue(v41, kCFNumberCGFloatType, valuePtr);
              if (a3 == 1)
              {
                v42 = valuePtr[0] / v30;
              }

              else
              {
                v42 = valuePtr[0];
              }

              if (v42 >= 0.0)
              {
                v48 = v37 + v42;
                if (v37 + v42 > FontSize)
                {
                  v48 = FontSize;
                }

                if (v48 >= MinValue)
                {
                  v37 = v48;
                }

                else
                {
                  v37 = MinValue;
                }

                v49 = v70 + OIAxisConvertValueToLocal(v20, v37);
                v45 = OIAxisConvertValueToLocal(String, v71);
                v46 = v49 - v36;
                v47 = v36;
                v36 = v49;
              }

              else
              {
                v43 = v64 + v42;
                if (v64 + v42 < MinValue)
                {
                  v43 = MinValue;
                }

                if (v43 > FontSize)
                {
                  v43 = FontSize;
                }

                v64 = v43;
                v44 = v70 + OIAxisConvertValueToLocal(v20, v43);
                v45 = OIAxisConvertValueToLocal(String, v71);
                v46 = v44 - v38;
                v47 = v38;
                v38 = v44;
              }

              v50 = ceil(v46);
              v51 = floor(v65 + v66 + v69 + v45) + 0.5;
              v52 = floor(v47) + 0.5;
              _OIRenderBar(a1, v39, v52, v51, v50, v72, a4, a5);
              if (OISeriesGetShowValues(v39))
              {
                OILabelCollectionAddNumber(v61, 0, valuePtr[0], floor(v52) + 0.5, floor(v51) + 0.5, v50, v72);
              }

              if (!a3)
              {
                PlotFillColor = OIChartGetPlotFillColor(v39);
                if (PlotFillColor)
                {
                  OIErrorBarRendererAddPoint(v60, PlotFillColor, v52 + v50, v72 * 0.5 + v51, v42, Scale);
                }
              }
            }

            ++v35;
          }

          while (v18 != v35);
          if (v37 == 0.0)
          {
LABEL_45:
            v54 = v70 + OIAxisConvertValueToLocal(v20, 0.0);
            v55 = OIAxisConvertValueToLocal(String, v71);
            _OIRenderBarFloor(a1, floor(v65 + v54) + 0.5, floor(v66 + v69 + v55) + 0.5, v72, 0.0, a4, a5);
          }

          ++v26;
        }

        while (v26 != v58);
      }

      OIErrorBarRendererRenderInContext(v60, v56);
      OIErrorBarRendererRelease(v60);
      OILabelCollectionRenderInContext(v61, v56);
      OILabelCollectionRelease(v61);
      CGContextRestoreGState(v56);
    }
  }
}

void OIRender3DBarsInChart(uint64_t a1, const __CFArray *a2)
{
  Axis = OIChartGetAxis(a1, @"kOIChartAxisYKey");
  OIChartGetPlotArea(a1);
  v6 = v5;
  v8 = v7;
  v9 = (2 * OILabelGetFontSize(Axis));
  v10 = OIChartGetRotation(a1) / 45.0 * (v6 / v9);
  v11 = OIChartGetElevation(a1) / 90.0 * (v8 / v9);

  _OIRenderBarsInChart(a1, a2, v10, v11);
}

void OIRender3DStackedBarsInChart(uint64_t a1, const __CFArray *a2)
{
  Axis = OIChartGetAxis(a1, @"kOIChartAxisYKey");
  OIChartGetPlotArea(a1);
  v6 = v5;
  v8 = v7;
  v9 = (2 * OILabelGetFontSize(Axis));
  v10 = OIChartGetRotation(a1) / 45.0 * (v6 / v9);
  v11 = OIChartGetElevation(a1) / 90.0 * (v8 / v9);

  _OIRenderStackedBarsInChart(a1, a2, 0, v10, v11);
}

void OIRender3DPercentStackedBarsInChart(uint64_t a1, const __CFArray *a2)
{
  Axis = OIChartGetAxis(a1, @"kOIChartAxisYKey");
  OIChartGetPlotArea(a1);
  v6 = v5;
  v8 = v7;
  v9 = (2 * OILabelGetFontSize(Axis));
  v10 = OIChartGetRotation(a1) / 45.0 * (v6 / v9);
  v11 = OIChartGetElevation(a1) / 90.0 * (v8 / v9);

  _OIRenderStackedBarsInChart(a1, a2, 1, v10, v11);
}

void _OIRenderBarFloor(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  Type = OIAxisGetType(a1);
  v14 = a2 + a6 * 0.25;
  v15 = a3 + a7 * 0.25;
  v16 = a7 * 0.5;
  Mutable = CGPathCreateMutable();
  GenericRGB = OIColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
  CGPathMoveToPoint(Mutable, 0, floor(a4 + v14) + 0.5, floor(v15) + 0.5);
  v19 = a5 + v15;
  CGPathAddLineToPoint(Mutable, 0, floor(v14) + 0.5, floor(v19) + 0.5);
  v20 = floor(a6 * 0.5 + v14) + 0.5;
  CGPathAddLineToPoint(Mutable, 0, v20, floor(v16 + v19) + 0.5);
  CGPathAddLineToPoint(Mutable, 0, v20, floor(v16 + v15) + 0.5);
  CGPathCloseSubpath(Mutable);
  CGContextSetFillColorWithColor(Type, GenericRGB);
  CGContextAddPath(Type, Mutable);
  CGContextFillPath(Type);
  CGPathRelease(Mutable);

  CGColorRelease(GenericRGB);
}

void _OIRenderBar(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  Type = OIAxisGetType(a1);
  TextColor = OILabelGetTextColor(a2);
  StrokeColor = OILabelGetStrokeColor(a2);
  StrokeWidth = OILabelGetStrokeWidth(a2);
  v19 = StrokeWidth;
  if (a7 == 0.0 && a8 == 0.0)
  {
    if (TextColor)
    {
      CGContextSetFillColorWithColor(Type, TextColor);
      v53.origin.x = a3;
      v53.origin.y = a4;
      v53.size.width = a5;
      v53.size.height = a6;
      CGContextFillRect(Type, v53);
    }

    if (StrokeColor)
    {
      CGContextSetStrokeColorWithColor(Type, StrokeColor);
      CGContextSetLineWidth(Type, v19);
      v20 = a3;
      v21 = a4;
      v22 = a5;
      v23 = a6;

      CGContextStrokeRect(Type, *&v20);
    }
  }

  else
  {
    width = StrokeWidth;
    v24 = a3 + a7 * 0.25;
    v25 = a4 + a8 * 0.25;
    Mutable = CGPathCreateMutable();
    v27 = floor(v24) + 0.5;
    v28 = a5;
    v29 = floor(v25) + 0.5;
    CGPathMoveToPoint(Mutable, 0, v27, v29);
    v46 = v25;
    v47 = a6 + v25;
    x = v27;
    v30 = floor(a6 + v25) + 0.5;
    v31 = v27;
    v32 = v29;
    v33 = v28;
    CGPathAddLineToPoint(Mutable, 0, v31, v30);
    v49 = v24;
    v34 = v28 + v24;
    v35 = v30;
    v36 = floor(v34) + 0.5;
    y = v35;
    CGPathAddLineToPoint(Mutable, 0, v36, v35);
    CGPathAddLineToPoint(Mutable, 0, v36, v32);
    CGPathCloseSubpath(Mutable);
    if (TextColor)
    {
      CGContextSetFillColorWithColor(Type, TextColor);
      CGContextAddPath(Type, Mutable);
      CGContextFillPath(Type);
    }

    if (StrokeColor)
    {
      CGContextSetStrokeColorWithColor(Type, StrokeColor);
      CGContextAddPath(Type, Mutable);
      CGContextSetLineWidth(Type, width);
      CGContextStrokePath(Type);
    }

    v37 = a7 * 0.5;
    v38 = a8 * 0.5;
    CGPathRelease(Mutable);
    if (v33 >= 0.0)
    {
      v42 = OICreateDimmedColorFromColor(TextColor, 0.5);
      v43 = CGPathCreateMutable();
      CGPathMoveToPoint(v43, 0, v36, v32);
      CGPathAddLineToPoint(v43, 0, v36, y);
      v40 = floor(v37 + v34) + 0.5;
      v39 = floor(v38 + v47) + 0.5;
      CGPathAddLineToPoint(v43, 0, v40, v39);
      CGPathAddLineToPoint(v43, 0, v40, floor(v38 + v46) + 0.5);
      CGPathCloseSubpath(v43);
      if (v42)
      {
        CGContextSetFillColorWithColor(Type, v42);
        CGContextAddPath(Type, v43);
        CGContextFillPath(Type);
      }

      v41 = width;
      if (StrokeColor)
      {
        CGContextSetStrokeColorWithColor(Type, StrokeColor);
        CGContextAddPath(Type, v43);
        CGContextSetLineWidth(Type, width);
        CGContextStrokePath(Type);
      }

      CGPathRelease(v43);
      CGColorRelease(v42);
    }

    else
    {
      v39 = floor(v38 + v47) + 0.5;
      v40 = floor(v37 + v34) + 0.5;
      v41 = width;
    }

    v44 = CGPathCreateMutable();
    v45 = OICreateDimmedColorFromColor(TextColor, 0.8);
    CGPathMoveToPoint(v44, 0, x, y);
    CGPathAddLineToPoint(v44, 0, floor(v37 + v49) + 0.5, v39);
    CGPathAddLineToPoint(v44, 0, v40, v39);
    CGPathAddLineToPoint(v44, 0, v36, y);
    CGPathCloseSubpath(v44);
    if (v45)
    {
      CGContextSetFillColorWithColor(Type, v45);
      CGContextAddPath(Type, v44);
      CGContextFillPath(Type);
    }

    if (StrokeColor)
    {
      CGContextSetStrokeColorWithColor(Type, StrokeColor);
      CGContextAddPath(Type, v44);
      CGContextSetLineWidth(Type, v41);
      CGContextStrokePath(Type);
    }

    CGPathRelease(v44);

    CGColorRelease(v45);
  }
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x2821148B0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}