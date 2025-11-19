@interface PPSourceQuery
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSourceQuery:(id)a3;
- (PPSourceQuery)init;
- (PPSourceQuery)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPSourceQuery

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = *&self->_limit;
  v5 = [v3 initWithFormat:@"<PPSourceQuery l:%tu d:%@-%@ mid:%@ mui:%@ mch:%@", self->_limit, self->_fromDate, self->_toDate, self->_matchingBundleIds, self->_matchingDocumentIds, self->_matchingContactHandle];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPSourceQuery *)self isEqualToSourceQuery:v4];
  }

  return v5;
}

- (BOOL)isEqualToSourceQuery:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    if (v4)
    {
      limit = self->_limit;
      if (limit == [(PPSourceQuery *)v4 limit])
      {
        v7 = self->_fromDate;
        v8 = [(PPSourceQuery *)v5 fromDate];
        if (v7 | v8)
        {
          v13 = v8;
          LOBYTE(v14) = 0;
          if (!v7 || !v8)
          {
            goto LABEL_31;
          }

          v14 = [(NSDate *)v7 isEqualToDate:v8];

          if (!v14)
          {
            goto LABEL_32;
          }
        }

        v7 = self->_toDate;
        v9 = [(PPSourceQuery *)v5 toDate];
        if (v7 | v9)
        {
          v13 = v9;
          LOBYTE(v14) = 0;
          if (!v7 || !v9)
          {
            goto LABEL_31;
          }

          v14 = [(NSDate *)v7 isEqualToDate:v9];

          if (!v14)
          {
            goto LABEL_32;
          }
        }

        v7 = self->_matchingBundleIds;
        v10 = [(PPSourceQuery *)v5 matchingBundleIds];
        if (v7 | v10)
        {
          v13 = v10;
          LOBYTE(v14) = 0;
          if (!v7 || !v10)
          {
            goto LABEL_31;
          }

          v14 = [(NSDate *)v7 isEqualToSet:v10];

          if (!v14)
          {
            goto LABEL_32;
          }
        }

        v7 = self->_matchingDocumentIds;
        v11 = [(PPSourceQuery *)v5 matchingDocumentIds];
        if (!(v7 | v11))
        {
LABEL_8:
          v7 = self->_matchingContactHandle;
          v12 = [(PPSourceQuery *)v5 matchingContactHandle];
          if (v7 | v12)
          {
            v13 = v12;
            LOBYTE(v14) = 0;
            if (v7 && v12)
            {
              LOBYTE(v14) = [(NSDate *)v7 isEqualToString:v12];
            }
          }

          else
          {
            v13 = 0;
            v7 = 0;
            LOBYTE(v14) = 1;
          }

          goto LABEL_31;
        }

        v13 = v11;
        LOBYTE(v14) = 0;
        if (v7 && v11)
        {
          v14 = [(NSDate *)v7 isEqualToSet:v11];

          if (!v14)
          {
            goto LABEL_32;
          }

          goto LABEL_8;
        }

LABEL_31:

        goto LABEL_32;
      }
    }

    LOBYTE(v14) = 0;
  }

LABEL_32:

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    [v4 setLimit:self->_limit];
    [v5 setFromDate:self->_fromDate];
    [v5 setToDate:self->_toDate];
    [v5 setMatchingBundleIds:self->_matchingBundleIds];
    [v5 setMatchingDocumentIds:self->_matchingDocumentIds];
    [v5 setMatchingContactHandle:self->_matchingContactHandle];
  }

  return v5;
}

- (unint64_t)hash
{
  limit = self->_limit;
  v4 = [(NSDate *)self->_fromDate hash]- limit + 32 * limit;
  v5 = [(NSDate *)self->_toDate hash]- v4 + 32 * v4;
  v6 = [(NSSet *)self->_matchingBundleIds hash]- v5 + 32 * v5;
  v7 = [(NSSet *)self->_matchingDocumentIds hash]- v6 + 32 * v6;
  return [(NSString *)self->_matchingContactHandle hash]- v7 + 32 * v7;
}

- (void)encodeWithCoder:(id)a3
{
  limit = self->_limit;
  v5 = a3;
  [v5 encodeInteger:limit forKey:@"lmt"];
  [v5 encodeObject:self->_fromDate forKey:@"fdt"];
  [v5 encodeObject:self->_toDate forKey:@"tdt"];
  [v5 encodeObject:self->_matchingBundleIds forKey:@"mbdl"];
  [v5 encodeObject:self->_matchingDocumentIds forKey:@"mdids"];
  [v5 encodeObject:self->_matchingContactHandle forKey:@"mch"];
}

- (PPSourceQuery)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PPSourceQuery;
  v5 = [(PPSourceQuery *)&v21 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x277CBEB98]);
    v8 = objc_opt_class();
    v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    v5->_limit = [v4 decodeIntegerForKey:@"lmt"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fdt"];
    fromDate = v5->_fromDate;
    v5->_fromDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tdt"];
    toDate = v5->_toDate;
    v5->_toDate = v12;

    v14 = [v4 decodeObjectOfClasses:v9 forKey:@"mbdl"];
    matchingBundleIds = v5->_matchingBundleIds;
    v5->_matchingBundleIds = v14;

    v16 = [v4 decodeObjectOfClasses:v9 forKey:@"mdids"];
    matchingDocumentIds = v5->_matchingDocumentIds;
    v5->_matchingDocumentIds = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mch"];
    matchingContactHandle = v5->_matchingContactHandle;
    v5->_matchingContactHandle = v18;
  }

  return v5;
}

- (PPSourceQuery)init
{
  v3.receiver = self;
  v3.super_class = PPSourceQuery;
  result = [(PPSourceQuery *)&v3 init];
  if (result)
  {
    result->_limit = -1;
  }

  return result;
}

@end