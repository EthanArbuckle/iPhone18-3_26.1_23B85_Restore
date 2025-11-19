@interface BKTouchContactSet
- (id)copy;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation BKTouchContactSet

- (id)copy
{
  v3 = objc_alloc_init(BKTouchContactSet);
  v4 = v3;
  if (self->_count >= 1)
  {
    lowIndex = self->_lowIndex;
    if (lowIndex <= self->_highIndex)
    {
      v6 = lowIndex - 1;
      v7 = 8 * lowIndex + 8;
      v8 = (&v3->super.isa + v7);
      v9 = (&self->super.isa + v7);
      do
      {
        v10 = *v9++;
        objc_storeStrong(v8, v10);
        ++v6;
        ++v8;
      }

      while (v6 < self->_highIndex);
      lowIndex = self->_lowIndex;
    }

    v4->_lowIndex = lowIndex;
    v4->_highIndex = self->_highIndex;
    v4->_count = self->_count;
  }

  return v4;
}

- (void)appendDescriptionToStream:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006856C;
  v3[3] = &unk_1000FBFF8;
  v3[4] = a3;
  [a3 appendCollection:self withName:@"contacts" itemBlock:v3];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  count = self->_count;
  if (!count)
  {
    return count;
  }

  var0 = a3->var0;
  if (a3->var0)
  {
    highIndex = self->_highIndex;
    if (var0 > highIndex)
    {
      return 0;
    }
  }

  else
  {
    a3->var2 = &self->_mutationtastic;
    var0 = self->_lowIndex;
    a3->var0 = var0;
    highIndex = self->_highIndex;
  }

  a3->var1 = a4;
  if (var0 > highIndex)
  {
    count = 0;
    goto LABEL_15;
  }

  count = 0;
  while (1)
  {
    v8 = self->_contactsByPathIndex[var0];
    if (v8)
    {
      break;
    }

LABEL_12:
    if (++var0 > highIndex)
    {
      goto LABEL_15;
    }
  }

  a4[count++] = v8;
  if (count != a5)
  {
    highIndex = self->_highIndex;
    goto LABEL_12;
  }

  count = a5;
LABEL_15:
  a3->var0 = var0 + 1;
  return count;
}

@end