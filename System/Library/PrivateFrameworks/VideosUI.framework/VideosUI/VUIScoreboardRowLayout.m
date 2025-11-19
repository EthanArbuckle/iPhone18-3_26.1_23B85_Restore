@interface VUIScoreboardRowLayout
+ (id)_bottomLayoutForIdiom:(int64_t)a3;
+ (id)_topRowLayoutForIdiom:(int64_t)a3;
@end

@implementation VUIScoreboardRowLayout

+ (id)_topRowLayoutForIdiom:(int64_t)a3
{
  v5 = objc_opt_new();
  v6 = [a1 _backgroundColorForIdiom:a3];
  [v5 setSeparatorColor:v6];

  [v5 setSeparatorBlendMode:{objc_msgSend(a1, "_backgroundColorBlendMode")}];

  return v5;
}

+ (id)_bottomLayoutForIdiom:(int64_t)a3
{
  v5 = objc_opt_new();
  v6 = [a1 _backgroundColorForIdiom:a3];
  [v5 setBackgroundColor:v6];

  [v5 setBackgroundBlendMode:{objc_msgSend(a1, "_backgroundColorBlendMode")}];

  return v5;
}

@end