@interface NSString(LPInternal)
+ (void)_lp_reverseEnumerateComponents:()LPInternal usingBlock:;
- (BOOL)_lp_hasCaseInsensitiveSubstring:()LPInternal startingAt:;
- (id)_lp_highLevelDomainFromComponents:()LPInternal indexOfFirstHighLevelDomainComponent:indexOfFirstTopLevelDomainComponent:;
- (id)_lp_simplifiedUserVisibleURLStringWithSimplifications:()LPInternal forDisplayOnly:;
- (uint64_t)_lp_lengthOfDeepSubdomainsFromComponents:()LPInternal;
@end

@implementation NSString(LPInternal)

- (BOOL)_lp_hasCaseInsensitiveSubstring:()LPInternal startingAt:
{
  v6 = a3;
  if (v6)
  {
    v7 = [self rangeOfString:v6 options:9 range:{a4, objc_msgSend(self, "length") - a4}] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)_lp_reverseEnumerateComponents:()LPInternal usingBlock:
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v20 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = v5;
  reverseObjectEnumerator = [v5 reverseObjectEnumerator];
  v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = *v17;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      if (v10)
      {
        [v10 insertString:@"." atIndex:0];
      }

      else
      {
        v10 = [MEMORY[0x277CCAB68] stringWithCapacity:16];
      }

      [v10 insertString:v13 atIndex:0];
      v6[2](v6, v10, v9, &v20);
      if (v20)
      {
        break;
      }

      ++v9;
      if (v8 == ++v12)
      {
        v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_lp_highLevelDomainFromComponents:()LPInternal indexOfFirstHighLevelDomainComponent:indexOfFirstTopLevelDomainComponent:
{
  v8 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v9 = [v8 count];
  v10 = objc_opt_class();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __131__NSString_LPInternal___lp_highLevelDomainFromComponents_indexOfFirstHighLevelDomainComponent_indexOfFirstTopLevelDomainComponent___block_invoke;
  v14[3] = &unk_279E00CA0;
  v14[6] = a4;
  v14[7] = v9;
  v14[8] = a5;
  v14[4] = &v15;
  v14[5] = &v21;
  [v10 _lp_reverseEnumerateComponents:v8 usingBlock:v14];
  if (v22[3])
  {
    v11 = [v16[5] length];
    if (v11 != [self length])
    {
      self = v16[5];
    }

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return selfCopy;
}

- (uint64_t)_lp_lengthOfDeepSubdomainsFromComponents:()LPInternal
{
  v4 = a3;
  v12 = 0;
  v5 = [self _lp_highLevelDomainFromComponents:v4 indexOfFirstHighLevelDomainComponent:&v12 indexOfFirstTopLevelDomainComponent:0];

  v6 = 0;
  if (v5 && v12 >= 2)
  {
    v7 = 0;
    v6 = 0;
    v8 = 1;
    do
    {
      v9 = [v4 objectAtIndexedSubscript:v7];
      v6 += [v9 length] + 1;

      v7 = v8;
    }

    while (v12 - 1 > v8++);
  }

  return v6;
}

- (id)_lp_simplifiedUserVisibleURLStringWithSimplifications:()LPInternal forDisplayOnly:
{
  selfCopy = self;
  v5 = [selfCopy copy];
  v7 = [v5 rangeOfString:@"://" options:2];
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  v9 = v6;
  {
    v54 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+-."];
    hostAndPortRangeFromUserTypedString(NSString *)::nonSchemeCharacters = [v54 invertedSet];
  }

  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if ([v5 rangeOfCharacterFromSet:hostAndPortRangeFromUserTypedString(NSString *)::nonSchemeCharacters options:2 range:{0, v7}] != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_14:
    v17 = 0;
  }

  else
  {
    v10 = [v5 length];
    {
      v11 = hostAndPortRangeFromUserTypedString(NSString *)::hostTerminators;
    }

    else
    {
      v11 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"/?#"];
      hostAndPortRangeFromUserTypedString(NSString *)::hostTerminators = v11;
    }

    v12 = v7 + v9;
    v13 = [v5 rangeOfCharacterFromSet:v11 options:2 range:{v12, v10 - v12}];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v10;
    }

    else
    {
      v14 = v13;
    }

    v15 = [v5 rangeOfString:@"@" options:6 range:{v12, v14 - v12}];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v12;
    }

    else
    {
      v8 = v15 + v16;
    }

    v17 = v14 - v8;
  }

  v18 = [v5 _lp_hasCaseInsensitivePrefix:@"http://"];
  v20 = [v5 _lp_hasCaseInsensitivePrefix:@"https://"];
  v21 = v18 | v20;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((((a3 & 0x20) != 0) & (v18 | v20)) == 1)
    {
      v22 = [selfCopy rangeOfString:@":" options:4 range:{v8, v17}];
      v23 = v22;
      if (v22 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v24 = v8 + v17 - v22;
        if ([selfCopy rangeOfString:@"]" options:0 range:{v22, v24}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = [v5 stringByReplacingCharactersInRange:v23 withString:{v8 + v17 - v23, &stru_28803EAC8}];

          v17 -= v24;
          v5 = v25;
        }
      }
    }

    if ((((a3 & 0x10) != 0) & (v18 | v20)) == 1)
    {
      v26 = [v5 substringToIndex:v17 + v8];

      v5 = v26;
    }

    if ((a3 & 0x400) != 0)
    {
      v19 = [v5 rangeOfString:@"#"];
      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = [v5 substringToIndex:v19];

        v5 = v27;
      }
    }

    if ((a3 & 4) != 0)
    {
      v28 = [v5 rangeOfString:@"#"];
      if (v28 == [v5 length] - 1)
      {
        v29 = [v5 substringToIndex:{objc_msgSend(v5, "length") - 1}];

        v5 = v29;
      }

      v5 = v5;
      v30 = [v5 rangeOfString:@"#"];
      v31 = v5;
      if (v30 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = [v5 substringToIndex:v30];

        v31 = v32;
      }

      if ([v31 hasSuffix:@"?"])
      {
        v33 = [v5 stringByReplacingCharactersInRange:objc_msgSend(v31 withString:{"length") - 1, 1, &stru_28803EAC8}];

        v5 = v33;
      }

      v34 = [v5 substringFromIndex:v17 + v8];
      if (([v34 hasPrefix:@"/#"] & 1) != 0 || (objc_msgSend(v34, "hasPrefix:", @"/?") & 1) != 0 || objc_msgSend(v34, "isEqualToString:", @"/"))
      {
        v35 = [v5 stringByReplacingCharactersInRange:v17 + v8 withString:{1, &stru_28803EAC8}];

        v5 = v35;
      }
    }
  }

  v36 = ((a3 & 2) != 0) & v20;
  v37 = 8;
  if (!v36)
  {
    v37 = 0;
  }

  if (a3 & v18)
  {
    v38 = 1;
  }

  else
  {
    v38 = v36;
  }

  if (a3 & v18)
  {
    v39 = 7;
  }

  else
  {
    v39 = v37;
  }

  v40 = (v8 != 0x7FFFFFFFFFFFFFFFLL) & (a3 >> 7) & *&v21;
  if (v40)
  {
    v41 = v8;
  }

  else
  {
    v41 = v39;
  }

  if (v40 == 1 && (v38 & 1) == 0)
  {
    v42 = [v5 rangeOfString:@"://"];
    v19 = v42 + v43;
    if (v8 == v42 + v43)
    {
      v41 = 0;
    }

    else
    {
      v44 = [v5 stringByReplacingCharactersInRange:v19 withString:{v8 - (v42 + v43), &stru_28803EAC8}];

      v41 = 0;
      v5 = v44;
    }
  }

  if ((a3 & 0x348) != 0 && ((v8 != 0x7FFFFFFFFFFFFFFFLL) & v21) != 0)
  {
    v45 = [v5 substringWithRange:{v8, v17}];
    v46 = [v45 componentsSeparatedByString:@"."];
    if ((a3 & 0x100) != 0)
    {
      v47 = [v45 _lp_lengthOfDeepSubdomainsFromComponents:v46];
      if ((a3 & 8) == 0)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v47 = 0;
      if ((a3 & 8) == 0)
      {
        goto LABEL_61;
      }
    }

    if ([v45 _lp_hasCaseInsensitiveSubstring:@"www." startingAt:v47])
    {
      v47 += 4;
LABEL_67:
      if (v47)
      {
        _lp_highLevelDomainFromHost = [v45 _lp_highLevelDomainFromHost];
        v49 = [v45 isEqualToString:_lp_highLevelDomainFromHost];

        if ((v49 & 1) == 0)
        {
          if (v41 && v8 == v41)
          {
            v41 = v47 + v8;
          }

          else
          {
            v50 = [v5 stringByReplacingCharactersInRange:v8 withString:{v47, &stru_28803EAC8}];

            v5 = v50;
          }
        }
      }

      goto LABEL_74;
    }

LABEL_61:
    if ((a3 & 0x40) != 0 && [v45 _lp_hasCaseInsensitiveSubstring:@"m." startingAt:v47])
    {
      v47 += 2;
    }

    else if ((a3 & 0x200) != 0 && [v45 _lp_hasCaseInsensitiveSubstring:@"mobile." startingAt:v47])
    {
      v47 += 7;
    }

    goto LABEL_67;
  }

LABEL_74:
  if (v41)
  {
    v51 = [v5 substringFromIndex:v41];

    v5 = v51;
  }

  if (a4)
  {
    _lp_stringForcingLeftToRightDirection = [v5 _lp_stringForcingLeftToRightDirection];

    v5 = _lp_stringForcingLeftToRightDirection;
  }

  return v5;
}

@end