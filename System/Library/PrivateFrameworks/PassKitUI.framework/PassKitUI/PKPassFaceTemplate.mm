@interface PKPassFaceTemplate
- (CGSize)barcodeMaxSize;
- (PKPassFieldTemplate)defaultFieldTemplate;
- (id)templateForBucketAtIndex:(unint64_t)a3;
- (void)addBucketTemplate:(id)a3;
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

- (void)addBucketTemplate:(id)a3
{
  v4 = a3;
  bucketTemplates = self->_bucketTemplates;
  v8 = v4;
  if (!bucketTemplates)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_bucketTemplates;
    self->_bucketTemplates = v6;

    v4 = v8;
    bucketTemplates = self->_bucketTemplates;
  }

  [(NSMutableArray *)bucketTemplates addObject:v4];
}

- (id)templateForBucketAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_bucketTemplates count]<= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_bucketTemplates objectAtIndex:a3];
    v6 = [v5 defaultFieldTemplate];
    v7 = [PKPassFieldTemplate _templateByResolvingTemplate:v6 withDefault:self->_defaultFieldTemplate];

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