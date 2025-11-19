@interface PRDictionary
- (PRDictionary)initWithURL:(id)a3 fallbackURL:(id)a4;
- (id)description;
- (id)dictionaryAtIndex:(unint64_t)a3;
- (id)parameterBundle;
- (id)transformerParameterBundle;
- (void)dealloc;
@end

@implementation PRDictionary

- (PRDictionary)initWithURL:(id)a3 fallbackURL:(id)a4
{
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a3 options:8 error:0];
  v8 = [v7 bytes];
  v9 = [v7 length];
  if (v9 >= 0x404 && *v8 == 104 && v8[1] == 177 && v8[2] == 77 && v8[3] == 28)
  {
    v10 = v9;
    v30.receiver = self;
    v30.super_class = PRDictionary;
    self = [(PRDictionary *)&v30 init];
    if (self)
    {
      v29 = [MEMORY[0x1E695DF90] dictionary];
      v28 = [MEMORY[0x1E695DF90] dictionary];
      v27 = [MEMORY[0x1E695DF90] dictionary];
      for (i = 128; i != 64; --i)
      {
        v12 = *&v8[4 * i];
        v13 = bswap32(v12);
        if (v12)
        {
          v14 = v10 > v13;
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          v15 = [MEMORY[0x1E695DEF0] dataWithBytes:&v8[v13] length:v10 - v13];
          v16 = [MEMORY[0x1E696AE40] propertyListWithData:v15 options:0 format:0 error:0];
          if (v16)
          {
            v17 = v16;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v27 setObject:v17 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", i - 65)}];
            }
          }

          v10 = v13;
        }
      }

      v18 = 64;
      do
      {
        v19 = *&v8[4 * v18];
        v20 = bswap32(v19);
        if (v19)
        {
          v21 = v10 > v20;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
          [v29 setObject:v22 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v18 - 1)}];
          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:(v10 - v20) >> 2];
          [v28 setObject:v23 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v18 - 1)}];
          v10 = v20;
        }

        --v18;
      }

      while (v18);
      v24 = [v27 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", 5)}];
      if (v24)
      {
        v24 = [objc_alloc(MEMORY[0x1E6977A70]) initWithDictionaryRepresentation:v24 error:0];
      }

      v25 = [v27 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", 6)}];
      if (v25)
      {
        v25 = [objc_alloc(MEMORY[0x1E6977A70]) initWithDictionaryRepresentation:v25 error:0];
      }

      self->_url = [a3 copy];
      self->_data = v7;
      self->_offsetsDictionary = v29;
      self->_numEntriesDictionary = v28;
      self->_dictionariesDictionary = v27;
      self->_parameterBundle = v24;
      self->_transformerParameterBundle = v25;
      if (a4 && ([a3 isEqual:a4] & 1) == 0)
      {
        self->_fallbackDictionary = [[PRDictionary alloc] initWithURL:a4 fallbackURL:0];
      }
    }
  }

  return self;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = PRDictionary;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@<%@>", -[PRDictionary description](&v3, sel_description), self->_url];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRDictionary;
  [(PRDictionary *)&v3 dealloc];
}

- (id)dictionaryAtIndex:(unint64_t)a3
{
  result = -[NSDictionary objectForKey:](self->_dictionariesDictionary, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?]);
  if (!result)
  {
    fallbackDictionary = self->_fallbackDictionary;

    return [(PRDictionary *)fallbackDictionary dictionaryAtIndex:a3];
  }

  return result;
}

- (id)parameterBundle
{
  if (self->_parameterBundle)
  {
    return self->_parameterBundle;
  }

  else
  {
    return [(PRDictionary *)self->_fallbackDictionary parameterBundle];
  }
}

- (id)transformerParameterBundle
{
  if (self->_transformerParameterBundle)
  {
    return self->_transformerParameterBundle;
  }

  else
  {
    return [(PRDictionary *)self->_fallbackDictionary transformerParameterBundle];
  }
}

@end