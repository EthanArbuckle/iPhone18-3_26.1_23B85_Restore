@interface UPQuiltConfigurationPhone
- (UPQuiltConfigurationPhone)initWithRandomizationSeedValue:(unint64_t)a3 viewport:(CGRect)a4 timeBounds:(CGRect)a5 lineVariance:(double)a6;
- (id)_quiltVariationValuesForSideLength:(double)a3 variance:(double)a4 fromKeyFraction:(double)a5 toKeyFraction:;
- (void)_generateQuiltPaths;
@end

@implementation UPQuiltConfigurationPhone

- (UPQuiltConfigurationPhone)initWithRandomizationSeedValue:(unint64_t)a3 viewport:(CGRect)a4 timeBounds:(CGRect)a5 lineVariance:(double)a6
{
  v9.receiver = self;
  v9.super_class = UPQuiltConfigurationPhone;
  v6 = [(UPQuiltConfiguration *)&v9 initWithRandomizationSeedValue:a3 viewport:a4.origin.x timeBounds:a4.origin.y lineVariance:a4.size.width, a4.size.height, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height, *&a6];
  v7 = v6;
  if (v6)
  {
    [(UPQuiltConfigurationPhone *)v6 _generateQuiltPaths];
  }

  return v7;
}

- (void)_generateQuiltPaths
{
  if (a1)
  {
    [a1 viewport];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [a1 timeBounds];
    v12 = v11 + v10 * 0.5;
    v13 = v7 / 393.366;
    v14 = v9 / 852.0;
    v15 = [MEMORY[0x277D75208] bezierPath];
    [v15 moveToPoint:{v3, v12 + v9 / 852.0 * -1.075}];
    [v15 addCurveToPoint:v13 * 40.495 controlPoint1:v12 + v14 * 2.81 controlPoint2:{v13 * 22.016, v12 + v14 * 2.925, v13 * 35.515, v12 + v14 * 2.889}];
    [v15 addCurveToPoint:v13 * 50.834 controlPoint1:v12 + v14 * 2.811 controlPoint2:{v13 * 44.051, v12 + v14 * 2.754, v13 * 47.279, v12 + v14 * 2.872}];
    [v15 addCurveToPoint:v13 * 269.367 controlPoint1:v12 + v14 * -7.157 controlPoint2:{v13 * 123.735, v12 + v14 * 1.562, v13 * 196.714, v12 + v14 * -2.289}];
    [v15 addCurveToPoint:v13 * 313.996 controlPoint1:v12 + v14 * -6.157 controlPoint2:{v13 * 279.301, v12 + v14 * -6.765, v13 * 294.178, v12 + v14 * -6.765}];
    [v15 addLineToPoint:{v7, v12 + v9 / 852.0 * -16.126}];
    [v15 addLineToPoint:{v7, v5}];
    [v15 addLineToPoint:{v3, v5}];
    [v15 addLineToPoint:{v3, v12 + v9 / 852.0 * -1.075}];
    [v15 closePath];
    v16 = *(a1 + 168);
    *(a1 + 168) = v15;
    v43 = v15;

    v45 = *(MEMORY[0x277CBF2C0] + 16);
    v46 = *MEMORY[0x277CBF2C0];
    *&v51.a = v46;
    *&v51.c = v45;
    v44 = *(MEMORY[0x277CBF2C0] + 32);
    *&v51.tx = v44;
    *&v50.a = v46;
    *&v50.c = v45;
    *&v50.tx = v44;
    CGAffineTransformScale(&v51, &v50, 1.375, 1.0);
    path = MEMORY[0x2743A5640]([*(a1 + 168) CGPath], &v51);
    v17 = [MEMORY[0x277D75208] bezierPathWithCGPath:?];
    OUTLINED_FUNCTION_4_0(v17, 120);
    v18 = [*(a1 + 120) copy];
    *&v50.a = v46;
    *&v50.c = v45;
    *&v50.tx = v44;
    *&v49.a = v46;
    *&v49.c = v45;
    *&v49.tx = v44;
    CGAffineTransformTranslate(&v50, &v49, 0.0, -5.0);
    v19 = MEMORY[0x2743A5640]([*(a1 + 120) CGPath], &v50);
    v20 = [MEMORY[0x277D75208] bezierPathWithCGPath:v19];
    OUTLINED_FUNCTION_4_0(v20, 152);
    v21 = [MEMORY[0x277D75208] bezierPath];
    [v21 moveToPoint:{v3, v5}];
    [v21 addLineToPoint:{v7 / 393.366 * 8.894, v5}];
    OUTLINED_FUNCTION_1_0();
    [v21 addLineToPoint:?];
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_2_0(v22, v23, v13 * 82.619, (v9 + -564.581) * (v9 / 852.0), v13 * 87.127, -556.109);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_2_0(v24, v25, v13 * 104.021, (v9 + -502.139) * (v9 / 852.0), v13 * 124.322, -429.57);
    OUTLINED_FUNCTION_1_0();
    [v21 addLineToPoint:?];
    OUTLINED_FUNCTION_1_0();
    [v21 addLineToPoint:?];
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_2_0(v26, v27, v13 * 210.982, (v9 + -167.405) * (v9 / 852.0), v13 * 234.305, -100.493);
    [v21 addCurveToPoint:v13 * 265.636 controlPoint1:v9 controlPoint2:{v13 * 245.658, (v9 + -47.711) * v14, v13 * 252.202, (v9 + -29.829) * v14}];
    [v21 addLineToPoint:{v3, v9}];
    [v21 addLineToPoint:{v3, v5}];
    [v21 closePath];
    v28 = *(a1 + 176);
    *(a1 + 176) = v21;
    v41 = v21;

    *&v49.a = v46;
    *&v49.c = v45;
    *&v49.tx = v44;
    *&v48.a = v46;
    *&v48.c = v45;
    *&v48.tx = v44;
    CGAffineTransformScale(&v49, &v48, 1.375, 1.375);
    v29 = MEMORY[0x2743A5640]([*(a1 + 176) CGPath], &v49);
    v30 = [MEMORY[0x277D75208] bezierPathWithCGPath:v29];
    OUTLINED_FUNCTION_4_0(v30, 128);
    v31 = [*(a1 + 128) copy];
    *&v48.a = v46;
    *&v48.c = v45;
    *&v48.tx = v44;
    *&v47.a = v46;
    *&v47.c = v45;
    *&v47.tx = v44;
    CGAffineTransformTranslate(&v48, &v47, -5.0, 0.0);
    v32 = MEMORY[0x2743A5640]([*(a1 + 128) CGPath], &v48);
    v33 = [MEMORY[0x277D75208] bezierPathWithCGPath:v32];
    OUTLINED_FUNCTION_4_0(v33, 160);
    CopyByIntersectingPath = CGPathCreateCopyByIntersectingPath([v18 CGPath], objc_msgSend(v31, "CGPath"), 1);
    v35 = [MEMORY[0x277D75208] bezierPathWithCGPath:CopyByIntersectingPath];
    OUTLINED_FUNCTION_4_0(v35, 136);
    v36 = [MEMORY[0x277D75208] bezierPath];
    [v36 moveToPoint:{v7, v9 + -243.342}];
    OUTLINED_FUNCTION_3_0(v7 / 393.366 * 340.995, -165.511);
    OUTLINED_FUNCTION_3_0(v7 / 393.366 * 324.657, -143.25);
    OUTLINED_FUNCTION_3_0(v7 / 393.366 * 228.221, -18.2134);
    OUTLINED_FUNCTION_3_0(v7 / 393.366 * 221.894, -7.762);
    OUTLINED_FUNCTION_3_0(v7 / 393.366 * 218.774, -0.149);
    [v36 addLineToPoint:{v7, v9}];
    [v36 closePath];
    v37 = *(a1 + 184);
    *(a1 + 184) = v36;
    v38 = v36;

    v39 = [MEMORY[0x277D75208] bezierPath];
    [v39 moveToPoint:{v7 + 50.0, v9 + 50.0}];
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_0_0();
    [v39 closePath];
    v40 = *(a1 + 144);
    *(a1 + 144) = v39;

    if (CopyByIntersectingPath)
    {
      CGPathRelease(CopyByIntersectingPath);
    }

    if (path)
    {
      CGPathRelease(path);
    }

    if (v19)
    {
      CGPathRelease(v19);
    }

    if (v29)
    {
      CGPathRelease(v29);
    }

    if (v32)
    {
      CGPathRelease(v32);
    }
  }
}

- (id)_quiltVariationValuesForSideLength:(double)a3 variance:(double)a4 fromKeyFraction:(double)a5 toKeyFraction:
{
  v25[2] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v9 = a3 * 0.1;
    v10 = objc_opt_new();
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v24[0] = v11;
    v25[0] = &unk_288068FA0;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    v24[1] = v12;
    v25[1] = &unk_288068FA0;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    [v10 addEntriesFromDictionary:v13];

    v14 = 1;
    v15 = 0.0;
    v16 = 1;
    do
    {
      if (a3 - v15 <= v9)
      {
        v16 ^= 1u;
      }

      v17 = [a1 randomizer];
      v18 = v17;
      if (v16)
      {
        v19 = a3;
      }

      else
      {
        v19 = 0.0;
      }

      [v17 floatValueBetweenFirstValue:v15 secondValue:v19];
      v15 = v20;

      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
      v22 = [MEMORY[0x277CCABB0] numberWithDouble:{vcvtd_n_f64_u64(v14, 2uLL)}];
      [v10 setObject:v21 forKeyedSubscript:v22];

      ++v14;
    }

    while (v14 != 4);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end