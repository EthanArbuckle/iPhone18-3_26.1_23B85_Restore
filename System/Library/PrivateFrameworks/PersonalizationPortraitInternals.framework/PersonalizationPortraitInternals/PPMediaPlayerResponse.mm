@interface PPMediaPlayerResponse
- (BOOL)isEqualToResponse:(id)response;
@end

@implementation PPMediaPlayerResponse

- (BOOL)isEqualToResponse:(id)response
{
  responseCopy = response;
  title = [(PPMediaPlayerResponse *)self title];
  title2 = [responseCopy title];
  if (title | title2)
  {
    v11 = title2;
    LOBYTE(v12) = 0;
    if (!title || !title2)
    {
      goto LABEL_26;
    }

    v12 = [title isEqualToString:title2];

    if (!v12)
    {
      goto LABEL_27;
    }
  }

  title = [(PPMediaPlayerResponse *)self artist];
  artist = [responseCopy artist];
  if (title | artist)
  {
    v11 = artist;
    LOBYTE(v12) = 0;
    if (!title || !artist)
    {
      goto LABEL_26;
    }

    v12 = [title isEqualToString:artist];

    if (!v12)
    {
      goto LABEL_27;
    }
  }

  title = [(PPMediaPlayerResponse *)self album];
  album = [responseCopy album];
  if (title | album)
  {
    v11 = album;
    LOBYTE(v12) = 0;
    if (!title || !album)
    {
      goto LABEL_26;
    }

    v12 = [title isEqualToString:album];

    if (!v12)
    {
      goto LABEL_27;
    }
  }

  title = [(PPMediaPlayerResponse *)self bundleID];
  bundleID = [responseCopy bundleID];
  if (!(title | bundleID))
  {
LABEL_5:
    title = [(PPMediaPlayerResponse *)self playerID];
    playerID = [responseCopy playerID];
    if (title | playerID)
    {
      v11 = playerID;
      LOBYTE(v12) = 0;
      if (title && playerID)
      {
        LOBYTE(v12) = [title isEqualToString:playerID];
      }
    }

    else
    {
      v11 = 0;
      title = 0;
      LOBYTE(v12) = 1;
    }

    goto LABEL_26;
  }

  v11 = bundleID;
  LOBYTE(v12) = 0;
  if (title && bundleID)
  {
    v12 = [title isEqualToString:bundleID];

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