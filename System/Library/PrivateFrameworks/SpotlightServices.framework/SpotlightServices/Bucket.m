@interface Bucket
- (BOOL)addOne:(id)a3;
- (Bucket)initWithItem:(id)a3 isPerfectScoreBucket:(BOOL)a4;
- (void)calculateLikelihood:(id)a3;
@end

@implementation Bucket

- (Bucket)initWithItem:(id)a3 isPerfectScoreBucket:(BOOL)a4
{
  v4 = a4;
  v15.receiver = self;
  v15.super_class = Bucket;
  v5 = a3;
  v6 = [(Bucket *)&v15 init];
  v7 = v6;
  v8 = 0.015;
  if (v4)
  {
    v8 = 0.08;
  }

  v6->_threshold = v8;
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v5, 0}];
  items = v7->_items;
  v7->_items = v9;

  [v5 topicalityScore];
  v7->_upperBound = v11;
  [v5 topicalityScore];
  v13 = v12;

  v7->_lowerBound = v13;
  v7->_isPerfectScoreBucket = v4;
  return v7;
}

- (BOOL)addOne:(id)a3
{
  v4 = a3;
  upperBound = self->_upperBound;
  [v4 topicalityScore];
  if (upperBound < v6)
  {
    upperBound = v6;
  }

  lowerBound = self->_lowerBound;
  [v4 topicalityScore];
  if (lowerBound >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = lowerBound;
  }

  threshold = self->_threshold;
  if (upperBound - v9 <= threshold)
  {
    [(NSMutableArray *)self->_items addObject:v4];
    self->_upperBound = upperBound;
    self->_lowerBound = v9;
  }

  return upperBound - v9 <= threshold;
}

- (void)calculateLikelihood:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v37 = a3;
  if (self->_isPerfectScoreBucket)
  {
    v4 = self->_upperBound + 0.1;
    v5 = self->_lowerBound + 0.1;
    if (v4 + -0.015 >= v5)
    {
      v5 = v4 + -0.015;
    }

    self->_upperBound = v4;
    self->_lowerBound = v5;
  }

  if ([(NSMutableArray *)self->_items count]!= 1)
  {
    upperBound = self->_upperBound;
    lowerBound = self->_lowerBound;
    v12 = upperBound - lowerBound;
    if (upperBound - lowerBound < 0.0001)
    {
      *&self->_upperBound = vaddq_f64(vdupq_lane_s64(COERCE__INT64((upperBound + lowerBound) * 0.5), 0), xmmword_1DA0D5390);
      v12 = 0.0001;
    }

    v36 = [v37 isSearchToolClient];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v13 = self->_items;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (!v14)
    {
LABEL_26:

      goto LABEL_27;
    }

    v16 = v14;
    v17 = *v40;
    *&v15 = 138412802;
    v34 = v15;
    v35 = *v40;
LABEL_11:
    v18 = 0;
    v38 = v16;
    while (1)
    {
      if (*v40 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v39 + 1) + 8 * v18);
      v20 = self->_lowerBound;
      [v19 topicalityScore];
      v22 = v21;
      [v19 freshnessScore];
      [v19 setLikelihood:v20 + v22 * v23 / self->_upperBound * v12];
      if (!self->_isPerfectScoreBucket)
      {
        goto LABEL_24;
      }

      if (([v19 bundleIDType] & 0x100000) != 0)
      {
        break;
      }

      if (([v19 bundleIDType] & 8) != 0)
      {
        v25 = 6;
        goto LABEL_20;
      }

      v24 = 0;
LABEL_21:
      v26 = SSGeneralLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v37 searchString];
        v28 = SSRedactStringClient(v27, 1, v36);
        SSRedactStringClient(v24, 1, v36);
        v30 = v29 = v13;
        v31 = [v19 identifier];
        v32 = SSRedactStringClient(v31, 1, v36);
        *buf = v34;
        v44 = v28;
        v45 = 2112;
        v46 = v30;
        v47 = 2112;
        v48 = v32;
        _os_log_impl(&dword_1D9F69000, v26, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] [SearchTool] [Boosting] query=%@ Result=[%@] identifier=[%@] was soft boosted on likelihood for perfect sparse score and complete match in subject/snippet", buf, 0x20u);

        v17 = v35;
        v13 = v29;
        v16 = v38;
      }

LABEL_24:
      if (v16 == ++v18)
      {
        v16 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_11;
      }
    }

    v25 = 4;
LABEL_20:
    v24 = SSCompactRankingAttrsGetValue([v19 attributes], v25);
    goto LABEL_21;
  }

  v6 = [(NSMutableArray *)self->_items objectAtIndexedSubscript:0];
  [v6 topicalityScore];
  v8 = v7;
  v9 = [(NSMutableArray *)self->_items objectAtIndexedSubscript:0];
  [v9 setLikelihood:v8];

LABEL_27:
  v33 = *MEMORY[0x1E69E9840];
}

@end