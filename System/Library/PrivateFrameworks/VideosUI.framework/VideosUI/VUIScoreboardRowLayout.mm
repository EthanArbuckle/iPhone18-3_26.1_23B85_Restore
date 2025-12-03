@interface VUIScoreboardRowLayout
+ (id)_bottomLayoutForIdiom:(int64_t)idiom;
+ (id)_topRowLayoutForIdiom:(int64_t)idiom;
@end

@implementation VUIScoreboardRowLayout

+ (id)_topRowLayoutForIdiom:(int64_t)idiom
{
  v5 = objc_opt_new();
  v6 = [self _backgroundColorForIdiom:idiom];
  [v5 setSeparatorColor:v6];

  [v5 setSeparatorBlendMode:{objc_msgSend(self, "_backgroundColorBlendMode")}];

  return v5;
}

+ (id)_bottomLayoutForIdiom:(int64_t)idiom
{
  v5 = objc_opt_new();
  v6 = [self _backgroundColorForIdiom:idiom];
  [v5 setBackgroundColor:v6];

  [v5 setBackgroundBlendMode:{objc_msgSend(self, "_backgroundColorBlendMode")}];

  return v5;
}

@end