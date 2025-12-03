@interface PPSourceQuery
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSourceQuery:(id)query;
- (PPSourceQuery)init;
- (PPSourceQuery)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSourceQuery

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = *&self->_limit;
  v5 = [v3 initWithFormat:@"<PPSourceQuery l:%tu d:%@-%@ mid:%@ mui:%@ mch:%@", self->_limit, self->_fromDate, self->_toDate, self->_matchingBundleIds, self->_matchingDocumentIds, self->_matchingContactHandle];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPSourceQuery *)self isEqualToSourceQuery:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToSourceQuery:(id)query
{
  queryCopy = query;
  v5 = queryCopy;
  if (queryCopy == self)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    if (queryCopy)
    {
      limit = self->_limit;
      if (limit == [(PPSourceQuery *)queryCopy limit])
      {
        v7 = self->_fromDate;
        fromDate = [(PPSourceQuery *)v5 fromDate];
        if (v7 | fromDate)
        {
          v13 = fromDate;
          LOBYTE(v14) = 0;
          if (!v7 || !fromDate)
          {
            goto LABEL_31;
          }

          v14 = [(NSDate *)v7 isEqualToDate:fromDate];

          if (!v14)
          {
            goto LABEL_32;
          }
        }

        v7 = self->_toDate;
        toDate = [(PPSourceQuery *)v5 toDate];
        if (v7 | toDate)
        {
          v13 = toDate;
          LOBYTE(v14) = 0;
          if (!v7 || !toDate)
          {
            goto LABEL_31;
          }

          v14 = [(NSDate *)v7 isEqualToDate:toDate];

          if (!v14)
          {
            goto LABEL_32;
          }
        }

        v7 = self->_matchingBundleIds;
        matchingBundleIds = [(PPSourceQuery *)v5 matchingBundleIds];
        if (v7 | matchingBundleIds)
        {
          v13 = matchingBundleIds;
          LOBYTE(v14) = 0;
          if (!v7 || !matchingBundleIds)
          {
            goto LABEL_31;
          }

          v14 = [(NSDate *)v7 isEqualToSet:matchingBundleIds];

          if (!v14)
          {
            goto LABEL_32;
          }
        }

        v7 = self->_matchingDocumentIds;
        matchingDocumentIds = [(PPSourceQuery *)v5 matchingDocumentIds];
        if (!(v7 | matchingDocumentIds))
        {
LABEL_8:
          v7 = self->_matchingContactHandle;
          matchingContactHandle = [(PPSourceQuery *)v5 matchingContactHandle];
          if (v7 | matchingContactHandle)
          {
            v13 = matchingContactHandle;
            LOBYTE(v14) = 0;
            if (v7 && matchingContactHandle)
            {
              LOBYTE(v14) = [(NSDate *)v7 isEqualToString:matchingContactHandle];
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

        v13 = matchingDocumentIds;
        LOBYTE(v14) = 0;
        if (v7 && matchingDocumentIds)
        {
          v14 = [(NSDate *)v7 isEqualToSet:matchingDocumentIds];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (void)encodeWithCoder:(id)coder
{
  limit = self->_limit;
  coderCopy = coder;
  [coderCopy encodeInteger:limit forKey:@"lmt"];
  [coderCopy encodeObject:self->_fromDate forKey:@"fdt"];
  [coderCopy encodeObject:self->_toDate forKey:@"tdt"];
  [coderCopy encodeObject:self->_matchingBundleIds forKey:@"mbdl"];
  [coderCopy encodeObject:self->_matchingDocumentIds forKey:@"mdids"];
  [coderCopy encodeObject:self->_matchingContactHandle forKey:@"mch"];
}

- (PPSourceQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
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
    v5->_limit = [coderCopy decodeIntegerForKey:@"lmt"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fdt"];
    fromDate = v5->_fromDate;
    v5->_fromDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tdt"];
    toDate = v5->_toDate;
    v5->_toDate = v12;

    v14 = [coderCopy decodeObjectOfClasses:v9 forKey:@"mbdl"];
    matchingBundleIds = v5->_matchingBundleIds;
    v5->_matchingBundleIds = v14;

    v16 = [coderCopy decodeObjectOfClasses:v9 forKey:@"mdids"];
    matchingDocumentIds = v5->_matchingDocumentIds;
    v5->_matchingDocumentIds = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mch"];
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