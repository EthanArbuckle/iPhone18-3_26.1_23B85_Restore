@interface SearchUIWatchNowCardSection
+ (id)placeholderCardForMediaContainer:(BOOL)a3;
@end

@implementation SearchUIWatchNowCardSection

+ (id)placeholderCardForMediaContainer:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = objc_opt_new();
  [v4 setIsPlaceholder:1];
  v5 = objc_opt_new();
  [v4 setTitle:v5];

  if (v3)
  {
    v6 = &stru_1F55BC4E8;
  }

  else
  {
    v6 = @"\n";
  }

  v7 = [MEMORY[0x1E69CA3A0] textWithString:v6];
  [v4 setSubtitle:v7];

  return v4;
}

@end