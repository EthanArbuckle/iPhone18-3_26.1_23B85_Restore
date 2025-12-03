@interface _UIPasteboardOptions
+ (id)optionsWithDictionary:(id)dictionary;
- (_UIPasteboardOptions)initWithOptionsDictionary:(id)dictionary;
@end

@implementation _UIPasteboardOptions

+ (id)optionsWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithOptionsDictionary:dictionaryCopy];

  return v5;
}

- (_UIPasteboardOptions)initWithOptionsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _UIPasteboardOptions;
  v6 = [(_UIPasteboardOptions *)&v12 init];
  if (v6)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"localOnly"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v6 file:@"UIPasteboardOptions.m" lineNumber:27 description:@"The value for UIPasteboardOptionLocalOnly must be an NSNumber."];
      }

      v6->_localOnly = [v7 BOOLValue];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"expirationDate"];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:v6 file:@"UIPasteboardOptions.m" lineNumber:33 description:@"The value for UIPasteboardOptionExpirationDate must be an NSDate."];
      }

      objc_storeStrong(&v6->_expirationDate, v8);
    }
  }

  return v6;
}

@end