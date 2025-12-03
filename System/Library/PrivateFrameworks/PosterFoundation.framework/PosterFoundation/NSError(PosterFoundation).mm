@interface NSError(PosterFoundation)
+ (id)pf_errorWithCode:()PosterFoundation;
+ (id)pf_errorWithCode:()PosterFoundation underlyingError:userInfo:;
- (id)pf_description;
- (id)pf_jetsamReason;
- (uint64_t)pf_isFileNotFoundError;
@end

@implementation NSError(PosterFoundation)

+ (id)pf_errorWithCode:()PosterFoundation
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E696A588];
  if ((a3 - 1) > 2)
  {
    v5 = @"Unknown error.";
  }

  else
  {
    v5 = *(&off_1E8189F38 + a3 - 1);
  }

  v11[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [self pf_errorWithCode:a3 underlyingError:0 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)pf_errorWithCode:()PosterFoundation underlyingError:userInfo:
{
  v8 = a4;
  v9 = [a5 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  if (v8)
  {
    [v12 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  if ((a3 - 1) > 2)
  {
    v13 = @"Unknown error.";
  }

  else
  {
    v13 = *(&off_1E8189F38 + a3 - 1);
  }

  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696A588]];
  v14 = [self errorWithDomain:@"com.apple.PosterFoundation" code:a3 userInfo:v12];

  return v14;
}

- (uint64_t)pf_isFileNotFoundError
{
  domain = [self domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    v3 = (([self code] - 4) & 0xFFFFFFFFFFFFFEFFLL) == 0;
  }

  else
  {
    if (![domain isEqualToString:*MEMORY[0x1E696A798]])
    {
      v4 = 0;
      goto LABEL_9;
    }

    v3 = [self code] == 2;
  }

  v4 = v3;
LABEL_9:

  return v4;
}

- (id)pf_jetsamReason
{
  selfCopy = self;
  if (selfCopy)
  {
    v2 = *MEMORY[0x1E696AA08];
    while (1)
    {
      domain = [selfCopy domain];
      v4 = [domain isEqualToString:@"jetsam"];

      userInfo = [selfCopy userInfo];
      v6 = userInfo;
      if (v4)
      {
        break;
      }

      v7 = [userInfo objectForKey:v2];
      v8 = objc_opt_class();
      v9 = v7;
      if (v8)
      {
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      selfCopy = v11;
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    v12 = [userInfo objectForKey:*MEMORY[0x1E696A588]];
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  return v12;
}

- (id)pf_description
{
  localizedDescription = [self localizedDescription];
  if (localizedDescription)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{localizedDescription: %@", localizedDescription];
    v4 = [0 stringByAppendingString:v3];
  }

  else
  {
    v4 = 0;
  }

  localizedFailureReason = [self localizedFailureReason];
  userInfo = [self userInfo];
  v7 = userInfo;
  if (localizedFailureReason)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@", localizedFailureReason: %@}", localizedFailureReason];
  }

  else
  {
    if (!userInfo)
    {
      goto LABEL_9;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@", userInfo: %@}", 0];
  }
  v8 = ;
  v9 = [v4 stringByAppendingString:v8];

  v4 = v9;
LABEL_9:
  if (!v4)
  {
    v4 = [self debugDescription];
  }

  return v4;
}

@end