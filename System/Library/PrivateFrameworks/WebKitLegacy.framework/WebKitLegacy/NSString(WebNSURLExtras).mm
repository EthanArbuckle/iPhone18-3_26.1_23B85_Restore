@interface NSString(WebNSURLExtras)
- (WTF)_web_decodeHostName;
- (WTF)_web_encodeHostName;
- (id)_webkit_rangeOfURLScheme;
- (id)_webkit_stringByReplacingValidPercentEscapes;
- (uint64_t)_webkit_rangeOfURLScheme;
- (uint64_t)_webkit_scriptIfJavaScriptURL;
@end

@implementation NSString(WebNSURLExtras)

- (id)_webkit_stringByReplacingValidPercentEscapes
{
  v1 = MEMORY[0x1CCA63A40](&v11, self);
  PAL::UTF8Encoding(v1);
  PAL::decodeURLEscapeSequences();
  v2 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    MEMORY[0x1CCA63450](&v13, v2);
    if (atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v2, v3);
    }
  }

  else
  {
    v13 = &stru_1F472E7E8;
    v10 = &stru_1F472E7E8;
  }

  v4 = v13;
  v13 = 0;
  if (v4)
  {
    v5 = v4;
    v6 = v13;
    v13 = 0;
    if (v6)
    {
    }
  }

  v7 = v12;
  v12 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v3);
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v3);
  }

  return v4;
}

- (uint64_t)_webkit_scriptIfJavaScriptURL
{
  if (![self _webkit_isJavaScriptURL])
  {
    return 0;
  }

  v2 = [self substringFromIndex:11];

  return [v2 _webkit_stringByReplacingValidPercentEscapes];
}

- (WTF)_web_decodeHostName
{
  selfCopy = self;
  v3 = WTF::decodeHostName(self, a2);
  if (v3)
  {
    selfCopy = v3;
    v4 = v3;
    v5 = selfCopy;
  }

  return selfCopy;
}

- (WTF)_web_encodeHostName
{
  selfCopy = self;
  v3 = WTF::encodeHostName(self, a2);
  if (v3)
  {
    selfCopy = v3;
    v4 = v3;
    v5 = selfCopy;
  }

  return selfCopy;
}

- (uint64_t)_webkit_rangeOfURLScheme
{
  v2 = [self rangeOfString:@":"];
  if (v2)
  {
    v3 = v2 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = v2;
  if (_MergedGlobals_22 == 1)
  {
    v6 = qword_1ED6A6290;
  }

  else
  {
    [NSString(WebNSURLExtras) _webkit_rangeOfURLScheme]::$_0::operator()(&v8);
    v6 = v8;
    qword_1ED6A6290 = v8;
    _MergedGlobals_22 = 1;
  }

  v7 = [self rangeOfCharacterFromSet:v6 options:0 range:{0, v5}];
  result = 0;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)_webkit_rangeOfURLScheme
{
  result = [objc_msgSend(MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+.-", "invertedSet"}];
  *self = result;
  if (result)
  {

    return result;
  }

  return result;
}

@end