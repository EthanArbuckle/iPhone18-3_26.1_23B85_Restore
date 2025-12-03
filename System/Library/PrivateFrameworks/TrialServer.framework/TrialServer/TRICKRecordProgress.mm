@interface TRICKRecordProgress
+ (id)progressWithSize:(unint64_t)size transferred:(unint64_t)transferred;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToProgress:(id)progress;
- (TRICKRecordProgress)initWithSize:(unint64_t)size transferred:(unint64_t)transferred;
- (id)copyWithReplacementSize:(unint64_t)size;
- (id)copyWithReplacementTransferred:(unint64_t)transferred;
- (id)description;
@end

@implementation TRICKRecordProgress

- (TRICKRecordProgress)initWithSize:(unint64_t)size transferred:(unint64_t)transferred
{
  v7.receiver = self;
  v7.super_class = TRICKRecordProgress;
  result = [(TRICKRecordProgress *)&v7 init];
  if (result)
  {
    result->_size = size;
    result->_transferred = transferred;
  }

  return result;
}

+ (id)progressWithSize:(unint64_t)size transferred:(unint64_t)transferred
{
  v4 = [[self alloc] initWithSize:size transferred:transferred];

  return v4;
}

- (id)copyWithReplacementSize:(unint64_t)size
{
  v5 = objc_alloc(objc_opt_class());
  transferred = self->_transferred;

  return [v5 initWithSize:size transferred:transferred];
}

- (id)copyWithReplacementTransferred:(unint64_t)transferred
{
  v5 = objc_alloc(objc_opt_class());
  size = self->_size;

  return [v5 initWithSize:size transferred:transferred];
}

- (BOOL)isEqualToProgress:(id)progress
{
  progressCopy = progress;
  v5 = progressCopy;
  if (progressCopy && (size = self->_size, size == [progressCopy size]))
  {
    transferred = self->_transferred;
    v8 = transferred == [v5 transferred];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRICKRecordProgress *)self isEqualToProgress:v5];
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_size];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_transferred];
  v6 = [v3 initWithFormat:@"<TRICKRecordProgress | size:%@ transferred:%@>", v4, v5];

  return v6;
}

@end