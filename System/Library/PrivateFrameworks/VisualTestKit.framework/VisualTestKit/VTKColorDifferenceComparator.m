@interface VTKColorDifferenceComparator
- (BOOL)_checkForAA;
- (NSString)description;
- (VTKColorDifferenceComparator)initWithStrategy:(id)a3 comparisonOptions:(unint64_t)a4;
- (id)compareImage:(id)a3 withImage:(id)a4;
@end

@implementation VTKColorDifferenceComparator

- (VTKColorDifferenceComparator)initWithStrategy:(id)a3 comparisonOptions:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = VTKColorDifferenceComparator;
  v8 = [(VTKColorDifferenceComparator *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_strategy, a3);
    v9->_comparisonOptions = a4;
  }

  return v9;
}

- (id)compareImage:(id)a3 withImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  HasExtendedColorDisplay = VTKDeviceHasExtendedColorDisplay();
  v9 = 1.0;
  if (![(VTKColorDifferenceComparator *)self _downscalesImages])
  {
    [v6 scale];
    v9 = v10;
    [v7 scale];
    if (v9 < v11)
    {
      v9 = v11;
    }
  }

  [v6 size];
  v13 = v12;
  [v7 size];
  if (v13 >= v14)
  {
    v13 = v14;
  }

  [v6 size];
  v16 = v15;
  [v7 size];
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v18 = HasExtendedColorDisplay;
  v19 = [VTKBitmapContext contextType:HasExtendedColorDisplay width:v13 height:v16 scale:v9];
  v20 = [VTKBitmapContext contextType:v18 width:v13 height:v16 scale:v9];
  v21 = [VTKBitmapContext contextType:v18 width:v13 height:v16 scale:v9];
  if ([(VTKColorDifferenceComparator *)self _checkForAA])
  {
    v22 = [[VTKAntiAliasDetector alloc] initWithLeftContext:v19 rightContext:v20 strategy:self->_strategy];
  }

  else
  {
    v22 = 0;
  }

  v23 = [v19 pixelWidth];
  v24 = [v19 pixelHeight];
  v25 = [v19 CGContext];
  v26 = [v6 CGImage];
  v54.origin.x = 0.0;
  v54.origin.y = 0.0;
  v54.size.width = v23;
  v54.size.height = v24;
  CGContextDrawImage(v25, v54, v26);
  v27 = [v20 CGContext];
  v28 = [v7 CGImage];
  v55.origin.x = 0.0;
  v55.origin.y = 0.0;
  v55.size.width = v23;
  v55.size.height = v24;
  CGContextDrawImage(v27, v55, v28);
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v39 = _NSConcreteStackBlock;
  v40 = 3221225472;
  v41 = __55__VTKColorDifferenceComparator_compareImage_withImage___block_invoke;
  v42 = &unk_C170;
  v43 = self;
  v29 = v19;
  v44 = v29;
  v30 = v20;
  v45 = v30;
  v31 = v22;
  v46 = v31;
  v32 = v21;
  v47 = v32;
  v48 = &v49;
  VTKTransverseContexs(v29, v30, v32, &v39);
  v33 = [VTKCompareResult alloc];
  v34 = [v32 image];
  v35 = v50[3];
  [(VTKColorDifferenceStrategy *)self->_strategy tolerance];
  v37 = [(VTKCompareResult *)v33 initWithComparisonImage:v34 isSuccesfull:v35 <= v36];

  _Block_object_dispose(&v49, 8);

  return v37;
}

void __55__VTKColorDifferenceComparator_compareImage_withImage___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [*(a1 + 32) strategy];
  v13 = [*(a1 + 40) colorAt:a4];
  v14 = [*(a1 + 48) colorAt:a5];
  [v12 differenceBetweenColor:v13 andColor:v14];
  v16 = v15;

  v17 = [*(a1 + 32) strategy];
  [v17 tolerance];
  v19 = v18;

  if (v16 <= v19)
  {
    v23 = *(a1 + 64);
    v24 = [v23 colorForSame];
LABEL_8:
    v25 = v24;
    [v23 drawColor:v24 at:a6];

LABEL_9:
    v26 = *(*(a1 + 72) + 8);
    v27 = *(v26 + 24);
    if (v27 < v16)
    {
      v27 = v16;
    }

    *(v26 + 24) = v27;
    return;
  }

  if (![*(a1 + 32) _checkForAA] || !objc_msgSend(*(a1 + 56), "isAntiAliasedAtPoint:", a2, a3))
  {
    v23 = *(a1 + 64);
    v24 = [v23 colorForDifferent];
    goto LABEL_8;
  }

  v20 = *(a1 + 64);
  v21 = [*(a1 + 32) _drawAAInResults];
  v22 = *(a1 + 64);
  if (v21)
  {
    [v22 colorForAntiAliased];
  }

  else
  {
    [v22 colorForSame];
  }
  v28 = ;
  [v20 drawColor:v28 at:a6];

  if (([*(a1 + 32) _ignoreAAInResults] & 1) == 0)
  {
    goto LABEL_9;
  }
}

- (BOOL)_checkForAA
{
  v3 = [(VTKColorDifferenceComparator *)self _strategySupportsAA];
  if (v3)
  {
    if ([(VTKColorDifferenceComparator *)self _ignoreAAInResults])
    {
      LOBYTE(v3) = 1;
    }

    else
    {

      LOBYTE(v3) = [(VTKColorDifferenceComparator *)self _drawAAInResults];
    }
  }

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(VTKColorDifferenceComparator *)self strategy];
  v5 = objc_opt_class();
  v6 = [(VTKColorDifferenceComparator *)self strategy];
  v7 = [NSString stringWithFormat:@"<%@: %p> (<%@: %p> AA: %d, Downscale: %d)", v3, self, v5, v6, [(VTKColorDifferenceComparator *)self comparisonOptions]& 1, ([(VTKColorDifferenceComparator *)self comparisonOptions]>> 1) & 1];

  return v7;
}

@end