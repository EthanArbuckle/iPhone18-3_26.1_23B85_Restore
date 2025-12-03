@interface PPSiriQueryResult
+ (id)siriQueryResultWithQid:(id)qid domain:(id)domain confidence:(id)confidence;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSiriQueryResult:(id)result;
- (PPSiriQueryResult)initWithQid:(id)qid domain:(id)domain confidence:(id)confidence;
- (unint64_t)hash;
@end

@implementation PPSiriQueryResult

- (unint64_t)hash
{
  v3 = [(NSString *)self->_qid hash];
  v4 = [(NSString *)self->_domain hash]- v3 + 32 * v3;
  return [(NSNumber *)self->_confidence hash]- v4 + 32 * v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPSiriQueryResult *)self isEqualToSiriQueryResult:v5];
  }

  return v6;
}

- (BOOL)isEqualToSiriQueryResult:(id)result
{
  resultCopy = result;
  v5 = resultCopy;
  if (!resultCopy)
  {
    goto LABEL_11;
  }

  v6 = self->_qid == 0;
  v7 = [resultCopy qid];
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
  domain = [v5 domain];
  v14 = domain != 0;

  if (v12 == v14)
  {
    goto LABEL_11;
  }

  domain = self->_domain;
  if (domain)
  {
    domain2 = [v5 domain];
    v17 = [(NSString *)domain isEqual:domain2];

    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v18 = self->_confidence == 0;
  confidence = [v5 confidence];
  v20 = confidence != 0;

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
      confidence2 = [v5 confidence];
      v23 = [(NSNumber *)confidence isEqual:confidence2];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
}

- (PPSiriQueryResult)initWithQid:(id)qid domain:(id)domain confidence:(id)confidence
{
  qidCopy = qid;
  domainCopy = domain;
  confidenceCopy = confidence;
  v13 = confidenceCopy;
  if (domainCopy)
  {
    if (confidenceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPSiriQueryResult.m" lineNumber:11 description:{@"Invalid parameter not satisfying: %@", @"domain"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPSiriQueryResult.m" lineNumber:12 description:{@"Invalid parameter not satisfying: %@", @"confidence != nil"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = PPSiriQueryResult;
  v14 = [(PPSiriQueryResult *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_qid, qid);
    objc_storeStrong(&v15->_domain, domain);
    objc_storeStrong(&v15->_confidence, confidence);
  }

  return v15;
}

+ (id)siriQueryResultWithQid:(id)qid domain:(id)domain confidence:(id)confidence
{
  confidenceCopy = confidence;
  domainCopy = domain;
  qidCopy = qid;
  v11 = [[self alloc] initWithQid:qidCopy domain:domainCopy confidence:confidenceCopy];

  return v11;
}

@end