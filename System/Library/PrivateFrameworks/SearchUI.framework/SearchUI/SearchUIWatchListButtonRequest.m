@interface SearchUIWatchListButtonRequest
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation SearchUIWatchListButtonRequest

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SearchUIWatchListButtonRequest *)self identifier];
    v6 = [v4 identifier];
    if ([v5 isEqual:v6] && (v7 = -[SearchUIWatchListButtonRequest type](self, "type"), v7 == objc_msgSend(v4, "type")))
    {
      v8 = [(SearchUIWatchListButtonRequest *)self isHorizontallySrollingStyle];
      v9 = v8 ^ [v4 isHorizontallySrollingStyle] ^ 1;
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
  v3 = [(SearchUIWatchListButtonRequest *)self identifier];
  v4 = [v3 hash];
  v5 = v4 ^ [(SearchUIWatchListButtonRequest *)self type];
  v6 = [(SearchUIWatchListButtonRequest *)self isHorizontallySrollingStyle];

  return v5 ^ v6;
}

@end