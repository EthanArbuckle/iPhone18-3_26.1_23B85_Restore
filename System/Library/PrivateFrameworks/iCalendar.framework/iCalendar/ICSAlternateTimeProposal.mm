@interface ICSAlternateTimeProposal
+ (id)ICSStringFromAlternateTimeProposalStatus:(int)status;
+ (id)_parseICSString:(id)string;
+ (id)alternateTimeProposalFromICSCString:(id)string;
+ (int)statusFromICSString:(id)string;
- (int)status;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
- (void)setStatus:(int)status;
@end

@implementation ICSAlternateTimeProposal

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  stringCopy = string;
  v11 = stringCopy;
  if ((options & 0x10) != 0)
  {
    if ([(ICSProperty *)self shouldObscureValue])
    {
      options |= 0x20uLL;
    }

    v7 = v11;
  }

  else
  {
    v7 = stringCopy;
  }

  [v7 appendString:@""];
  startDate = [(ICSAlternateTimeProposal *)self startDate];

  if (startDate)
  {
    [v11 appendString:@"DTSTART"];
    [v11 appendString:@":"];
    startDate2 = [(ICSAlternateTimeProposal *)self startDate];
    [startDate2 _ICSStringWithOptions:options appendingToString:v11];

    [v11 appendString:@";"];
    [v11 appendString:@"STATUS"];
    [v11 appendString:@":"];
    v10 = [ICSAlternateTimeProposalStatusParameter statusParameterFromCode:[(ICSAlternateTimeProposal *)self status]];
    [v10 _ICSStringWithOptions:options appendingToString:v11];
    [v11 appendString:@";"];
  }

  [v11 appendString:@""];
}

+ (id)ICSStringFromAlternateTimeProposalStatus:(int)status
{
  if ((status - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_27A64C2F8[status - 1];
  }
}

+ (int)statusFromICSString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"NEEDS-ACTION"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"ACCEPTED"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"DECLINED"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setStatus:(int)status
{
  if (status)
  {
    v4 = [ICSAlternateTimeProposalStatusParameter statusParameterFromCode:?];
    [(ICSProperty *)self setParameterValue:v4 forName:@"STATUS"];
  }

  else
  {

    [(ICSProperty *)self removeParameterValueForName:@"STATUS"];
  }
}

- (int)status
{
  v3 = [(ICSProperty *)self parameterValueForName:@"STATUS"];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICSProperty *)self parameterValueForName:@"STATUS"];
  longValue = [v4 longValue];

  return longValue;
}

+ (id)alternateTimeProposalFromICSCString:(id)string
{
  if (string)
  {
    v3 = [ICSAlternateTimeProposal _parseICSString:?];
    v4 = [v3 objectForKey:@"DTSTART"];
    v5 = [v3 objectForKey:@"STATUS"];
    if (v4)
    {
      v6 = objc_opt_new();
      v7 = [ICSDateValue dateFromICSString:v4];
      [v6 setStartDate:v7];
      if (v5)
      {
        [v6 setStatus:{+[ICSAlternateTimeProposal statusFromICSString:](ICSAlternateTimeProposal, "statusFromICSString:", v5)}];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_parseICSString:(id)string
{
  v21 = *MEMORY[0x277D85DE8];
  if (string)
  {
    v3 = [string componentsSeparatedByString:@""];;
    v4 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v16 + 1) + 8 * i) componentsSeparatedByString:{@":", v16}];
          if ([v10 count] == 2)
          {
            v11 = [v10 objectAtIndexedSubscript:1];
            v12 = [v10 objectAtIndexedSubscript:0];
            [v4 setObject:v11 forKeyedSubscript:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v13 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v4];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end