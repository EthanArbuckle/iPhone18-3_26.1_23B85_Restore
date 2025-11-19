@interface StockGraphView
- ($87A9BE3275E22128A73FF46D0B92144E)plottedPointNearestToPoint:(SEL)a3;
- (CGPoint)rightmostPlottedPoint;
- (CGRect)_lineViewFrameForBoundsSize:(CGSize)a3;
- (CGRect)_trueGraphPointsRegion;
- (CGRect)_volumeViewFrameForBoundsSize:(CGSize)a3;
- (CGRect)volumeBarRectNearestToPoint:(CGPoint)a3;
- (StockGraphView)initWithFrame:(CGRect)a3;
- (StockGraphViewContainer)chartViewDelegate;
- (UIEdgeInsets)graphInsets;
- (double)_timeAtPosition:(double)a3;
- (float)_priceAtTime:(double)a3 dataPosition:(double *)a4;
- (unint64_t)_normalizedAccumulatedVolumeInDataRange:(CGPoint)a3;
- (void)_finishCurrentLine;
- (void)_layoutSubviews;
- (void)_processGraphDataForWidth:(double)a3;
- (void)cancelRenderOperation;
- (void)clearData;
- (void)clearPaths;
- (void)dealloc;
- (void)graphRenderOperationDidFinish:(id)a3;
- (void)loadStockChartData:(id)a3;
- (void)readyForDisplayFromChartData;
- (void)recomputePathsAndRenderIfNeededForSize:(CGSize)a3;
- (void)setDottedLinePositionsWithLabelInfo:(id)a3;
- (void)setEvenlySpacedDottedLinePositionsWithCount:(unint64_t)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation StockGraphView

- (StockGraphView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = StockGraphView;
  v3 = [(StockGraphView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(StockGraphView *)v3 setBackgroundColor:v4];

    [(StockGraphView *)v3 setMultipleTouchEnabled:1];
    v3->_points = malloc_type_malloc(0x1E0uLL, 0x1000040451B5BE8uLL);
    v3->_values = malloc_type_malloc(0x1E0uLL, 0x1000040451B5BE8uLL);
    v3->_dataSize = 30;
    v5 = [LineGraphView alloc];
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [(LineGraphView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], v7, v8, v9];
    lineView = v3->_lineView;
    v3->_lineView = v10;

    [(StockGraphView *)v3 addSubview:v3->_lineView];
    v3->_volumeSize = 30;
    v3->_volumeBars = malloc_type_malloc(0x1E0uLL, 0x1000040451B5BE8uLL);
    v12 = [[VolumeGraphView alloc] initWithFrame:v6, v7, v8, v9];
    volumeView = v3->_volumeView;
    v3->_volumeView = v12;

    [(StockGraphView *)v3 addSubview:v3->_volumeView];
    [(StockGraphView *)v3 _layoutSubviews];
  }

  return v3;
}

- (CGRect)_lineViewFrameForBoundsSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_volumeViewFrameForBoundsSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(StockChartDisplayMode *)self->_displayMode volumeHeight];
  v7 = height - v6;
  [(StockChartDisplayMode *)self->_displayMode volumeHeight];
  v9 = v8;
  v10 = 0.0;
  v11 = v7;
  v12 = width;
  result.size.height = v9;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)_layoutSubviews
{
  [(StockGraphView *)self bounds];
  v4 = v3;
  v6 = v5;
  lineView = self->_lineView;
  [(StockGraphView *)self _lineViewFrameForBoundsSize:v3, v5];
  [(LineGraphView *)lineView setFrame:?];
  volumeView = self->_volumeView;
  [(StockGraphView *)self _volumeViewFrameForBoundsSize:v4, v6];

  [(VolumeGraphView *)volumeView setFrame:?];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = StockGraphView;
  [(StockGraphView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(StockGraphView *)self _layoutSubviews];
}

- (void)setDottedLinePositionsWithLabelInfo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v15 + 1) + 8 * v10) position];
        v11 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        [(NSArray *)v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  dottedLinePositions = self->_dottedLinePositions;
  self->_dottedLinePositions = v5;
  v13 = v5;

  dottedLinePositionsForStyleOnly = self->_dottedLinePositionsForStyleOnly;
  self->_dottedLinePositionsForStyleOnly = 0;
}

- (void)setEvenlySpacedDottedLinePositionsWithCount:(unint64_t)a3
{
  v3 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a3];
  if (v3)
  {
    v6 = (v3 + 1);
    v7 = 1;
    do
    {
      v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / v6];
      [(NSArray *)v5 addObject:v8];

      ++v7;
      --v3;
    }

    while (v3);
  }

  dottedLinePositionsForStyleOnly = self->_dottedLinePositionsForStyleOnly;
  self->_dottedLinePositionsForStyleOnly = v5;
  v11 = v5;

  dottedLinePositions = self->_dottedLinePositions;
  self->_dottedLinePositions = 0;
}

- (float)_priceAtTime:(double)a3 dataPosition:(double *)a4
{
  valueIndex = self->_valueIndex;
  if (valueIndex >= self->_valueCount)
  {
    chartData = self->_chartData;
    return *([(StockChartData *)chartData stockValues:a4]+ 24 * self->_valueCount - 16);
  }

  v7 = a3;
  if (valueIndex <= 0)
  {
    self->_valueIndex = 1;
  }

  v8 = [(StockChartData *)self->_chartData stockValues]+ 24 * self->_valueIndex;
  var0 = v8[-1].var0;
  var1 = v8[-1].var1;
  v11 = [(StockChartData *)self->_chartData stockValues];
  v12 = self->_valueIndex;
  p_var0 = &v11[v12].var0;
  v14 = *p_var0;
  a3 = p_var0[1];
  if (*p_var0 < v7)
  {
    while (1)
    {
      v15 = v12 + 1;
      self->_valueIndex = v15;
      if (v15 == self->_valueCount)
      {
        break;
      }

      var1 = a3;
      var0 = v14;
      v16 = [(StockChartData *)self->_chartData stockValues];
      v12 = self->_valueIndex;
      v17 = &v16[v12].var0;
      v14 = *v17;
      a3 = v17[1];
      if (*v17 >= v7)
      {
        goto LABEL_7;
      }
    }

    if (a4)
    {
      *a4 = 1.0;
    }

    chartData = self->_chartData;
    return *([(StockChartData *)chartData stockValues:a4]+ 24 * self->_valueCount - 16);
  }

LABEL_7:
  v18 = (v7 - var0) / (v14 - var0);
  if (a4)
  {
    *a4 = (v18 + v12) / (self->_valueCount - 1);
  }

  return a3 * v18 + var1 * (1.0 - v18);
}

- (double)_timeAtPosition:(double)a3
{
  v4 = self->_valueCount - 1;
  v5 = v4 * a3;
  v6 = v5;
  v7 = vcvtms_s32_f32(v6);
  v8 = [(StockChartData *)self->_chartData stockValues];
  if (v4 <= v7)
  {
    return v8[self->_valueCount - 1].var0;
  }

  var0 = v8[v7].var0;
  v10 = v7 + 1;
  if (v10 >= self->_valueCount - 1)
  {
    return var0;
  }

  v11 = [(StockChartData *)self->_chartData stockValues][24 * v10];
  v12 = v5 - v7;
  v13 = round(v12);
  if (v11 - var0 > 43200.0)
  {
    v12 = v13;
  }

  return v11 * v12 + var0 * (1.0 - v12);
}

- (CGRect)_trueGraphPointsRegion
{
  [(StockGraphView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(StockChartDisplayMode *)self->_displayMode lineWidth];
  v8 = v6 - v7 - self->_graphInsets.bottom - self->_graphInsets.top;
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 scale];
  v11 = v8 + -1.0 / v10;

  [(StockChartDisplayMode *)self->_displayMode lineWidth];
  v13 = v12 * 0.5 + self->_graphInsets.bottom;
  [(StockChartDisplayMode *)self->_displayMode lineWidth];
  v15 = v4 - v14 * 0.5;
  v16 = 0;
  v17 = v13;
  v18 = v11;

  return CGRectIntegral(*&v16);
}

- (void)clearPaths
{
  self->_dataCount = 0;
  self->_volumeCount = 0;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  linePointCounts = self->_linePointCounts;
  self->_linePointCounts = v3;

  MEMORY[0x2821F96F8](v3, linePointCounts);
}

- (void)_finishCurrentLine
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_linePointCounts;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v11 + 1) + 8 * i) intValue];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  linePointCounts = self->_linePointCounts;
  v10 = [MEMORY[0x277CCABB0] numberWithInt:self->_dataCount - v6];
  [(NSMutableArray *)linePointCounts addObject:v10];
}

- (unint64_t)_normalizedAccumulatedVolumeInDataRange:(CGPoint)a3
{
  valueCount = self->_valueCount;
  v4 = (valueCount - 1);
  v5 = a3.x * v4;
  v6 = a3.y * v4;
  if (a3.y * v4 <= a3.x * v4)
  {
    return 0;
  }

  v8 = vcvtmd_u64_f64(v5);
  if (v6 < (v8 + 1))
  {
    return ((v6 - v5) * ([(StockChartData *)self->_chartData stockValues]+ 24 * v8)[16]);
  }

  v9 = 0.0;
  if (valueCount > v8)
  {
    v11 = floor(v6);
    v12 = vcvtpd_u64_f64(v5);
    do
    {
      v13 = v8;
      if (v5 <= v8)
      {
        if (v11 <= v13)
        {
          return (v9 + (v6 - v13) * ([(StockChartData *)self->_chartData stockValues]+ 24 * v8)[16]);
        }

        v9 = v9 + ([(StockChartData *)self->_chartData stockValues]+ 24 * v8++)[16];
      }

      else
      {
        v9 = v9 + (v13 - v5 + 1.0) * ([(StockChartData *)self->_chartData stockValues]+ 24 * v8)[16];
        v8 = v12;
      }
    }

    while (v8 < self->_valueCount);
  }

  return v9;
}

- (void)_processGraphDataForWidth:(double)a3
{
  v3 = self;
  if (![(StockChartData *)self->_chartData stockValueCount])
  {
    return;
  }

  v4 = *[(StockChartData *)v3->_chartData stockValues];
  v128 = *([(StockChartData *)v3->_chartData stockValues]+ 24 * v3->_valueCount - 24);
  v5 = [(StockChartData *)v3->_chartData chartInterval];
  if (v5)
  {
    v120 = 0.0;
    v116 = 1.0;
  }

  else
  {
    v6 = [(StockChartData *)v3->_chartData marketCloseDate];
    [v6 timeIntervalSince1970];
    v8 = v7;
    v9 = [(StockChartData *)v3->_chartData marketOpenDate];
    [v9 timeIntervalSince1970];
    v11 = a3 / ((v8 - v10) / 60.0);

    v12 = [(StockChartData *)v3->_chartData marketOpenDate];
    [v12 timeIntervalSince1970];
    v14 = (v4 - v13) / 60.0;

    v15 = fmax(v14, 0.0);
    v116 = v11;
    v16 = v11 * v15;
    v120 = v16;
  }

  if (![(StockChartData *)v3->_chartData chartInterval]|| (v17 = 0.0, [(StockChartData *)v3->_chartData chartInterval]== 1))
  {
    v18 = [(StockChartData *)v3->_chartData marketCloseDate];
    [v18 timeIntervalSince1970];
    v17 = (v19 - v128) / 60.0;
  }

  v20 = v120;
  v21 = (a3 - v120 - v17 * v116) / (v3->_valueCount - 1);
  v22 = v21 >= 2.0;
  v23 = [(StockChartData *)v3->_chartData interestingIndexes];
  v24 = [v23 count];

  v110 = v24;
  v118 = v4;
  if (!v24)
  {
    v124 = 0;
    v26 = fmax(v21, 2.0);
    v132[0] = 0.0;
LABEL_13:
    v131 = 1.0;
    goto LABEL_14;
  }

  v25 = [(StockChartData *)v3->_chartData chartInterval];
  v26 = fmax(v21, 2.0);
  v132[0] = 0.0;
  if (v25 != 1)
  {
    v124 = 0;
    goto LABEL_13;
  }

  v27 = [(StockChartData *)v3->_chartData interestingIndexes];
  v28 = [v27 lastObject];
  [v28 doubleValue];
  v131 = v29;

  v22 = 0;
  v124 = 1;
LABEL_14:
  v3->_valueIndex = 0;
  [(StockGraphView *)v3 clearPaths];
  v123 = [(StockChartData *)v3->_chartData hasVolume];
  v3->_maxVolume = 0;
  v30 = 1.0;
  if (v22)
  {
    v30 = 2.0;
  }

  v3->_volumeBarWidth = v30;
  v31 = [(StockChartData *)v3->_chartData minValue][8];
  v32 = [(StockChartData *)v3->_chartData maxValue][8];
  [(StockChartData *)v3->_chartData previousClosePrice];
  v34 = v32;
  v125 = v31;
  if (v33 != 0.0)
  {
    v35 = v33;
    v36 = [(StockChartData *)v3->_chartData chartInterval];
    v37 = v35;
    if (v31 >= v35)
    {
      v38 = v35;
    }

    else
    {
      v38 = v31;
    }

    if (v32 >= v37)
    {
      v37 = v32;
    }

    if (v36)
    {
      v34 = v32;
    }

    else
    {
      v34 = v37;
    }

    if (v36)
    {
      v39 = v31;
    }

    else
    {
      v39 = v38;
    }

    v125 = v39;
  }

  v108 = v32;
  v111 = v31;
  v40 = *[(StockChartData *)v3->_chartData minValue];
  v41 = [(StockChartData *)v3->_chartData maxValue];
  v42 = v128;
  v44 = v128 > 0.0 || v5 != 0;
  if (v3->_valueIndex < v3->_valueCount)
  {
    v42 = v20 / a3;
    if (v20 / a3 <= v131 && v44)
    {
      v112 = *(MEMORY[0x277CBF348] + 8);
      v45 = *v41;
      v109 = -v26;
      v121 = v34 - v125;
      v122 = 1.0 / v110;
      v113 = v110 - 1;
      v46 = 0xFFFFFFFFLL;
      v127 = 2.0;
      v115 = 0.0;
      v117 = NAN;
      v129 = v122;
      v114 = v128 + 1.0;
      v47 = 0.0;
      v119 = v26;
      v130 = v3;
      while (v5)
      {
        if (!v22)
        {
          [(StockGraphView *)v3 _timeAtPosition:v132[0]];
          v61 = v67;
          [(StockGraphView *)v3 _priceAtTime:0 dataPosition:?];
          if (v40 > v47 && v40 < v61)
          {
            v69 = v20 + v109 * (1.0 - (v40 - v47) / (v40 - v47));
            goto LABEL_59;
          }

          v52 = v68;
          if (v45 <= v47 || v45 >= v61)
          {
            goto LABEL_65;
          }

          v69 = v20 + v109 * (1.0 - (v45 - v47) / (v45 - v47));
LABEL_63:
          v53 = v128 + 1.0;
          v26 = v119;
          v54 = v20 - v119;
          v51 = v40;
          v40 = v45;
          v52 = v108;
          goto LABEL_64;
        }

        v48 = [(StockChartData *)v3->_chartData stockValues];
        valueIndex = v3->_valueIndex;
        v50 = (v48 + 24 * valueIndex);
        v51 = v40;
        v40 = *v50;
        v52 = v50[1];
        v3->_valueIndex = valueIndex + 1;
        v53 = v45;
        v54 = v20;
LABEL_66:
        dataCount = v3->_dataCount;
        v3->_dataCount = dataCount + 1;
        dataSize = v3->_dataSize;
        if (dataSize >= dataCount + 1)
        {
          values = v3->_values;
        }

        else
        {
          v3->_dataSize = 2 * dataSize;
          v3->_points = malloc_type_realloc(v3->_points, 32 * dataSize, 0x1000040451B5BE8uLL);
          values = malloc_type_realloc(v130->_values, 16 * v130->_dataSize, 0x1000040451B5BE8uLL);
          v130->_values = values;
          v3 = v130;
          dataCount = v130->_dataCount - 1;
        }

        p_x = &v3->_points[dataCount].x;
        *p_x = v20;
        p_x[1] = (v52 - v125) / v121;
        v76 = &values[dataCount].x;
        *v76 = v40;
        v76[1] = v52;
        v20 = v26 + v54;
        if (v54 / a3 >= v131 || (v26 + v54) / a3 <= v131)
        {
          v78 = (v26 + v54) / a3;
        }

        else
        {
          v78 = v131;
        }

        if (v124)
        {
          v79 = v78 / v122;
          v80 = vcvtms_u32_f32(v79);
          if (v113 >= v80)
          {
            v81 = v80;
          }

          else
          {
            v81 = v113;
          }

          v82 = v129;
          if (v81 == v46)
          {
            v81 = v46;
          }

          else
          {
            if (v81)
            {
              v83 = [(StockChartData *)v3->_chartData interestingIndexes];
              v84 = [v83 objectAtIndex:v81 - 1];
              [v84 doubleValue];
              v115 = v85;
            }

            else
            {
              v115 = 0.0;
            }

            v117 = 1.0;
            if (v110 - 1 == v81)
            {
              v82 = v131 - v78;
            }

            else
            {
              v89 = [(StockChartData *)v3->_chartData interestingIndexes];
              v90 = [v89 objectAtIndex:v81];
              [v90 doubleValue];
              v117 = v91;
            }
          }

          v132[0] = fmin(v115 + (v117 - v115) * (v78 - v81 * v122) / v82, 1.0);
          v46 = v81;
        }

        else
        {
          v82 = v129;
          if (v5)
          {
            v132[0] = v78;
          }
        }

        v129 = v82;
        if (v123 && (v22 || v20 >= v127))
        {
          v92 = v3->_volumeCount + 1;
          v3->_volumeCount = v92;
          volumeSize = v3->_volumeSize;
          if (volumeSize < v92)
          {
            v94 = 2 * volumeSize;
            v3->_volumeSize = v94;
            v3->_volumeBars = malloc_type_realloc(v3->_volumeBars, 16 * v94, 0x1000040451B5BE8uLL);
          }

          v95 = v20 - v26;
          if (v22)
          {
            v96 = *([(StockChartData *)v3->_chartData stockValues]+ 24 * v3->_valueIndex - 8);
            volumeCount = v3->_volumeCount;
            if (volumeCount >= 2)
            {
              v98 = v95 - v3->_volumeBars[volumeCount - 2].var0 + -1.0;
              if (v98 > 0.0)
              {
                if (*(&v3->super.super.super.isa + v107) < v98)
                {
                  v98 = *(&v3->super.super.super.isa + v107);
                }

                *(&v3->super.super.super.isa + v107) = v98;
              }
            }
          }

          else
          {
            v99 = v132[0];
            v100 = v127 + -1.0 + -0.5;
            v96 = [(StockGraphView *)v3 _normalizedAccumulatedVolumeInDataRange:v112, v132[0]];
            v127 = v95 + 1.0 + 1.0;
            volumeCount = v3->_volumeCount;
            v112 = v99;
            v26 = v119;
            v95 = v100;
          }

          v101 = &v3->_volumeBars[volumeCount - 1];
          *v101 = v95;
          *(v101 + 8) = v96;
          maxVolume = v3->_maxVolume;
          if (maxVolume <= v96)
          {
            maxVolume = v96;
          }

          v3->_maxVolume = maxVolume;
        }

        v42 = v128;
        v104 = v40 < v128 || v5 != 0;
        if (v3->_valueIndex < v3->_valueCount)
        {
          v42 = v131;
          if (v78 <= v131)
          {
            v47 = v40;
            v40 = v51;
            v45 = v53;
            if (v104)
            {
              continue;
            }
          }
        }

        goto LABEL_124;
      }

      v55 = v114;
      if (v47 == v114)
      {
        [(StockGraphView *)v3 _finishCurrentLine];
        v56 = [(StockChartData *)v3->_chartData interestingIndexes];
        v57 = [v56 objectAtIndex:v46];
        v58 = v46;
        v59 = [v57 unsignedIntValue];

        v60 = ([(StockChartData *)v3->_chartData stockValues]+ 24 * v59);
        LODWORD(v46) = v58;
        v61 = *v60;
        v52 = v60[1];
        v20 = v120 + (*v60 - v118) / 60.0 * v116;
        v62 = v20;
        v120 = v62;
        v132[0] = v132[0] + 1.0 / (v3->_valueCount - 1);
        v118 = v61;
      }

      else
      {
        if (v22)
        {
          v86 = [(StockChartData *)v3->_chartData stockValues];
          v87 = v3->_valueIndex;
          v88 = (v86 + 24 * v87);
          v61 = *v88;
          v52 = v88[1];
          v20 = v120 + (*v88 - v118) / 60.0 * v116;
          v3->_valueIndex = v87 + 1;
        }

        else
        {
          v105 = v128;
          if (v128 >= v114)
          {
            v105 = v114;
          }

          if (v118 + (v20 - v120) / v116 * 60.0 >= v105)
          {
            v61 = v105;
          }

          else
          {
            v61 = v118 + (v20 - v120) / v116 * 60.0;
          }

          [(StockGraphView *)v3 _priceAtTime:v132 dataPosition:v61];
          v52 = v106;
        }

        if (v46 != -1 && v114 != -1.0)
        {
          goto LABEL_56;
        }
      }

      v46 = (v46 + 1);
      if (v110 <= v46)
      {
        valueCount = v3->_valueCount;
      }

      else
      {
        v63 = [(StockChartData *)v3->_chartData interestingIndexes];
        [v63 objectAtIndex:v46];
        v65 = v64 = v46;
        valueCount = [v65 unsignedIntValue];

        v46 = v64;
        v3 = v130;
      }

      v70 = ([(StockChartData *)v3->_chartData stockValues]+ 24 * valueCount);
      v71 = *(v70 - 24);
      if (v71 == v128)
      {
        v55 = v71 + 1.0;
      }

      else
      {
        v55 = *(v70 - 24);
      }

LABEL_56:
      v114 = v55;
      if (v40 <= v47 || v40 >= v61)
      {
        if (v45 <= v47 || v45 >= v61)
        {
LABEL_65:
          v53 = v45;
          v51 = v40;
          v40 = v61;
          v54 = v20;
          v26 = v119;
          goto LABEL_66;
        }

        v69 = v120 + (v45 - v118) / 60.0 * v116;
        goto LABEL_63;
      }

      v69 = v120 + (v40 - v118) / 60.0 * v116;
LABEL_59:
      v26 = v119;
      v54 = v20 - v119;
      v53 = v45;
      v51 = v128 + 1.0;
      v52 = v111;
LABEL_64:
      v20 = v69;
      goto LABEL_66;
    }
  }

LABEL_124:
  [(StockGraphView *)v3 _finishCurrentLine];
}

- (void)readyForDisplayFromChartData
{
  v4 = [(StockChartData *)self->_chartData imageSetForDisplayMode:self->_displayMode];
  [(StockChartData *)self->_chartData dataSeriesDict];

  [(LineGraphView *)self->_lineView setGraphImageSet:v4];
  [(VolumeGraphView *)self->_volumeView setGraphImageSet:v4];
  self->_isRendered = 1;
  v3 = [(StockGraphView *)self chartViewDelegate];
  [v3 stockGraphViewReadyForDisplay:self];
}

- (void)cancelRenderOperation
{
  [(GraphRenderOperation *)self->_renderOperation cancel];
  renderOperation = self->_renderOperation;
  self->_renderOperation = 0;
}

- (void)recomputePathsAndRenderIfNeededForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(StockGraphView *)self cancelRenderOperation];
  v6 = [(StockChartData *)self->_chartData imageSetForDisplayMode:self->_displayMode];

  if (![(StockChartDisplayMode *)self->_displayMode HUDEnabled]&& v6 || ([(StockGraphView *)self _processGraphDataForWidth:width - self->_graphInsets.left - self->_graphInsets.right], v6))
  {

    [(StockGraphView *)self readyForDisplayFromChartData];
  }

  else
  {
    v7 = objc_alloc_init(GraphRenderOperation);
    renderOperation = self->_renderOperation;
    self->_renderOperation = v7;

    [(GraphRenderOperation *)self->_renderOperation setDelegate:self];
    [(GraphRenderOperation *)self->_renderOperation setPoints:self->_points];
    [(GraphRenderOperation *)self->_renderOperation setLinePointCounts:self->_linePointCounts];
    [(GraphRenderOperation *)self->_renderOperation setDottedLinePositions:self->_dottedLinePositions];
    [(GraphRenderOperation *)self->_renderOperation setDottedLinePositionsForStyleOnly:self->_dottedLinePositionsForStyleOnly];
    [(GraphRenderOperation *)self->_renderOperation setVolumeBars:self->_volumeBars];
    [(GraphRenderOperation *)self->_renderOperation setVolumeCount:self->_volumeCount];
    [(GraphRenderOperation *)self->_renderOperation setVolumeBarWidth:self->_volumeBarWidth];
    [(GraphRenderOperation *)self->_renderOperation setMaxVolume:self->_maxVolume];
    [(GraphRenderOperation *)self->_renderOperation setGraphInsets:self->_graphInsets.top, self->_graphInsets.left, self->_graphInsets.bottom, self->_graphInsets.right];
    [(GraphRenderOperation *)self->_renderOperation setDisplayMode:self->_displayMode];
    [(GraphRenderOperation *)self->_renderOperation setGraphSize:width, height];
    [(StockGraphView *)self _volumeViewFrameForBoundsSize:width, height];
    [(GraphRenderOperation *)self->_renderOperation setVolumeGraphSize:v9, v10];
    v11 = +[GraphRenderer sharedRenderer];
    [v11 performRenderOperation:self->_renderOperation];
  }
}

- (void)graphRenderOperationDidFinish:(id)a3
{
  renderOperation = self->_renderOperation;
  if (renderOperation == a3)
  {
    chartData = self->_chartData;
    v6 = [(GraphRenderOperation *)renderOperation graphImageSet];
    [(StockChartData *)chartData setImageSet:v6 forDisplayMode:self->_displayMode];

    [(StockGraphView *)self readyForDisplayFromChartData];
    v7 = self->_renderOperation;
    self->_renderOperation = 0;
  }
}

- (void)clearData
{
  [(StockGraphView *)self cancelRenderOperation];
  [(StockGraphView *)self clearPaths];
  chartData = self->_chartData;
  self->_chartData = 0;

  self->_valueIndex = 0;
  self->_valueCount = 0;
  self->_isRendered = 0;
}

- (void)loadStockChartData:(id)a3
{
  v4 = a3;
  [(StockGraphView *)self clearData];
  chartData = self->_chartData;
  self->_chartData = v4;
  v6 = v4;

  v7 = [(StockChartData *)self->_chartData stockValueCount];
  self->_valueCount = v7;
}

- (CGPoint)rightmostPlottedPoint
{
  v2 = &self->_points[self->_dataCount - 1];
  x = v2->x;
  y = v2->y;
  result.y = y;
  result.x = x;
  return result;
}

- ($87A9BE3275E22128A73FF46D0B92144E)plottedPointNearestToPoint:(SEL)a3
{
  retstr->var0 = 0.0;
  retstr->var1 = 0.0;
  retstr->var2 = 0;
  var1_high = HIDWORD(self[20].var1);
  if (var1_high)
  {
    v7 = self;
    var2 = self[18].var2;
    x = a4->x;
    if (a4->x < *var2)
    {
      x = *var2;
    }

    v10 = var2[2 * (var1_high - 1)];
    if (x >= v10)
    {
      x = var2[2 * (var1_high - 1)];
    }

    v11 = ((x - *var2) / (v10 - *var2));
    v12 = &var2[2 * v11 + 2];
    do
    {
      v13 = *(v12 - 2);
      v12 -= 2;
      --v11;
    }

    while (v13 > x);
    do
    {
      v14 = *v12;
      v12 += 2;
      v15 = v14;
      ++v11;
    }

    while (v14 < x);
    if (v11 >= 1)
    {
      v16 = var2[2 * v11 - 2];
      LODWORD(v11) = v11 - ((x - v16) / (v15 - v16) <= 0.5);
    }

    [($87A9BE3275E22128A73FF46D0B92144E *)self bounds];
    v34 = v18;
    v35 = v17;
    [($87A9BE3275E22128A73FF46D0B92144E *)v7 _trueGraphPointsRegion];
    v20 = v19;
    v21 = 1.0 - *(v7[18].var2 + 16 * v11 + 8);
    self = [v7[22].var2 lineWidth];
    v23.f64[0] = *(v7[18].var2 + 16 * v11);
    v23.f64[1] = v22 * 0.5 + v21 * v20 + v7[23].var0;
    v24 = vrndm_f32(vcvt_f32_f64(v23));
    v25.f64[0] = v35;
    v25.f64[1] = v34;
    __asm { FMOV            V1.2D, #-1.0 }

    v31 = vaddq_f64(v25, _Q1);
    v32 = vcvtq_f64_f32(v24);
    *a4 = vmaxnmq_f64(vbslq_s8(vcgtq_f64(v31, v32), v32, v31), 0);
    *&retstr->var0 = *(*&v7[19].var0 + 16 * v11);
    retstr->var2 = 0;
  }

  else
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *&retstr->var0 = _Q0;
  }

  return self;
}

- (CGRect)volumeBarRectNearestToPoint:(CGPoint)a3
{
  volumeCount = self->_volumeCount;
  if (volumeCount)
  {
    volumeBars = self->_volumeBars;
    if (a3.x < volumeBars->var0)
    {
      a3.x = volumeBars->var0;
    }

    var0 = volumeBars[volumeCount - 1].var0;
    if (a3.x >= var0)
    {
      a3.x = volumeBars[volumeCount - 1].var0;
    }

    v7 = ((a3.x - volumeBars->var0) / (var0 - volumeBars->var0));
    p_var0 = &volumeBars[v7 + 1].var0;
    do
    {
      v9 = *(p_var0 - 2);
      p_var0 -= 2;
      --v7;
    }

    while (v9 > a3.x);
    do
    {
      v10 = *p_var0;
      p_var0 += 2;
      v11 = v10;
      ++v7;
    }

    while (v10 < a3.x);
    if (v7 >= 1)
    {
      v12 = volumeBars[v7 - 1].var0;
      LODWORD(v7) = v7 - ((a3.x - v12) / (v11 - v12) <= 0.5);
    }

    v13 = &volumeBars[v7];
    v14 = v13->var0;
    v15 = v13->var1 / self->_maxVolume;
    [(StockChartDisplayMode *)self->_displayMode volumeHeight];
    *&v16 = v15 * v16;
    v17 = ceilf(*&v16);
    v18 = round(v14 + self->_volumeBarWidth * -0.5);
    [(StockGraphView *)self frame];
    v20 = v19 - v17;
    v22 = v21 - v18;
    volumeBarWidth = self->_volumeBarWidth;
    if (v22 < volumeBarWidth)
    {
      volumeBarWidth = v22;
    }
  }

  else
  {
    v18 = *MEMORY[0x277CBF3A0];
    v20 = *(MEMORY[0x277CBF3A0] + 8);
    volumeBarWidth = *(MEMORY[0x277CBF3A0] + 16);
    v17 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v24 = v18;
  v25 = v17;
  result.size.height = v25;
  result.size.width = volumeBarWidth;
  result.origin.y = v20;
  result.origin.x = v24;
  return result;
}

- (void)dealloc
{
  free(self->_points);
  free(self->_values);
  free(self->_volumeBars);
  v3.receiver = self;
  v3.super_class = StockGraphView;
  [(StockGraphView *)&v3 dealloc];
}

- (StockGraphViewContainer)chartViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_chartViewDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)graphInsets
{
  top = self->_graphInsets.top;
  left = self->_graphInsets.left;
  bottom = self->_graphInsets.bottom;
  right = self->_graphInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end