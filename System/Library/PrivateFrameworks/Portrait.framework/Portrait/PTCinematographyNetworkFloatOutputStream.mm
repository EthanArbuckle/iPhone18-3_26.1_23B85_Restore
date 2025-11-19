@interface PTCinematographyNetworkFloatOutputStream
- (PTCinematographyNetworkFloatOutputStream)initWithDestination:(float *)a3 count:(unint64_t)a4;
- (unint64_t)remainingCount;
- (void)writeFloat:(float)a3;
- (void)writeOneHot:(unint64_t)a3 count:(unint64_t)a4;
@end

@implementation PTCinematographyNetworkFloatOutputStream

- (PTCinematographyNetworkFloatOutputStream)initWithDestination:(float *)a3 count:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PTCinematographyNetworkFloatOutputStream;
  result = [(PTCinematographyNetworkFloatOutputStream *)&v7 init];
  if (result)
  {
    result->_fp = a3;
    result->_count = a4;
    result->_index = 0;
  }

  return result;
}

- (unint64_t)remainingCount
{
  count = self->_count;
  index = self->_index;
  v4 = count >= index;
  v5 = count - index;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (void)writeFloat:(float)a3
{
  fp = self->_fp;
  index = self->_index;
  self->_index = index + 1;
  fp[index] = a3;
}

- (void)writeOneHot:(unint64_t)a3 count:(unint64_t)a4
{
  if (a4)
  {
    fp = self->_fp;
    index = self->_index;
    do
    {
      if (a3)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = 1.0;
      }

      fp[index++] = v6;
      --a3;
      --a4;
    }

    while (a4);
    self->_index = index;
  }
}

@end