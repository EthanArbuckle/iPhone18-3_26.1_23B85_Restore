@interface PLSeasonsUtilities
+ (BOOL)isCountryCodePartOfNorthernHemisphere:(id)a3;
+ (BOOL)isCountryCodePartOfSouthernHemisphere:(id)a3;
+ (id)_seasonCountryCodesDictionary;
+ (unint64_t)_northernMeteorologicalSeasonForMonthNumber:(unint64_t)a3;
+ (unint64_t)_seasonForMonthNumber:(unint64_t)a3 locale:(id)a4;
+ (unint64_t)_southernMeteorologicalSeasonForMonthNumber:(unint64_t)a3;
@end

@implementation PLSeasonsUtilities

+ (BOOL)isCountryCodePartOfSouthernHemisphere:(id)a3
{
  v4 = a3;
  v5 = [a1 _seasonCountryCodesDictionary];
  v6 = [v5 objectForKeyedSubscript:@"southernHemisphereCountryCodes"];
  v7 = [v6 containsObject:v4];

  return v7;
}

+ (BOOL)isCountryCodePartOfNorthernHemisphere:(id)a3
{
  v4 = a3;
  v5 = [a1 _seasonCountryCodesDictionary];
  v6 = [v5 objectForKeyedSubscript:@"northernHemisphereCountryCodes"];
  v7 = [v6 containsObject:v4];

  return v7;
}

+ (id)_seasonCountryCodesDictionary
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PLSeasonsUtilities__seasonCountryCodesDictionary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_seasonCountryCodesDictionary_onceToken != -1)
  {
    dispatch_once(&_seasonCountryCodesDictionary_onceToken, block);
  }

  v2 = _seasonCountryCodesDictionary_seasonCountryCodesDictionary;

  return v2;
}

void __51__PLSeasonsUtilities__seasonCountryCodesDictionary__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v0 URLForResource:@"seasonsCountryCodes" withExtension:@"plist"];

  v1 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v3];
  v2 = _seasonCountryCodesDictionary_seasonCountryCodesDictionary;
  _seasonCountryCodesDictionary_seasonCountryCodesDictionary = v1;
}

+ (unint64_t)_southernMeteorologicalSeasonForMonthNumber:(unint64_t)a3
{
  if (a3 - 1 < 0xC)
  {
    return qword_19C60BC90[a3 - 1];
  }

  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:a1 file:@"PLSeasonsUtilities.m" lineNumber:86 description:@"Month number needs to be in the range 1...12"];

  return 0;
}

+ (unint64_t)_northernMeteorologicalSeasonForMonthNumber:(unint64_t)a3
{
  if (a3 - 1 < 0xC)
  {
    return qword_19C60BC30[a3 - 1];
  }

  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:a1 file:@"PLSeasonsUtilities.m" lineNumber:60 description:@"Month number needs to be in the range 1...12"];

  return 0;
}

+ (unint64_t)_seasonForMonthNumber:(unint64_t)a3 locale:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 - 13 < 0xFFFFFFFFFFFFFFF4)
  {
    goto LABEL_2;
  }

  v9 = [v6 countryCode];
  v10 = [a1 isCountryCodePartOfNorthernHemisphere:v9];

  if (v10)
  {
    v11 = [a1 _northernMeteorologicalSeasonForMonthNumber:a3];
LABEL_7:
    v8 = v11;
    goto LABEL_8;
  }

  v12 = [v7 countryCode];
  v13 = [a1 isCountryCodePartOfSouthernHemisphere:v12];

  if (v13)
  {
    v11 = [a1 _southernMeteorologicalSeasonForMonthNumber:a3];
    goto LABEL_7;
  }

LABEL_2:
  v8 = 0;
LABEL_8:

  return v8;
}

@end