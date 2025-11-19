@interface ICSAlternateTimeProposal
+ (id)ICSStringFromAlternateTimeProposalStatus:(int)a3;
+ (id)_parseICSString:(id)a3;
+ (id)alternateTimeProposalFromICSCString:(id)a3;
+ (int)statusFromICSString:(id)a3;
- (int)status;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
- (void)setStatus:(int)a3;
@end

@implementation ICSAlternateTimeProposal

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v6 = a4;
  v11 = v6;
  if ((a3 & 0x10) != 0)
  {
    if ([(ICSProperty *)self shouldObscureValue])
    {
      a3 |= 0x20uLL;
    }

    v7 = v11;
  }

  else
  {
    v7 = v6;
  }

  [v7 appendString:@""];
  v8 = [(ICSAlternateTimeProposal *)self startDate];

  if (v8)
  {
    [v11 appendString:@"DTSTART"];
    [v11 appendString:@":"];
    v9 = [(ICSAlternateTimeProposal *)self startDate];
    [v9 _ICSStringWithOptions:a3 appendingToString:v11];

    [v11 appendString:@";"];
    [v11 appendString:@"STATUS"];
    [v11 appendString:@":"];
    v10 = [ICSAlternateTimeProposalStatusParameter statusParameterFromCode:[(ICSAlternateTimeProposal *)self status]];
    [v10 _ICSStringWithOptions:a3 appendingToString:v11];
    [v11 appendString:@";"];
  }

  [v11 appendString:@""];
}

+ (id)ICSStringFromAlternateTimeProposalStatus:(int)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_27A64C2F8[a3 - 1];
  }
}

+ (int)statusFromICSString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NEEDS-ACTION"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ACCEPTED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DECLINED"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setStatus:(int)a3
{
  if (a3)
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
  v5 = [v4 longValue];

  return v5;
}

+ (id)alternateTimeProposalFromICSCString:(id)a3
{
  if (a3)
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

+ (id)_parseICSString:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = [a3 componentsSeparatedByString:@""];;
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