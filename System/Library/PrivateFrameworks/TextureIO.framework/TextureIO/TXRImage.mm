@interface TXRImage
- (TXRBuffer)buffer;
- (TXRImage)initWithBytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image buffer:(id)buffer offset:(unint64_t)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initAsLevel:(unint64_t)level element:(unint64_t)element face:(unint64_t)face dataSourceProvider:(id)provider;
- (void)deferredProvide;
@end

@implementation TXRImage

- (void)deferredProvide
{
  dataSourceProvider = self->_dataSourceProvider;
  if (dataSourceProvider)
  {
    v7 = [(TXRDataSourceProvider *)dataSourceProvider provideImageInfoAtLevel:self->_level element:self->_element face:self->_face];
    buffer = [v7 buffer];
    buffer = self->_buffer;
    self->_buffer = buffer;

    self->_offset = [v7 offset];
    self->_bytesPerRow = [v7 bytesPerRow];
    self->_bytesPerImage = [v7 bytesPerImage];
    v6 = self->_dataSourceProvider;
    self->_dataSourceProvider = 0;
  }
}

- (TXRBuffer)buffer
{
  [(TXRImage *)self deferredProvide];
  buffer = self->_buffer;

  return buffer;
}

- (TXRImage)initWithBytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image buffer:(id)buffer offset:(unint64_t)offset
{
  bufferCopy = buffer;
  v16.receiver = self;
  v16.super_class = TXRImage;
  v12 = [(TXRImage *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_buffer, buffer);
    v13->_bytesPerImage = image;
    v13->_bytesPerRow = row;
    v13->_offset = offset;
    v13->_face = -1;
    v13->_element = 0;
    dataSourceProvider = v13->_dataSourceProvider;
    v13->_level = 0;
    v13->_dataSourceProvider = 0;
  }

  return v13;
}

- (id)initAsLevel:(unint64_t)level element:(unint64_t)element face:(unint64_t)face dataSourceProvider:(id)provider
{
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = TXRImage;
  v12 = [(TXRImage *)&v16 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    v12->_element = element;
    v12->_level = level;
    v12->_face = face;
    buffer = v12->_buffer;
    v12->_buffer = 0;
    v12->_offset = -1;

    objc_storeStrong(p_isa + 9, provider);
  }

  return p_isa;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[TXRImage allocWithZone:](TXRImage init];
  v5->_offset = self->_offset;
  if (self->_dataSourceProvider)
  {
    v6 = 0;
    v5->_face = self->_face;
    v5->_element = self->_element;
    v5->_level = self->_level;
  }

  else
  {
    v6 = [(TXRBuffer *)self->_buffer copyWithZone:zone];
  }

  buffer = v5->_buffer;
  v5->_buffer = v6;

  return v5;
}

@end