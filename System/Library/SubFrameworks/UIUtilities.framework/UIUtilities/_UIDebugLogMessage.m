@interface _UIDebugLogMessage
+ (id)messageWithFormat:(id)a3;
+ (id)messageWithNewline;
+ (id)messageWithPrefix:(id)a3 string:(id)a4;
+ (id)messageWithString:(id)a3;
+ (id)messageWithStyle:(unint64_t)a3 string:(id)a4;
- (_UIDebugLogMessage)initWithString:(id)a3;
@end

@implementation _UIDebugLogMessage

- (_UIDebugLogMessage)initWithString:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"_UIDebugLogTree.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"string != nil"}];
  }

  v11.receiver = self;
  v11.super_class = _UIDebugLogMessage;
  v7 = [(_UIDebugLogMessage *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_string, a3);
  }

  return v8;
}

+ (id)messageWithNewline
{
  v2 = [[a1 alloc] initWithString:&stru_28865BF70];

  return v2;
}

+ (id)messageWithString:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"_UIDebugLogTree.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"string"}];
  }

  v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

  v7 = [[a1 alloc] initWithString:v6];

  return v7;
}

+ (id)messageWithFormat:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"_UIDebugLogTree.m" lineNumber:91 description:{@"Invalid parameter not satisfying: %@", @"format"}];
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v5 arguments:&v11];
  v7 = [a1 messageWithString:v6];

  return v7;
}

+ (id)messageWithPrefix:(id)a3 string:(id)a4
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
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"_UIDebugLogTree.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"prefix"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:a1 file:@"_UIDebugLogTree.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"string"}];

LABEL_3:
  v10 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

  if ([v10 length])
  {
    v11 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

    v12 = [a1 alloc];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@) %@", v10, v11];
    v14 = [v12 initWithString:v13];

    v9 = v11;
  }

  else
  {
    v14 = [a1 messageWithString:v9];
  }

  return v14;
}

+ (id)messageWithStyle:(unint64_t)a3 string:(id)a4
{
  v6 = [a4 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  v7 = v6;
  v8 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_14;
      }

      v9 = [v6 uppercaseString];
    }

    else
    {
      v9 = v6;
    }
  }

  else
  {
    switch(a3)
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
    v9 = ;
  }

  v8 = v9;
LABEL_14:
  v10 = [[a1 alloc] initWithString:v8];

  return v10;
}

@end