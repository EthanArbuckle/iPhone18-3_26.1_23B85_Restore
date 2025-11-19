@interface PPScoredItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScoredItem:(id)a3;
- (PPScoredItem)initWithCoder:(id)a3;
- (PPScoredItem)initWithItem:(id)a3 score:(double)a4 resultPosition:(unsigned __int16)a5 resultCount:(unsigned __int16)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPScoredItem

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPScoredItem *)self isEqualToScoredItem:v4];
  }

  return v5;
}

- (BOOL)isEqualToScoredItem:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (v6 == self)
  {
    v11 = 1;
    goto LABEL_20;
  }

  if (!v6)
  {
    v11 = 0;
    goto LABEL_20;
  }

  item = self->_item;
  v9 = item;
  if (!item)
  {
    v3 = [(PPScoredItem *)v6 item];
    if (!v3)
    {
      v10 = 0;
      goto LABEL_12;
    }

    v9 = self->_item;
  }

  v4 = [(PPScoredItem *)v7 item];
  if (![(NSCopying *)v9 isEqual:v4])
  {
    v11 = 0;
    goto LABEL_17;
  }

  v10 = 1;
LABEL_12:
  resultPosition = self->_resultPosition;
  if (resultPosition != [(PPScoredItem *)v7 resultPosition]|| (resultCount = self->_resultCount, resultCount != [(PPScoredItem *)v7 resultCount]))
  {
    v11 = 0;
    if (!v10)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  score = self->_score;
  [(PPScoredItem *)v7 score];
  v11 = vabdd_f64(score, v15) < 0.00000001;
  if (v10)
  {
LABEL_17:
  }

LABEL_18:
  if (!item)
  {
  }

LABEL_20:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSCopying *)self->_item hash];
  v4 = self->_resultPosition - v3 + 32 * v3;
  return self->_resultCount - v4 + 32 * v4;
}

- (void)encodeWithCoder:(id)a3
{
  item = self->_item;
  v5 = a3;
  [v5 encodeObject:item forKey:@"item"];
  [v5 encodeDouble:@"score" forKey:self->_score];
  [v5 encodeInt32:self->_resultPosition forKey:@"rps"];
  [v5 encodeInt32:self->_resultCount forKey:@"rct"];
}

- (PPScoredItem)initWithCoder:(id)a3
{
  v4 = a3;
  if (initWithCoder___pasOnceToken4 != -1)
  {
    dispatch_once(&initWithCoder___pasOnceToken4, &__block_literal_global_2799);
  }

  v5 = [v4 decodeObjectOfClasses:initWithCoder___pasExprOnceResult forKey:@"item"];
  if (!v5 || ([v4 decodeDoubleForKey:@"score"], v7 = v6, v8 = objc_msgSend(v4, "decodeInt32ForKey:", @"rps"), HIWORD(v8)) || (v9 = v8, v10 = objc_msgSend(v4, "decodeInt32ForKey:", @"rct"), HIWORD(v10)))
  {
    v11 = 0;
  }

  else
  {
    self = [(PPScoredItem *)self initWithItem:v5 score:v9 resultPosition:v10 resultCount:v7];
    v11 = self;
  }

  return v11;
}

void __30__PPScoredItem_initWithCoder___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3 = objc_opt_class();
  v4 = [v2 initWithObjects:{v3, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v1);
  v5 = initWithCoder___pasExprOnceResult;
  initWithCoder___pasExprOnceResult = v4;

  objc_autoreleasePoolPop(v0);
}

- (PPScoredItem)initWithItem:(id)a3 score:(double)a4 resultPosition:(unsigned __int16)a5 resultCount:(unsigned __int16)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = PPScoredItem;
  v12 = [(PPScoredItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_item, a3);
    v13->_score = a4;
    v13->_resultPosition = a5;
    v13->_resultCount = a6;
  }

  return v13;
}

@end