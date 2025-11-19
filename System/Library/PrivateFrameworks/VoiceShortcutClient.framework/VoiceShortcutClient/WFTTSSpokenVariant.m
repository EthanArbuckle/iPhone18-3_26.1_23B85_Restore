@interface WFTTSSpokenVariant
+ (id)parseAnnotationString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (WFTTSSpokenVariant)initWithDisplayString:(id)a3 spokenString:(id)a4;
@end

@implementation WFTTSSpokenVariant

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = WFTTSSpokenVariant;
  v3 = [(WFTTSSpokenVariant *)&v8 description];
  v4 = [(WFTTSSpokenVariant *)self displayString];
  v5 = [(WFTTSSpokenVariant *)self spokenString];
  v6 = [v3 stringByAppendingFormat:@": show %@, say %@", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WFTTSSpokenVariant *)self displayString];
    v6 = [v4 displayString];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(WFTTSSpokenVariant *)self spokenString];
      v8 = [v4 spokenString];
      v9 = [v7 isEqualToString:v8];
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

- (WFTTSSpokenVariant)initWithDisplayString:(id)a3 spokenString:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFTTSString.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"displayString"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"WFTTSString.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"spokenString"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = WFTTSSpokenVariant;
  v10 = [(WFTTSSpokenVariant *)&v19 init];
  if (v10)
  {
    v11 = [v7 copy];
    displayString = v10->_displayString;
    v10->_displayString = v11;

    v13 = [v9 copy];
    spokenString = v10->_spokenString;
    v10->_spokenString = v13;

    v15 = v10;
  }

  return v10;
}

+ (id)parseAnnotationString:(id)a3
{
  v4 = MEMORY[0x1E696AE88];
  v5 = a3;
  v6 = [[v4 alloc] initWithString:v5];

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
    v11 = [[a1 alloc] initWithDisplayString:v8 spokenString:v10];
    goto LABEL_11;
  }

LABEL_10:
  v11 = 0;
LABEL_11:

  return v11;
}

@end