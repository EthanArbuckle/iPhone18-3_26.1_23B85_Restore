@interface SDAHistogramElement
+ (id)newElement;
- (void)adjAge:(unint64_t)age andSize:(unint64_t)size nanoSecSinceUpdate:(unint64_t)update;
@end

@implementation SDAHistogramElement

+ (id)newElement
{
  if (qword_100073728 != -1)
  {
    sub_10003FF6C();
  }

  v2 = objc_opt_new();
  v3 = 8;
  v4 = [NSMutableArray arrayWithCapacity:8];
  [v2 setAgeGroupCount:v4];

  v5 = [NSMutableArray arrayWithCapacity:8];
  [v2 setSizeGroupCount:v5];

  v6 = [NSMutableArray arrayWithCapacity:8];
  [v2 setSizeOfAgeGroupCount:v6];

  do
  {
    ageGroupCount = [v2 ageGroupCount];
    [ageGroupCount addObject:&off_1000689D0];

    sizeGroupCount = [v2 sizeGroupCount];
    [sizeGroupCount addObject:&off_1000689D0];

    sizeOfAgeGroupCount = [v2 sizeOfAgeGroupCount];
    [sizeOfAgeGroupCount addObject:&off_1000689D0];

    --v3;
  }

  while (v3);
  return v2;
}

- (void)adjAge:(unint64_t)age andSize:(unint64_t)size nanoSecSinceUpdate:(unint64_t)update
{
  v8 = age / 0x3B9ACA00;
  v9 = 7;
  do
  {
    v10 = [qword_100073738 objectAtIndexedSubscript:v9];
    unsignedLongLongValue = [v10 unsignedLongLongValue];

    if (v8 >= unsignedLongLongValue)
    {
      break;
    }

    --v9;
  }

  while (v9);
  v12 = [(NSMutableArray *)self->_ageGroupCount objectAtIndexedSubscript:v9];
  v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 unsignedLongLongValue] + 1);
  [(NSMutableArray *)self->_ageGroupCount setObject:v13 atIndexedSubscript:v9];

  v14 = [(NSMutableArray *)self->_sizeOfAgeGroupCount objectAtIndexedSubscript:v9];
  v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v14 unsignedLongLongValue] + size);
  [(NSMutableArray *)self->_sizeOfAgeGroupCount setObject:v15 atIndexedSubscript:v9];

  v16 = 7;
  do
  {
    v17 = [qword_100073730 objectAtIndexedSubscript:v16];
    unsignedLongLongValue2 = [v17 unsignedLongLongValue];

    if (unsignedLongLongValue2 <= size)
    {
      break;
    }

    --v16;
  }

  while (v16);
  v19 = [(NSMutableArray *)self->_sizeGroupCount objectAtIndexedSubscript:v16];
  v20 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v19 unsignedLongLongValue] + 1);
  [(NSMutableArray *)self->_sizeGroupCount setObject:v20 atIndexedSubscript:v16];

  v21 = [NSNumber numberWithUnsignedLongLong:update];
  pristineClearedATimeThreshold = self->_pristineClearedATimeThreshold;
  self->_pristineClearedATimeThreshold = v21;

  v23 = [NSNumber numberWithUnsignedLongLong:[(NSNumber *)self->_pristineClearedCount unsignedLongLongValue]+ 1];
  pristineClearedCount = self->_pristineClearedCount;
  self->_pristineClearedCount = v23;

  v25 = [NSNumber numberWithUnsignedLongLong:[(NSNumber *)self->_pristineClearedSize unsignedIntegerValue]+ size];
  pristineClearedSize = self->_pristineClearedSize;
  self->_pristineClearedSize = v25;

  _objc_release_x1();
}

@end