@interface PSPearlStream
+ (id)pearlStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 width:(unint64_t)a5 height:(unint64_t)a6 pixelFormat:(unsigned int)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)validate:(id *)a3;
- (PSPearlStream)init;
- (PSPearlStream)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PSPearlStream;
  [(PSResourceStream *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_width forKey:@"width"];
  [v4 encodeInteger:self->_height forKey:@"height"];
  [v4 encodeInt32:self->_pixelFormat forKey:@"pixelFormat"];
  [v4 encodeInteger:self->_dxWidth forKey:@"dxWidth"];
  [v4 encodeInteger:self->_dxHeight forKey:@"dxHeight"];
  [v4 encodeInt32:self->_dxPixelFormat forKey:@"dxPixelFormat"];
  [v4 encodeInteger:self->_dyWidth forKey:@"dyWidth"];
  [v4 encodeInteger:self->_dyHeight forKey:@"dyHeight"];
  [v4 encodeInt32:self->_dyPixelFormat forKey:@"dyPixelFormat"];
  [v4 encodeInteger:self->_scoreWidth forKey:@"scoreWidth"];
  [v4 encodeInteger:self->_scoreHeight forKey:@"scoreHeight"];
  [v4 encodeInteger:self->_scorePixelFormat forKey:@"scorePixelFormat"];
}

- (PSPearlStream)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PSPearlStream;
  v5 = [(PSResourceStream *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(PSResourceStream *)v5 setResourceClass:11];
    v6->_width = [v4 decodeIntegerForKey:@"width"];
    v6->_height = [v4 decodeIntegerForKey:@"height"];
    v6->_pixelFormat = [v4 decodeInt32ForKey:@"pixelFormat"];
    v6->_dxWidth = [v4 decodeIntegerForKey:@"dxWidth"];
    v6->_dxHeight = [v4 decodeIntegerForKey:@"dxHeight"];
    v6->_dxPixelFormat = [v4 decodeInt32ForKey:@"dxPixelFormat"];
    v6->_dyWidth = [v4 decodeIntegerForKey:@"dyWidth"];
    v6->_dyHeight = [v4 decodeIntegerForKey:@"dyHeight"];
    v6->_dyPixelFormat = [v4 decodeInt32ForKey:@"dyPixelFormat"];
    v6->_scoreWidth = [v4 decodeIntegerForKey:@"scoreWidth"];
    v6->_scoreHeight = [v4 decodeIntegerForKey:@"scoreHeight"];
    v6->_scorePixelFormat = [v4 decodeInt32ForKey:@"scorePixelFormat"];
    v7 = v6;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v19 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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

+ (id)pearlStreamWithResourceKey:(id)a3 options:(ps_resource_options *)a4 width:(unint64_t)a5 height:(unint64_t)a6 pixelFormat:(unsigned int)a7
{
  v11 = a3;
  v12 = objc_alloc_init(PSPearlStream);
  [(PSResourceStream *)v12 setKey:v11];
  [(PSResourceStream *)v12 setProvider:9];
  v12->_width = a5;
  v12->_height = a6;
  v12->_pixelFormat = a7;
  [(PSPearlStream *)v12 setHasAttachments:0];
  [(PSResourceStream *)v12 setOptions:a4->storage_mode, a4->creation_mode];

  return v12;
}

- (BOOL)validate:(id *)a3
{
  if ([(PSResourceStream *)self resourceClass]!= 9)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Resource Class invalid"];
    if (!a3)
    {
      goto LABEL_22;
    }

LABEL_21:
    *a3 = [MEMORY[0x277CCA9B8] internalErrorWithCode:-4 description:v9];
    goto LABEL_22;
  }

  v5 = [(PSResourceStream *)self key];

  if (!v5)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stream key invalid"];
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  [(PSResourceStream *)self options];
  if (!v6)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.creation_mode invalid for the stream"];
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ([(PSResourceStream *)self options]== 0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"options.storage_mode invalid for the stream"];
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  [(PSResourceStream *)self options];
  if (v7 == 1 && (!self->_width || !self->_height))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"CVDataBuffer properties required for descriptor mode (options.creation_mode)"];
    if (!a3)
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
  if (a3)
  {
    goto LABEL_21;
  }

LABEL_22:

  return 0;
}

@end