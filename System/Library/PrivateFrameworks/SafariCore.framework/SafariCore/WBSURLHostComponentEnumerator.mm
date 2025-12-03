@interface WBSURLHostComponentEnumerator
- (BOOL)_checkIsIPAddress;
- (WBSURLHostComponentEnumerator)initWithHost:(id)host options:(unint64_t)options;
- (_NSRange)_nextPointRangeInRange:(_NSRange)range didFindPeriod:(BOOL *)period;
- (id)nextObject;
- (in6_addr)ipv6Address;
- (void)clearAccumulatedDomains;
@end

@implementation WBSURLHostComponentEnumerator

- (void)clearAccumulatedDomains
{
  if ((self->_options & 1) == 0)
  {
    string = [MEMORY[0x1E696AD60] string];
    accumulatorString = self->_accumulatorString;
    self->_accumulatorString = string;
  }
}

- (id)nextObject
{
  p_nextSearchRange = &self->_nextSearchRange;
  length = self->_nextSearchRange.length;
  if (!length)
  {
    v14 = 0;
    v15 = -1;
    goto LABEL_42;
  }

  if (!self->_didCheckTopLevelDomain)
  {
    self->_didCheckTopLevelDomain = 1;
    safari_effectiveTopLevelDomainForHost = [(NSString *)self->_host safari_effectiveTopLevelDomainForHost];
    if (!safari_effectiveTopLevelDomainForHost)
    {
      if ([(WBSURLHostComponentEnumerator *)self _checkIsIPAddress])
      {
        p_nextSearchRange->length = 0;
        v14 = self->_host;
        goto LABEL_46;
      }

      length = p_nextSearchRange->length;
      v33 = 0;
      if (!length)
      {
        v24 = 0;
LABEL_35:
        v25 = 2;
        if (!v24)
        {
          v25 = -1;
        }

        self->_kind = v25;
        v26 = v24;
        v23 = v26;
        goto LABEL_38;
      }

      goto LABEL_4;
    }

    v14 = safari_effectiveTopLevelDomainForHost;
    self->_didFindTopLevelDomain = 1;
    self->_didBeginConsumingCharacters = 1;
    self->_numberOfAccummulatedComponents = 1;
    v17 = [(__CFString *)safari_effectiveTopLevelDomainForHost length];
    if ((self->_options & 4) == 0 && [(__CFString *)v14 hasSuffix:@"."])
    {
      v18 = [(__CFString *)v14 substringToIndex:v17 - 1];

      v14 = v18;
    }

    if ((self->_options & 1) == 0)
    {
      v19 = [(__CFString *)v14 mutableCopy];
      accumulatorString = self->_accumulatorString;
      self->_accumulatorString = v19;

      v21 = self->_length;
      if (v21 > v17 && [(NSString *)self->_host characterAtIndex:v21 + ~v17]== 46)
      {
        [(NSMutableString *)self->_accumulatorString insertString:@"." atIndex:0];
      }
    }

    p_nextSearchRange->length = self->_length - v17;
    v15 = 3;
LABEL_42:
    self->_kind = v15;
    goto LABEL_46;
  }

  v33 = 0;
LABEL_4:
  v31 = 0;
  while (1)
  {
    while (1)
    {
      v5 = length - self->_didBeginConsumingCharacters;
      location = p_nextSearchRange->location;
      v32 = 0;
      v7 = [(WBSURLHostComponentEnumerator *)self _nextPointRangeInRange:location didFindPeriod:v5, &v32];
      self->_didBeginConsumingCharacters = 1;
      p_nextSearchRange->length = v7 + v8;
      if (!v7 && !self->_didFindTopLevelDomain && !self->_didGenerateFullHighLevelDomain && !self->_numberOfAccummulatedComponents)
      {
        self->_kind = 2;
        if ((self->_options & 1) == 0)
        {
          v28 = self->_accumulatorString;
          v29 = [(NSString *)self->_host substringWithRange:location, v5];
          [(NSMutableString *)v28 insertString:v29 atIndex:0];

          v14 = [(NSMutableString *)self->_accumulatorString copy];
          v23 = v31;
          if (v32 != 1)
          {
            goto LABEL_45;
          }

LABEL_34:
          [(NSMutableString *)self->_accumulatorString insertString:@"." atIndex:0];
          goto LABEL_45;
        }

        v14 = [(NSString *)self->_host substringWithRange:location, v5];
        goto LABEL_44;
      }

      if (v5 + location != v7 + v8)
      {
        break;
      }

      self->_containsEmptyComponents = 1;
      self->_kind = 6;
      options = self->_options;
      if ((options & 2) != 0)
      {
        if ((options & 1) == 0)
        {
          v22 = self->_accumulatorString;
          v23 = v31;
          if (self->_numberOfAccummulatedComponents)
          {
            v14 = [(NSMutableString *)v22 copy];
            if (v32 != 1)
            {
              goto LABEL_45;
            }

            goto LABEL_34;
          }

          [(NSMutableString *)v22 insertString:@"." atIndex:0];
          v26 = [(NSMutableString *)self->_accumulatorString copy];
LABEL_38:
          v14 = v26;
          goto LABEL_45;
        }

        v14 = &stru_1F3064D08;
LABEL_44:
        v23 = v31;
        goto LABEL_45;
      }

      length = p_nextSearchRange->length;
      if (!length)
      {
        v24 = v31;
        goto LABEL_35;
      }
    }

    v10 = [(NSString *)self->_host substringWithRange:?];
    v11 = v10;
    v12 = self->_numberOfAccummulatedComponents + 1;
    self->_numberOfAccummulatedComponents = v12;
    if (self->_didGenerateFullHighLevelDomain)
    {
      break;
    }

    if (v12 == 2)
    {
      if (v31)
      {
        self->_isSpeculative = 1;
        self->_kind = 3;
        *p_nextSearchRange = v33;
        self->_numberOfAccummulatedComponents = 1;
        v23 = v31;
        v14 = v23;
      }

      else
      {
        if (self->_containsEmptyComponents)
        {
          self->_isSpeculative = 1;
        }

        self->_kind = 4;
        self->_didGenerateFullHighLevelDomain = 1;
        if (self->_options)
        {
          v14 = v10;
        }

        else
        {
          [(NSMutableString *)self->_accumulatorString insertString:v10 atIndex:0];
          v14 = [(NSMutableString *)self->_accumulatorString copy];
          if (v32 == 1)
          {
            [(NSMutableString *)self->_accumulatorString insertString:@"." atIndex:0];
          }
        }

        v23 = 0;
      }

      goto LABEL_69;
    }

    v33 = *p_nextSearchRange;
    if (self->_options)
    {
      v13 = v10;
      v24 = v10;
    }

    else
    {
      self->_kind = 3;
      v30 = v10;
      [(NSMutableString *)self->_accumulatorString insertString:v10 atIndex:0];
      v24 = [(NSMutableString *)self->_accumulatorString copy];

      if (v32 == 1)
      {
        [(NSMutableString *)self->_accumulatorString insertString:@"." atIndex:0];
      }

      v13 = v30;
    }

    length = p_nextSearchRange->length;
    v31 = v24;
    if (!length)
    {
      goto LABEL_35;
    }
  }

  self->_kind = 5;
  if (self->_options)
  {
    v14 = v10;
    v23 = v31;
  }

  else
  {
    [(NSMutableString *)self->_accumulatorString insertString:v10 atIndex:0];
    v14 = [(NSMutableString *)self->_accumulatorString copy];
    v23 = v31;
    if (v32 == 1)
    {
      [(NSMutableString *)self->_accumulatorString insertString:@"." atIndex:0];
    }
  }

LABEL_69:

LABEL_45:
LABEL_46:

  return v14;
}

- (WBSURLHostComponentEnumerator)initWithHost:(id)host options:(unint64_t)options
{
  hostCopy = host;
  v14.receiver = self;
  v14.super_class = WBSURLHostComponentEnumerator;
  v7 = [(WBSURLHostComponentEnumerator *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_options = options;
    v7->_kind = -1;
    v9 = [hostCopy copy];
    host = v8->_host;
    v8->_host = v9;

    v11 = [(NSString *)v8->_host length];
    v8->_length = v11;
    v8->_nextSearchRange.location = 0;
    v8->_nextSearchRange.length = v11;
    [(WBSURLHostComponentEnumerator *)v8 clearAccumulatedDomains];
    v12 = v8;
  }

  return v8;
}

- (BOOL)_checkIsIPAddress
{
  v3 = [(NSString *)self->_host characterAtIndex:0];
  if (v3 == 58 || v3 <= 0xFF && (*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x10000) != 0)
  {
    v4 = [(NSString *)self->_host cStringUsingEncoding:1];
    if (v4)
    {
      v5 = v4;
      v8 = 0;
      LODWORD(v4) = inet_pton(2, v4, &v8);
      if (v4 == 1)
      {
        self->_kind = 0;
        self->_ipv4Address = bswap32(v8);
      }

      else
      {
        v7 = 0;
        LOBYTE(v4) = inet_pton(30, v5, &v7) == 1;
        if (v4)
        {
          self->_kind = 1;
          self->_ipv6Address = v7;
        }
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (_NSRange)_nextPointRangeInRange:(_NSRange)range didFindPeriod:(BOOL *)period
{
  v5 = [(NSString *)self->_host rangeOfString:@"." options:4 range:range.location, range.length];
  v7 = v5 != 0x7FFFFFFFFFFFFFFFLL;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
    v6 = 0;
  }

  *period = v7;
  result.length = v6;
  result.location = v5;
  return result;
}

- (in6_addr)ipv6Address
{
  p_ipv6Address = &self->_ipv6Address;
  v3 = *self->_ipv6Address.__u6_addr8;
  v4 = *&p_ipv6Address->__u6_addr32[2];
  *&result.__u6_addr32[2] = v4;
  *result.__u6_addr8 = v3;
  return result;
}

@end