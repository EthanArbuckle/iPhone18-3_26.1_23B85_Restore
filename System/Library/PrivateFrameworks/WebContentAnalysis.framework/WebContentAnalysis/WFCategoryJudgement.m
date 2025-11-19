@interface WFCategoryJudgement
+ (id)categoryJudgementWithCategory:(int64_t)a3 score:(float)a4;
- (int64_t)compareByCategory:(id)a3;
- (int64_t)compareByScore:(id)a3;
@end

@implementation WFCategoryJudgement

+ (id)categoryJudgementWithCategory:(int64_t)a3 score:(float)a4
{
  v6 = objc_alloc_init(objc_opt_class());
  *&v7 = a4;
  [v6 setScore:v7];
  [v6 setCategory:a3];

  return v6;
}

- (int64_t)compareByCategory:(id)a3
{
  v4 = [(WFCategoryJudgement *)self category];
  v5 = [a3 category];
  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v4 > v5;
  }
}

- (int64_t)compareByScore:(id)a3
{
  [(WFCategoryJudgement *)self score];
  v5 = v4;
  [a3 score];
  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

@end