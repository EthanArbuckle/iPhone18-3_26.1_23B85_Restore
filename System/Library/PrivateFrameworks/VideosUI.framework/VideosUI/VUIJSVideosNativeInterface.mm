@interface VUIJSVideosNativeInterface
- (NSString)language;
- (NSString)locale;
- (id)generateHash:(id)hash;
- (id)locStringForKey:(id)key;
- (id)locStringForKeyWithCounts:(id)counts :(id)a4;
- (void)setLocDictionary:(id)dictionary;
@end

@implementation VUIJSVideosNativeInterface

- (NSString)language
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults arrayForKey:@"AppleLanguages"];

  firstObject = [v3 firstObject];

  return firstObject;
}

- (NSString)locale
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  return localeIdentifier;
}

- (id)locStringForKey:(id)key
{
  keyCopy = key;
  v4 = +[VUILocalizationManager sharedInstance];
  v5 = [v4 localizedStringForKey:keyCopy];

  return v5;
}

- (id)locStringForKeyWithCounts:(id)counts :(id)a4
{
  v5 = a4;
  countsCopy = counts;
  v7 = +[VUILocalizationManager sharedInstance];
  v8 = [v7 localizedStringForKey:countsCopy withCounts:v5];

  return v8;
}

- (void)setLocDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = +[VUILocalizationManager sharedInstance];
  [v4 updateWithJSDictionary:dictionaryCopy];
}

- (id)generateHash:(id)hash
{
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:hash requiringSecureCoding:0 error:0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{crc32(0, objc_msgSend(v3, "bytes"), objc_msgSend(v3, "length"))}];

  return v4;
}

@end