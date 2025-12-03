@interface PTCinematographyNetworkFloatOutputStream
- (PTCinematographyNetworkFloatOutputStream)initWithDestination:(float *)destination count:(unint64_t)count;
- (unint64_t)remainingCount;
- (void)writeFloat:(float)float;
- (void)writeOneHot:(unint64_t)hot count:(unint64_t)count;
@end

@implementation PTCinematographyNetworkFloatOutputStream

- (PTCinematographyNetworkFloatOutputStream)initWithDestination:(float *)destination count:(unint64_t)count
{
  v7.receiver = self;
  v7.super_class = PTCinematographyNetworkFloatOutputStream;
  result = [(PTCinematographyNetworkFloatOutputStream *)&v7 init];
  if (result)
  {
    result->_fp = destination;
    result->_count = count;
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

- (void)writeFloat:(float)float
{
  fp = self->_fp;
  index = self->_index;
  self->_index = index + 1;
  fp[index] = float;
}

- (void)writeOneHot:(unint64_t)hot count:(unint64_t)count
{
  if (count)
  {
    fp = self->_fp;
    index = self->_index;
    do
    {
      if (hot)
      {
        v6 = 0.0;
      }

      else
      {
        v6 = 1.0;
      }

      fp[index++] = v6;
      --hot;
      --count;
    }

    while (count);
    self->_index = index;
  }
}

@end