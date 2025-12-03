@interface NSString(SCROBrailleAdditions)
- (id)_illegalCharacterSet;
- (id)_legalWhiteSpaceSet;
- (uint64_t)_rangeIsolatingIllegalCharacters:()SCROBrailleAdditions forwards:;
- (uint64_t)rangeOfWordAfterWordAtIndex:()SCROBrailleAdditions;
- (uint64_t)rangeOfWordBeforeWordAtIndex:()SCROBrailleAdditions;
- (uint64_t)rangeOfWordContainingIndex:()SCROBrailleAdditions;
@end

@implementation NSString(SCROBrailleAdditions)

- (id)_illegalCharacterSet
{
  if (_illegalCharacterSet_onceToken != -1)
  {
    [NSString(SCROBrailleAdditions) _illegalCharacterSet];
  }

  v1 = _illegalCharacterSet___illegalCharacterSet;

  return v1;
}

- (id)_legalWhiteSpaceSet
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NSString_SCROBrailleAdditions___legalWhiteSpaceSet__block_invoke;
  block[3] = &unk_279B73DD0;
  block[4] = self;
  if (_legalWhiteSpaceSet_onceToken != -1)
  {
    dispatch_once(&_legalWhiteSpaceSet_onceToken, block);
  }

  return _legalWhiteSpaceSet___legalWhiteSpaceSet;
}

- (uint64_t)_rangeIsolatingIllegalCharacters:()SCROBrailleAdditions forwards:
{
  v6 = a3;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && a4 != 0)
  {
    _illegalCharacterSet = [self _illegalCharacterSet];
    if (a5)
    {
      v11 = 0;
    }

    else
    {
      v11 = 4;
    }

    v12 = [self rangeOfCharacterFromSet:_illegalCharacterSet options:v11 range:{v6, a4}];

    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v12;
    }
  }

  return v6;
}

- (uint64_t)rangeOfWordContainingIndex:()SCROBrailleAdditions
{
  v5 = [self length];
  if (v5)
  {
    _legalWhiteSpaceSet = [self _legalWhiteSpaceSet];
    v7 = [self rangeOfCharacterFromSet:_legalWhiteSpaceSet options:0 range:{a3, v5 - a3}];
    v8 = [self rangeOfCharacterFromSet:_legalWhiteSpaceSet options:4 range:{0, a3}];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8 + v9;
    }

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v5;
    }

    else
    {
      v11 = v7;
    }

    if (v7 == a3)
    {
      if (a3 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = a3;
      }

      v13 = v12 - 1;
      if (v10 >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v10;
      }

      if (a3 != v14 || v14 >= v5)
      {
        a3 = [self _rangeIsolatingIllegalCharacters:? forwards:?];
      }

      goto LABEL_38;
    }

    if (v10 == v11 && v10 >= 1)
    {
      a3 = v10 - 1;
LABEL_38:

      return a3;
    }

    _illegalCharacterSet = [self _illegalCharacterSet];
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    if (v11 != a3)
    {
      v18 = [self rangeOfCharacterFromSet:_illegalCharacterSet options:0 range:{a3, v11 - a3}];
      v17 = a3;
      if (v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v18 == a3)
        {
LABEL_37:

          goto LABEL_38;
        }

        v17 = a3;
      }
    }

    if (a3 == v10 || (v19 = [self rangeOfCharacterFromSet:_illegalCharacterSet options:4 range:{v10, a3 - v10}], v19 != 0x7FFFFFFFFFFFFFFFLL) && (v10 = v19 + v20, a3 == v19 + v20))
    {
      a3 = v17;
    }

    else if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      a3 = v17;
    }

    else
    {
      a3 = v10;
    }

    goto LABEL_37;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (uint64_t)rangeOfWordBeforeWordAtIndex:()SCROBrailleAdditions
{
  if (![(__CFString *)self length])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  Length = CFStringGetLength(self);
  _legalWhiteSpaceSet = [(__CFString *)self _legalWhiteSpaceSet];
  v7 = 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if ((a3 & 0x8000000000000000) == 0 && Length >= a3)
  {
    v9 = [(__CFString *)self rangeOfCharacterFromSet:_legalWhiteSpaceSet options:4 range:0, a3];
    v11 = v9 + v10;
    v12 = a3 - (v9 + v10);
    if (a3 == v9 + v10)
    {
      v12 = v10;
      v11 = v9;
    }

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = a3;
    }

    else
    {
      v7 = v12;
    }

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = v11;
    }
  }

  v13 = [(__CFString *)self _rangeIsolatingIllegalCharacters:v8 forwards:v7, 0];

  return v13;
}

- (uint64_t)rangeOfWordAfterWordAtIndex:()SCROBrailleAdditions
{
  if ([(__CFString *)self length]<= a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  Length = CFStringGetLength(self);
  _legalWhiteSpaceSet = [(__CFString *)self _legalWhiteSpaceSet];
  v7 = 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if ((a3 & 0x8000000000000000) == 0 && Length >= a3)
  {
    v9 = [(__CFString *)self rangeOfCharacterFromSet:_legalWhiteSpaceSet options:0 range:a3, [(__CFString *)self length:0x7FFFFFFFFFFFFFFFLL]- a3];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [(__CFString *)self length]- a3;
    }

    else if (v9 == a3)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9 - a3;
    }

    v8 = a3;
  }

  v12 = [(__CFString *)self _rangeIsolatingIllegalCharacters:v8 forwards:v7, 1];

  return v12;
}

@end