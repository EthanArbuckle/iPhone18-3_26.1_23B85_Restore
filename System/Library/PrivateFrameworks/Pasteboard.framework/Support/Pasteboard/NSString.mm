@interface NSString
+ (void)safari_reverseEnumerateComponents:(id)components usingBlock:(id)block;
- (BOOL)_webkit_looksLikeAbsoluteURL;
- (NSString)safari_highLevelDomainFromHost;
- (_NSRange)_webkit_rangeOfURLScheme;
- (id)_webkit_stringByTrimmingWhitespace;
- (id)safari_possibleTopLevelDomainCorrectionForUserTypedString;
- (id)safari_stringByRemovingUnnecessaryCharactersFromUserTypedURLString;
- (id)safari_topLevelDomainUsingCFFromComponents:(id)components;
@end

@implementation NSString

- (id)safari_stringByRemovingUnnecessaryCharactersFromUserTypedURLString
{
  v3 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v4 = [(NSString *)self stringByTrimmingCharactersInSet:v3];

  v5 = [v4 mutableCopy];
  [v5 replaceOccurrencesOfString:@"\n" withString:&stru_100032D58 options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"\r" withString:&stru_100032D58 options:0 range:{0, objc_msgSend(v5, "length")}];
  if ([v5 length] && objc_msgSend(v5, "characterAtIndex:", 0) == 60)
  {
    [v5 deleteCharactersInRange:{0, 1}];
    v6 = [@"URL:" length];
    v7 = [v5 length];
    if (v7 >= [@"URL:" length] && !objc_msgSend(v5, "compare:options:range:", @"URL:", 1, 0, v6))
    {
      [v5 deleteCharactersInRange:{0, v6}];
    }

    v8 = [v5 length];
    if (v8)
    {
      v9 = v8 - 1;
      if ([v5 characterAtIndex:v8 - 1] == 62)
      {
        [v5 deleteCharactersInRange:{v9, 1}];
      }
    }
  }

  return v5;
}

- (id)safari_possibleTopLevelDomainCorrectionForUserTypedString
{
  if ((atomic_load_explicit(&qword_100039368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100039368))
  {
    qword_100039360 = [[NSDictionary alloc] initWithObjectsAndKeys:{@".cmo", @".com", @"c.om", @".com", @".xom", @".net", @".ent", @".net", @".nte", @".org", @".ogr", @".org", @".rog", @".info", @".ifno", @".info", @".ifnp", 0}];
    __cxa_guard_release(&qword_100039368);
  }

  v3 = [(NSString *)self hasSuffix:@"."];
  v4 = [(NSString *)self length];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = qword_100039360;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v4 - v3;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v12 = [(NSString *)self rangeOfString:v10 options:13 range:0, v7];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v11;
          v15 = [qword_100039360 objectForKeyedSubscript:v10];
          v13 = [(NSString *)self stringByReplacingCharactersInRange:v12 withString:v14, v15];

          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

+ (void)safari_reverseEnumerateComponents:(id)components usingBlock:(id)block
{
  componentsCopy = components;
  blockCopy = block;
  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v14 = componentsCopy;
  reverseObjectEnumerator = [componentsCopy reverseObjectEnumerator];
  v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      if (v10)
      {
        [v10 insertString:@"." atIndex:0];
      }

      else
      {
        v10 = [NSMutableString stringWithCapacity:16];
      }

      [v10 insertString:v13 atIndex:0];
      blockCopy[2](blockCopy, v10, v9, &v19);
      if (v19)
      {
        break;
      }

      ++v9;
      if (v8 == ++v12)
      {
        v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v20 count:16];
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
}

- (id)safari_topLevelDomainUsingCFFromComponents:(id)components
{
  componentsCopy = components;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000186E0;
  v13 = sub_1000186F0;
  v14 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000186F8;
  v8[3] = &unk_100031CB0;
  v8[4] = &v9;
  v8[5] = &v15;
  [objc_opt_class() safari_reverseEnumerateComponents:componentsCopy usingBlock:v8];
  if (v16[3])
  {
    v5 = [v10[5] length];
    if (v5 != [(NSString *)self length])
    {
      self = v10[5];
    }

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return selfCopy;
}

- (NSString)safari_highLevelDomainFromHost
{
  if ([(NSString *)self length])
  {
    if ([(NSString *)self _web_looksLikeIPAddress])
    {
      selfCopy = self;
    }

    else
    {
      v4 = [(NSString *)self componentsSeparatedByString:@"."];
      selfCopy = [(NSString *)self safari_topLevelDomainUsingCFFromComponents:v4];
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_NSRange)_webkit_rangeOfURLScheme
{
  v3 = [(NSString *)self rangeOfString:@":"];
  if (v3)
  {
    v4 = v3 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    goto LABEL_6;
  }

  v5 = v3;
  if (!qword_100039358)
  {
    v8 = [NSCharacterSet characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+.-"];
    invertedSet = [v8 invertedSet];
    v10 = qword_100039358;
    qword_100039358 = invertedSet;
  }

  v11 = [NSString rangeOfCharacterFromSet:"rangeOfCharacterFromSet:options:range:" options:? range:?];
  v6 = 0;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    v5 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (BOOL)_webkit_looksLikeAbsoluteURL
{
  _webkit_stringByTrimmingWhitespace = [(NSString *)self _webkit_stringByTrimmingWhitespace];
  v3 = [_webkit_stringByTrimmingWhitespace _webkit_rangeOfURLScheme] != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (id)_webkit_stringByTrimmingWhitespace
{
  v2 = [(NSString *)self mutableCopy];
  CFStringTrimWhitespace(v2);

  return v2;
}

@end