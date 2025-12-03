@interface PSPearlStream
+ (id)pearlStreamWithResourceKey:(id)key options:(ps_resource_options *)options width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
- (BOOL)isEqual:(id)equal;
- (BOOL)validate:(id *)validate;
- (PSPearlStream)init;
- (PSPearlStream)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSPearlStream

- (PSPearlStream)init
{
  v5.receiver = self;
  v5.super_class = PSPearlStream;
  v2 = [(PSResourceStream *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSResourceStream *)v2 setResourceClass:11];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = PSPearlStream;
  [(PSResourceStream *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_width forKey:@"width"];
  [coderCopy encodeInteger:self->_height forKey:@"height"];
  [coderCopy encodeInt32:self->_pixelFormat forKey:@"pixelFormat"];
  [coderCopy encodeInteger:self->_dxWidth forKey:@"dxWidth"];
  [coderCopy encodeInteger:self->_dxHeight forKey:@"dxHeight"];
  [coderCopy encodeInt32:self->_dxPixelFormat forKey:@"dxPixelFormat"];
  [coderCopy encodeInteger:self->_dyWidth forKey:@"dyWidth"];
  [coderCopy encodeInteger:self->_dyHeight forKey:@"dyHeight"];
  [coderCopy encodeInt32:self->_dyPixelFormat forKey:@"dyPixelFormat"];
  [coderCopy encodeInteger:self->_scoreWidth forKey:@"scoreWidth"];
  [coderCopy encodeInteger:self->_scoreHeight forKey:@"scoreHeight"];
  [coderCopy encodeInteger:self->_scorePixelFormat forKey:@"scorePixelFormat"];
}

- (PSPearlStream)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PSPearlStream;
  v5 = [(PSResourceStream *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    [(PSResourceStream *)v5 setResourceClass:11];
    v6->_width = [coderCopy decodeIntegerForKey:@"width"];
    v6->_height = [coderCopy decodeIntegerForKey:@"height"];
    v6->_pixelFormat = [coderCopy decodeInt32ForKey:@"pixelFormat"];
    v6->_dxWidth = [coderCopy decodeIntegerForKey:@"dxWidth"];
    v6->_dxHeight = [coderCopy decodeIntegerForKey:@"dxHeight"];
    v6->_dxPixelFormat = [coderCopy decodeInt32ForKey:@"dxPixelFormat"];
    v6->_dyWidth = [coderCopy decodeIntegerForKey:@"dyWidth"];
    v6->_dyHeight = [coderCopy decodeIntegerForKey:@"dyHeight"];
    v6->_dyPixelFormat = [coderCopy decodeInt32ForKey:@"dyPixelFormat"];
    v6->_scoreWidth = [coderCopy decodeIntegerForKey:@"scoreWidth"];
    v6->_scoreHeight = [coderCopy decodeIntegerForKey:@"scoreHeight"];
    v6->_scorePixelFormat = [coderCopy decodeInt32ForKey:@"scorePixelFormat"];
    v7 = v6;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v19 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v21.receiver = self;
    v21.super_class = PSPearlStream;
    if (![(PSResourceStream *)&v21 isEqual:v6])
    {
      goto LABEL_19;
    }

    width = self->_width;
    if (width != [(PSPearlStream *)v6 width])
    {
      goto LABEL_19;
    }

    height = self->_height;
    if (height != [(PSPearlStream *)v6 height])
    {
      goto LABEL_19;
    }

    pixelFormat = self->_pixelFormat;
    if (pixelFormat != [(PSPearlStream *)v6 pixelFormat])
    {
      goto LABEL_19;
    }

    dxWidth = self->_dxWidth;
    if (dxWidth != [(PSPearlStream *)v6 dxWidth])
    {
      goto LABEL_19;
    }

    dxHeight = self->_dxHeight;
    if (dxHeight == [(PSPearlStream *)v6 dxHeight]&& (dxPixelFormat = self->_dxPixelFormat, dxPixelFormat == [(PSPearlStream *)v6 dxPixelFormat]) && (dyWidth = self->_dyWidth, dyWidth == [(PSPearlStream *)v6 dyWidth]) && (dyHeight = self->_dyHeight, dyHeight == [(PSPearlStream *)v6 dyHeight]) && (dyPixelFormat = self->_dyPixelFormat, dyPixelFormat == [(PSPearlStream *)v6 dyPixelFormat]) && (scoreWidth = self->_scoreWidth, scoreWidth == [(PSPearlStream *)v6 scoreWidth]) && (scoreHeight = self->_scoreHeight, scoreHeight == [(PSPearlStream *)v6 scoreHeight]))
    {
      scorePixelFormat = self->_scorePixelFormat;
      v19 = scorePixelFormat == [(PSPearlStream *)v6 scorePixelFormat];
    }

    else
    {
LABEL_19:
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)pearlStreamWithResourceKey:(id)key options:(ps_resource_options *)options width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  keyCopy = key;
  v12 = objc_alloc_init(PSPearlStream);
  [(PSResourceStream *)v12 setKey:keyCopy];
  [(PSResourceStream *)v12 setProvider:9];
  v12->_width = width;
  v12->_height = height;
  v12->_pixelFormat = format;
  [(PSPearlStream *)v12 setHasAttachments:0];
  [(PSResourceStream *)v12 setOptions:options->storage_mode, options->creation_mode];

  return v12;
}

- (BOOL)validate:(id *)validate
{
  if ([(PSResourceStream *)self resourceClass]!= 9)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource Class invalid"];
    if (!validate)
    {
      goto LABEL_22;
    }

LABEL_21:
    *validate = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v9];
    goto LABEL_22;
  }

  v5 = [(PSResourceStream *)self key];

  if (!v5)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream key invalid"];
    if (!validate)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  [(PSResourceStream *)self options];
  if (!v6)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.creation_mode invalid for the stream"];
    if (!validate)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ([(PSResourceStream *)self options]== 0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.storage_mode invalid for the stream"];
    if (!validate)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  [(PSResourceStream *)self options];
  if (v7 == 1 && (!self->_width || !self->_height))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"CVDataBuffer properties required for descriptor mode (options.creation_mode)"];
    if (!validate)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  [(PSResourceStream *)self options];
  if (v8 != 2)
  {
    return 1;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Pearl Stream should never have a creation mode with allocator since it is unsupported"];
  if (validate)
  {
    goto LABEL_21;
  }

LABEL_22:

  return 0;
}

@end