@interface UILabel(SBStringDrawing)
- (SBStringMetrics)stringMetricsForFirstLineWidth:()SBStringDrawing;
- (void)drawWithMetrics:()SBStringDrawing inContext:;
@end

@implementation UILabel(SBStringDrawing)

- (SBStringMetrics)stringMetricsForFirstLineWidth:()SBStringDrawing
{
  v4 = objc_alloc_init(SBStringMetrics);
  v5 = [a1 text];
  [a1 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v5 length];
  v61.origin.x = v7;
  v61.origin.y = v9;
  v61.size.width = v11;
  v61.size.height = v13;
  Height = CGRectGetHeight(v61);
  v16 = [a1 font];
  [v16 lineHeight];
  v18 = Height / v17;

  v19 = [a1 numberOfLines];
  if (v18 >= v19)
  {
    v18 = v19;
  }

  v20 = [a1 _defaultAttributes];
  v21 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v22 = v21;
  if (!stringMetricsForFirstLineWidth____NonWhitespace)
  {
    v23 = [v21 invertedSet];
    v24 = stringMetricsForFirstLineWidth____NonWhitespace;
    stringMetricsForFirstLineWidth____NonWhitespace = v23;
  }

  if (v14)
  {
    v25 = v18;
    if (v18)
    {
      v26 = 0;
      v27 = 0;
      v55 = v25 - 1;
      v56 = v22;
      v57 = v18;
      while (1)
      {
        v28 = [v5 rangeOfCharacterFromSet:stringMetricsForFirstLineWidth____NonWhitespace options:0 range:{v26, v14 - v26}];
        if (v28 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_53;
        }

        v26 = v28;
        v62.origin.x = v7;
        v62.origin.y = v9;
        v62.size.width = v11;
        v62.size.height = v13;
        Width = CGRectGetWidth(v62);
        v30 = fmin(a2, Width);
        if (v27)
        {
          v31 = Width;
        }

        else
        {
          v31 = v30;
        }

        if (v31 <= 0.0)
        {
          ++v27;
          v40 = [SBLineFragment fragmentWithIndex:v26 length:0 lineWidth:v31];
          [(SBStringMetrics *)v4 addFragment:v40];

          goto LABEL_51;
        }

        context = objc_autoreleasePoolPush();
        v59 = v27;
        if (v26 < v14)
        {
          break;
        }

        v37 = v26;
LABEL_50:
        v51 = [SBLineFragment fragmentWithIndex:v26 length:v37 - v26 lineWidth:v31];
        [(SBStringMetrics *)v4 addFragment:v51];

        objc_autoreleasePoolPop(context);
        v26 = v37;
        v27 = v59;
LABEL_51:
        if (v26 >= v14 || v27 >= v25)
        {
          goto LABEL_53;
        }
      }

      v32 = v26;
      v33 = v31;
      while (1)
      {
        if (v33 == v31)
        {
          v35 = v32;
        }

        else
        {
          v34 = [v5 rangeOfCharacterFromSet:stringMetricsForFirstLineWidth____NonWhitespace options:0 range:{v32, v14 - v32}];
          if (v34 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v37 = v14 + 1;
            goto LABEL_49;
          }

          v35 = v34;
        }

        v36 = [v5 rangeOfCharacterFromSet:v22 options:0 range:{v35, v14 - v35}];
        v37 = v36 == 0x7FFFFFFFFFFFFFFFLL ? v14 : v36;
        v38 = [v5 substringWithRange:{v32, v37 - v32}];
        [v38 sizeWithAttributes:v20];
        if (v39 > v33)
        {
          break;
        }

        v33 = v33 - v39;

        v32 = v37;
        if (v37 >= v14)
        {
          goto LABEL_49;
        }
      }

      if (v33 != v31 || v59 >= v55 || (v41 = v33 * (v37 - v32) / v39, (v42 = v41) == 0))
      {
        v48 = v38;
        v37 = v32;
        goto LABEL_48;
      }

      v54 = v4;
      v43 = v32 + v42;
      if (v32 + v42 <= v32)
      {
        v45 = v32 + v42;
      }

      else
      {
        v44 = v41;
        v53 = v32 + v42;
        v45 = v32 + v42;
        do
        {
          v46 = v38;
          v38 = [v5 substringWithRange:{v32, v44, v53}];

          [v38 sizeWithAttributes:v20];
          --v45;
          --v44;
        }

        while (v39 > v33 && v45 > v32);
        v43 = v53;
      }

      v37 = v45 + 1;
      if (v45 + 1 == v43)
      {
        if (v39 < v33)
        {
          v37 = v42 + v32 - 1;
          v49 = v42 + 1;
          v4 = v54;
          do
          {
            v48 = [v5 substringWithRange:{v32, v49}];

            [v48 sizeWithAttributes:v20];
            ++v37;
            ++v49;
            v38 = v48;
          }

          while (v50 < v33);
LABEL_48:
          ++v59;

          v22 = v56;
LABEL_49:
          v25 = v57;
          goto LABEL_50;
        }

        v48 = v38;
        v37 = v45;
      }

      else
      {
        v48 = v38;
      }

      v4 = v54;
      goto LABEL_48;
    }
  }

LABEL_53:

  return v4;
}

- (void)drawWithMetrics:()SBStringDrawing inContext:
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [a1 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [a1 text];
  v14 = [a1 font];
  [v14 lineHeight];
  v16 = v15;

  v42.origin.x = v6;
  v42.origin.y = v8;
  v42.size.width = v10;
  v42.size.height = v12;
  v17 = CGRectGetHeight(v42) / v16;
  v18 = [a1 numberOfLines];
  if (v17 >= v18)
  {
    v17 = v18;
  }

  v35 = [a1 _defaultAttributes];
  v19 = [a1 textColor];
  [v19 set];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = v4;
  v34 = [v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v34)
  {
    v21 = 0;
    v33 = *v37;
    v22 = v17 - 1;
LABEL_5:
    v23 = 0;
    v24 = v21;
    while (1)
    {
      v25 = v13;
      if (*v37 != v33)
      {
        objc_enumerationMutation(v20);
      }

      v26 = *(*(&v36 + 1) + 8 * v23);
      v27 = [v26 index];
      v28 = [v26 range];
      v30 = v29;
      v21 = v24 + 1;
      if (v24 + 1 == [v20 fragmentCount] || v22 == v24)
      {
        v13 = v25;
        v30 = [v25 length] - v27;
      }

      else
      {
        v27 = v28;
        v13 = v25;
      }

      v31 = [v13 substringWithRange:{v27, v30}];
      [v26 lineWidth];
      [v31 drawInRect:v35 withAttributes:{0.0, v16 * v24, v32, 1.79769313e308}];

      if (v22 == v24)
      {
        break;
      }

      ++v23;
      ++v24;
      if (v34 == v23)
      {
        v34 = [v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v34)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }
}

@end