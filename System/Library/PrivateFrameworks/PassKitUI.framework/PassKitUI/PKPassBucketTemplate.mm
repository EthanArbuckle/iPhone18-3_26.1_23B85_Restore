@interface PKPassBucketTemplate
- (CGRect)bucketRect;
- (PKPassFieldTemplate)defaultFieldTemplate;
- (id)templateForFieldAtIndex:(unint64_t)index;
- (void)addFieldTemplate:(id)template;
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

- (void)addFieldTemplate:(id)template
{
  templateCopy = template;
  fieldTemplates = self->_fieldTemplates;
  v8 = templateCopy;
  if (!fieldTemplates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_fieldTemplates;
    self->_fieldTemplates = v6;

    templateCopy = v8;
    fieldTemplates = self->_fieldTemplates;
  }

  [(NSMutableArray *)fieldTemplates addObject:templateCopy];
}

- (id)templateForFieldAtIndex:(unint64_t)index
{
  if ([(PKPassBucketTemplate *)self maxFields]>= index)
  {
    if ([(NSMutableArray *)self->_fieldTemplates count]<= index)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(NSMutableArray *)self->_fieldTemplates objectAtIndex:index];
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