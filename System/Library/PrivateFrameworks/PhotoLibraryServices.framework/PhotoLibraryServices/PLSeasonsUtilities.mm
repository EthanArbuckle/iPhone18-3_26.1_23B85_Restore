@interface PLSeasonsUtilities
+ (BOOL)isCountryCodePartOfNorthernHemisphere:(id)hemisphere;
+ (BOOL)isCountryCodePartOfSouthernHemisphere:(id)hemisphere;
+ (id)_seasonCountryCodesDictionary;
+ (unint64_t)_northernMeteorologicalSeasonForMonthNumber:(unint64_t)number;
+ (unint64_t)_seasonForMonthNumber:(unint64_t)number locale:(id)locale;
+ (unint64_t)_southernMeteorologicalSeasonForMonthNumber:(unint64_t)number;
@end

@implementation PLSeasonsUtilities

+ (BOOL)isCountryCodePartOfSouthernHemisphere:(id)hemisphere
{
  hemisphereCopy = hemisphere;
  _seasonCountryCodesDictionary = [self _seasonCountryCodesDictionary];
  v6 = [_seasonCountryCodesDictionary objectForKeyedSubscript:@"southernHemisphereCountryCodes"];
  v7 = [v6 containsObject:hemisphereCopy];

  return v7;
}

+ (BOOL)isCountryCodePartOfNorthernHemisphere:(id)hemisphere
{
  hemisphereCopy = hemisphere;
  _seasonCountryCodesDictionary = [self _seasonCountryCodesDictionary];
  v6 = [_seasonCountryCodesDictionary objectForKeyedSubscript:@"northernHemisphereCountryCodes"];
  v7 = [v6 containsObject:hemisphereCopy];

  return v7;
}

+ (id)_seasonCountryCodesDictionary
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PLSeasonsUtilities__seasonCountryCodesDictionary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

+ (unint64_t)_southernMeteorologicalSeasonForMonthNumber:(unint64_t)number
{
  if (number - 1 < 0xC)
  {
    return qword_19C60BC90[number - 1];
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLSeasonsUtilities.m" lineNumber:86 description:@"Month number needs to be in the range 1...12"];

  return 0;
}

+ (unint64_t)_northernMeteorologicalSeasonForMonthNumber:(unint64_t)number
{
  if (number - 1 < 0xC)
  {
    return qword_19C60BC30[number - 1];
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLSeasonsUtilities.m" lineNumber:60 description:@"Month number needs to be in the range 1...12"];

  return 0;
}

+ (unint64_t)_seasonForMonthNumber:(unint64_t)number locale:(id)locale
{
  localeCopy = locale;
  v7 = localeCopy;
  if (number - 13 < 0xFFFFFFFFFFFFFFF4)
  {
    goto LABEL_2;
  }

  countryCode = [localeCopy countryCode];
  v10 = [self isCountryCodePartOfNorthernHemisphere:countryCode];

  if (v10)
  {
    v11 = [self _northernMeteorologicalSeasonForMonthNumber:number];
LABEL_7:
    v8 = v11;
    goto LABEL_8;
  }

  countryCode2 = [v7 countryCode];
  v13 = [self isCountryCodePartOfSouthernHemisphere:countryCode2];

  if (v13)
  {
    v11 = [self _southernMeteorologicalSeasonForMonthNumber:number];
    goto LABEL_7;
  }

LABEL_2:
  v8 = 0;
LABEL_8:

  return v8;
}

@end