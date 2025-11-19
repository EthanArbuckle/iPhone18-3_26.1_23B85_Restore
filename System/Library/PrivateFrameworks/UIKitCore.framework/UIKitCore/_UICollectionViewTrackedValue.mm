@interface _UICollectionViewTrackedValue
- (_UICollectionViewTrackedValue)init;
- (double)speed;
- (void)addValue:(double)a3;
@end

@implementation _UICollectionViewTrackedValue

- (_UICollectionViewTrackedValue)init
{
  v13.receiver = self;
  v13.super_class = _UICollectionViewTrackedValue;
  v2 = [(_UICollectionViewTrackedValue *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_isAccumulating = 1;
    v2->_trackedValue = 0.0;
    *&v2->_valuesCount = xmmword_18A679080;
    v4 = [MEMORY[0x1E695DF00] date];
    [v4 timeIntervalSince1970];
    v6 = v5;

    if (v3->_valuesCount >= 1)
    {
      v7 = 0;
      do
      {
        v8 = objc_alloc_init(_UICollectionViewTrackedValueItem);
        [(_UICollectionViewTrackedValueItem *)v8 setValue:0.0];
        [(_UICollectionViewTrackedValueItem *)v8 setTimeStamp:v6];
        values = v3->_values;
        if (values)
        {
          [(NSArray *)values arrayByAddingObject:v8];
        }

        else
        {
          [MEMORY[0x1E695DEC8] arrayWithObject:v8];
        }
        v10 = ;
        v11 = v3->_values;
        v3->_values = v10;

        ++v7;
      }

      while (v7 < v3->_valuesCount);
    }
  }

  return v3;
}

- (void)addValue:(double)a3
{
  if (self->_isAccumulating)
  {
    valuesCount = self->_valuesCount;
    v7 = self->_currentIndex + 1;
    values = self->_values;
    self->_currentIndex = v7 % valuesCount;
    v10 = [(NSArray *)values objectAtIndex:?];
    self->_trackedValue = a3;
    [v10 setValue:a3];
    v9 = [MEMORY[0x1E695DF00] date];
    [v9 timeIntervalSince1970];
    [v10 setTimeStamp:?];
  }
}

- (double)speed
{
  currentIndex = self->_currentIndex;
  if (currentIndex <= 0)
  {
    currentIndex = self->_valuesCount;
  }

  v4 = currentIndex - 1;
  v5 = [(NSArray *)self->_values objectAtIndex:?];
  v6 = [(NSArray *)self->_values objectAtIndex:v4];
  [v5 timeStamp];
  v8 = v7;
  [v6 timeStamp];
  v9 = 0.0;
  if (v8 != v10)
  {
    [v5 value];
    v12 = v11;
    [v6 value];
    v14 = v12 - v13;
    [v5 timeStamp];
    v16 = v15;
    [v6 timeStamp];
    v9 = v14 / (v16 / v17);
  }

  return v9;
}

@end