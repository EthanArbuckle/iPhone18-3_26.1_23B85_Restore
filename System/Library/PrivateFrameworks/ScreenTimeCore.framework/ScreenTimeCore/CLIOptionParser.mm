@interface CLIOptionParser
+ (CLIOptionParser)optionParserWithArguments:(id)a3 forCommand:(id)a4;
- (BOOL)enumerateOptionsWithBlock:(id)a3;
- (id)dictionaryWithOptionsAndValues;
- (id)nextArgument;
- (void)finishArguments;
- (void)validateArguments;
@end

@implementation CLIOptionParser

+ (CLIOptionParser)optionParserWithArguments:(id)a3 forCommand:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = sub_100007D14([CLIOptionParser alloc], v6, v5);

  return v7;
}

- (BOOL)enumerateOptionsWithBlock:(id)a3
{
  v4 = a3;
  if (self->_optind >= 2)
  {
    sub_10000820C();
  }

  v18 = v20;
  while (1)
  {
    v5 = [(CLIOptionParser *)self nextArgument];
    if (([v5 hasPrefix:@"--"] & 1) == 0)
    {
      break;
    }

    if ([v5 isEqualToString:@"--"])
    {
      goto LABEL_16;
    }

    v6 = [v5 substringFromIndex:2];
    v7 = [(NSMutableDictionary *)self->_optionSet->_longAliasToOptionDict objectForKeyedSubscript:v6];
    v8 = [v7 parameterCount];
    if (!v7)
    {
LABEL_20:
      sub_10000568C(self, v5);
LABEL_21:
      sub_1000056EC(self, v5);
      sub_1000059A8(v16, v17);
      return result;
    }

    if (v8)
    {
      v9 = [(CLIOptionParser *)self nextArgument];
      if (!v9)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v9 = 0;
    }

    v13 = [v7 shortName];
    v14 = [v7 longName];
    v4[2](v4, v13, v14, v9);

LABEL_15:
  }

  if ([v5 hasPrefix:@"-"])
  {
    v10 = [v5 length];
    v11 = v10 - 1;
    if (v10 == 1)
    {
      goto LABEL_20;
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v20[0] = sub_1000059A8;
    v20[1] = &unk_100010468;
    v20[2] = self;
    v12 = v5;
    v21 = v12;
    v22 = v4;
    [v12 enumerateSubstringsInRange:1 options:v11 usingBlock:{2, v19}];

    goto LABEL_15;
  }

LABEL_16:
  if (self)
  {
    if (v5)
    {
      --qword_1000157C0;
      --self->_optind;
    }
  }

  return 1;
}

- (id)dictionaryWithOptionsAndValues
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100005B5C;
  v9 = &unk_100010490;
  v10 = objc_opt_new();
  v11 = self;
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
    ++qword_1000157C0;
    arguments = self->_arguments;
    ++self->_optind;
    v5 = [(NSArray *)arguments objectAtIndex:?];
  }

  return v5;
}

- (void)finishArguments
{
  v3 = [(CLIOptionParser *)self nextArgument];
  if (v3)
  {
    sub_10000568C(self, v3);
    [(CLIOptionParser *)v4 validateArguments];
  }
}

- (void)validateArguments
{
  v3 = qword_1000157C0;
  [(CLIOptionParser *)self enumerateOptionsWithBlock:&stru_1000104B0];
  qword_1000157C0 = v3;
  self->_optind = 1;
}

@end