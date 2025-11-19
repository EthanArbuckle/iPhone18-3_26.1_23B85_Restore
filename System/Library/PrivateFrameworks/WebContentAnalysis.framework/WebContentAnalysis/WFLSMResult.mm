@interface WFLSMResult
+ (id)LSMResultWithLSMResultRef:(__LSMResult *)a3 threshold:(id)a4;
+ (id)extractScoresFromLSMResults:(__LSMResult *)a3;
- (BOOL)isRestricted;
- (WFLSMResult)initWithLSMResultRef:(__LSMResult *)a3 threshold:(id)a4;
- (float)scoreForCategory:(int64_t)a3;
- (id)debugDescription;
- (int64_t)bestMatchingCategory;
- (void)dealloc;
- (void)setScore:(float)a3 forCategory:(int64_t)a4;
@end

@implementation WFLSMResult

+ (id)extractScoresFromLSMResults:(__LSMResult *)a3
{
  v4 = objc_opt_new();
  Count = LSMResultGetCount(a3);
  if (Count >= 1)
  {
    v6 = Count;
    for (i = 0; i != v6; ++i)
    {
      Category = LSMResultGetCategory(a3, i);
      *&v9 = LSMResultGetScore(a3, i);
      [v4 addObject:{+[WFCategoryJudgement categoryJudgementWithCategory:score:](WFCategoryJudgement, "categoryJudgementWithCategory:score:", Category, v9)}];
    }
  }

  return v4;
}

+ (id)LSMResultWithLSMResultRef:(__LSMResult *)a3 threshold:(id)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithLSMResultRef:a3 threshold:a4];

  return v4;
}

- (WFLSMResult)initWithLSMResultRef:(__LSMResult *)a3 threshold:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = WFLSMResult;
  v6 = [(WFLSMResult *)&v10 init];
  if (v6)
  {
    v7 = [objc_opt_class() extractScoresFromLSMResults:a3];
    v6->categoryJudgements = v7;
    [(NSMutableArray *)v7 sortUsingSelector:sel_compareByCategory_];
    v8 = v6->categoryJudgements;
    [(WFLSMResult *)v6 setThreshold:a4];
  }

  return v6;
}

- (int64_t)bestMatchingCategory
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  categoryJudgements = self->categoryJudgements;
  v3 = [(NSMutableArray *)categoryJudgements countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    v6 = -1;
    v7 = -1.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(categoryJudgements);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        [v9 score];
        if (v10 > v7)
        {
          v11 = v10;
          v6 = [v9 category];
          v7 = v11;
        }
      }

      v4 = [(NSMutableArray *)categoryJudgements countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = -1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (float)scoreForCategory:(int64_t)a3
{
  v3 = [(NSMutableArray *)self->categoryJudgements objectAtIndex:a3 - 1];

  [v3 score];
  return result;
}

- (void)setScore:(float)a3 forCategory:(int64_t)a4
{
  v5 = [(NSMutableArray *)self->categoryJudgements objectAtIndex:a4 - 1];
  *&v6 = a3;

  [v5 setScore:v6];
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CCAB68] stringWithString:&stru_28826CB10];
  v4 = [(WFLSMResult *)self bestMatchingCategory];
  v5 = [(WFLSMResult *)self numberOfCategories];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = 1;
    do
    {
      [(WFLSMResult *)self scoreForCategory:v7];
      v9 = v8;
      if (v4 == v7)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[ %d:%.2f ]", v4, *&v9];
      }

      else
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d:%.2f", v7, *&v9];
      }

      [v3 appendString:v10];
      if (v6 != v7)
      {
        [v3 appendString:@"    "];
      }
    }

    while (v6 > v7++);
  }

  return v3;
}

- (BOOL)isRestricted
{
  v3 = [(WFLSMResult *)self numberOfCategories];
  v4 = [(WFLSMResult *)self bestMatchingCategory];
  [(WFLSMResult *)self scoreForCategory:v4];
  if (v4 != v3)
  {
    return 0;
  }

  v6 = v5;
  [(NSNumber *)[(WFLSMResult *)self threshold] floatValue];
  return v6 > v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WFLSMResult;
  [(WFLSMResult *)&v3 dealloc];
}

@end