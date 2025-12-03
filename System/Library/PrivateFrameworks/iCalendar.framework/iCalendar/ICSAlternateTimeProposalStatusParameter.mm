@interface ICSAlternateTimeProposalStatusParameter
+ (id)statusParameterFromCode:(int)code;
+ (id)statusParameterFromICSString:(id)string;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation ICSAlternateTimeProposalStatusParameter

+ (id)statusParameterFromICSString:(id)string
{
  v3 = [ICSAlternateTimeProposal statusFromICSString:string];
  if (v3)
  {
    v4 = [ICSAlternateTimeProposalStatusParameter statusParameterFromCode:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)statusParameterFromCode:(int)code
{
  v3 = [(ICSPredefinedValue *)[ICSAlternateTimeProposalStatusParameter alloc] initWithLong:code];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  optionsCopy = options;
  stringCopy = string;
  v7 = [ICSAlternateTimeProposal ICSStringFromAlternateTimeProposalStatus:[(ICSPredefinedValue *)self longValue]];
  iCalendarAppendStringToStringWithOptions(v7, stringCopy, optionsCopy);
}

@end