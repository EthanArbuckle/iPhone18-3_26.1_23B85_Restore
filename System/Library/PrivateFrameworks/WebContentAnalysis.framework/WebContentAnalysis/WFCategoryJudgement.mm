@interface WFCategoryJudgement
+ (id)categoryJudgementWithCategory:(int64_t)category score:(float)score;
- (int64_t)compareByCategory:(id)category;
- (int64_t)compareByScore:(id)score;
@end

@implementation WFCategoryJudgement

+ (id)categoryJudgementWithCategory:(int64_t)category score:(float)score
{
  v6 = objc_alloc_init(objc_opt_class());
  *&v7 = score;
  [v6 setScore:v7];
  [v6 setCategory:category];

  return v6;
}

- (int64_t)compareByCategory:(id)category
{
  category = [(WFCategoryJudgement *)self category];
  category2 = [category category];
  if (category < category2)
  {
    return -1;
  }

  else
  {
    return category > category2;
  }
}

- (int64_t)compareByScore:(id)score
{
  [(WFCategoryJudgement *)self score];
  v5 = v4;
  [score score];
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