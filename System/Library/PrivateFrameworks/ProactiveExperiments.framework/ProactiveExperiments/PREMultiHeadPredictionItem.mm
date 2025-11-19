@interface PREMultiHeadPredictionItem
- (PREMultiHeadPredictionItem)initWithCoder:(id)a3;
- (PREMultiHeadPredictionItem)initWithScore:(id)a3 label:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PREMultiHeadPredictionItem

- (id)description
{
  if (self->_label)
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<PREMultiHeadPredictionItem score:%@ label:%@>", self->_score, self->_label];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = PREMultiHeadPredictionItem;
    v2 = [(PREMultiHeadPredictionItem *)&v4 description];
  }

  return v2;
}

- (PREMultiHeadPredictionItem)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PREMultiHeadPredictionItem;
  v5 = [(PREMultiHeadPredictionItem *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"score"];
    if (!v6)
    {
      v10 = 0;
      goto LABEL_6;
    }

    score = v5->_score;
    v5->_score = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v8;
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  score = self->_score;
  v5 = a3;
  [v5 encodeObject:score forKey:@"score"];
  [v5 encodeObject:self->_label forKey:@"label"];
}

- (PREMultiHeadPredictionItem)initWithScore:(id)a3 label:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PREMultiHeadPredictionItem.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"score"}];
  }

  v14.receiver = self;
  v14.super_class = PREMultiHeadPredictionItem;
  v10 = [(PREMultiHeadPredictionItem *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_score, a3);
    objc_storeStrong(&v11->_label, a4);
  }

  return v11;
}

@end