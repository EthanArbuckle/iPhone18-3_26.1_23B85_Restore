@interface EQKitLayoutElementaryStackDigitRow
- (EQKitLayoutElementaryStackDigitRow)initWithChildren:(id)a3 decimalPoint:(unint64_t)a4 position:(int64_t)a5 followingSpace:(double)a6;
- (id)newBoxWithStackWidth:(double)a3 columnWidthIter:(__wrap_iter<double *>)a4 iterMax:(__wrap_iter<double *>)a5 previousRow:(id)a6 layoutManager:(const void *)a7;
- (id)p_crossoutDigitBox:(id)a3 crossout:(int)a4 layoutManager:(const void *)a5;
- (void)dealloc;
- (void)populateMaxColumnWidths:(__wrap_iter<double *>)a3;
@end

@implementation EQKitLayoutElementaryStackDigitRow

- (EQKitLayoutElementaryStackDigitRow)initWithChildren:(id)a3 decimalPoint:(unint64_t)a4 position:(int64_t)a5 followingSpace:(double)a6
{
  v14.receiver = self;
  v14.super_class = EQKitLayoutElementaryStackDigitRow;
  v10 = [(EQKitLayoutElementaryStackDigitRow *)&v14 init];
  if (v10)
  {
    v11 = a3;
    v10->mFollowingSpace = a6;
    v12 = v10->mAlignmentShift - (a5 + a4);
    v10->mColumnBoxes = v11;
    v10->mAlignmentShift = v12;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitLayoutElementaryStackDigitRow;
  [(EQKitLayoutElementaryStackDigitRow *)&v3 dealloc];
}

- (void)populateMaxColumnWidths:(__wrap_iter<double *>)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mColumnBoxes = self->mColumnBoxes;
  v5 = [(NSArray *)mColumnBoxes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(mColumnBoxes);
        }

        [*(*(&v10 + 1) + 8 * i) width];
        if (*a3.var0 >= v9)
        {
          v9 = *a3.var0;
        }

        *a3.var0 = v9;
        a3.var0 += 8;
      }

      v6 = [(NSArray *)mColumnBoxes countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)p_crossoutDigitBox:(id)a3 crossout:(int)a4 layoutManager:(const void *)a5
{
  v5 = a3;
  if (a4)
  {
    [a3 width];
    if (v8 != 0.0)
    {
      [(EQKitOverlayBox *)v5 height];
      if (v9 != 0.0)
      {
        if ((a4 - 2) >= 3)
        {
          v10 = 1;
        }

        else
        {
          v10 = a4;
        }

        PathForNotation = EQKitLayoutManager::createPathForNotation(a5, v5, v10);
        v12 = [EQKitPathBox alloc];
        [(EQKitOverlayBox *)v5 height];
        v14 = v13;
        v15 = *(EQKitLayoutManager::layoutContext(a5) + 96);
        v16 = EQKitLayoutManager::layoutContext(a5);
        v18 = v16;
        v19 = *(v16 + 80);
        if (*(v16 + 104))
        {
          v17.n128_u64[0] = *(v16 + 112);
        }

        else
        {
          v17.n128_f64[0] = EQKitLayoutContext::pComputeRuleThickness(v16);
        }

        v20 = [(EQKitPathBox *)v12 initWithCGPath:PathForNotation height:v15 cgColor:2 drawingMode:v14 lineWidth:(*(*v19 + 40))(v19, 23, v18 + 8, v17)];
        v5 = [[EQKitOverlayBox alloc] initWithBox:v5 overlayBox:v20];

        CGPathRelease(PathForNotation);
      }
    }
  }

  return v5;
}

- (id)newBoxWithStackWidth:(double)a3 columnWidthIter:(__wrap_iter<double *>)a4 iterMax:(__wrap_iter<double *>)a5 previousRow:(id)a6 layoutManager:(const void *)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    a6 = 0;
  }

  mFirstColumnIndex = self->mFirstColumnIndex;
  v12 = [a6 firstColumnIndex];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v27 = self;
  obj = self->mColumnBoxes;
  v13 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = mFirstColumnIndex - v12;
    v30 = *v32;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v32 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        v18 = *a4.var0;
        if (a6 && (v15 & 0x8000000000000000) == 0)
        {
          v17 = -[EQKitLayoutElementaryStackDigitRow p_crossoutDigitBox:crossout:layoutManager:](v27, "p_crossoutDigitBox:crossout:layoutManager:", v17, [a6 crossoutAtColumnIndex:v15], a7);
        }

        v19 = [EQKitHSpace alloc];
        [v17 width];
        v21 = [(EQKitHSpace *)v19 initWithWidth:(v18 - v20) * 0.5];
        v22 = [EQKitHSpace alloc];
        [v17 width];
        v24 = [(EQKitHSpace *)v22 initWithWidth:(v18 - v23) * 0.5];
        [v10 addObject:v21];
        [v10 addObject:v17];
        [v10 addObject:v24];

        a4.var0 += 8;
        ++v15;
      }

      v14 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  v25 = [(EQKitCompoundBox *)[EQKitHBox alloc] initWithChildBoxes:v10];

  return v25;
}

@end