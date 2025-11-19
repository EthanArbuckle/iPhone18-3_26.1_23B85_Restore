@interface WAMessage
- (WAMessage)initWithCoder:(id)a3;
- (WAMessage)initWithMetricName:(id)a3 options:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addFieldForKey:(id)a3 value:(id)a4 options:(int64_t)a5;
- (void)addFieldsForChannelFlagLikeKey:(id)a3 value:(id)a4 options:(int64_t)a5;
- (void)addFieldsFromDictionary:(id)a3 options:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WAMessage

- (WAMessage)initWithMetricName:(id)a3 options:(int64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = WAMessage;
  v7 = [(WAMessage *)&v13 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];
    metricName = v7->_metricName;
    v7->_metricName = v8;

    v10 = [MEMORY[0x1E695DF90] dictionary];
    metricInfo = v7->_metricInfo;
    v7->_metricInfo = v10;

    v7->_options = a4;
  }

  return v7;
}

- (void)addFieldForKey:(id)a3 value:(id)a4 options:(int64_t)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[WAUtil isInternalInstall];
  if ((a5 & 1) != 0 && v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 && ([MEMORY[0x1E696ACB0] isValidJSONObject:v9] & 1) == 0)
      {
        v11 = WALogCategoryDefaultHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412802;
          v21 = v8;
          v22 = 2112;
          v23 = objc_opt_class();
          v24 = 2112;
          v25 = v9;
          v17 = v23;
          _os_log_fault_impl(&dword_1C8460000, v11, OS_LOG_TYPE_FAULT, "CODE FIX NEEDED! Field cannot be sent to CoreAnalytics, removing CA option from field %@ (%@): %@", buf, 0x20u);
        }

        a5 = 0;
      }
    }
  }

  if (([v8 containsString:@"channelFlags"] & 1) != 0 || objc_msgSend(v8, "containsString:", @"ChannelFlags"))
  {
    [(WAMessage *)self addFieldsForChannelFlagLikeKey:v8 value:v9 options:a5];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{a5, @"value", @"options", v9}];
  v19[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:2];

  v14 = [(WAMessage *)self metricInfo];

  if (v14)
  {
    v15 = [(WAMessage *)self metricInfo];
    [v15 setObject:v13 forKey:v8];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)addFieldsForChannelFlagLikeKey:(id)a3 value:(id)a4 options:(int64_t)a5
{
  v28[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(WAMessage *)self metricInfo];

  if (v10)
  {
    v11 = [v8 stringByReplacingOccurrencesOfString:@"Flags" withString:&stru_1F481C4A0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_19;
    }

    v12 = [v9 unsignedIntValue];
    v13 = v12;
    if ((v12 & 8) != 0)
    {
      v14 = @"2";
    }

    else if ((v12 & 0x10) != 0)
    {
      v14 = @"5";
    }

    else
    {
      if ((v12 & 0x2000) == 0)
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
          v20 = [(WAMessage *)self metricInfo];
          v25[0] = @"value";
          v25[1] = @"options";
          v26[0] = v19;
          v21 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
          v26[1] = v21;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v11, @"BW"];
          [v20 setObject:v22 forKey:v23];
        }

LABEL_19:

        goto LABEL_20;
      }

      v14 = @"6";
    }

    v15 = [(WAMessage *)self metricInfo];
    v27[0] = @"value";
    v27[1] = @"options";
    v28[0] = v14;
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
    v28[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v11, @"Band"];
    [v15 setObject:v17 forKey:v18];

    goto LABEL_10;
  }

LABEL_20:

  v24 = *MEMORY[0x1E69E9840];
}

- (void)addFieldsFromDictionary:(id)a3 options:(int64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:v12];
        [(WAMessage *)self addFieldForKey:v12 value:v13 options:a4];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[WAMessage allocWithZone:?]];
  [(WAMessage *)v4 setMetricName:self->_metricName];
  [(WAMessage *)v4 setMetricInfo:self->_metricInfo];
  [(WAMessage *)v4 setOptions:self->_options];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  metricName = self->_metricName;
  v5 = a3;
  [v5 encodeObject:metricName forKey:@"_metricName"];
  [v5 encodeObject:self->_metricInfo forKey:@"_metricInfo"];
  [v5 encodeInteger:self->_options forKey:@"_options"];
}

- (WAMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = WAMessage;
  v5 = [(WAMessage *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_metricName"];
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
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"_metricInfo"];
    metricInfo = v5->_metricInfo;
    v5->_metricInfo = v17;

    v5->_options = [v4 decodeIntegerForKey:@"_options"];
  }

  return v5;
}

@end