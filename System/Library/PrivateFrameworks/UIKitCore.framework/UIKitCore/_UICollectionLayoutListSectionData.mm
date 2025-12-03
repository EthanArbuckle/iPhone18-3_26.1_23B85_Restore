@interface _UICollectionLayoutListSectionData
- (BOOL)isEqual:(id)equal;
@end

@implementation _UICollectionLayoutListSectionData

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (equal != self)
  {
    equalCopy = equal;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    v5 = self ? self->_selectionGrouping : 0;
    if (*(equalCopy + 2) != v5)
    {
      goto LABEL_17;
    }

    separatorConfiguration = self->_separatorConfiguration;
    v7 = *(equalCopy + 1);
    v8 = separatorConfiguration;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      if (!v7 || !v8)
      {

LABEL_17:
        v11 = 0;
        goto LABEL_18;
      }

      v10 = [(UIListSeparatorConfiguration *)v7 isEqual:v8];

      if (!v10)
      {
        goto LABEL_17;
      }
    }

    v11 = 1;
LABEL_18:

    return v11;
  }

  return 1;
}

@end