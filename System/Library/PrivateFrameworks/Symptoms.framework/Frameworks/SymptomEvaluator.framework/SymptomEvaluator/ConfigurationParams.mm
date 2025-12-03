@interface ConfigurationParams
- (ConfigurationParams)init;
- (id)extractStringFromKey:(id)key defaultTo:(id)to;
- (int)extractKey:(id)key toBOOL:(BOOL *)l defaultTo:(BOOL)to;
- (int)extractKey:(id)key toDouble:(double *)double defaultTo:(double)to;
- (int)extractKey:(id)key toNSUInteger:(unint64_t *)integer defaultTo:(unint64_t)to;
- (int)extractKey:(id)key toUint32:(unsigned int *)uint32 defaultTo:(unsigned int)to;
- (int)extractKey:(id)key toUint64:(unint64_t *)uint64 defaultTo:(unint64_t)to;
@end

@implementation ConfigurationParams

- (int)extractKey:(id)key toDouble:(double *)double defaultTo:(double)to
{
  v29 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v9 = [(NSDictionary *)self->_underlyingDictionary objectForKeyedSubscript:keyCopy];
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
        v20 = *double;
        *v24 = 138412802;
        *&v24[4] = keyCopy;
        v25 = 2048;
        toCopy = v11;
        v27 = 2048;
        v28 = v20;
        _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Set key %@ to new value %f, was %f", v24, 0x20u);
      }

      to = v11;
    }

    else if (v13)
    {
      *v24 = 138412546;
      *&v24[4] = keyCopy;
      v25 = 2048;
      toCopy = to;
      _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Reset key %@ to default value %f", v24, 0x16u);
    }

    *double = to;
    v14 = 1;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v9;
    uTF8String = [v15 UTF8String];
    if (uTF8String)
    {
      v17 = uTF8String;
      *v24 = uTF8String;
      v11 = strtod(uTF8String, v24);
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
    *&v24[4] = keyCopy;
    v25 = 2112;
    toCopy = *&v9;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, "Unable to parse key %@ value %@", v24, 0x16u);
  }

  v14 = -1;
LABEL_24:

  v22 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int)extractKey:(id)key toUint64:(unint64_t *)uint64 defaultTo:(unint64_t)to
{
  v26 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v9 = [(NSDictionary *)self->_underlyingDictionary objectForKeyedSubscript:keyCopy];
  if (!v9)
  {
    v14 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedLongLongValue = [v9 unsignedLongLongValue];
LABEL_4:
    logHandle = self->_logHandle;
    v12 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
    if (unsignedLongLongValue)
    {
      if (v12)
      {
        v13 = *uint64;
        v20 = 138412802;
        v21 = keyCopy;
        v22 = 2048;
        toCopy = unsignedLongLongValue;
        v24 = 2048;
        v25 = v13;
        _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Set key %@ to new value %llu, was %llu", &v20, 0x20u);
      }

      to = unsignedLongLongValue;
    }

    else if (v12)
    {
      v20 = 138412546;
      v21 = keyCopy;
      v22 = 2048;
      toCopy = to;
      _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Reset key %@ to default value %llu", &v20, 0x16u);
    }

    *uint64 = to;
    v14 = 1;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uTF8String = [v9 UTF8String];
    if (uTF8String)
    {
      v16 = uTF8String;
      *__error() = 0;
      unsignedLongLongValue = strtoull(v16, 0, 0);
      if (unsignedLongLongValue || !*__error())
      {
        goto LABEL_4;
      }
    }
  }

  v17 = self->_logHandle;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = 138412546;
    v21 = keyCopy;
    v22 = 2112;
    toCopy = v9;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Unable to parse key %@ value %@", &v20, 0x16u);
  }

  v14 = -1;
LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int)extractKey:(id)key toUint32:(unsigned int *)uint32 defaultTo:(unsigned int)to
{
  *&v23[5] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v9 = [(NSDictionary *)self->_underlyingDictionary objectForKeyedSubscript:keyCopy];
  if (!v9)
  {
    v14 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntValue = [v9 unsignedIntValue];
LABEL_4:
    logHandle = self->_logHandle;
    v12 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
    if (unsignedIntValue)
    {
      if (v12)
      {
        v13 = *uint32;
        v20 = 138412802;
        v21 = keyCopy;
        v22 = 1024;
        *v23 = unsignedIntValue;
        v23[2] = 1024;
        *&v23[3] = v13;
        _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Set key %@ to new value %u, was %u", &v20, 0x18u);
      }

      to = unsignedIntValue;
    }

    else if (v12)
    {
      v20 = 138412546;
      v21 = keyCopy;
      v22 = 1024;
      *v23 = to;
      _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Reset key %@ to default value %u", &v20, 0x12u);
    }

    *uint32 = to;
    v14 = 1;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uTF8String = [v9 UTF8String];
    if (uTF8String)
    {
      v16 = uTF8String;
      *__error() = 0;
      unsignedIntValue = strtoul(v16, 0, 0);
      if (unsignedIntValue || !*__error())
      {
        goto LABEL_4;
      }
    }
  }

  v17 = self->_logHandle;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = 138412546;
    v21 = keyCopy;
    v22 = 2112;
    *v23 = v9;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Unable to parse key %@ value %@", &v20, 0x16u);
  }

  v14 = -1;
LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int)extractKey:(id)key toNSUInteger:(unint64_t *)integer defaultTo:(unint64_t)to
{
  v26 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v9 = [(NSDictionary *)self->_underlyingDictionary objectForKeyedSubscript:keyCopy];
  if (!v9)
  {
    v14 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [v9 unsignedIntegerValue];
LABEL_4:
    logHandle = self->_logHandle;
    v12 = os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT);
    if (unsignedIntegerValue)
    {
      if (v12)
      {
        v13 = *integer;
        v20 = 138412802;
        v21 = keyCopy;
        v22 = 2048;
        toCopy = unsignedIntegerValue;
        v24 = 2048;
        v25 = v13;
        _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Set key %@ to new value %llu, was %llu", &v20, 0x20u);
      }

      to = unsignedIntegerValue;
    }

    else if (v12)
    {
      v20 = 138412546;
      v21 = keyCopy;
      v22 = 2048;
      toCopy = to;
      _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Reset key %@ to default value %llu", &v20, 0x16u);
    }

    *integer = to;
    v14 = 1;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uTF8String = [v9 UTF8String];
    if (uTF8String)
    {
      v16 = uTF8String;
      *__error() = 0;
      unsignedIntegerValue = strtoul(v16, 0, 0);
      if (unsignedIntegerValue || !*__error())
      {
        goto LABEL_4;
      }
    }
  }

  v17 = self->_logHandle;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v20 = 138412546;
    v21 = keyCopy;
    v22 = 2112;
    toCopy = v9;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Unable to parse key %@ value %@", &v20, 0x16u);
  }

  v14 = -1;
LABEL_19:

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (int)extractKey:(id)key toBOOL:(BOOL *)l defaultTo:(BOOL)to
{
  toCopy = to;
  v27 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v9 = [(NSDictionary *)self->_underlyingDictionary objectForKeyedSubscript:keyCopy];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      longValue = [v9 longValue];
      if (longValue > 1)
      {
        logHandle = self->_logHandle;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412546;
          v22 = keyCopy;
          v23 = 2048;
          v24 = toCopy;
          _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Reset key %@ to default value %llu", &v21, 0x16u);
        }

LABEL_13:
        *l = toCopy;
        v12 = 1;
        goto LABEL_18;
      }

LABEL_10:
      v16 = self->_logHandle;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *l;
        v21 = 138412802;
        v22 = keyCopy;
        v23 = 2048;
        v24 = longValue;
        v25 = 2048;
        v26 = v17;
        _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "Set key %@ to new value %llu, was %llu", &v21, 0x20u);
      }

      LOBYTE(toCopy) = longValue;
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [v9 UTF8String];
      if (uTF8String)
      {
        v14 = uTF8String;
        *__error() = 0;
        v15 = strtol(v14, 0, 0);
        longValue = v15 != 0;
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
      v22 = keyCopy;
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

- (id)extractStringFromKey:(id)key defaultTo:(id)to
{
  v19 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  toCopy = to;
  v8 = [(NSDictionary *)self->_underlyingDictionary objectForKeyedSubscript:keyCopy];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v8;
    if ([v9 length])
    {
      logHandle = self->_logHandle;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = keyCopy;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_23255B000, logHandle, OS_LOG_TYPE_DEFAULT, "Set key %@ to new value %@", &v15, 0x16u);
      }

      v11 = v9;
    }

    else
    {
      v11 = toCopy;

      v14 = self->_logHandle;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412546;
        v16 = keyCopy;
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