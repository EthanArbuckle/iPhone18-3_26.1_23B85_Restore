@interface IMImageBlur
- (BOOL)hasModifications;
- (IMImageBlur)initWithStyle:(int64_t)a3 radius:(double)a4;
- (id)_backdropBlurSettings;
- (id)_blurredImageFromSourceImage:(id)a3;
- (id)_newBackdropSettings;
- (id)modificationCacheKey;
@end

@implementation IMImageBlur

- (IMImageBlur)initWithStyle:(int64_t)a3 radius:(double)a4
{
  v7.receiver = self;
  v7.super_class = IMImageBlur;
  result = [(IMImageBlur *)&v7 init];
  if (result)
  {
    result->_style = a3;
    result->_radius = a4;
  }

  return result;
}

- (id)modificationCacheKey
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(IMImageBlur *)self hasModifications])
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 scale];
    v5 = v4;

    v6 = [(IMImageBlur *)self style];
    if (!v6)
    {
      v8 = @"none";
      goto LABEL_6;
    }

    v7 = v6;
    if (v6 == 1)
    {
      v8 = @"light";
LABEL_6:
      [(IMImageBlur *)self radius];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"blur{%@, radius-%f}@%dx", v8, v9, v5];
      goto LABEL_11;
    }

    v11 = [MEMORY[0x277D3DA88] defaultCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = v7;
      _os_log_impl(&dword_21B365000, v11, OS_LOG_TYPE_ERROR, "Invalid or unimplemented blurStyle encountered (%d)", buf, 8u);
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)hasModifications
{
  v3 = [(IMImageBlur *)self style];
  if (v3)
  {
    [(IMImageBlur *)self radius];
    LOBYTE(v3) = v4 > 0.00000011920929;
  }

  return v3;
}

- (id)_blurredImageFromSourceImage:(id)a3
{
  v4 = a3;
  v5 = [(IMImageBlur *)self _backdropBlurSettings];
  if (v5)
  {
    v6 = [v4 _applyBackdropViewSettings:v5 includeTints:1 includeBlur:1 allowImageResizing:0];
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
    v3 = [(IMImageBlur *)self _newBackdropSettings];
    [(IMImageBlur *)self radius];
    [v3 setBlurRadius:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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

    v5 = [MEMORY[0x277D3DA88] defaultCategory];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = self->_style;
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(&dword_21B365000, v5, OS_LOG_TYPE_ERROR, "Invalid or unimplemented blurStyle encountered (%d)", v7, 8u);
    }
  }

  return 0;
}

@end