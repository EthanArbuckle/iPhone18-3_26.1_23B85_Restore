@interface NSHTTPURLResponse(ISAdditions)
- (double)expirationInterval;
- (double)itunes_expirationInterval;
- (uint64_t)_dateFromExpires;
- (uint64_t)_getCacheControlMaxAge:()ISAdditions;
- (uint64_t)_iTunesStore_valueForHTTPHeader:()ISAdditions;
- (uint64_t)itunes_expirationDate;
- (unint64_t)itunes_maxExpectedContentLength;
@end

@implementation NSHTTPURLResponse(ISAdditions)

- (uint64_t)_getCacheControlMaxAge:()ISAdditions
{
  v4 = [a1 _iTunesStore_valueForHTTPHeader:@"Cache-Control"];
  v5 = 0;
  if (!v4 || (v6 = v4, v7 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet], v8 = objc_msgSend(v6, "componentsSeparatedByString:", @","), (v9 = objc_msgSend(v8, "count")) == 0))
  {
    v11 = 0;
    if (!a3)
    {
      return v11 & 1;
    }

    goto LABEL_9;
  }

  v10 = v9;
  v11 = 0;
  for (i = 0; i != v10; ++i)
  {
    v13 = [objc_msgSend(objc_msgSend(v8 objectAtIndex:{i), "stringByTrimmingCharactersInSet:", v7), "componentsSeparatedByString:", @"="}];
    if ([v13 count] == 2 && objc_msgSend(objc_msgSend(v13, "objectAtIndex:", 0), "hasPrefix:", @"max-age"))
    {
      v11 = 1;
      [objc_msgSend(v13 objectAtIndex:{1), "doubleValue"}];
      v5 = v14;
    }
  }

  if (a3)
  {
LABEL_9:
    *a3 = v5;
  }

  return v11 & 1;
}

- (uint64_t)_dateFromExpires
{
  result = [a1 _iTunesStore_valueForHTTPHeader:@"Expires"];
  if (result)
  {
    v2 = result;
    v3 = MEMORY[0x277CBEAA8];

    return [v3 dateWithNaturalLanguageString:v2];
  }

  return result;
}

- (uint64_t)itunes_expirationDate
{
  [a1 itunes_expirationInterval];
  if (v1 <= 0.00000011920929)
  {
    return 0;
  }

  v2 = MEMORY[0x277CBEAA8];

  return [v2 dateWithTimeIntervalSinceNow:?];
}

- (double)expirationInterval
{
  v2 = [objc_msgSend(MEMORY[0x277D69B38] "sharediTunesStoreConfig")];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    [(NSHTTPURLResponse(ISAdditions) *)v2 expirationInterval];
  }

  v5 = -1.0;
  if ([a1 _getCacheControlMaxAge:&v5])
  {
    return v5;
  }

  v4 = [a1 _dateFromExpires];
  if (!v4)
  {
    return -1.0;
  }

  [v4 timeIntervalSinceNow];
  return result;
}

- (double)itunes_expirationInterval
{
  v4 = -1.0;
  if ([a1 _getCacheControlMaxAge:&v4])
  {
    return v4;
  }

  v3 = [a1 _dateFromExpires];
  if (!v3)
  {
    return -1.0;
  }

  [v3 timeIntervalSinceNow];
  return result;
}

- (uint64_t)_iTunesStore_valueForHTTPHeader:()ISAdditions
{
  v4 = [a1 allHeaderFields];
  result = [v4 objectForKey:a3];
  if (!result)
  {
    v6 = [a3 lowercaseString];

    return [v4 objectForKey:v6];
  }

  return result;
}

- (unint64_t)itunes_maxExpectedContentLength
{
  v2 = [a1 expectedContentLength];
  if ([a1 statusCode] != 206)
  {
    return v2;
  }

  v3 = [a1 _iTunesStore_valueForHTTPHeader:@"Content-Range"];
  if (!v3)
  {
    return v2;
  }

  v4 = [objc_msgSend(v3 "lastPathComponent")];

  return strtoull(v4, 0, 10);
}

@end