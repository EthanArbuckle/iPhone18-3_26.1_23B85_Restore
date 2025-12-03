@interface PREMultiHeadPredictionItem
- (PREMultiHeadPredictionItem)initWithCoder:(id)coder;
- (PREMultiHeadPredictionItem)initWithScore:(id)score label:(id)label;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (PREMultiHeadPredictionItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PREMultiHeadPredictionItem;
  v5 = [(PREMultiHeadPredictionItem *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"score"];
    if (!v6)
    {
      v10 = 0;
      goto LABEL_6;
    }

    score = v5->_score;
    v5->_score = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v8;
  }

  v10 = v5;
LABEL_6:

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  score = self->_score;
  coderCopy = coder;
  [coderCopy encodeObject:score forKey:@"score"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
}

- (PREMultiHeadPredictionItem)initWithScore:(id)score label:(id)label
{
  scoreCopy = score;
  labelCopy = label;
  if (!scoreCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PREMultiHeadPredictionItem.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"score"}];
  }

  v14.receiver = self;
  v14.super_class = PREMultiHeadPredictionItem;
  v10 = [(PREMultiHeadPredictionItem *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_score, score);
    objc_storeStrong(&v11->_label, label);
  }

  return v11;
}

@end