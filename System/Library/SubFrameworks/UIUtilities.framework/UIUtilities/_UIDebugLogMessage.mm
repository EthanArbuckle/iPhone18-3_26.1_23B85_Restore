@interface _UIDebugLogMessage
+ (id)messageWithFormat:(id)format;
+ (id)messageWithNewline;
+ (id)messageWithPrefix:(id)prefix string:(id)string;
+ (id)messageWithString:(id)string;
+ (id)messageWithStyle:(unint64_t)style string:(id)string;
- (_UIDebugLogMessage)initWithString:(id)string;
@end

@implementation _UIDebugLogMessage

- (_UIDebugLogMessage)initWithString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"string != nil"}];
  }

  v11.receiver = self;
  v11.super_class = _UIDebugLogMessage;
  v7 = [(_UIDebugLogMessage *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_string, string);
  }

  return v8;
}

+ (id)messageWithNewline
{
  v2 = [[self alloc] initWithString:&stru_28865BF70];

  return v2;
}

+ (id)messageWithString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"string"}];
  }

  v6 = [stringCopy stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

  v7 = [[self alloc] initWithString:v6];

  return v7;
}

+ (id)messageWithFormat:(id)format
{
  formatCopy = format;
  if (!formatCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"format"}];
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:formatCopy arguments:&v11];
  v7 = [self messageWithString:v6];

  return v7;
}

+ (id)messageWithPrefix:(id)prefix string:(id)string
{
  prefixCopy = prefix;
  stringCopy = string;
  v9 = stringCopy;
  if (prefixCopy)
  {
    if (stringCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"prefix"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"string"}];

LABEL_3:
  v10 = [prefixCopy stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

  if ([v10 length])
  {
    v11 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

    v12 = [self alloc];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@) %@", v10, v11];
    v14 = [v12 initWithString:v13];

    v9 = v11;
  }

  else
  {
    v14 = [self messageWithString:v9];
  }

  return v14;
}

+ (id)messageWithStyle:(unint64_t)style string:(id)string
{
  v6 = [string stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  v7 = v6;
  v8 = 0;
  if (style <= 1)
  {
    if (style)
    {
      if (style != 1)
      {
        goto LABEL_14;
      }

      uppercaseString = [v6 uppercaseString];
    }

    else
    {
      uppercaseString = v6;
    }
  }

  else
  {
    switch(style)
    {
      case 2uLL:
        [MEMORY[0x277CCACA8] stringWithFormat:@"(info) %@", v6];
        break;
      case 3uLL:
        [MEMORY[0x277CCACA8] stringWithFormat:@"(warning) %@", v6];
        break;
      case 4uLL:
        [MEMORY[0x277CCACA8] stringWithFormat:@"(error) %@", v6];
        break;
      default:
        goto LABEL_14;
    }
    uppercaseString = ;
  }

  v8 = uppercaseString;
LABEL_14:
  v10 = [[self alloc] initWithString:v8];

  return v10;
}

@end