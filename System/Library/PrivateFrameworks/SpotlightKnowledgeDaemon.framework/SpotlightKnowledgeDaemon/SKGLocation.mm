@interface SKGLocation
- (BOOL)isEqual:(id)a3;
- (BOOL)isParent:(id)a3;
- (NSArray)expansions;
- (double)distance:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)addExpansion:(id)a3;
@end

@implementation SKGLocation

- (NSArray)expansions
{
  if (self->_expansions)
  {
    return self->_expansions;
  }

  else
  {
    return MEMORY[0x277CBEBF8];
  }
}

- (void)addExpansion:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!self->_expansions)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    expansions = self->_expansions;
    self->_expansions = v5;

    v4 = v8;
  }

  if (v4)
  {
    v7 = [(NSMutableArray *)self->_expansions containsObject:v8];
    v4 = v8;
    if ((v7 & 1) == 0)
    {
      [(NSMutableArray *)self->_expansions addObject:v8];
      v4 = v8;
    }
  }
}

- (double)distance:(id)a3
{
  v4 = a3;
  [v4 lat];
  v6 = v5;
  [(SKGLocation *)self lat];
  v8 = (v6 - v7) * 3.14159265 / 180.0;
  [v4 lng];
  v10 = v9;
  [(SKGLocation *)self lng];
  v12 = (v10 - v11) * 3.14159265 / 180.0;
  [(SKGLocation *)self lat];
  [(SKGLocation *)self setLat:v13 * 3.14159265 / 180.0];
  [v4 lat];
  [v4 setLat:v14 * 3.14159265 / 180.0];
  v15 = sin(v8 * 0.5);
  v16 = v15 * v15;
  v17 = sin(v12 * 0.5);
  v18 = v17 * v17;
  [(SKGLocation *)self lat];
  v20 = v18 * cos(v19);
  [v4 lat];
  v22 = v21;

  v23 = cos(v22);
  v24 = asin(sqrt(v16 + v20 * v23));
  return (v24 + v24) * 6371.0;
}

- (BOOL)isParent:(id)a3
{
  v4 = a3;
  [v4 lat];
  v6 = v5;
  [(SKGLocation *)self minLat];
  if (v6 >= v7 && ([v4 lat], v9 = v8, -[SKGLocation maxLat](self, "maxLat"), v9 <= v10) && (objc_msgSend(v4, "lng"), v12 = v11, -[SKGLocation minLng](self, "minLng"), v12 >= v13))
  {
    [v4 lng];
    v17 = v16;
    [(SKGLocation *)self maxLng];
    v14 = v17 <= v18;
  }

  else
  {
    v14 = 0;
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
    v6 = MEMORY[0x277CCABB0];
    [(SKGLocation *)self lat];
    v7 = [v6 numberWithDouble:?];
    v8 = MEMORY[0x277CCABB0];
    [v5 lat];
    v9 = [v8 numberWithDouble:?];
    if ([v7 isEqualToNumber:v9])
    {
      v10 = MEMORY[0x277CCABB0];
      [(SKGLocation *)self lng];
      v11 = [v10 numberWithDouble:?];
      v12 = MEMORY[0x277CCABB0];
      [v5 lng];
      v13 = [v12 numberWithDouble:?];
      v14 = [v11 isEqualToNumber:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  [(SKGLocation *)self lat];
  v4 = v3;
  [(SKGLocation *)self lng];
  return (v4 + v5 + [(NSMutableArray *)self->_expansions hash]);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(SKGLocation *)self lat];
  v6 = v5;
  [(SKGLocation *)self lng];
  v8 = v7;
  [(SKGEntity *)self score];
  return [v3 stringWithFormat:@"<%@: %f %f %f %@>", v4, v6, v8, v9, self->_expansions];
}

@end