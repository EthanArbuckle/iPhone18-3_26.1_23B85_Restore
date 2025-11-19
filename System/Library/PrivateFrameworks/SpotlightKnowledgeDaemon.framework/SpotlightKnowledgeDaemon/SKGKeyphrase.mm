@interface SKGKeyphrase
- (BOOL)isEqual:(id)a3;
- (SKGKeyphrase)initWithKeyphrase:(id)a3 components:(id)a4 tokenCount:(unint64_t)a5 score:(double)a6;
- (id)description;
- (int64_t)compareByRank:(id)a3;
@end

@implementation SKGKeyphrase

- (SKGKeyphrase)initWithKeyphrase:(id)a3 components:(id)a4 tokenCount:(unint64_t)a5 score:(double)a6
{
  v11 = a3;
  v12 = a4;
  v18.receiver = self;
  v18.super_class = SKGKeyphrase;
  v13 = [(SKGEntity *)&v18 initWithScore:a6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_keyphrase, a3);
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    components = v14->_components;
    v14->_components = v15;

    [(NSMutableSet *)v14->_components addObjectsFromArray:v12];
    v14->_tokenCount = a5;
    v14->_count = 0;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SKGKeyphrase *)self keyphrase];
    v7 = [v5 keyphrase];
    if ([v6 isEqualToString:v7])
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

- (int64_t)compareByRank:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = v4;
  v7 = [(SKGKeyphrase *)v5 count];
  if (v7 == [v6 count])
  {
    [(SKGEntity *)v5 score];
    v9 = fabs(v8);
    [v6 score];
    v11 = fabs(v10);
    [(SKGEntity *)v5 score];
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
      [(SKGEntity *)v5 score];
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
    v18 = [(SKGKeyphrase *)v5 count];
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
  v5 = [(SKGKeyphrase *)self keyphrase];
  v6 = [v5 lowercaseString];
  [(SKGEntity *)self score];
  v8 = [v3 stringWithFormat:@"<%@: %@ %f %lu", v4, v6, v7, -[SKGKeyphrase count](self, "count")];

  return v8;
}

@end