@interface ChartHUDView
+ (id)_dateRangeSeparatorString;
+ (id)monoSpacedFontWithFont:(id)a3;
+ (id)newHUDLabel;
+ (id)stringForTimeIntervalSince1970:(double)a3 withInterval:(int64_t)a4 isDouble:(BOOL)a5 isLeft:(BOOL)a6;
+ (void)initializeDateFormattersIfNeededForInterval:(int64_t)a3 withTimeZone:(id)a4;
- (ChartHUDView)initWithFrame:(CGRect)a3;
- (StockChartView)chartView;
- (void)_showHUD;
- (void)layoutSubviews;
- (void)resetLocale;
- (void)resizeSelectedClipViewsIfNeeded;
- (void)setFrame:(CGRect)a3;
- (void)setOverlayHidden:(BOOL)a3;
- (void)setShowingTracking:(BOOL)a3 withTouchInfo:(id)a4 animated:(BOOL)a5;
- (void)tapDragGestureChanged:(id)a3;
@end

@implementation ChartHUDView

+ (id)_dateRangeSeparatorString
{
  v2 = _dateRangeSeparatorString_dateRangeSeparatorString;
  if (!_dateRangeSeparatorString_dateRangeSeparatorString)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 8211];
    v4 = _dateRangeSeparatorString_dateRangeSeparatorString;
    _dateRangeSeparatorString_dateRangeSeparatorString = v3;

    v2 = _dateRangeSeparatorString_dateRangeSeparatorString;
  }

  return v2;
}

+ (void)initializeDateFormattersIfNeededForInterval:(int64_t)a3 withTimeZone:(id)a4
{
  v5 = a4;
  v20 = v5;
  if (a3 < 2)
  {
    v13 = shortTermSingleDateFormatter;
    if (!shortTermSingleDateFormatter)
    {
      v14 = objc_alloc_init(MEMORY[0x277CCA968]);
      v15 = shortTermSingleDateFormatter;
      shortTermSingleDateFormatter = v14;

      [shortTermSingleDateFormatter setDateStyle:3];
      [shortTermSingleDateFormatter setTimeStyle:2];
      v16 = objc_alloc_init(MEMORY[0x277CCA968]);
      v17 = shortTermDoubleDateFormatter;
      shortTermDoubleDateFormatter = v16;

      [shortTermDoubleDateFormatter setDateStyle:1];
      [shortTermDoubleDateFormatter setTimeStyle:1];
      v18 = objc_alloc_init(MEMORY[0x277CCA968]);
      v19 = daySecondDateFormatter;
      daySecondDateFormatter = v18;

      [daySecondDateFormatter setDateStyle:0];
      [daySecondDateFormatter setTimeStyle:1];
      v13 = shortTermSingleDateFormatter;
    }

    [v13 setTimeZone:v20];
    v6 = v20;
    v7 = shortTermDoubleDateFormatter;
    v8 = &daySecondDateFormatter;
  }

  else
  {
    v6 = v5;
    v7 = longTermSingleDateFormatter;
    v8 = &longTermDoubleDateFormatter;
    if (!longTermSingleDateFormatter)
    {
      v9 = objc_alloc_init(MEMORY[0x277CCA968]);
      v10 = longTermSingleDateFormatter;
      longTermSingleDateFormatter = v9;

      [longTermSingleDateFormatter setDateStyle:3];
      [longTermSingleDateFormatter setTimeStyle:0];
      v11 = objc_alloc_init(MEMORY[0x277CCA968]);
      v12 = longTermDoubleDateFormatter;
      longTermDoubleDateFormatter = v11;

      [longTermDoubleDateFormatter setDateStyle:2];
      [longTermDoubleDateFormatter setTimeStyle:0];
      v6 = v20;
      v7 = longTermSingleDateFormatter;
    }
  }

  [v7 setTimeZone:v6];
  [*v8 setTimeZone:v20];
}

- (void)resetLocale
{
  v2 = longTermSingleDateFormatter;
  longTermSingleDateFormatter = 0;

  v3 = longTermDoubleDateFormatter;
  longTermDoubleDateFormatter = 0;

  v4 = shortTermSingleDateFormatter;
  shortTermSingleDateFormatter = 0;

  v5 = shortTermDoubleDateFormatter;
  shortTermDoubleDateFormatter = 0;

  v6 = daySecondDateFormatter;
  daySecondDateFormatter = 0;
}

+ (id)stringForTimeIntervalSince1970:(double)a3 withInterval:(int64_t)a4 isDouble:(BOOL)a5 isLeft:(BOOL)a6
{
  if (a4 >= 2)
  {
    v7 = &longTermDoubleDateFormatter;
    if (!a5)
    {
      v7 = &longTermSingleDateFormatter;
    }

LABEL_11:
    v9 = *v7;
    goto LABEL_13;
  }

  if (a5)
  {
    v7 = &shortTermDoubleDateFormatter;
    if (a4 != 1 && !a6)
    {
      v7 = &daySecondDateFormatter;
    }

    goto LABEL_11;
  }

  v9 = shortTermSingleDateFormatter;
LABEL_13:
  v10 = v9;
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:a3];
  v12 = [v10 stringFromDate:v11];

  return v12;
}

+ (id)newHUDLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  v4 = +[StocksStyle sharedStyle];
  v5 = [v4 lightFontOfSize:22.0];
  v6 = [a1 monoSpacedFontWithFont:v5];
  [v3 setFont:v6];

  v7 = [MEMORY[0x277D75348] colorWithWhite:0.8 alpha:1.0];
  [v3 setTextColor:v7];

  v8 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v8];

  [v3 setClipsToBounds:0];
  return v3;
}

+ (id)monoSpacedFontWithFont:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = [a3 fontDescriptor];
  v14 = *MEMORY[0x277D74338];
  v4 = *MEMORY[0x277D74388];
  v11[0] = *MEMORY[0x277D74398];
  v11[1] = v4;
  v12[0] = &unk_287C81000;
  v12[1] = &unk_287C81018;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v13 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v15[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v8 = [v3 fontDescriptorByAddingAttributes:v7];

  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:0.0];

  return v9;
}

- (ChartHUDView)initWithFrame:(CGRect)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v52.receiver = self;
  v52.super_class = ChartHUDView;
  v3 = [(ChartHUDView *)&v52 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[ChartHUDView newHUDLabel];
    leftDateLabel = v3->_leftDateLabel;
    v3->_leftDateLabel = v4;

    [(ChartHUDView *)v3 addSubview:v4];
    v6 = +[ChartHUDView newHUDLabel];
    centeredLabel = v3->_centeredLabel;
    v3->_centeredLabel = v6;

    [(ChartHUDView *)v3 addSubview:v6];
    v8 = +[ChartHUDView newHUDLabel];
    rightDateLabel = v3->_rightDateLabel;
    v3->_rightDateLabel = v8;

    [(ChartHUDView *)v3 addSubview:v8];
    v10 = objc_alloc(MEMORY[0x277CBEB58]);
    v11 = objc_alloc_init(HUDTouchInfo);
    v12 = objc_alloc_init(HUDTouchInfo);
    v13 = [v10 initWithObjects:{v11, v12, 0}];
    inactiveTouchInfoSet = v3->_inactiveTouchInfoSet;
    v3->_inactiveTouchInfoSet = v13;

    v15 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:2];
    touchInfoSet = v3->_touchInfoSet;
    v3->_touchInfoSet = v15;

    v17 = [StocksBundles getBundle:1];
    v18 = MEMORY[0x277D755B8];
    v19 = [(ChartHUDView *)v3 traitCollection];
    v46 = v17;
    v20 = [v18 imageNamed:@"HUDDot" inBundle:v17 compatibleWithTraitCollection:v19];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v3->_inactiveTouchInfoSet;
    v21 = [(NSMutableSet *)obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v49;
      do
      {
        v24 = 0;
        do
        {
          if (*v49 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v48 + 1) + 8 * v24);
          v26 = objc_opt_new();
          [v25 setBar:v26];

          v27 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v20];
          [v25 setDot:v27];

          v28 = [v25 bar];
          [v28 setAlpha:0.0];

          v29 = +[StocksStyle sharedStyle];
          v30 = [v29 chartHighlightColor];
          v31 = [v25 bar];
          [v31 setBackgroundColor:v30];

          v32 = [v25 dot];
          [v32 setAlpha:0.0];

          v33 = [v25 bar];
          [(ChartHUDView *)v3 addSubview:v33];

          v34 = [v25 dot];
          [(ChartHUDView *)v3 addSubview:v34];

          ++v24;
        }

        while (v22 != v24);
        v22 = [(NSMutableSet *)obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v22);
    }

    v35 = [PricePopoverBar alloc];
    v36 = MEMORY[0x277D755B8];
    v37 = [(ChartHUDView *)v3 traitCollection];
    v38 = [v36 imageNamed:@"ButtonMask" inBundle:v46 compatibleWithTraitCollection:v37];
    v39 = CeilToPixel(4.5);
    v40 = [v38 resizableImageWithCapInsets:1 resizingMode:{0.0, v39, 0.0, CeilToPixel(4.5)}];
    v41 = [(PricePopoverBar *)v35 initWithBackgroundImage:v40];
    pricePopoverBar = v3->_pricePopoverBar;
    v3->_pricePopoverBar = v41;

    [(PricePopoverBar *)v3->_pricePopoverBar setAlpha:0.0];
    [(ChartHUDView *)v3 addSubview:v3->_pricePopoverBar];
    v43 = [[StocksTapDragGestureRecognizer alloc] initWithTarget:v3 action:sel_tapDragGestureChanged_];
    tapDragGesture = v3->_tapDragGesture;
    v3->_tapDragGesture = v43;

    [(StocksTapDragGestureRecognizer *)v3->_tapDragGesture setMaximumNumberOfTouches:2];
    [(StocksTapDragGestureRecognizer *)v3->_tapDragGesture setRequiredPressDelay:0.1];
    [(ChartHUDView *)v3 addGestureRecognizer:v3->_tapDragGesture];
  }

  return v3;
}

- (void)setFrame:(CGRect)a3
{
  v22.receiver = self;
  v22.super_class = ChartHUDView;
  [(ChartHUDView *)&v22 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(StockGraphView *)self->_graphView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_chartView);
  [(ChartHUDView *)self convertRect:WeakRetained fromView:v5, v7, v9, v11];
  v14 = v13;
  v16 = v15;

  v17 = objc_loadWeakRetained(&self->_chartView);
  [v17 bounds];
  v19 = v18;
  v21 = v20;

  [(StocksTapDragGestureRecognizer *)self->_tapDragGesture setTouchableBounds:v14, v16, v19, v21 - v16];
}

- (void)setOverlayHidden:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  self->_overlayHidden = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(ChartHUDView *)self subviews];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setHidden:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)resizeSelectedClipViewsIfNeeded
{
  v3 = [(NSMutableSet *)self->_touchInfoSet count];
  v35 = [(NSMutableSet *)self->_touchInfoSet allObjects];
  if (v3 == 2)
  {
    v4 = [v35 objectAtIndex:0];
    [v4 plottedLocation];
    v6 = v5;

    v7 = [v35 objectAtIndex:1];
    [v7 plottedLocation];
    v9 = v8;

    [(ChartHUDView *)self convertPoint:self->_graphView toView:v6, 0.0];
    v11 = v10;
    [(ChartHUDView *)self convertPoint:self->_graphView toView:v9, 0.0];
    if (v11 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    if (v11 >= v12)
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    [(StockGraphView *)self->_graphView resizeSelectedLineClipViewWithLeftX:v13 rightX:v14];
  }

  if ([(NSMutableSet *)self->_touchInfoSet count])
  {
    v15 = [(NSMutableSet *)self->_touchInfoSet allObjects];
    v16 = [v15 firstObject];
    v17 = [v16 touch];
    [v17 locationInView:self->_graphView];
    v19 = v18;
    v21 = v20;

    if (v3 == 2)
    {
      v22 = [v15 lastObject];
      v23 = [v22 touch];
      [v23 locationInView:self->_graphView];
      v25 = v24;
      v27 = v26;

      if (v19 >= v25)
      {
        v28 = v21;
      }

      else
      {
        v28 = v27;
      }

      if (v19 < v25)
      {
        v29 = v25;
      }

      else
      {
        v21 = v27;
        v29 = v19;
      }

      if (v19 >= v25)
      {
        v19 = v25;
      }
    }

    else
    {
      v29 = 0.0;
      v28 = 0.0;
    }

    [(StockGraphView *)self->_graphView volumeBarRectNearestToPoint:v19, v21];
    v34 = v30;
    if (v3 == 2)
    {
      [(StockGraphView *)self->_graphView volumeBarRectNearestToPoint:v29, v28];
    }

    [(StockGraphView *)self->_graphView resizeSelectedVolumeClipViewWithLeftX:v34 rightX:CGRectGetMaxX(*&v30)];
  }
}

- (void)layoutSubviews
{
  v194 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->_touchInfoSet count])
  {
    [(ChartHUDView *)self alpha];
    if (v4 != 0.0)
    {
      [(StockGraphView *)self->_graphView frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      WeakRetained = objc_loadWeakRetained(&self->_chartView);
      [(ChartHUDView *)self convertRect:WeakRetained fromView:v6, v8, v10, v12];
      v169 = v15;
      v170 = v14;
      v17 = v16;
      rect = v18;

      [(PricePopoverBar *)self->_pricePopoverBar frame];
      v171 = v19;
      v172 = v20;
      v166 = v21;
      v187 = 0u;
      v188 = 0u;
      v189 = 0u;
      v190 = 0u;
      v22 = [(NSMutableSet *)self->_touchInfoSet setByAddingObjectsFromSet:self->_inactiveTouchInfoSet];
      v23 = [v22 countByEnumeratingWithState:&v187 objects:v193 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v188;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v188 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v187 + 1) + 8 * i);
            v28 = [v27 bar];
            v29 = [v27 bar];
            [v29 frame];
            v31 = v30;
            v2 = [MEMORY[0x277D759A0] mainScreen];
            [v2 scale];
            [v28 setFrame:{v31, v17 + 1.0 / v32, RoundToPixel(0.5), self->_barHeight}];
          }

          v24 = [v22 countByEnumeratingWithState:&v187 objects:v193 count:16];
        }

        while (v24);
      }

      forceTouchUpdate = self->_forceTouchUpdate;
      self->_forceTouchUpdate = 0;
      v183 = 0u;
      v184 = 0u;
      v185 = 0u;
      v186 = 0u;
      v34 = self->_touchInfoSet;
      v35 = [(NSMutableSet *)v34 countByEnumeratingWithState:&v183 objects:v192 count:16];
      if (v35)
      {
        v36 = v35;
        v2 = *v184;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v184 != v2)
            {
              objc_enumerationMutation(v34);
            }

            v38 = *(*(&v183 + 1) + 8 * j);
            v39 = [v38 touch];
            [v39 locationInView:self];
            v41 = v40;
            v43 = v42;

            [v38 setLocationInHUD:{v41, v43}];
            v181 = 0.0;
            v182 = 0.0;
            [(ChartHUDView *)self convertPoint:self->_graphView toView:v41, v43];
            v181 = v44;
            v182 = v45;
            graphView = self->_graphView;
            if (graphView)
            {
              [(StockGraphView *)graphView plottedPointNearestToPoint:&v181];
            }

            else
            {
              v179 = 0uLL;
              v180 = 0;
            }

            v177 = v179;
            v178 = v180;
            [v38 setStockValue:&v177];
            [(ChartHUDView *)self convertPoint:self->_graphView fromView:v181, v182];
            v48 = v47;
            v50 = v49;
            [v38 plottedLocation];
            if (v48 != v52 || v50 != v51)
            {
              [v38 setPlottedLocation:{v48, v50}];
              v54 = [v38 dot];
              [v54 setCenter:{v48, v50}];

              v55 = [v38 bar];
              [v55 frame];
              v57 = v56;
              v59 = v58;
              v60 = v17;
              v62 = v61;

              v63 = RoundToPixel(v48 + v59 * -0.5);
              v64 = [v38 bar];
              v65 = v62;
              v17 = v60;
              [v64 setFrame:{v63, v57, v59, v65}];

              [(ChartHUDView *)self convertPoint:self->_graphView toView:v48, v50];
              v181 = v66;
              v182 = v67;
              forceTouchUpdate = 1;
            }

            if ([(NSMutableSet *)self->_touchInfoSet count]== 1)
            {
              v195.size.width = v169;
              v195.origin.x = v170;
              v195.origin.y = v17;
              v195.size.height = rect;
              v68 = CGRectGetMaxX(v195) - v172;
              v69 = RoundToPixel(v48 - v172 * 0.5);
              if (v170 >= v69)
              {
                v69 = v170;
              }

              if (v68 < v69)
              {
                v69 = v68;
              }

              v171 = v69;
            }
          }

          v36 = [(NSMutableSet *)v34 countByEnumeratingWithState:&v183 objects:v192 count:16];
        }

        while (v36);
      }

      if ((forceTouchUpdate & 1) != 0 && [(NSMutableSet *)self->_touchInfoSet count])
      {
        [(ChartHUDView *)self resizeSelectedClipViewsIfNeeded];
        v70 = +[StocksStyle sharedStyle];
        v71 = [v70 chartHighlightColor];

        v164 = v71;
        if ([(NSMutableSet *)self->_touchInfoSet count]== 1)
        {
          v72 = [(NSMutableSet *)self->_touchInfoSet anyObject];
          v73 = v72;
          if (v72)
          {
            [v72 stockValue];
            v74 = *(&v177 + 1);
            v75 = *&v177;

            v76 = MEMORY[0x277CCABB0];
            if (v74 >= 1000.0)
            {
              v74 = RoundToPixel(v74);
              v77 = 0;
            }

            else
            {
              v77 = 1;
            }
          }

          else
          {

            v76 = MEMORY[0x277CCABB0];
            v75 = 0.0;
            v77 = 1;
            v74 = 0.0;
          }

          v78 = [v76 numberWithDouble:v74];
          v114 = +[StockDataFormatter sharedDataFormatter];
          if (v77)
          {
            v2 = [(ChartHUDView *)self chartView];
            forceTouchUpdate = [v2 stock];
            v115 = [forceTouchUpdate pricePrecision];
          }

          else
          {
            v115 = 0;
          }

          v108 = [v114 formattedNumber:v78 withPrecision:v115 useGroupSeparator:1];
          if (v77)
          {
          }

          [(PricePopoverBar *)self->_pricePopoverBar setImageMaskColor:v71];
          [(PricePopoverBar *)self->_pricePopoverBar setChangeImage:0];
          v106 = 0;
          v92 = 0.0;
        }

        else
        {
          v78 = [(NSMutableSet *)self->_touchInfoSet allObjects];
          v79 = [v78 objectAtIndex:0];
          [v79 locationInHUD];
          v81 = v80;
          v82 = [v78 objectAtIndex:1];
          [v82 locationInHUD];
          v84 = v83;
          v85 = v81 >= v83;

          v86 = [v78 objectAtIndex:v85];
          v87 = v86;
          v88 = 0.0;
          v89 = 0.0;
          v75 = 0.0;
          if (v86)
          {
            [v86 stockValue];
            v89 = *(&v177 + 1);
            v75 = *&v177;
          }

          v90 = [v78 objectAtIndex:v81 < v84];
          v91 = v90;
          v92 = 0.0;
          if (v90)
          {
            [v90 stockValue];
            v88 = *(&v177 + 1);
            v92 = *&v177;
          }

          v93 = v88 - v89;
          v94 = (v88 - v89) / v89;
          v95 = v93;
          v96 = fabsf(v94);
          v97 = +[StockDataFormatter sharedDataFormatter];
          v98 = fabsf(v95);
          if (v96 >= 0.0001)
          {
            v99 = v96;
          }

          else
          {
            v98 = 0.0;
            v99 = 0.0;
          }

          v100 = [MEMORY[0x277CCABB0] numberWithDouble:v98];
          v101 = [(ChartHUDView *)self chartView];
          v102 = [v101 stock];
          v103 = [v97 formattedNumber:v100 withPrecision:objc_msgSend(v102 useGroupSeparator:{"pricePrecision"), 1}];

          v104 = +[StockDataFormatter sharedDataFormatter];
          v105 = [MEMORY[0x277CCABB0] numberWithDouble:v99];
          v106 = [v104 formattedPercent:v105];

          v107 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"+-"];
          v108 = [v103 stringByTrimmingCharactersInSet:v107];

          if (v96 >= 0.0001)
          {
            v165 = v106;
            pricePopoverBar = self->_pricePopoverBar;
            v110 = +[StocksStyle sharedStyle];
            v111 = v110;
            if (v94 >= 0.0)
            {
              v112 = [v110 gainColor];
              v113 = @"PlusSign";
            }

            else
            {
              v112 = [v110 lossColor];
              v113 = @"MinusSign";
            }

            [(PricePopoverBar *)pricePopoverBar setImageMaskColor:v112];

            v116 = [StocksBundles getBundle:1];
            v117 = self->_pricePopoverBar;
            v118 = MEMORY[0x277D755B8];
            v119 = [(ChartHUDView *)self traitCollection];
            v120 = [v118 imageNamed:v113 inBundle:v116 compatibleWithTraitCollection:v119];
            [(PricePopoverBar *)v117 setChangeImage:v120];

            v106 = v165;
          }

          else
          {
            [(PricePopoverBar *)self->_pricePopoverBar setImageMaskColor:v164];
            [(PricePopoverBar *)self->_pricePopoverBar setChangeImage:0];
          }
        }

        v167 = v108;
        [(PricePopoverBar *)self->_pricePopoverBar setPriceString:v108];
        [(PricePopoverBar *)self->_pricePopoverBar setPercentChange:v106];
        v121 = [ChartHUDView stringForTimeIntervalSince1970:self->_interval withInterval:[(NSMutableSet *)self->_touchInfoSet count]== 2 isDouble:1 isLeft:v75];
        v122 = [(UILabel *)self->_leftDateLabel font];
        if ([(NSMutableSet *)self->_touchInfoSet count]!= 2 || v92 == v75)
        {
          v132 = *MEMORY[0x277CBF3A8];
          v134 = *(MEMORY[0x277CBF3A8] + 8);
          [(UILabel *)self->_centeredLabel setText:v121];
          p_rightDateLabel = &self->_rightDateLabel;
          [(UILabel *)self->_rightDateLabel setText:0];
          [(UILabel *)self->_leftDateLabel setText:0];
          v135 = 0.0;
          v129 = v134;
          v127 = v132;
        }

        else
        {
          v123 = +[ChartHUDView _dateRangeSeparatorString];
          [(UILabel *)self->_centeredLabel setText:v123];

          [(UILabel *)self->_leftDateLabel setText:v121];
          v124 = [ChartHUDView stringForTimeIntervalSince1970:self->_interval withInterval:[(NSMutableSet *)self->_touchInfoSet count]== 2 isDouble:0 isLeft:v92];
          p_rightDateLabel = &self->_rightDateLabel;
          [(UILabel *)self->_rightDateLabel setText:v124];

          [v121 _legacy_sizeWithFont:v122];
          v127 = v126;
          v129 = v128;
          v130 = [(UILabel *)self->_rightDateLabel text];
          [v130 _legacy_sizeWithFont:v122];
          v132 = v131;
          v134 = v133;

          v135 = 1.0;
        }

        [(UILabel *)*p_rightDateLabel setAlpha:v135];
        [(UILabel *)self->_leftDateLabel setAlpha:v135];
        v136 = [(UILabel *)self->_centeredLabel font];
        [v136 ascender];
        v138 = RoundToPixel(22.0 - v137);

        v139 = [(UILabel *)self->_centeredLabel text];
        [v139 _legacy_sizeWithFont:v122];
        v141 = v140;
        v163 = v142;

        v162 = v138 - RoundToPixel(1.5);
        interval = self->_interval;
        [(ChartHUDView *)self bounds];
        if (interval)
        {
          v145 = RoundToPixel((v144 - v141) * 0.5);
        }

        else
        {
          v145 = v127 + RoundToPixel((v144 - v127 - v141 - v132) * 0.5);
        }

        [(UILabel *)self->_centeredLabel setFrame:v145, v162, v141, v163];
        v146 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[ChartHUDView semanticContentAttribute](self, "semanticContentAttribute")}];
        leftDateLabel = self->_leftDateLabel;
        if (v146)
        {
          [(UILabel *)leftDateLabel setFrame:v141 + v145 + 3.0, v138, v127, v129];
          v148 = v145 - v132;
          v149 = -3.0;
        }

        else
        {
          [(UILabel *)leftDateLabel setFrame:v145 - v127 + -3.0, v138, v127, v129];
          v148 = v141 + v145;
          v149 = 3.0;
        }

        [(UILabel *)self->_rightDateLabel setFrame:v148 + v149, v138, v132, v134];
      }

      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      v150 = self->_touchInfoSet;
      v151 = [(NSMutableSet *)v150 countByEnumeratingWithState:&v173 objects:v191 count:16];
      if (v151)
      {
        v152 = v151;
        v153 = *v174;
        v154 = 0.0;
        do
        {
          for (k = 0; k != v152; ++k)
          {
            if (*v174 != v153)
            {
              objc_enumerationMutation(v150);
            }

            [*(*(&v173 + 1) + 8 * k) locationInHUD];
            v154 = v154 + v156 / [(NSMutableSet *)self->_touchInfoSet count];
          }

          v152 = [(NSMutableSet *)v150 countByEnumeratingWithState:&v173 objects:v191 count:16];
        }

        while (v152);
      }

      else
      {
        v154 = 0.0;
      }

      [(StockGraphView *)self->_graphView rightmostPlottedPoint];
      [(ChartHUDView *)self convertPoint:self->_graphView fromView:?];
      v158 = v157;
      v159 = [(NSMutableSet *)self->_touchInfoSet count];
      v160 = v171;
      if (v159 == 2)
      {
        if (v154 >= v158)
        {
          v154 = v158;
        }

        v196.size.width = v169;
        v196.origin.x = v170;
        v196.origin.y = v17;
        v196.size.height = rect;
        v160 = CGRectGetMaxX(v196) - v172;
        v161 = fmax(round(v154 + v172 * -0.5), 16.0);
        if (v160 >= v161)
        {
          v160 = v161;
        }
      }

      [(PricePopoverBar *)self->_pricePopoverBar setFrame:v160, v17 - v166 + -3.0, v172];
    }
  }
}

- (void)setShowingTracking:(BOOL)a3 withTouchInfo:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  if (v6)
  {
    [(ChartHUDView *)self setNeedsLayout];
  }

  v9 = MEMORY[0x277D75D18];
  v12[1] = 3221225472;
  v12[0] = MEMORY[0x277D85DD0];
  v12[2] = __58__ChartHUDView_setShowingTracking_withTouchInfo_animated___block_invoke;
  v12[3] = &unk_279D16658;
  if (v5)
  {
    v10 = 0.150000002;
  }

  else
  {
    v10 = 0.0;
  }

  v15 = v6;
  v13 = v8;
  v14 = self;
  v11 = v8;
  [v9 animateWithDuration:v12 animations:v10];
}

uint64_t __58__ChartHUDView_setShowingTracking_withTouchInfo_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dot];
  LOBYTE(v3) = *(a1 + 48);
  [v2 setAlpha:v3];

  v4 = [*(a1 + 32) bar];
  LOBYTE(v5) = *(a1 + 48);
  [v4 setAlpha:v5];

  v6 = *(a1 + 40);
  v7 = *(v6 + 464);
  v8 = [*(v6 + 448) count];
  v9 = 0.0;
  if (v8)
  {
    v9 = 1.0;
  }

  [v7 setAlpha:v9];
  [*(*(a1 + 40) + 496) setShowingSelectedVolumeRegion:{objc_msgSend(*(*(a1 + 40) + 448), "count") != 0}];
  v10 = *(a1 + 40);
  v11 = *(v10 + 496);
  v12 = [*(v10 + 448) count] == 2;

  return [v11 setShowingSelectedLine:v12];
}

- (void)_showHUD
{
  WeakRetained = objc_loadWeakRetained(&self->_chartView);
  v7 = [WeakRetained chartData];

  v4 = [v7 chartInterval];
  v5 = [v7 marketTimeZone];
  [(ChartHUDView *)self setSelectedInterval:v4 timeZone:v5];

  v6 = objc_loadWeakRetained(&self->_chartView);
  [v6 setShowingHUD:1];

  [(ChartHUDView *)self setNeedsLayout];
}

- (void)tapDragGestureChanged:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v4 = [v44 state];
  switch(v4)
  {
    case 3:
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v32 = self->_touchInfoSet;
      v33 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v49 objects:v66 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v50;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v50 != v35)
            {
              objc_enumerationMutation(v32);
            }

            [(NSMutableSet *)self->_inactiveTouchInfoSet addObject:*(*(&v49 + 1) + 8 * i)];
          }

          v34 = [(NSMutableSet *)v32 countByEnumeratingWithState:&v49 objects:v66 count:16];
        }

        while (v34);
      }

      [(NSMutableSet *)self->_touchInfoSet removeAllObjects];
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v37 = self->_inactiveTouchInfoSet;
      v38 = [(NSMutableSet *)v37 countByEnumeratingWithState:&v45 objects:v65 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v46;
        do
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v46 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v45 + 1) + 8 * j);
            [v42 setTouch:0];
            [(ChartHUDView *)self setShowingTracking:0 withTouchInfo:v42 animated:1];
          }

          v39 = [(NSMutableSet *)v37 countByEnumeratingWithState:&v45 objects:v65 count:16];
        }

        while (v39);
      }

      self->_forceTouchUpdate = 1;
      WeakRetained = objc_loadWeakRetained(&self->_chartView);
      [WeakRetained setShowingHUD:0];
      goto LABEL_48;
    case 2:
LABEL_5:
      v5 = [MEMORY[0x277CBEB58] set];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v6 = self->_touchInfoSet;
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v61 objects:v69 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v62;
        do
        {
          for (k = 0; k != v8; ++k)
          {
            if (*v62 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v61 + 1) + 8 * k);
            v12 = [v44 touches];
            v13 = [v11 touch];
            v14 = [v12 containsObject:v13];

            if ((v14 & 1) == 0)
            {
              [v5 addObject:v11];
            }
          }

          v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v61 objects:v69 count:16];
        }

        while (v8);
      }

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v15 = v5;
      v16 = [v15 countByEnumeratingWithState:&v57 objects:v68 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v58;
        do
        {
          for (m = 0; m != v17; ++m)
          {
            if (*v58 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v57 + 1) + 8 * m);
            [v20 setTouch:0];
            [(NSMutableSet *)self->_touchInfoSet removeObject:v20];
            [(NSMutableSet *)self->_inactiveTouchInfoSet addObject:v20];
            [(ChartHUDView *)self setShowingTracking:0 withTouchInfo:v20 animated:1];
            self->_forceTouchUpdate = 1;
          }

          v17 = [v15 countByEnumeratingWithState:&v57 objects:v68 count:16];
        }

        while (v17);
      }

      v43 = v15;

      v21 = [(NSMutableSet *)self->_touchInfoSet valueForKey:@"touch"];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v22 = [v44 touches];
      v23 = [v22 countByEnumeratingWithState:&v53 objects:v67 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v54;
        do
        {
          for (n = 0; n != v24; ++n)
          {
            if (*v54 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v53 + 1) + 8 * n);
            if (([v21 containsObject:v27] & 1) == 0)
            {
              v28 = [(NSMutableSet *)self->_inactiveTouchInfoSet anyObject];
              v29 = v28;
              if (v28)
              {
                [v28 setTouch:v27];
                [v27 locationInView:self];
                [v29 setLocationInHUD:?];
                [(NSMutableSet *)self->_touchInfoSet addObject:v29];
                [(NSMutableSet *)self->_inactiveTouchInfoSet removeObject:v29];
                [(ChartHUDView *)self alpha];
                [(ChartHUDView *)self setShowingTracking:1 withTouchInfo:v29 animated:v30 != 0.0];
                self->_forceTouchUpdate = 1;
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v53 objects:v67 count:16];
        }

        while (v24);
      }

      [(ChartHUDView *)self setNeedsLayout];
      WeakRetained = v43;
LABEL_48:

      break;
    case 1:
      [(ChartHUDView *)self _showHUD];
      goto LABEL_5;
  }
}

- (StockChartView)chartView
{
  WeakRetained = objc_loadWeakRetained(&self->_chartView);

  return WeakRetained;
}

@end