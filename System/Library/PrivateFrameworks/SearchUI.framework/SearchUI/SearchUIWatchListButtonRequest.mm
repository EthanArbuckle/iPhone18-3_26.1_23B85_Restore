@interface SearchUIWatchListButtonRequest
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation SearchUIWatchListButtonRequest

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(SearchUIWatchListButtonRequest *)self identifier];
    identifier2 = [equalCopy identifier];
    if ([identifier isEqual:identifier2] && (v7 = -[SearchUIWatchListButtonRequest type](self, "type"), v7 == objc_msgSend(equalCopy, "type")))
    {
      isHorizontallySrollingStyle = [(SearchUIWatchListButtonRequest *)self isHorizontallySrollingStyle];
      v9 = isHorizontallySrollingStyle ^ [equalCopy isHorizontallySrollingStyle] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  identifier = [(SearchUIWatchListButtonRequest *)self identifier];
  v4 = [identifier hash];
  v5 = v4 ^ [(SearchUIWatchListButtonRequest *)self type];
  isHorizontallySrollingStyle = [(SearchUIWatchListButtonRequest *)self isHorizontallySrollingStyle];

  return v5 ^ isHorizontallySrollingStyle;
}

@end