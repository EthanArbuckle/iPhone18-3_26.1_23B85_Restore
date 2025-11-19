@interface IMPodcastOffer
- (BOOL)isEqual:(id)a3;
- (unint64_t)offerTypeAsFlagBit;
@end

@implementation IMPodcastOffer

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IMPodcastOffer *)self priceType];
    v7 = [(IMPodcastOffer *)self priceType];
    if (v6 == v7 || [v6 isEqual:v7])
    {
      v8 = [(IMPodcastOffer *)self kind];
      v9 = [v5 kind];
      if (v8 == v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = [v8 isEqual:v9];
      }
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

  return v10;
}

- (unint64_t)offerTypeAsFlagBit
{
  v3 = [(IMPodcastOffer *)self priceType];
  v4 = [v3 isEqualToString:@"STDQ"];

  if (v4)
  {
    return 1;
  }

  v6 = [(IMPodcastOffer *)self priceType];
  v7 = [v6 isEqualToString:@"PSUB"];

  if (v7)
  {
    return 2;
  }

  v8 = [(IMPodcastOffer *)self priceType];
  v9 = [v8 isEqualToString:@"PLUS"];

  if (v9)
  {
    return 4;
  }

  v10 = [(IMPodcastOffer *)self priceType];
  v11 = [v10 isEqualToString:@"PRMO"];

  if (v11)
  {
    return 8;
  }

  else
  {
    return 1;
  }
}

@end