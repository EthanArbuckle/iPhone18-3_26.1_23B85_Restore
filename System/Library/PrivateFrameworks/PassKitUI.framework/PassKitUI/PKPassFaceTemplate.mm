@interface PKPassFaceTemplate
- (CGSize)barcodeMaxSize;
- (PKPassFieldTemplate)defaultFieldTemplate;
- (id)templateForBucketAtIndex:(unint64_t)index;
- (void)addBucketTemplate:(id)template;
@end

@implementation PKPassFaceTemplate

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

- (void)addBucketTemplate:(id)template
{
  templateCopy = template;
  bucketTemplates = self->_bucketTemplates;
  v8 = templateCopy;
  if (!bucketTemplates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_bucketTemplates;
    self->_bucketTemplates = v6;

    templateCopy = v8;
    bucketTemplates = self->_bucketTemplates;
  }

  [(NSMutableArray *)bucketTemplates addObject:templateCopy];
}

- (id)templateForBucketAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_bucketTemplates count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_bucketTemplates objectAtIndex:index];
    defaultFieldTemplate = [v5 defaultFieldTemplate];
    v7 = [PKPassFieldTemplate _templateByResolvingTemplate:defaultFieldTemplate withDefault:self->_defaultFieldTemplate];

    [v5 setDefaultFieldTemplate:v7];
  }

  return v5;
}

- (CGSize)barcodeMaxSize
{
  width = self->_barcodeMaxSize.width;
  height = self->_barcodeMaxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end