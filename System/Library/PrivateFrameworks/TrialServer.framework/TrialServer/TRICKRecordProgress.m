@interface TRICKRecordProgress
+ (id)progressWithSize:(unint64_t)a3 transferred:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToProgress:(id)a3;
- (TRICKRecordProgress)initWithSize:(unint64_t)a3 transferred:(unint64_t)a4;
- (id)copyWithReplacementSize:(unint64_t)a3;
- (id)copyWithReplacementTransferred:(unint64_t)a3;
- (id)description;
@end

@implementation TRICKRecordProgress

- (TRICKRecordProgress)initWithSize:(unint64_t)a3 transferred:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = TRICKRecordProgress;
  result = [(TRICKRecordProgress *)&v7 init];
  if (result)
  {
    result->_size = a3;
    result->_transferred = a4;
  }

  return result;
}

+ (id)progressWithSize:(unint64_t)a3 transferred:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithSize:a3 transferred:a4];

  return v4;
}

- (id)copyWithReplacementSize:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  transferred = self->_transferred;

  return [v5 initWithSize:a3 transferred:transferred];
}

- (id)copyWithReplacementTransferred:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  size = self->_size;

  return [v5 initWithSize:size transferred:a3];
}

- (BOOL)isEqualToProgress:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (size = self->_size, size == [v4 size]))
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRICKRecordProgress *)self isEqualToProgress:v5];
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