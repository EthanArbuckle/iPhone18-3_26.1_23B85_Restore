@interface IMPodcastOffer
- (BOOL)isEqual:(id)equal;
- (unint64_t)offerTypeAsFlagBit;
@end

@implementation IMPodcastOffer

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    priceType = [(IMPodcastOffer *)self priceType];
    priceType2 = [(IMPodcastOffer *)self priceType];
    if (priceType == priceType2 || [priceType isEqual:priceType2])
    {
      kind = [(IMPodcastOffer *)self kind];
      kind2 = [v5 kind];
      if (kind == kind2)
      {
        v10 = 1;
      }

      else
      {
        v10 = [kind isEqual:kind2];
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
  priceType = [(IMPodcastOffer *)self priceType];
  v4 = [priceType isEqualToString:@"STDQ"];

  if (v4)
  {
    return 1;
  }

  priceType2 = [(IMPodcastOffer *)self priceType];
  v7 = [priceType2 isEqualToString:@"PSUB"];

  if (v7)
  {
    return 2;
  }

  priceType3 = [(IMPodcastOffer *)self priceType];
  v9 = [priceType3 isEqualToString:@"PLUS"];

  if (v9)
  {
    return 4;
  }

  priceType4 = [(IMPodcastOffer *)self priceType];
  v11 = [priceType4 isEqualToString:@"PRMO"];

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