@interface IMImageBlur
- (BOOL)hasModifications;
- (IMImageBlur)initWithStyle:(int64_t)style radius:(double)radius;
- (id)_backdropBlurSettings;
- (id)_blurredImageFromSourceImage:(id)image;
- (id)_newBackdropSettings;
- (id)modificationCacheKey;
@end

@implementation IMImageBlur

- (IMImageBlur)initWithStyle:(int64_t)style radius:(double)radius
{
  v7.receiver = self;
  v7.super_class = IMImageBlur;
  result = [(IMImageBlur *)&v7 init];
  if (result)
  {
    result->_style = style;
    result->_radius = radius;
  }

  return result;
}

- (id)modificationCacheKey
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(IMImageBlur *)self hasModifications])
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v5 = v4;

    style = [(IMImageBlur *)self style];
    if (!style)
    {
      v8 = @"none";
      goto LABEL_6;
    }

    v7 = style;
    if (style == 1)
    {
      v8 = @"light";
LABEL_6:
      [(IMImageBlur *)self radius];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"blur{%@, radius-%f}@%dx", v8, v9, v5];
      goto LABEL_11;
    }

    defaultCategory = [MEMORY[0x277D3DA88] defaultCategory];
    if (os_log_type_enabled(defaultCategory, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = v7;
      _os_log_impl(&dword_21B365000, defaultCategory, OS_LOG_TYPE_ERROR, "Invalid or unimplemented blurStyle encountered (%d)", buf, 8u);
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)hasModifications
{
  style = [(IMImageBlur *)self style];
  if (style)
  {
    [(IMImageBlur *)self radius];
    LOBYTE(style) = v4 > 0.00000011920929;
  }

  return style;
}

- (id)_blurredImageFromSourceImage:(id)image
{
  imageCopy = image;
  _backdropBlurSettings = [(IMImageBlur *)self _backdropBlurSettings];
  if (_backdropBlurSettings)
  {
    v6 = [imageCopy _applyBackdropViewSettings:_backdropBlurSettings includeTints:1 includeBlur:1 allowImageResizing:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_backdropBlurSettings
{
  if ([(IMImageBlur *)self hasModifications])
  {
    _newBackdropSettings = [(IMImageBlur *)self _newBackdropSettings];
    [(IMImageBlur *)self radius];
    [_newBackdropSettings setBlurRadius:?];
  }

  else
  {
    _newBackdropSettings = 0;
  }

  return _newBackdropSettings;
}

- (id)_newBackdropSettings
{
  v8 = *MEMORY[0x277D85DE8];
  style = self->_style;
  if (style)
  {
    if (style == 1)
    {
      [(IMImageBlur *)self _lightBackdropBlurSettings];
      return objc_claimAutoreleasedReturnValue();
    }

    defaultCategory = [MEMORY[0x277D3DA88] defaultCategory];
    if (os_log_type_enabled(defaultCategory, OS_LOG_TYPE_ERROR))
    {
      v6 = self->_style;
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(&dword_21B365000, defaultCategory, OS_LOG_TYPE_ERROR, "Invalid or unimplemented blurStyle encountered (%d)", v7, 8u);
    }
  }

  return 0;
}

@end