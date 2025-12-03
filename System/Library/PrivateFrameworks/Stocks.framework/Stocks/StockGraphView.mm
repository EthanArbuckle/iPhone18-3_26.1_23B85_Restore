@interface StockGraphView
- ($87A9BE3275E22128A73FF46D0B92144E)plottedPointNearestToPoint:(SEL)point;
- (CGPoint)rightmostPlottedPoint;
- (CGRect)_lineViewFrameForBoundsSize:(CGSize)size;
- (CGRect)_trueGraphPointsRegion;
- (CGRect)_volumeViewFrameForBoundsSize:(CGSize)size;
- (CGRect)volumeBarRectNearestToPoint:(CGPoint)point;
- (StockGraphView)initWithFrame:(CGRect)frame;
- (StockGraphViewContainer)chartViewDelegate;
- (UIEdgeInsets)graphInsets;
- (double)_timeAtPosition:(double)position;
- (float)_priceAtTime:(double)time dataPosition:(double *)position;
- (unint64_t)_normalizedAccumulatedVolumeInDataRange:(CGPoint)range;
- (void)_finishCurrentLine;
- (void)_layoutSubviews;
- (void)_processGraphDataForWidth:(double)width;
- (void)cancelRenderOperation;
- (void)clearData;
- (void)clearPaths;
- (void)dealloc;
- (void)graphRenderOperationDidFinish:(id)finish;
- (void)loadStockChartData:(id)data;
- (void)readyForDisplayFromChartData;
- (void)recomputePathsAndRenderIfNeededForSize:(CGSize)size;
- (void)setDottedLinePositionsWithLabelInfo:(id)info;
- (void)setEvenlySpacedDottedLinePositionsWithCount:(unint64_t)count;
- (void)setFrame:(CGRect)frame;
@end

@implementation StockGraphView

- (StockGraphView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = StockGraphView;
  v3 = [(StockGraphView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(StockGraphView *)v3 setBackgroundColor:clearColor];

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

- (CGRect)_lineViewFrameForBoundsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)_volumeViewFrameForBoundsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = StockGraphView;
  [(StockGraphView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(StockGraphView *)self _layoutSubviews];
}

- (void)setDottedLinePositionsWithLabelInfo:(id)info
{
  v20 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(infoCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = infoCopy;
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

- (void)setEvenlySpacedDottedLinePositionsWithCount:(unint64_t)count
{
  countCopy = count;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:count];
  if (countCopy)
  {
    v6 = (countCopy + 1);
    v7 = 1;
    do
    {
      v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7 / v6];
      [(NSArray *)v5 addObject:v8];

      ++v7;
      --countCopy;
    }

    while (countCopy);
  }

  dottedLinePositionsForStyleOnly = self->_dottedLinePositionsForStyleOnly;
  self->_dottedLinePositionsForStyleOnly = v5;
  v11 = v5;

  dottedLinePositions = self->_dottedLinePositions;
  self->_dottedLinePositions = 0;
}

- (float)_priceAtTime:(double)time dataPosition:(double *)position
{
  valueIndex = self->_valueIndex;
  if (valueIndex >= self->_valueCount)
  {
    chartData = self->_chartData;
    return *([(StockChartData *)chartData stockValues:position]+ 24 * self->_valueCount - 16);
  }

  timeCopy = time;
  if (valueIndex <= 0)
  {
    self->_valueIndex = 1;
  }

  v8 = [(StockChartData *)self->_chartData stockValues]+ 24 * self->_valueIndex;
  var0 = v8[-1].var0;
  var1 = v8[-1].var1;
  stockValues = [(StockChartData *)self->_chartData stockValues];
  v12 = self->_valueIndex;
  p_var0 = &stockValues[v12].var0;
  v14 = *p_var0;
  time = p_var0[1];
  if (*p_var0 < timeCopy)
  {
    while (1)
    {
      v15 = v12 + 1;
      self->_valueIndex = v15;
      if (v15 == self->_valueCount)
      {
        break;
      }

      var1 = time;
      var0 = v14;
      stockValues2 = [(StockChartData *)self->_chartData stockValues];
      v12 = self->_valueIndex;
      v17 = &stockValues2[v12].var0;
      v14 = *v17;
      time = v17[1];
      if (*v17 >= timeCopy)
      {
        goto LABEL_7;
      }
    }

    if (position)
    {
      *position = 1.0;
    }

    chartData = self->_chartData;
    return *([(StockChartData *)chartData stockValues:position]+ 24 * self->_valueCount - 16);
  }

LABEL_7:
  v18 = (timeCopy - var0) / (v14 - var0);
  if (position)
  {
    *position = (v18 + v12) / (self->_valueCount - 1);
  }

  return time * v18 + var1 * (1.0 - v18);
}

- (double)_timeAtPosition:(double)position
{
  v4 = self->_valueCount - 1;
  v5 = v4 * position;
  v6 = v5;
  v7 = vcvtms_s32_f32(v6);
  stockValues = [(StockChartData *)self->_chartData stockValues];
  if (v4 <= v7)
  {
    return stockValues[self->_valueCount - 1].var0;
  }

  var0 = stockValues[v7].var0;
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
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

- (unint64_t)_normalizedAccumulatedVolumeInDataRange:(CGPoint)range
{
  valueCount = self->_valueCount;
  v4 = (valueCount - 1);
  v5 = range.x * v4;
  v6 = range.y * v4;
  if (range.y * v4 <= range.x * v4)
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

- (void)_processGraphDataForWidth:(double)width
{
  selfCopy = self;
  if (![(StockChartData *)self->_chartData stockValueCount])
  {
    return;
  }

  v4 = *[(StockChartData *)selfCopy->_chartData stockValues];
  v128 = *([(StockChartData *)selfCopy->_chartData stockValues]+ 24 * selfCopy->_valueCount - 24);
  chartInterval = [(StockChartData *)selfCopy->_chartData chartInterval];
  if (chartInterval)
  {
    v120 = 0.0;
    v116 = 1.0;
  }

  else
  {
    marketCloseDate = [(StockChartData *)selfCopy->_chartData marketCloseDate];
    [marketCloseDate timeIntervalSince1970];
    v8 = v7;
    marketOpenDate = [(StockChartData *)selfCopy->_chartData marketOpenDate];
    [marketOpenDate timeIntervalSince1970];
    v11 = width / ((v8 - v10) / 60.0);

    marketOpenDate2 = [(StockChartData *)selfCopy->_chartData marketOpenDate];
    [marketOpenDate2 timeIntervalSince1970];
    v14 = (v4 - v13) / 60.0;

    v15 = fmax(v14, 0.0);
    v116 = v11;
    v16 = v11 * v15;
    v120 = v16;
  }

  if (![(StockChartData *)selfCopy->_chartData chartInterval]|| (v17 = 0.0, [(StockChartData *)selfCopy->_chartData chartInterval]== 1))
  {
    marketCloseDate2 = [(StockChartData *)selfCopy->_chartData marketCloseDate];
    [marketCloseDate2 timeIntervalSince1970];
    v17 = (v19 - v128) / 60.0;
  }

  v20 = v120;
  v21 = (width - v120 - v17 * v116) / (selfCopy->_valueCount - 1);
  v22 = v21 >= 2.0;
  interestingIndexes = [(StockChartData *)selfCopy->_chartData interestingIndexes];
  v24 = [interestingIndexes count];

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

  chartInterval2 = [(StockChartData *)selfCopy->_chartData chartInterval];
  v26 = fmax(v21, 2.0);
  v132[0] = 0.0;
  if (chartInterval2 != 1)
  {
    v124 = 0;
    goto LABEL_13;
  }

  interestingIndexes2 = [(StockChartData *)selfCopy->_chartData interestingIndexes];
  lastObject = [interestingIndexes2 lastObject];
  [lastObject doubleValue];
  v131 = v29;

  v22 = 0;
  v124 = 1;
LABEL_14:
  selfCopy->_valueIndex = 0;
  [(StockGraphView *)selfCopy clearPaths];
  hasVolume = [(StockChartData *)selfCopy->_chartData hasVolume];
  selfCopy->_maxVolume = 0;
  v30 = 1.0;
  if (v22)
  {
    v30 = 2.0;
  }

  selfCopy->_volumeBarWidth = v30;
  v31 = [(StockChartData *)selfCopy->_chartData minValue][8];
  v32 = [(StockChartData *)selfCopy->_chartData maxValue][8];
  [(StockChartData *)selfCopy->_chartData previousClosePrice];
  v34 = v32;
  v125 = v31;
  if (v33 != 0.0)
  {
    v35 = v33;
    chartInterval3 = [(StockChartData *)selfCopy->_chartData chartInterval];
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

    if (chartInterval3)
    {
      v34 = v32;
    }

    else
    {
      v34 = v37;
    }

    if (chartInterval3)
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
  v40 = *[(StockChartData *)selfCopy->_chartData minValue];
  maxValue = [(StockChartData *)selfCopy->_chartData maxValue];
  v42 = v128;
  v44 = v128 > 0.0 || chartInterval != 0;
  if (selfCopy->_valueIndex < selfCopy->_valueCount)
  {
    v42 = v20 / width;
    if (v20 / width <= v131 && v44)
    {
      v112 = *(MEMORY[0x277CBF348] + 8);
      v45 = *maxValue;
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
      v130 = selfCopy;
      while (chartInterval)
      {
        if (!v22)
        {
          [(StockGraphView *)selfCopy _timeAtPosition:v132[0]];
          v61 = v67;
          [(StockGraphView *)selfCopy _priceAtTime:0 dataPosition:?];
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

        stockValues = [(StockChartData *)selfCopy->_chartData stockValues];
        valueIndex = selfCopy->_valueIndex;
        v50 = (stockValues + 24 * valueIndex);
        v51 = v40;
        v40 = *v50;
        v52 = v50[1];
        selfCopy->_valueIndex = valueIndex + 1;
        v53 = v45;
        v54 = v20;
LABEL_66:
        dataCount = selfCopy->_dataCount;
        selfCopy->_dataCount = dataCount + 1;
        dataSize = selfCopy->_dataSize;
        if (dataSize >= dataCount + 1)
        {
          values = selfCopy->_values;
        }

        else
        {
          selfCopy->_dataSize = 2 * dataSize;
          selfCopy->_points = malloc_type_realloc(selfCopy->_points, 32 * dataSize, 0x1000040451B5BE8uLL);
          values = malloc_type_realloc(v130->_values, 16 * v130->_dataSize, 0x1000040451B5BE8uLL);
          v130->_values = values;
          selfCopy = v130;
          dataCount = v130->_dataCount - 1;
        }

        p_x = &selfCopy->_points[dataCount].x;
        *p_x = v20;
        p_x[1] = (v52 - v125) / v121;
        v76 = &values[dataCount].x;
        *v76 = v40;
        v76[1] = v52;
        v20 = v26 + v54;
        if (v54 / width >= v131 || (v26 + v54) / width <= v131)
        {
          v78 = (v26 + v54) / width;
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
              interestingIndexes3 = [(StockChartData *)selfCopy->_chartData interestingIndexes];
              v84 = [interestingIndexes3 objectAtIndex:v81 - 1];
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
              interestingIndexes4 = [(StockChartData *)selfCopy->_chartData interestingIndexes];
              v90 = [interestingIndexes4 objectAtIndex:v81];
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
          if (chartInterval)
          {
            v132[0] = v78;
          }
        }

        v129 = v82;
        if (hasVolume && (v22 || v20 >= v127))
        {
          v92 = selfCopy->_volumeCount + 1;
          selfCopy->_volumeCount = v92;
          volumeSize = selfCopy->_volumeSize;
          if (volumeSize < v92)
          {
            v94 = 2 * volumeSize;
            selfCopy->_volumeSize = v94;
            selfCopy->_volumeBars = malloc_type_realloc(selfCopy->_volumeBars, 16 * v94, 0x1000040451B5BE8uLL);
          }

          v95 = v20 - v26;
          if (v22)
          {
            v96 = *([(StockChartData *)selfCopy->_chartData stockValues]+ 24 * selfCopy->_valueIndex - 8);
            volumeCount = selfCopy->_volumeCount;
            if (volumeCount >= 2)
            {
              v98 = v95 - selfCopy->_volumeBars[volumeCount - 2].var0 + -1.0;
              if (v98 > 0.0)
              {
                if (*(&selfCopy->super.super.super.isa + v107) < v98)
                {
                  v98 = *(&selfCopy->super.super.super.isa + v107);
                }

                *(&selfCopy->super.super.super.isa + v107) = v98;
              }
            }
          }

          else
          {
            v99 = v132[0];
            v100 = v127 + -1.0 + -0.5;
            v96 = [(StockGraphView *)selfCopy _normalizedAccumulatedVolumeInDataRange:v112, v132[0]];
            v127 = v95 + 1.0 + 1.0;
            volumeCount = selfCopy->_volumeCount;
            v112 = v99;
            v26 = v119;
            v95 = v100;
          }

          v101 = &selfCopy->_volumeBars[volumeCount - 1];
          *v101 = v95;
          *(v101 + 8) = v96;
          maxVolume = selfCopy->_maxVolume;
          if (maxVolume <= v96)
          {
            maxVolume = v96;
          }

          selfCopy->_maxVolume = maxVolume;
        }

        v42 = v128;
        v104 = v40 < v128 || chartInterval != 0;
        if (selfCopy->_valueIndex < selfCopy->_valueCount)
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
        [(StockGraphView *)selfCopy _finishCurrentLine];
        interestingIndexes5 = [(StockChartData *)selfCopy->_chartData interestingIndexes];
        v57 = [interestingIndexes5 objectAtIndex:v46];
        v58 = v46;
        unsignedIntValue = [v57 unsignedIntValue];

        v60 = ([(StockChartData *)selfCopy->_chartData stockValues]+ 24 * unsignedIntValue);
        LODWORD(v46) = v58;
        v61 = *v60;
        v52 = v60[1];
        v20 = v120 + (*v60 - v118) / 60.0 * v116;
        v62 = v20;
        v120 = v62;
        v132[0] = v132[0] + 1.0 / (selfCopy->_valueCount - 1);
        v118 = v61;
      }

      else
      {
        if (v22)
        {
          stockValues2 = [(StockChartData *)selfCopy->_chartData stockValues];
          v87 = selfCopy->_valueIndex;
          v88 = (stockValues2 + 24 * v87);
          v61 = *v88;
          v52 = v88[1];
          v20 = v120 + (*v88 - v118) / 60.0 * v116;
          selfCopy->_valueIndex = v87 + 1;
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

          [(StockGraphView *)selfCopy _priceAtTime:v132 dataPosition:v61];
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
        valueCount = selfCopy->_valueCount;
      }

      else
      {
        interestingIndexes6 = [(StockChartData *)selfCopy->_chartData interestingIndexes];
        [interestingIndexes6 objectAtIndex:v46];
        v65 = v64 = v46;
        valueCount = [v65 unsignedIntValue];

        v46 = v64;
        selfCopy = v130;
      }

      v70 = ([(StockChartData *)selfCopy->_chartData stockValues]+ 24 * valueCount);
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
  [(StockGraphView *)selfCopy _finishCurrentLine];
}

- (void)readyForDisplayFromChartData
{
  v4 = [(StockChartData *)self->_chartData imageSetForDisplayMode:self->_displayMode];
  [(StockChartData *)self->_chartData dataSeriesDict];

  [(LineGraphView *)self->_lineView setGraphImageSet:v4];
  [(VolumeGraphView *)self->_volumeView setGraphImageSet:v4];
  self->_isRendered = 1;
  chartViewDelegate = [(StockGraphView *)self chartViewDelegate];
  [chartViewDelegate stockGraphViewReadyForDisplay:self];
}

- (void)cancelRenderOperation
{
  [(GraphRenderOperation *)self->_renderOperation cancel];
  renderOperation = self->_renderOperation;
  self->_renderOperation = 0;
}

- (void)recomputePathsAndRenderIfNeededForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)graphRenderOperationDidFinish:(id)finish
{
  renderOperation = self->_renderOperation;
  if (renderOperation == finish)
  {
    chartData = self->_chartData;
    graphImageSet = [(GraphRenderOperation *)renderOperation graphImageSet];
    [(StockChartData *)chartData setImageSet:graphImageSet forDisplayMode:self->_displayMode];

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

- (void)loadStockChartData:(id)data
{
  dataCopy = data;
  [(StockGraphView *)self clearData];
  chartData = self->_chartData;
  self->_chartData = dataCopy;
  v6 = dataCopy;

  stockValueCount = [(StockChartData *)self->_chartData stockValueCount];
  self->_valueCount = stockValueCount;
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

- ($87A9BE3275E22128A73FF46D0B92144E)plottedPointNearestToPoint:(SEL)point
{
  retstr->var0 = 0.0;
  retstr->var1 = 0.0;
  retstr->var2 = 0;
  var1_high = HIDWORD(self[20].var1);
  if (var1_high)
  {
    selfCopy = self;
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
    [($87A9BE3275E22128A73FF46D0B92144E *)selfCopy _trueGraphPointsRegion];
    v20 = v19;
    v21 = 1.0 - *(selfCopy[18].var2 + 16 * v11 + 8);
    self = [selfCopy[22].var2 lineWidth];
    v23.f64[0] = *(selfCopy[18].var2 + 16 * v11);
    v23.f64[1] = v22 * 0.5 + v21 * v20 + selfCopy[23].var0;
    v24 = vrndm_f32(vcvt_f32_f64(v23));
    v25.f64[0] = v35;
    v25.f64[1] = v34;
    __asm { FMOV            V1.2D, #-1.0 }

    v31 = vaddq_f64(v25, _Q1);
    v32 = vcvtq_f64_f32(v24);
    *a4 = vmaxnmq_f64(vbslq_s8(vcgtq_f64(v31, v32), v32, v31), 0);
    *&retstr->var0 = *(*&selfCopy[19].var0 + 16 * v11);
    retstr->var2 = 0;
  }

  else
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *&retstr->var0 = _Q0;
  }

  return self;
}

- (CGRect)volumeBarRectNearestToPoint:(CGPoint)point
{
  volumeCount = self->_volumeCount;
  if (volumeCount)
  {
    volumeBars = self->_volumeBars;
    if (point.x < volumeBars->var0)
    {
      point.x = volumeBars->var0;
    }

    var0 = volumeBars[volumeCount - 1].var0;
    if (point.x >= var0)
    {
      point.x = volumeBars[volumeCount - 1].var0;
    }

    v7 = ((point.x - volumeBars->var0) / (var0 - volumeBars->var0));
    p_var0 = &volumeBars[v7 + 1].var0;
    do
    {
      v9 = *(p_var0 - 2);
      p_var0 -= 2;
      --v7;
    }

    while (v9 > point.x);
    do
    {
      v10 = *p_var0;
      p_var0 += 2;
      v11 = v10;
      ++v7;
    }

    while (v10 < point.x);
    if (v7 >= 1)
    {
      v12 = volumeBars[v7 - 1].var0;
      LODWORD(v7) = v7 - ((point.x - v12) / (v11 - v12) <= 0.5);
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