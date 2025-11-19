@interface STStorageSpace
- (STStorageSpace)initWithTotal:(int64_t)a3 free:(int64_t)a4 purgeable:(int64_t)a5;
@end

@implementation STStorageSpace

- (STStorageSpace)initWithTotal:(int64_t)a3 free:(int64_t)a4 purgeable:(int64_t)a5
{
  v12.receiver = self;
  v12.super_class = STStorageSpace;
  result = [(STStorageSpace *)&v12 init];
  if (result)
  {
    result->_totalBytes = a3;
    result->_freeBytes = a4;
    v9 = a5 + a4;
    result->_purgeableBytes = a5;
    result->_usedBytes = a3 - (a5 + a4);
    result->_availableBytes = a5 + a4;
    if (a3 >= 0x3B9ACA001)
    {
      if (a3 > 0x773594000)
      {
        v11 = 3000000000;
      }

      else
      {
        v11 = 2000000000;
      }

      result->_isLowSpace = v9 < v11;
      if (v9 < v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result->_isLowSpace = v9 < 1000000000;
      if (v9 <= 999999999)
      {
LABEL_4:
        v10 = v9 < 500000000;
LABEL_10:
        result->_isVeryLowSpace = v10;
        return result;
      }
    }

    v10 = 0;
    goto LABEL_10;
  }

  return result;
}

@end