@interface PPSiriQueryResult
+ (id)siriQueryResultWithQid:(id)a3 domain:(id)a4 confidence:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSiriQueryResult:(id)a3;
- (PPSiriQueryResult)initWithQid:(id)a3 domain:(id)a4 confidence:(id)a5;
- (unint64_t)hash;
@end

@implementation PPSiriQueryResult

- (unint64_t)hash
{
  v3 = [(NSString *)self->_qid hash];
  v4 = [(NSString *)self->_domain hash]- v3 + 32 * v3;
  return [(NSNumber *)self->_confidence hash]- v4 + 32 * v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPSiriQueryResult *)self isEqualToSiriQueryResult:v5];
  }

  return v6;
}

- (BOOL)isEqualToSiriQueryResult:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = self->_qid == 0;
  v7 = [v4 qid];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_11;
  }

  qid = self->_qid;
  if (qid)
  {
    v10 = [v5 qid];
    v11 = [(NSString *)qid isEqual:v10];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = self->_domain == 0;
  v13 = [v5 domain];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_11;
  }

  domain = self->_domain;
  if (domain)
  {
    v16 = [v5 domain];
    v17 = [(NSString *)domain isEqual:v16];

    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v18 = self->_confidence == 0;
  v19 = [v5 confidence];
  v20 = v19 != 0;

  if (v18 == v20)
  {
LABEL_11:
    v23 = 0;
  }

  else
  {
    confidence = self->_confidence;
    if (confidence)
    {
      v22 = [v5 confidence];
      v23 = [(NSNumber *)confidence isEqual:v22];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
}

- (PPSiriQueryResult)initWithQid:(id)a3 domain:(id)a4 confidence:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PPSiriQueryResult.m" lineNumber:11 description:{@"Invalid parameter not satisfying: %@", @"domain"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"PPSiriQueryResult.m" lineNumber:12 description:{@"Invalid parameter not satisfying: %@", @"confidence != nil"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = PPSiriQueryResult;
  v14 = [(PPSiriQueryResult *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_qid, a3);
    objc_storeStrong(&v15->_domain, a4);
    objc_storeStrong(&v15->_confidence, a5);
  }

  return v15;
}

+ (id)siriQueryResultWithQid:(id)a3 domain:(id)a4 confidence:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithQid:v10 domain:v9 confidence:v8];

  return v11;
}

@end