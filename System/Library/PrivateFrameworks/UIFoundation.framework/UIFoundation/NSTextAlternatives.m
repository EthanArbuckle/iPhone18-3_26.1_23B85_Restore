@interface NSTextAlternatives
- (NSTextAlternatives)initWithCoder:(id)a3;
- (NSTextAlternatives)initWithPrimaryString:(NSString *)primaryString alternativeStrings:(NSArray *)alternativeStrings;
- (NSTextAlternatives)initWithPrimaryString:(id)a3 alternativeStrings:(id)a4 identifier:(id)a5 isLowConfidence:(BOOL)a6;
- (NSTextAlternatives)initWithPrimaryString:(id)a3 alternativeStrings:(id)a4 isLowConfidence:(BOOL)a5;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)noteSelectedAlternativeString:(NSString *)alternativeString;
@end

@implementation NSTextAlternatives

- (NSTextAlternatives)initWithPrimaryString:(NSString *)primaryString alternativeStrings:(NSArray *)alternativeStrings
{
  if (primaryString)
  {
    if (!alternativeStrings)
    {
      goto LABEL_6;
    }

LABEL_5:
    if ([(NSArray *)alternativeStrings count])
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: must have original text", _NSFullMethodName()}];
  if (alternativeStrings)
  {
    goto LABEL_5;
  }

LABEL_6:
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: must have alternatives", _NSFullMethodName()}];
LABEL_7:
  v9.receiver = self;
  v9.super_class = NSTextAlternatives;
  v7 = [(NSTextAlternatives *)&v9 init];
  if (v7)
  {
    v7->_primaryString = [(NSString *)primaryString copy];
    v7->_alternativeStrings = [(NSArray *)alternativeStrings copy];
    v7->_isLowConfidence = 1;
  }

  return v7;
}

- (NSTextAlternatives)initWithPrimaryString:(id)a3 alternativeStrings:(id)a4 isLowConfidence:(BOOL)a5
{
  result = [(NSTextAlternatives *)self initWithPrimaryString:a3 alternativeStrings:a4];
  if (result)
  {
    result->_isLowConfidence = a5;
  }

  return result;
}

- (NSTextAlternatives)initWithPrimaryString:(id)a3 alternativeStrings:(id)a4 identifier:(id)a5 isLowConfidence:(BOOL)a6
{
  v7 = [(NSTextAlternatives *)self initWithPrimaryString:a3 alternativeStrings:a4 isLowConfidence:a6];
  if (v7)
  {
    v7->_internal = [a5 copy];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSTextAlternatives;
  [(NSTextAlternatives *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = NSTextAlternatives;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ primary <%@> alternatives %@", -[NSTextAlternatives description](&v3, sel_description), -[NSTextAlternatives primaryString](self, "primaryString"), -[NSTextAlternatives alternativeStrings](self, "alternativeStrings")];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [(NSTextAlternatives *)self primaryString];
  v6 = [(NSTextAlternatives *)self identifier];
  v7 = [(NSTextAlternatives *)self alternativeStrings];
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeObject:v5 forKey:@"NSPrimary"];
    [a3 encodeObject:v7 forKey:@"NSAlternatives"];
    [a3 encodeObject:v6 forKey:@"NSIdentifier"];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLowConfidence];

    [a3 encodeObject:v8 forKey:@"NSLowConfidence"];
  }

  else
  {
    [a3 encodeObject:v5];
    [a3 encodeObject:v7];

    [a3 encodeObject:v6];
  }
}

- (NSTextAlternatives)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v11 = [a3 versionForClassName:@"NSTextAlternatives"];
    if (v11 != 1)
    {
      v13 = v11;
      v14 = _NSFullMethodName();
      NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v14, 1, v13);
      [(NSTextAlternatives *)self dealloc];
      return 0;
    }

    v5 = [a3 decodeObject];
    v8 = [a3 decodeObject];
    v9 = [a3 decodeObject];
    goto LABEL_6;
  }

  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSPrimary"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [a3 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, objc_opt_class(), 0), @"NSAlternatives"}];
  v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSIdentifier"];
  if (![a3 containsValueForKey:@"NSLowConfidence"])
  {
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  v10 = [objc_msgSend(a3 decodeObjectOfClass:objc_opt_class() forKey:{@"NSLowConfidence", "BOOLValue"}];
LABEL_7:

  return [(NSTextAlternatives *)self initWithPrimaryString:v5 alternativeStrings:v8 identifier:v9 isLowConfidence:v10];
}

- (void)noteSelectedAlternativeString:(NSString *)alternativeString
{
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{alternativeString, @"NSAlternativeString", 0}];

  [v5 postNotificationName:@"NSTextAlternativesSelectedAlternativeStringNotification" object:self userInfo:v6];
}

@end