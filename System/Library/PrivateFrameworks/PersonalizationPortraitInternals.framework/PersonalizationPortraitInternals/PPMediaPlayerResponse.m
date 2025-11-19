@interface PPMediaPlayerResponse
- (BOOL)isEqualToResponse:(id)a3;
@end

@implementation PPMediaPlayerResponse

- (BOOL)isEqualToResponse:(id)a3
{
  v4 = a3;
  v5 = [(PPMediaPlayerResponse *)self title];
  v6 = [v4 title];
  if (v5 | v6)
  {
    v11 = v6;
    LOBYTE(v12) = 0;
    if (!v5 || !v6)
    {
      goto LABEL_26;
    }

    v12 = [v5 isEqualToString:v6];

    if (!v12)
    {
      goto LABEL_27;
    }
  }

  v5 = [(PPMediaPlayerResponse *)self artist];
  v7 = [v4 artist];
  if (v5 | v7)
  {
    v11 = v7;
    LOBYTE(v12) = 0;
    if (!v5 || !v7)
    {
      goto LABEL_26;
    }

    v12 = [v5 isEqualToString:v7];

    if (!v12)
    {
      goto LABEL_27;
    }
  }

  v5 = [(PPMediaPlayerResponse *)self album];
  v8 = [v4 album];
  if (v5 | v8)
  {
    v11 = v8;
    LOBYTE(v12) = 0;
    if (!v5 || !v8)
    {
      goto LABEL_26;
    }

    v12 = [v5 isEqualToString:v8];

    if (!v12)
    {
      goto LABEL_27;
    }
  }

  v5 = [(PPMediaPlayerResponse *)self bundleID];
  v9 = [v4 bundleID];
  if (!(v5 | v9))
  {
LABEL_5:
    v5 = [(PPMediaPlayerResponse *)self playerID];
    v10 = [v4 playerID];
    if (v5 | v10)
    {
      v11 = v10;
      LOBYTE(v12) = 0;
      if (v5 && v10)
      {
        LOBYTE(v12) = [v5 isEqualToString:v10];
      }
    }

    else
    {
      v11 = 0;
      v5 = 0;
      LOBYTE(v12) = 1;
    }

    goto LABEL_26;
  }

  v11 = v9;
  LOBYTE(v12) = 0;
  if (v5 && v9)
  {
    v12 = [v5 isEqualToString:v9];

    if (!v12)
    {
      goto LABEL_27;
    }

    goto LABEL_5;
  }

LABEL_26:

LABEL_27:
  return v12;
}

@end