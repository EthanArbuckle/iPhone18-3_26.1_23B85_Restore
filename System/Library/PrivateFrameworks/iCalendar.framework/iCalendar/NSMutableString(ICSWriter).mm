@interface NSMutableString(ICSWriter)
- (id)controlCharacterSet;
- (uint64_t)_ICSEscapeParameterQuotedValue;
- (uint64_t)_ICSEscapeParameterValue;
- (uint64_t)_ICSEscapePropertyValue;
- (uint64_t)_ICSStripControlChracters;
- (void)_ICSRemoveCharactersFromSet:()ICSWriter;
@end

@implementation NSMutableString(ICSWriter)

- (void)_ICSRemoveCharactersFromSet:()ICSWriter
{
  v6 = a3;
  while ([a1 length])
  {
    v4 = [a1 rangeOfCharacterFromSet:v6];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    [a1 deleteCharactersInRange:{v4, v5}];
  }
}

- (uint64_t)_ICSStripControlChracters
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!_ICSStripControlChracters_sCharSet)
  {
    v3 = [a1 controlCharacterSet];
    v4 = _ICSStripControlChracters_sCharSet;
    _ICSStripControlChracters_sCharSet = v3;

    [_ICSStripControlChracters_sCharSet invert];
    v5 = _ICSStripControlChracters_sCharSet;
    v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    [v5 formUnionWithCharacterSet:v6];

    [_ICSStripControlChracters_sCharSet invert];
  }

  objc_sync_exit(v2);

  v7 = _ICSStripControlChracters_sCharSet;

  return [a1 _ICSRemoveCharactersFromSet:v7];
}

- (id)controlCharacterSet
{
  if (controlCharacterSet_onceToken != -1)
  {
    [NSMutableString(ICSWriter) controlCharacterSet];
  }

  v1 = controlCharacterSet_controlCharacterSet;

  return v1;
}

- (uint64_t)_ICSEscapePropertyValue
{
  [a1 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(a1, "length")}];
  [a1 replaceOccurrencesOfString:@";" withString:@"\\;" options:0 range:{0, objc_msgSend(a1, "length")}];
  [a1 replaceOccurrencesOfString:@" withString:" options:@"\\ range:{", 0, 0, objc_msgSend(a1, "length")}];
  [a1 replaceOccurrencesOfString:@"\r\n" withString:@"\\n" options:0 range:{0, objc_msgSend(a1, "length")}];
  [a1 replaceOccurrencesOfString:@"\n" withString:@"\\n" options:0 range:{0, objc_msgSend(a1, "length")}];
  v2 = [a1 length];

  return [a1 replaceOccurrencesOfString:@"\r" withString:@"\\n" options:0 range:{0, v2}];
}

- (uint64_t)_ICSEscapeParameterValue
{
  [a1 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(a1, "length")}];
  [a1 replaceOccurrencesOfString:@";" withString:@"\\;" options:0 range:{0, objc_msgSend(a1, "length")}];
  [a1 replaceOccurrencesOfString:@":" withString:@"\\:" options:0 range:{0, objc_msgSend(a1, "length")}];
  [a1 replaceOccurrencesOfString:@" withString:" options:@"\\ range:{", 0, 0, objc_msgSend(a1, "length")}];
  [a1 replaceOccurrencesOfString:@"\r\n" withString:@"\\n" options:0 range:{0, objc_msgSend(a1, "length")}];
  [a1 replaceOccurrencesOfString:@"\n" withString:@"\\n" options:0 range:{0, objc_msgSend(a1, "length")}];
  [a1 replaceOccurrencesOfString:@"\r" withString:@"\\n" options:0 range:{0, objc_msgSend(a1, "length")}];
  v2 = [a1 length];

  return [a1 replaceOccurrencesOfString:@" withString:@"\ options:0 range:{0, v2}];
}

- (uint64_t)_ICSEscapeParameterQuotedValue
{
  [a1 replaceOccurrencesOfString:@"\n" withString:@"\\n" options:0 range:{0, objc_msgSend(a1, "length")}];
  v2 = [a1 length];

  return [a1 replaceOccurrencesOfString:@"" withString:&stru_28841D818 options:0 range:{0, v2}];
}

@end