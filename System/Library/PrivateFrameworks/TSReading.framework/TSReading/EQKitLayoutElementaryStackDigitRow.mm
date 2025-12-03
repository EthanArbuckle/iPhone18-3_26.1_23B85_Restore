@interface EQKitLayoutElementaryStackDigitRow
- (EQKitLayoutElementaryStackDigitRow)initWithChildren:(id)children decimalPoint:(unint64_t)point position:(int64_t)position followingSpace:(double)space;
- (id)newBoxWithStackWidth:(double)width columnWidthIter:(__wrap_iter<double *>)iter iterMax:(__wrap_iter<double *>)max previousRow:(id)row layoutManager:(const void *)manager;
- (id)p_crossoutDigitBox:(id)box crossout:(int)crossout layoutManager:(const void *)manager;
- (void)dealloc;
- (void)populateMaxColumnWidths:(__wrap_iter<double *>)widths;
@end

@implementation EQKitLayoutElementaryStackDigitRow

- (EQKitLayoutElementaryStackDigitRow)initWithChildren:(id)children decimalPoint:(unint64_t)point position:(int64_t)position followingSpace:(double)space
{
  v14.receiver = self;
  v14.super_class = EQKitLayoutElementaryStackDigitRow;
  v10 = [(EQKitLayoutElementaryStackDigitRow *)&v14 init];
  if (v10)
  {
    childrenCopy = children;
    v10->mFollowingSpace = space;
    v12 = v10->mAlignmentShift - (position + point);
    v10->mColumnBoxes = childrenCopy;
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

- (void)populateMaxColumnWidths:(__wrap_iter<double *>)widths
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
        if (*widths.var0 >= v9)
        {
          v9 = *widths.var0;
        }

        *widths.var0 = v9;
        widths.var0 += 8;
      }

      v6 = [(NSArray *)mColumnBoxes countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (id)p_crossoutDigitBox:(id)box crossout:(int)crossout layoutManager:(const void *)manager
{
  boxCopy = box;
  if (crossout)
  {
    [box width];
    if (v8 != 0.0)
    {
      [(EQKitOverlayBox *)boxCopy height];
      if (v9 != 0.0)
      {
        if ((crossout - 2) >= 3)
        {
          crossoutCopy = 1;
        }

        else
        {
          crossoutCopy = crossout;
        }

        PathForNotation = EQKitLayoutManager::createPathForNotation(manager, boxCopy, crossoutCopy);
        v12 = [EQKitPathBox alloc];
        [(EQKitOverlayBox *)boxCopy height];
        v14 = v13;
        v15 = *(EQKitLayoutManager::layoutContext(manager) + 96);
        v16 = EQKitLayoutManager::layoutContext(manager);
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
        boxCopy = [[EQKitOverlayBox alloc] initWithBox:boxCopy overlayBox:v20];

        CGPathRelease(PathForNotation);
      }
    }
  }

  return boxCopy;
}

- (id)newBoxWithStackWidth:(double)width columnWidthIter:(__wrap_iter<double *>)iter iterMax:(__wrap_iter<double *>)max previousRow:(id)row layoutManager:(const void *)manager
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    row = 0;
  }

  mFirstColumnIndex = self->mFirstColumnIndex;
  firstColumnIndex = [row firstColumnIndex];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  obj = self->mColumnBoxes;
  v13 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = mFirstColumnIndex - firstColumnIndex;
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
        v18 = *iter.var0;
        if (row && (v15 & 0x8000000000000000) == 0)
        {
          v17 = -[EQKitLayoutElementaryStackDigitRow p_crossoutDigitBox:crossout:layoutManager:](selfCopy, "p_crossoutDigitBox:crossout:layoutManager:", v17, [row crossoutAtColumnIndex:v15], manager);
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

        iter.var0 += 8;
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