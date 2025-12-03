@interface SKGKeyphrase
- (BOOL)isEqual:(id)equal;
- (SKGKeyphrase)initWithKeyphrase:(id)keyphrase components:(id)components tokenCount:(unint64_t)count score:(double)score;
- (id)description;
- (int64_t)compareByRank:(id)rank;
@end

@implementation SKGKeyphrase

- (SKGKeyphrase)initWithKeyphrase:(id)keyphrase components:(id)components tokenCount:(unint64_t)count score:(double)score
{
  keyphraseCopy = keyphrase;
  componentsCopy = components;
  v18.receiver = self;
  v18.super_class = SKGKeyphrase;
  v13 = [(SKGEntity *)&v18 initWithScore:score];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_keyphrase, keyphrase);
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    components = v14->_components;
    v14->_components = v15;

    [(NSMutableSet *)v14->_components addObjectsFromArray:componentsCopy];
    v14->_tokenCount = count;
    v14->_count = 0;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    keyphrase = [(SKGKeyphrase *)self keyphrase];
    keyphrase2 = [v5 keyphrase];
    if ([keyphrase isEqualToString:keyphrase2])
    {
      v10.receiver = self;
      v10.super_class = SKGKeyphrase;
      v8 = [(SKGEntity *)&v10 isEqual:v5];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)compareByRank:(id)rank
{
  rankCopy = rank;
  selfCopy = self;
  v6 = rankCopy;
  v7 = [(SKGKeyphrase *)selfCopy count];
  if (v7 == [v6 count])
  {
    [(SKGEntity *)selfCopy score];
    v9 = fabs(v8);
    [v6 score];
    v11 = fabs(v10);
    [(SKGEntity *)selfCopy score];
    if (v12 >= 0.0 && ([v6 score], v13 >= 0.0))
    {
      if (v9 >= v11)
      {
        v14 = 1;
      }

      else
      {
        v14 = -1;
      }
    }

    else
    {
      [(SKGEntity *)selfCopy score];
      v14 = -1;
      if (v15 < 0.0)
      {
        [v6 score];
        if (v9 >= v11)
        {
          v17 = 1;
        }

        else
        {
          v17 = -1;
        }

        if (v16 < 0.0)
        {
          v14 = v17;
        }

        else
        {
          v14 = 1;
        }
      }
    }
  }

  else
  {
    v18 = [(SKGKeyphrase *)selfCopy count];
    if (v18 > [v6 count])
    {
      v14 = -1;
    }

    else
    {
      v14 = 1;
    }
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  keyphrase = [(SKGKeyphrase *)self keyphrase];
  lowercaseString = [keyphrase lowercaseString];
  [(SKGEntity *)self score];
  v8 = [v3 stringWithFormat:@"<%@: %@ %f %lu", v4, lowercaseString, v7, -[SKGKeyphrase count](self, "count")];

  return v8;
}

@end