@interface ConfigurationParams
- (ConfigurationParams)init;
- (id)extractStringFromKey:(id)a3 defaultTo:(id)a4;
- (int)extractKey:(id)a3 toBOOL:(BOOL *)a4 defaultTo:(BOOL)a5;
- (int)extractKey:(id)a3 toDouble:(double *)a4 defaultTo:(double)a5;
- (int)extractKey:(id)a3 toNSUInteger:(unint64_t *)a4 defaultTo:(unint64_t)a5;
- (int)extractKey:(id)a3 toUint32:(unsigned int *)a4 defaultTo:(unsigned int)a5;
- (int)extractKey:(id)a3 toUint64:(unint64_t *)a4 defaultTo:(unint64_t)a5;
@end

@implementation ConfigurationParams

- (int)extractKey:(id)a3 toDouble:(double *)a4 defaultTo:(double)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(NSDictionary *)self->_underlyingDictionary objectForKeyedSubscript:v8];
  if (!v9)
  {
    v14 = 0;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 doubleValue];
    v11 = v10;
LABEL_4:
    logHandle = self->_logHandle;
    v13 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
    if (v11 >= 0.0)
    {
      if (v13)
      {
        v20 = *a4;
        *v24 = 138412802;
        *&v24[4] = v8;
        v25 = 2048;
        v26 = v11;
        v27 = 2048;
        v28 = v20;
        _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Set key %@ to new value %f, was %f", v24, 0x20u);
      }

      a5 = v11;
    }

    else if (v13)
    {
      *v24 = 138412546;
      *&v24[4] = v8;
      v25 = 2048;
      v26 = a5;
      _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Reset key %@ to default value %f", v24, 0x16u);
    }

    *a4 = a5;
    v14 = 1;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v9;
    v16 = [v15 UTF8String];
    if (v16)
    {
      v17 = v16;
      *v24 = v16;
      v11 = strtod(v16, v24);
      v18 = *v24;

      if (v11 != 0.0 || v18 != v17)
      {
        goto LABEL_4;
      }
    }

    else
    {
    }
  }

  v21 = self->_logHandle;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *v24 = 138412546;
    *&v24[4] = v8;
    v25 = 2112;
    v26 = *&v9;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "Unable to parse key %@ value %@", v24, 0x16u);
  }

  v14 = -1;
LABEL_24:

  v22 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int)extractKey:(id)a3 toUint64:(unint64_t *)a4 defaultTo:(unint64_t)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(NSDictionary *)self->_underlyingDictionary objectForKeyedSubscript:v8];
  if (!v9)
  {
    v14 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 unsignedLongLongValue];
LABEL_4:
    logHandle = self->_logHandle;
    v12 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = *a4;
        v20 = 138412802;
        v21 = v8;
        v22 = 2048;
        v23 = v10;
        v24 = 2048;
        v25 = v13;
        _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Set key %@ to new value %llu, was %llu", &v20, 0x20u);
      }

      a5 = v10;
    }

    else if (v12)
    {
      v20 = 138412546;
      v21 = v8;
      v22 = 2048;
      v23 = a5;
      _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Reset key %@ to default value %llu", &v20, 0x16u);
    }

    *a4 = a5;
    v14 = 1;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v9 UTF8String];
    if (v15)
    {
      v16 = v15;
      *__error() = 0;
      v10 = strtoull(v16, 0, 0);
      if (v10 || !*__error())
      {
        goto LABEL_4;
      }
    }
  }

  v17 = self->_logHandle;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = 138412546;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Unable to parse key %@ value %@", &v20, 0x16u);
  }

  v14 = -1;
LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int)extractKey:(id)a3 toUint32:(unsigned int *)a4 defaultTo:(unsigned int)a5
{
  *&v23[5] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(NSDictionary *)self->_underlyingDictionary objectForKeyedSubscript:v8];
  if (!v9)
  {
    v14 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 unsignedIntValue];
LABEL_4:
    logHandle = self->_logHandle;
    v12 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = *a4;
        v20 = 138412802;
        v21 = v8;
        v22 = 1024;
        *v23 = v10;
        v23[2] = 1024;
        *&v23[3] = v13;
        _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Set key %@ to new value %u, was %u", &v20, 0x18u);
      }

      a5 = v10;
    }

    else if (v12)
    {
      v20 = 138412546;
      v21 = v8;
      v22 = 1024;
      *v23 = a5;
      _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Reset key %@ to default value %u", &v20, 0x12u);
    }

    *a4 = a5;
    v14 = 1;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v9 UTF8String];
    if (v15)
    {
      v16 = v15;
      *__error() = 0;
      v10 = strtoul(v16, 0, 0);
      if (v10 || !*__error())
      {
        goto LABEL_4;
      }
    }
  }

  v17 = self->_logHandle;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = 138412546;
    v21 = v8;
    v22 = 2112;
    *v23 = v9;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Unable to parse key %@ value %@", &v20, 0x16u);
  }

  v14 = -1;
LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int)extractKey:(id)a3 toNSUInteger:(unint64_t *)a4 defaultTo:(unint64_t)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(NSDictionary *)self->_underlyingDictionary objectForKeyedSubscript:v8];
  if (!v9)
  {
    v14 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 unsignedIntegerValue];
LABEL_4:
    logHandle = self->_logHandle;
    v12 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        v13 = *a4;
        v20 = 138412802;
        v21 = v8;
        v22 = 2048;
        v23 = v10;
        v24 = 2048;
        v25 = v13;
        _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Set key %@ to new value %llu, was %llu", &v20, 0x20u);
      }

      a5 = v10;
    }

    else if (v12)
    {
      v20 = 138412546;
      v21 = v8;
      v22 = 2048;
      v23 = a5;
      _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Reset key %@ to default value %llu", &v20, 0x16u);
    }

    *a4 = a5;
    v14 = 1;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v9 UTF8String];
    if (v15)
    {
      v16 = v15;
      *__error() = 0;
      v10 = strtoul(v16, 0, 0);
      if (v10 || !*__error())
      {
        goto LABEL_4;
      }
    }
  }

  v17 = self->_logHandle;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = 138412546;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Unable to parse key %@ value %@", &v20, 0x16u);
  }

  v14 = -1;
LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int)extractKey:(id)a3 toBOOL:(BOOL *)a4 defaultTo:(BOOL)a5
{
  v5 = a5;
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(NSDictionary *)self->_underlyingDictionary objectForKeyedSubscript:v8];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 longValue];
      if (v10 > 1)
      {
        logHandle = self->_logHandle;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412546;
          v22 = v8;
          v23 = 2048;
          v24 = v5;
          _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Reset key %@ to default value %llu", &v21, 0x16u);
        }

LABEL_13:
        *a4 = v5;
        v12 = 1;
        goto LABEL_18;
      }

LABEL_10:
      v16 = self->_logHandle;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *a4;
        v21 = 138412802;
        v22 = v8;
        v23 = 2048;
        v24 = v10;
        v25 = 2048;
        v26 = v17;
        _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "Set key %@ to new value %llu, was %llu", &v21, 0x20u);
      }

      LOBYTE(v5) = v10;
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v9 UTF8String];
      if (v13)
      {
        v14 = v13;
        *__error() = 0;
        v15 = strtol(v14, 0, 0);
        v10 = v15 != 0;
        if (v15 || !*__error())
        {
          goto LABEL_10;
        }
      }
    }

    v18 = self->_logHandle;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412546;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "extractKey:toBOOL: Unable to parse key %@ value %@", &v21, 0x16u);
    }

    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

LABEL_18:

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)extractStringFromKey:(id)a3 defaultTo:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NSDictionary *)self->_underlyingDictionary objectForKeyedSubscript:v6];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v8;
    if ([v9 length])
    {
      logHandle = self->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = v6;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Set key %@ to new value %@", &v15, 0x16u);
      }

      v11 = v9;
    }

    else
    {
      v11 = v7;

      v14 = self->_logHandle;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = v6;
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Reset key %@ to default value %@", &v15, 0x16u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (ConfigurationParams)init
{
  v5.receiver = self;
  v5.super_class = ConfigurationParams;
  v2 = [(ConfigurationParams *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_logHandle, configurationLogHandle);
  }

  return v3;
}

@end