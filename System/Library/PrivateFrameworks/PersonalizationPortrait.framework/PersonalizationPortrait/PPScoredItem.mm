@interface PPScoredItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScoredItem:(id)item;
- (PPScoredItem)initWithCoder:(id)coder;
- (PPScoredItem)initWithItem:(id)item score:(double)score resultPosition:(unsigned __int16)position resultCount:(unsigned __int16)count;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPScoredItem

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PPScoredItem *)self isEqualToScoredItem:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToScoredItem:(id)item
{
  itemCopy = item;
  v7 = itemCopy;
  if (itemCopy == self)
  {
    v11 = 1;
    goto LABEL_20;
  }

  if (!itemCopy)
  {
    v11 = 0;
    goto LABEL_20;
  }

  item = self->_item;
  itemCopy2 = item;
  if (!item)
  {
    item = [(PPScoredItem *)itemCopy item];
    if (!item)
    {
      v10 = 0;
      goto LABEL_12;
    }

    itemCopy2 = self->_item;
  }

  item2 = [(PPScoredItem *)v7 item];
  if (![(NSCopying *)itemCopy2 isEqual:item2])
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

- (void)encodeWithCoder:(id)coder
{
  item = self->_item;
  coderCopy = coder;
  [coderCopy encodeObject:item forKey:@"item"];
  [coderCopy encodeDouble:@"score" forKey:self->_score];
  [coderCopy encodeInt32:self->_resultPosition forKey:@"rps"];
  [coderCopy encodeInt32:self->_resultCount forKey:@"rct"];
}

- (PPScoredItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (initWithCoder___pasOnceToken4 != -1)
  {
    dispatch_once(&initWithCoder___pasOnceToken4, &__block_literal_global_2799);
  }

  v5 = [coderCopy decodeObjectOfClasses:initWithCoder___pasExprOnceResult forKey:@"item"];
  if (!v5 || ([coderCopy decodeDoubleForKey:@"score"], v7 = v6, v8 = objc_msgSend(coderCopy, "decodeInt32ForKey:", @"rps"), HIWORD(v8)) || (v9 = v8, v10 = objc_msgSend(coderCopy, "decodeInt32ForKey:", @"rct"), HIWORD(v10)))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PPScoredItem *)self initWithItem:v5 score:v9 resultPosition:v10 resultCount:v7];
    selfCopy = self;
  }

  return selfCopy;
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

- (PPScoredItem)initWithItem:(id)item score:(double)score resultPosition:(unsigned __int16)position resultCount:(unsigned __int16)count
{
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = PPScoredItem;
  v12 = [(PPScoredItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_item, item);
    v13->_score = score;
    v13->_resultPosition = position;
    v13->_resultCount = count;
  }

  return v13;
}

@end