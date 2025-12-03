@interface OIPieChartRenderer
- (OIPieChartRenderer)initWithChart:(__OIChart *)chart;
- (OIPieChartRenderer)initWithChart:(__OIChart *)chart sliceRenderer:(id)renderer;
- (void)dealloc;
- (void)renderThreeDimensional:(BOOL)dimensional pieFromSeriesArray:(__CFArray *)array;
@end

@implementation OIPieChartRenderer

- (OIPieChartRenderer)initWithChart:(__OIChart *)chart sliceRenderer:(id)renderer
{
  rendererCopy = renderer;
  v9.receiver = self;
  v9.super_class = OIPieChartRenderer;
  v7 = [(OIPieChartRenderer *)&v9 init];
  if (v7)
  {
    [(OIPieChartRenderer *)v7 setChart:OILabelRetain(chart)];
    [(OIPieChartRenderer *)v7 setSliceRenderer:rendererCopy];
  }

  return v7;
}

- (OIPieChartRenderer)initWithChart:(__OIChart *)chart
{
  v5 = [[OIPieSliceCGRenderer alloc] initWithChart:chart];
  v6 = [(OIPieChartRenderer *)self initWithChart:chart sliceRenderer:v5];

  return v6;
}

- (void)dealloc
{
  OIChartRelease(self->_chart);
  [(OIPieChartRenderer *)self setSliceRenderer:0];
  v3.receiver = self;
  v3.super_class = OIPieChartRenderer;
  [(OIPieChartRenderer *)&v3 dealloc];
}

- (void)renderThreeDimensional:(BOOL)dimensional pieFromSeriesArray:(__CFArray *)array
{
  dimensionalCopy = dimensional;
  Type = OIAxisGetType(self->_chart);
  PlotArea = OIChartGetPlotArea(self->_chart);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = OIAxisAreLabelsCentered(self->_chart);
  if (array)
  {
    v16 = v15;
    Count = CFArrayGetCount(array);
    if (Count >= 1)
    {
      v18 = Count;
      v19 = 0;
      v20 = 0.0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(array, v19);
        Values = OISeriesGetValues(ValueAtIndex);
        if (Values)
        {
          v23 = CFArrayGetValueAtIndex(Values, 0);
          valuePtr = 0.0;
          CFNumberGetValue(v23, kCFNumberCGFloatType, &valuePtr);
          v20 = v20 + fabs(valuePtr);
        }

        ++v19;
      }

      while (v18 != v19);
      if (v20 != 0.0)
      {
        CGContextSaveGState(Type);
        v24 = v10 + v14 * 0.5;
        if (v12 >= v14)
        {
          v25 = v14;
        }

        else
        {
          v25 = v12;
        }

        CGContextTranslateCTM(Type, PlotArea + v12 * 0.5, v24);
        v56 = 0.0;
        if (dimensionalCopy)
        {
          v26 = (90.0 - OIChartGetElevation(self->_chart)) / 90.0 * -0.8 + 1.0;
          CGContextScaleCTM(Type, 1.0, v26);
          v56 = v14 * ((1.0 - v26) * 0.2) / v26;
        }

        if (v16)
        {
          v58.width = 0.0;
          v58.height = -4.0;
          CGContextSetShadow(Type, v58, 6.0);
        }

        v55 = v25 * 0.9 * 0.5;
        v27 = CFArrayGetCount(array);
        v28 = 0;
        v29 = 1.57079633;
        while (v28 < v18)
        {
          v30 = CFArrayGetValueAtIndex(array, v28);
          Offset = OISeriesGetOffset(v30);
          v32 = OISeriesGetValues(v30);
          if (v32)
          {
            v33 = CFArrayGetValueAtIndex(v32, 0);
            valuePtr = 0.0;
            CFNumberGetValue(v33, kCFNumberCGFloatType, &valuePtr);
            v34 = fabs(valuePtr);
            valuePtr = v34;
            v35 = v29 + v34 / v20 * -6.28318531;
            if (cos(v35) < 0.0)
            {
              goto LABEL_21;
            }

            v36 = __sincos_stret(v29 + v34 * -3.14159265 / v20);
            [(OIPieSliceRenderer *)self->_sliceRenderer renderPieSliceFromSeries:v30 radius:v55 angle:v29 newAngle:v29 + v34 / v20 * -6.28318531 xOffset:Offset * v36.__cosval yOffset:Offset * v36.__sinval thickness:v56];
            ++v28;
            v29 = v29 + v34 / v20 * -6.28318531;
          }
        }

        v35 = 1.57079633;
        v29 = 1.57079633;
LABEL_21:
        v37 = -4.71238898;
        v38 = 6.28318531;
        *&v39 = 3.14159265;
        while (v27 >= 2)
        {
          v40 = CFArrayGetValueAtIndex(array, v27 - 1);
          v41 = OISeriesGetOffset(v40);
          v42 = OISeriesGetValues(v40);
          if (v42)
          {
            v54 = v35;
            v43 = v29;
            v44 = *&v39;
            v45 = CFArrayGetValueAtIndex(v42, 0);
            valuePtr = 0.0;
            CFNumberGetValue(v45, kCFNumberCGFloatType, &valuePtr);
            v46 = fabs(valuePtr);
            valuePtr = v46;
            v47 = v38;
            v48 = v37 + v46 / v20 * v38;
            if (cos(v48) >= 0.0)
            {
              v29 = v43;
              v35 = v54;
              break;
            }

            v49 = v46 * v44;
            *&v39 = v44;
            v50 = __sincos_stret(v37 + v49 / v20);
            [(OIPieSliceRenderer *)self->_sliceRenderer renderPieSliceFromSeries:v40 radius:v55 angle:v48 newAngle:v37 xOffset:v41 * v50.__cosval yOffset:v41 * v50.__sinval thickness:v56];
            v37 = v48;
            --v27;
            v38 = v47;
            v29 = v43;
            v35 = v54;
          }
        }

        if (v28 == v27 - 1 && v29 != v35)
        {
          v51 = CFArrayGetValueAtIndex(array, v28);
          v52 = OISeriesGetOffset(v51);
          v53 = __sincos_stret((v35 + v29) * 0.5);
          [(OIPieSliceRenderer *)self->_sliceRenderer renderPieSliceFromSeries:v51 radius:v55 angle:v29 newAngle:v35 xOffset:v53.__cosval * v52 yOffset:v53.__sinval * v52 thickness:v56];
        }

        CGContextRestoreGState(Type);
      }
    }
  }
}

@end