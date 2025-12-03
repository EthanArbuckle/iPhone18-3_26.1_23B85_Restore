@interface CLIOptionParser
+ (CLIOptionParser)optionParserWithArguments:(id)arguments forCommand:(id)command;
- (BOOL)enumerateOptionsWithBlock:(id)block;
- (id)dictionaryWithOptionsAndValues;
- (id)nextArgument;
- (void)finishArguments;
- (void)validateArguments;
@end

@implementation CLIOptionParser

+ (CLIOptionParser)optionParserWithArguments:(id)arguments forCommand:(id)command
{
  commandCopy = command;
  argumentsCopy = arguments;
  v7 = sub_1000106FC([CLIOptionParser alloc], argumentsCopy, commandCopy);

  return v7;
}

- (BOOL)enumerateOptionsWithBlock:(id)block
{
  blockCopy = block;
  if (self->_optind >= 2)
  {
    sub_100010BCC();
  }

  v18 = v20;
  while (1)
  {
    nextArgument = [(CLIOptionParser *)self nextArgument];
    if (([nextArgument hasPrefix:@"--"] & 1) == 0)
    {
      break;
    }

    if ([nextArgument isEqualToString:@"--"])
    {
      goto LABEL_16;
    }

    v6 = [nextArgument substringFromIndex:2];
    v7 = [(NSMutableDictionary *)self->_optionSet->_longAliasToOptionDict objectForKeyedSubscript:v6];
    parameterCount = [v7 parameterCount];
    if (!v7)
    {
LABEL_20:
      sub_10000DD20(self, nextArgument);
LABEL_21:
      sub_10000DD80(self, nextArgument);
      sub_10000E03C(v16, v17);
      return result;
    }

    if (parameterCount)
    {
      nextArgument2 = [(CLIOptionParser *)self nextArgument];
      if (!nextArgument2)
      {
        goto LABEL_21;
      }
    }

    else
    {
      nextArgument2 = 0;
    }

    shortName = [v7 shortName];
    longName = [v7 longName];
    blockCopy[2](blockCopy, shortName, longName, nextArgument2);

LABEL_15:
  }

  if ([nextArgument hasPrefix:@"-"])
  {
    v10 = [nextArgument length];
    v11 = v10 - 1;
    if (v10 == 1)
    {
      goto LABEL_20;
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v20[0] = sub_10000E03C;
    v20[1] = &unk_10001C7D0;
    v20[2] = self;
    v12 = nextArgument;
    v21 = v12;
    v22 = blockCopy;
    [v12 enumerateSubstringsInRange:1 options:v11 usingBlock:{2, v19}];

    goto LABEL_15;
  }

LABEL_16:
  if (self)
  {
    if (nextArgument)
    {
      --qword_100025180;
      --self->_optind;
    }
  }

  return 1;
}

- (id)dictionaryWithOptionsAndValues
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10000E1F0;
  v9 = &unk_10001C7F8;
  v10 = objc_opt_new();
  selfCopy = self;
  v3 = v10;
  [(CLIOptionParser *)self enumerateOptionsWithBlock:&v6];
  v4 = [v3 copy];

  return v4;
}

- (id)nextArgument
{
  optind = self->_optind;
  if (optind >= [(NSArray *)self->_arguments count])
  {
    v5 = 0;
  }

  else
  {
    ++qword_100025180;
    arguments = self->_arguments;
    ++self->_optind;
    v5 = [(NSArray *)arguments objectAtIndex:?];
  }

  return v5;
}

- (void)finishArguments
{
  nextArgument = [(CLIOptionParser *)self nextArgument];
  if (nextArgument)
  {
    sub_10000DD20(self, nextArgument);
    [(CLIOptionParser *)v4 validateArguments];
  }
}

- (void)validateArguments
{
  v3 = qword_100025180;
  [(CLIOptionParser *)self enumerateOptionsWithBlock:&stru_10001C838];
  qword_100025180 = v3;
  self->_optind = 1;
}

@end