@interface NSTextAlternatives
- (NSTextAlternatives)initWithCoder:(id)coder;
- (NSTextAlternatives)initWithPrimaryString:(NSString *)primaryString alternativeStrings:(NSArray *)alternativeStrings;
- (NSTextAlternatives)initWithPrimaryString:(id)string alternativeStrings:(id)strings identifier:(id)identifier isLowConfidence:(BOOL)confidence;
- (NSTextAlternatives)initWithPrimaryString:(id)string alternativeStrings:(id)strings isLowConfidence:(BOOL)confidence;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (NSTextAlternatives)initWithPrimaryString:(id)string alternativeStrings:(id)strings isLowConfidence:(BOOL)confidence
{
  result = [(NSTextAlternatives *)self initWithPrimaryString:string alternativeStrings:strings];
  if (result)
  {
    result->_isLowConfidence = confidence;
  }

  return result;
}

- (NSTextAlternatives)initWithPrimaryString:(id)string alternativeStrings:(id)strings identifier:(id)identifier isLowConfidence:(BOOL)confidence
{
  v7 = [(NSTextAlternatives *)self initWithPrimaryString:string alternativeStrings:strings isLowConfidence:confidence];
  if (v7)
  {
    v7->_internal = [identifier copy];
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

- (void)encodeWithCoder:(id)coder
{
  primaryString = [(NSTextAlternatives *)self primaryString];
  identifier = [(NSTextAlternatives *)self identifier];
  alternativeStrings = [(NSTextAlternatives *)self alternativeStrings];
  if ([coder allowsKeyedCoding])
  {
    [coder encodeObject:primaryString forKey:@"NSPrimary"];
    [coder encodeObject:alternativeStrings forKey:@"NSAlternatives"];
    [coder encodeObject:identifier forKey:@"NSIdentifier"];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLowConfidence];

    [coder encodeObject:v8 forKey:@"NSLowConfidence"];
  }

  else
  {
    [coder encodeObject:primaryString];
    [coder encodeObject:alternativeStrings];

    [coder encodeObject:identifier];
  }
}

- (NSTextAlternatives)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v11 = [coder versionForClassName:@"NSTextAlternatives"];
    if (v11 != 1)
    {
      v13 = v11;
      v14 = _NSFullMethodName();
      NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v14, 1, v13);
      [(NSTextAlternatives *)self dealloc];
      return 0;
    }

    decodeObject = [coder decodeObject];
    decodeObject2 = [coder decodeObject];
    decodeObject3 = [coder decodeObject];
    goto LABEL_6;
  }

  decodeObject = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSPrimary"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  decodeObject2 = [coder decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, objc_opt_class(), 0), @"NSAlternatives"}];
  decodeObject3 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSIdentifier"];
  if (![coder containsValueForKey:@"NSLowConfidence"])
  {
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  v10 = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NSLowConfidence", "BOOLValue"}];
LABEL_7:

  return [(NSTextAlternatives *)self initWithPrimaryString:decodeObject alternativeStrings:decodeObject2 identifier:decodeObject3 isLowConfidence:v10];
}

- (void)noteSelectedAlternativeString:(NSString *)alternativeString
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{alternativeString, @"NSAlternativeString", 0}];

  [defaultCenter postNotificationName:@"NSTextAlternativesSelectedAlternativeStringNotification" object:self userInfo:v6];
}

@end