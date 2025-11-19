@interface NSURLResponse(SafariCoreExtras)
- (id)safari_decodeJSONData:()SafariCoreExtras expectingRootClass:error:;
- (uint64_t)safari_hasAttachment;
- (uint64_t)safari_statusCodeGroup;
@end

@implementation NSURLResponse(SafariCoreExtras)

- (uint64_t)safari_hasAttachment
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 allHeaderFields];
  v3 = [v2 safari_stringForKey:@"Content-Disposition"];

  if (v3)
  {
    v4 = [v3 componentsSeparatedByString:@""];;
    if ([v4 count])
    {
      v5 = [v4 objectAtIndex:0];
      v6 = [v5 safari_stringByTrimmingWhitespace];

      v7 = [v6 safari_isCaseInsensitiveEqualToString:@"attachment"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)safari_statusCodeGroup
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 statusCode];
  v3 = 5;
  if ((v2 - 500) >= 0x64)
  {
    v3 = 0;
  }

  if ((v2 - 400) >= 0x64)
  {
    v4 = v3;
  }

  else
  {
    v4 = 4;
  }

  if ((v2 - 300) >= 0x64)
  {
    v5 = v4;
  }

  else
  {
    v5 = 3;
  }

  if ((v2 - 200) >= 0x64)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2;
  }

  if ((v2 - 100) >= 0x64)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

- (id)safari_decodeJSONData:()SafariCoreExtras expectingRootClass:error:
{
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a5)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A798];
      v13 = @"Response is not an HTTP response.";
LABEL_11:
      [v11 safari_errorWithDomain:v12 code:14 privacyPreservingDescription:v13];
      *a5 = v10 = 0;
      goto LABEL_17;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_17;
  }

  if ([a1 safari_statusCodeGroup] != 2)
  {
    if (a5)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A798];
      v13 = @"Received non-successful HTTP status code.";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:0 error:a5];
  if (!v9)
  {
    goto LABEL_15;
  }

  if (a4 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a5)
    {
      [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A798] code:14 privacyPreservingDescription:@"Root object is not the expected type."];
      *a5 = v10 = 0;
      goto LABEL_16;
    }

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v10 = v9;
LABEL_16:

LABEL_17:

  return v10;
}

@end