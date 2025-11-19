@interface PKPassBucketTemplate
- (CGRect)bucketRect;
- (PKPassFieldTemplate)defaultFieldTemplate;
- (id)templateForFieldAtIndex:(unint64_t)a3;
- (void)addFieldTemplate:(id)a3;
@end

@implementation PKPassBucketTemplate

- (PKPassFieldTemplate)defaultFieldTemplate
{
  defaultFieldTemplate = self->_defaultFieldTemplate;
  if (!defaultFieldTemplate)
  {
    v4 = objc_alloc_init(PKPassFieldTemplate);
    v5 = self->_defaultFieldTemplate;
    self->_defaultFieldTemplate = v4;

    defaultFieldTemplate = self->_defaultFieldTemplate;
  }

  return defaultFieldTemplate;
}

- (CGRect)bucketRect
{
  x = self->_bucketRect.origin.x;
  y = self->_bucketRect.origin.y;
  width = self->_bucketRect.size.width;
  height = self->_bucketRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)addFieldTemplate:(id)a3
{
  v4 = a3;
  fieldTemplates = self->_fieldTemplates;
  v8 = v4;
  if (!fieldTemplates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_fieldTemplates;
    self->_fieldTemplates = v6;

    v4 = v8;
    fieldTemplates = self->_fieldTemplates;
  }

  [(NSMutableArray *)fieldTemplates addObject:v4];
}

- (id)templateForFieldAtIndex:(unint64_t)a3
{
  if ([(PKPassBucketTemplate *)self maxFields]>= a3)
  {
    if ([(NSMutableArray *)self->_fieldTemplates count]<= a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(NSMutableArray *)self->_fieldTemplates objectAtIndex:a3];
    }

    v5 = [PKPassFieldTemplate _templateByResolvingTemplate:v6 withDefault:self->_defaultFieldTemplate];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end