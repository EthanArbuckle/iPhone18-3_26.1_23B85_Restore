@interface _UIPasteboardOptions
+ (id)optionsWithDictionary:(id)a3;
- (_UIPasteboardOptions)initWithOptionsDictionary:(id)a3;
@end

@implementation _UIPasteboardOptions

+ (id)optionsWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithOptionsDictionary:v4];

  return v5;
}

- (_UIPasteboardOptions)initWithOptionsDictionary:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = _UIPasteboardOptions;
  v6 = [(_UIPasteboardOptions *)&v12 init];
  if (v6)
  {
    v7 = [v5 objectForKeyedSubscript:@"localOnly"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        [v10 handleFailureInMethod:a2 object:v6 file:@"UIPasteboardOptions.m" lineNumber:27 description:@"The value for UIPasteboardOptionLocalOnly must be an NSNumber."];
      }

      v6->_localOnly = [v7 BOOLValue];
    }

    v8 = [v5 objectForKeyedSubscript:@"expirationDate"];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        [v11 handleFailureInMethod:a2 object:v6 file:@"UIPasteboardOptions.m" lineNumber:33 description:@"The value for UIPasteboardOptionExpirationDate must be an NSDate."];
      }

      objc_storeStrong(&v6->_expirationDate, v8);
    }
  }

  return v6;
}

@end