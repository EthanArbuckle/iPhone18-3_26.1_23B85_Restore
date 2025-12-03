@interface WAMessage
- (WAMessage)initWithCoder:(id)coder;
- (WAMessage)initWithMetricName:(id)name options:(int64_t)options;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addFieldForKey:(id)key value:(id)value options:(int64_t)options;
- (void)addFieldsForChannelFlagLikeKey:(id)key value:(id)value options:(int64_t)options;
- (void)addFieldsFromDictionary:(id)dictionary options:(int64_t)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WAMessage

- (WAMessage)initWithMetricName:(id)name options:(int64_t)options
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = WAMessage;
  v7 = [(WAMessage *)&v13 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithString:nameCopy];
    metricName = v7->_metricName;
    v7->_metricName = v8;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    metricInfo = v7->_metricInfo;
    v7->_metricInfo = dictionary;

    v7->_options = options;
  }

  return v7;
}

- (void)addFieldForKey:(id)key value:(id)value options:(int64_t)options
{
  v26 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  v10 = +[WAUtil isInternalInstall];
  if ((options & 1) != 0 && v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && ([MEMORY[0x1E696ACB0] isValidJSONObject:valueCopy] & 1) == 0)
      {
        v11 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412802;
          v21 = keyCopy;
          v22 = 2112;
          v23 = objc_opt_class();
          v24 = 2112;
          v25 = valueCopy;
          v17 = v23;
          _os_log_fault_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "CODE FIX NEEDED! Field cannot be sent to CoreAnalytics, removing CA option from field %@ (%@): %@", buf, 0x20u);
        }

        options = 0;
      }
    }
  }

  if (([keyCopy containsString:@"channelFlags"] & 1) != 0 || objc_msgSend(keyCopy, "containsString:", @"ChannelFlags"))
  {
    [(WAMessage *)self addFieldsForChannelFlagLikeKey:keyCopy value:valueCopy options:options];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{options, @"value", @"options", valueCopy}];
  v19[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:2];

  metricInfo = [(WAMessage *)self metricInfo];

  if (metricInfo)
  {
    metricInfo2 = [(WAMessage *)self metricInfo];
    [metricInfo2 setObject:v13 forKey:keyCopy];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)addFieldsForChannelFlagLikeKey:(id)key value:(id)value options:(int64_t)options
{
  v28[2] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  metricInfo = [(WAMessage *)self metricInfo];

  if (metricInfo)
  {
    v11 = [keyCopy stringByReplacingOccurrencesOfString:@"Flags" withString:&stru_1F481C4A0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    unsignedIntValue = [valueCopy unsignedIntValue];
    v13 = unsignedIntValue;
    if ((unsignedIntValue & 8) != 0)
    {
      v14 = @"2";
    }

    else if ((unsignedIntValue & 0x10) != 0)
    {
      v14 = @"5";
    }

    else
    {
      if ((unsignedIntValue & 0x2000) == 0)
      {
LABEL_10:
        if ((v13 & 0x800) != 0)
        {
          v19 = @"160";
          goto LABEL_18;
        }

        if ((v13 & 0x400) != 0)
        {
          v19 = @"80";
          goto LABEL_18;
        }

        if ((v13 & 4) != 0)
        {
          v19 = @"40";
          goto LABEL_18;
        }

        if ((v13 & 2) != 0)
        {
          v19 = @"20";
LABEL_18:
          metricInfo2 = [(WAMessage *)self metricInfo];
          v25[0] = @"value";
          v25[1] = @"options";
          v26[0] = v19;
          v21 = [MEMORY[0x1E696AD98] numberWithInteger:options];
          v26[1] = v21;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v11, @"BW"];
          [metricInfo2 setObject:v22 forKey:v23];
        }

LABEL_19:

        goto LABEL_20;
      }

      v14 = @"6";
    }

    metricInfo3 = [(WAMessage *)self metricInfo];
    v27[0] = @"value";
    v27[1] = @"options";
    v28[0] = v14;
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:options];
    v28[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v11, @"Band"];
    [metricInfo3 setObject:v17 forKey:v18];

    goto LABEL_10;
  }

LABEL_20:

  v24 = *MEMORY[0x1E69E9840];
}

- (void)addFieldsFromDictionary:(id)dictionary options:(int64_t)options
{
  v20 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [dictionaryCopy objectForKeyedSubscript:v12];
        [(WAMessage *)self addFieldForKey:v12 value:v13 options:options];
      }

      v9 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[WAMessage allocWithZone:?]];
  [(WAMessage *)v4 setMetricName:self->_metricName];
  [(WAMessage *)v4 setMetricInfo:self->_metricInfo];
  [(WAMessage *)v4 setOptions:self->_options];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  metricName = self->_metricName;
  coderCopy = coder;
  [coderCopy encodeObject:metricName forKey:@"_metricName"];
  [coderCopy encodeObject:self->_metricInfo forKey:@"_metricInfo"];
  [coderCopy encodeInteger:self->_options forKey:@"_options"];
}

- (WAMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = WAMessage;
  v5 = [(WAMessage *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_metricName"];
    metricName = v5->_metricName;
    v5->_metricName = v6;

    v22 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v20 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v22 setWithObjects:{v21, v20, v8, v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"_metricInfo"];
    metricInfo = v5->_metricInfo;
    v5->_metricInfo = v17;

    v5->_options = [coderCopy decodeIntegerForKey:@"_options"];
  }

  return v5;
}

@end