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
  while ([self length])
  {
    v4 = [self rangeOfCharacterFromSet:v6];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    [self deleteCharactersInRange:{v4, v5}];
  }
}

- (uint64_t)_ICSStripControlChracters
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  if (!_ICSStripControlChracters_sCharSet)
  {
    controlCharacterSet = [self controlCharacterSet];
    v4 = _ICSStripControlChracters_sCharSet;
    _ICSStripControlChracters_sCharSet = controlCharacterSet;

    [_ICSStripControlChracters_sCharSet invert];
    v5 = _ICSStripControlChracters_sCharSet;
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    [v5 formUnionWithCharacterSet:whitespaceAndNewlineCharacterSet];

    [_ICSStripControlChracters_sCharSet invert];
  }

  objc_sync_exit(v2);

  v7 = _ICSStripControlChracters_sCharSet;

  return [self _ICSRemoveCharactersFromSet:v7];
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
  [self replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(self, "length")}];
  [self replaceOccurrencesOfString:@";" withString:@"\\;" options:0 range:{0, objc_msgSend(self, "length")}];
  [self replaceOccurrencesOfString:@" withString:" options:@"\\ range:{", 0, 0, objc_msgSend(self, "length")}];
  [self replaceOccurrencesOfString:@"\r\n" withString:@"\\n" options:0 range:{0, objc_msgSend(self, "length")}];
  [self replaceOccurrencesOfString:@"\n" withString:@"\\n" options:0 range:{0, objc_msgSend(self, "length")}];
  v2 = [self length];

  return [self replaceOccurrencesOfString:@"\r" withString:@"\\n" options:0 range:{0, v2}];
}

- (uint64_t)_ICSEscapeParameterValue
{
  [self replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(self, "length")}];
  [self replaceOccurrencesOfString:@";" withString:@"\\;" options:0 range:{0, objc_msgSend(self, "length")}];
  [self replaceOccurrencesOfString:@":" withString:@"\\:" options:0 range:{0, objc_msgSend(self, "length")}];
  [self replaceOccurrencesOfString:@" withString:" options:@"\\ range:{", 0, 0, objc_msgSend(self, "length")}];
  [self replaceOccurrencesOfString:@"\r\n" withString:@"\\n" options:0 range:{0, objc_msgSend(self, "length")}];
  [self replaceOccurrencesOfString:@"\n" withString:@"\\n" options:0 range:{0, objc_msgSend(self, "length")}];
  [self replaceOccurrencesOfString:@"\r" withString:@"\\n" options:0 range:{0, objc_msgSend(self, "length")}];
  v2 = [self length];

  return [self replaceOccurrencesOfString:@" withString:@"\ options:0 range:{0, v2}];
}

- (uint64_t)_ICSEscapeParameterQuotedValue
{
  [self replaceOccurrencesOfString:@"\n" withString:@"\\n" options:0 range:{0, objc_msgSend(self, "length")}];
  v2 = [self length];

  return [self replaceOccurrencesOfString:@"" withString:&stru_28841D818 options:0 range:{0, v2}];
}

@end