@interface _TVCarouselView(TVMLKitAdditions)
- (id)rowMetricsForExpectedWidth:()TVMLKitAdditions firstItemRowIndex:;
@end

@implementation _TVCarouselView(TVMLKitAdditions)

- (id)rowMetricsForExpectedWidth:()TVMLKitAdditions firstItemRowIndex:
{
  v53[1] = *MEMORY[0x277D85DE8];
  [self tv_padding];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [self itemSize];
  v42 = v13;
  [self tv_focusMargin];
  v15 = v14;
  [self tv_focusMargin];
  v17 = v16;
  headerView = [self headerView];

  v19 = v42;
  if (headerView)
  {
    v41 = v42;
    headerView2 = [self headerView];
    [headerView2 tv_margin];
    v40 = v21;
    v23 = v22;
    v25 = v24;
    v43 = v17;
    v27 = v26;

    if (a2 - (v10 + v23 + v12 + v27) >= 2.22044605e-16)
    {
      v28 = a2 - (v10 + v23 + v12 + v27);
    }

    else
    {
      v28 = a2;
    }

    headerView3 = [self headerView];
    [headerView3 tv_sizeThatFits:{v28, 0.0}];
    v31 = v30;

    headerView4 = [self headerView];
    [headerView4 tv_alignmentInsetsForExpectedWidth:v28];
    v34 = v33;

    v19 = vaddq_f64(v41, vdupq_lane_s64(COERCE__INT64(v25 + v8 + v40 + v31), 0));
    v35 = v8 + v40 + v34;
    v17 = v43;
    v36 = fmax(fmax(v15 - v25, 0.0) - (v8 + v40), 0.0);
    if (v15 > 0.0)
    {
      v15 = v36;
    }
  }

  else
  {
    v35 = 0.0;
  }

  *a4 = 0x7FFFFFFFFFFFFFFFLL;
  v44 = 0;
  v45 = v19;
  v46 = 0;
  v47 = v35;
  v48 = 0;
  v49 = v35;
  v50 = 0;
  v51 = v15;
  v52 = v17;
  v37 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v44];
  v53[0] = v37;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];

  return v38;
}

@end