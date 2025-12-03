@interface WFTTSSpokenVariant
+ (id)parseAnnotationString:(id)string;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (WFTTSSpokenVariant)initWithDisplayString:(id)string spokenString:(id)spokenString;
@end

@implementation WFTTSSpokenVariant

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = WFTTSSpokenVariant;
  v3 = [(WFTTSSpokenVariant *)&v8 description];
  displayString = [(WFTTSSpokenVariant *)self displayString];
  spokenString = [(WFTTSSpokenVariant *)self spokenString];
  v6 = [v3 stringByAppendingFormat:@": show %@, say %@", displayString, spokenString];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    displayString = [(WFTTSSpokenVariant *)self displayString];
    displayString2 = [equalCopy displayString];
    if ([displayString isEqualToString:displayString2])
    {
      spokenString = [(WFTTSSpokenVariant *)self spokenString];
      spokenString2 = [equalCopy spokenString];
      v9 = [spokenString isEqualToString:spokenString2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (WFTTSSpokenVariant)initWithDisplayString:(id)string spokenString:(id)spokenString
{
  stringCopy = string;
  spokenStringCopy = spokenString;
  v9 = spokenStringCopy;
  if (stringCopy)
  {
    if (spokenStringCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTTSString.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"displayString"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFTTSString.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"spokenString"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = WFTTSSpokenVariant;
  v10 = [(WFTTSSpokenVariant *)&v19 init];
  if (v10)
  {
    v11 = [stringCopy copy];
    displayString = v10->_displayString;
    v10->_displayString = v11;

    v13 = [v9 copy];
    spokenString = v10->_spokenString;
    v10->_spokenString = v13;

    v15 = v10;
  }

  return v10;
}

+ (id)parseAnnotationString:(id)string
{
  v4 = MEMORY[0x1E696AE88];
  stringCopy = string;
  v6 = [[v4 alloc] initWithString:stringCopy];

  if (![v6 scanString:@"show:" intoString:0])
  {
    v8 = 0;
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v14 = 0;
  v7 = [v6 scanUpToString:@" say:" intoString:&v14];
  v8 = v14;
  if (!v7 || ![v6 scanString:@" say:" intoString:0])
  {
    goto LABEL_9;
  }

  v13 = 0;
  v9 = [v6 scanUpToString:@"" intoString:&v13];
  v10 = v13;
  if (v9 && [v6 scanString:@" intoString:0] && objc_msgSend(v6, "isAtEnd""))
  {
    v11 = [[self alloc] initWithDisplayString:v8 spokenString:v10];
    goto LABEL_11;
  }

LABEL_10:
  v11 = 0;
LABEL_11:

  return v11;
}

@end