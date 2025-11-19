@interface WAMessageAWD
- (BOOL)isEqual:(id)a3;
- (WAMessageAWD)init;
- (WAMessageAWD)initWithCoder:(id)a3;
- (WAMessageAWD)initWithKey:(id)a3 andFields:(id)a4 isRootMessage:(BOOL)a5 originalClassName:(id)a6 uuid:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)fieldForKey:(id)a3;
- (void)addField:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WAMessageAWD

- (WAMessageAWD)init
{
  v9.receiver = self;
  v9.super_class = WAMessageAWD;
  v2 = [(WAMessageAWD *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    uuid = v2->_uuid;
    v2->_uuid = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mutableFields = v2->_mutableFields;
    v2->_mutableFields = v6;
  }

  return v2;
}

- (WAMessageAWD)initWithKey:(id)a3 andFields:(id)a4 isRootMessage:(BOOL)a5 originalClassName:(id)a6 uuid:(id)a7
{
  v60 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v53.receiver = self;
  v53.super_class = WAMessageAWD;
  v16 = [(WAMessageAWD *)&v53 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_11;
  }

  v16->_isRootMessage = a5;
  v18 = [v14 mutableCopy];
  originalClassName = v17->_originalClassName;
  v17->_originalClassName = v18;

  v20 = [v12 mutableCopy];
  key = v17->_key;
  v17->_key = v20;

  v22 = [v15 mutableCopy];
  uuid = v17->_uuid;
  v17->_uuid = v22;

  if (v17->_uuid)
  {
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_9:
    v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
    mutableFields = v17->_mutableFields;
    v17->_mutableFields = v42;
LABEL_10:

    goto LABEL_11;
  }

  v39 = [MEMORY[0x1E696AFB0] UUID];
  v40 = [v39 UUIDString];
  v41 = v17->_uuid;
  v17->_uuid = v40;

  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_4:
  v47 = MEMORY[0x1E695DFD8];
  v48 = MEMORY[0x1E696ACD0];
  v46 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v50 = v12;
  v26 = objc_opt_class();
  v49 = v15;
  v27 = objc_opt_class();
  v28 = v13;
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v45 = v29;
  v13 = v28;
  v32 = [v47 setWithObjects:{v46, v24, v25, v26, v27, v45, v30, v31, objc_opt_class(), 0}];
  v52 = 0;
  v33 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v52];
  v34 = v52;
  v51 = v34;
  v35 = [v48 unarchivedObjectOfClasses:v32 fromData:v33 error:&v51];
  mutableFields = v51;

  v37 = v17->_mutableFields;
  v17->_mutableFields = v35;
  v15 = v49;

  v12 = v50;
  if (mutableFields)
  {
    v38 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v55 = "[WAMessageAWD initWithKey:andFields:isRootMessage:originalClassName:uuid:]";
      v56 = 1024;
      v57 = 60;
      v58 = 2112;
      v59 = mutableFields;
      _os_log_impl(&dword_1C8460000, v38, OS_LOG_TYPE_ERROR, "%{public}s::%d:failed to archivedDataWithRootObject: %@ ", buf, 0x1Cu);
    }

    goto LABEL_10;
  }

LABEL_11:

  v43 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(WAMessageAWD *)self uuid];
  v6 = [v4 uuid];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (id)fieldForKey:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WAMessageAWD *)self mutableFields];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      originalClassName = self->_originalClassName;
      *buf = 136446978;
      v34 = "[WAMessageAWD fieldForKey:]";
      v35 = 1024;
      *v36 = 85;
      *&v36[4] = 2112;
      *&v36[6] = v4;
      *&v36[14] = 2112;
      *&v36[16] = originalClassName;
      _os_log_impl(&dword_1C8460000, v7, OS_LOG_TYPE_ERROR, "%{public}s::%d:Attempt to access field with key: %@ (message original classname: %@) but it doesn't exist. Most common reason is protobuf change without population logic update", buf, 0x26u);
    }

    v27 = v4;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = [(WAMessageAWD *)self mutableFields];
    v10 = [v9 allKeys];

    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [(WAMessageAWD *)self mutableFields];
          v17 = [v16 objectForKeyedSubscript:v15];

          v18 = WALogCategoryDefaultHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = [v17 isRepeatable];
            v20 = [v15 UTF8String];
            *buf = 136446978;
            v34 = "[WAMessageAWD fieldForKey:]";
            v35 = 1024;
            *v36 = 90;
            *&v36[4] = 1024;
            *&v36[6] = v19;
            *&v36[10] = 2080;
            *&v36[12] = v20;
            _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_INFO, "%{public}s::%d:Found repeatable %d Key:: %s", buf, 0x22u);
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    v21 = WALogCategoryDefaultHandle();
    v4 = v27;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v26 = self->_originalClassName;
      *buf = 138412546;
      v34 = v27;
      v35 = 2112;
      *v36 = v26;
      _os_log_fault_impl(&dword_1C8460000, v21, OS_LOG_TYPE_FAULT, "Attempt to access field with key: %@ (message original classname: %@)", buf, 0x16u);
    }
  }

  v22 = [(WAMessageAWD *)self mutableFields];
  v23 = [v22 objectForKeyedSubscript:v4];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v21 = MEMORY[0x1E696ACD0];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v4 setWithObjects:{v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
  v23 = 0;
  v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v23];
  v15 = v23;
  v22 = v15;
  v16 = [v21 unarchivedObjectOfClasses:v13 fromData:v14 error:&v22];
  v17 = v22;

  if (v17)
  {
    v18 = WALogCategoryDefaultHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "[WAMessageAWD copyWithZone:]";
      v26 = 1024;
      v27 = 104;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_1C8460000, v18, OS_LOG_TYPE_ERROR, "%{public}s::%d:WAMessageAWD copyWithZone failed, unarchive/archive error: %@", buf, 0x1Cu);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)description
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(WAMessageAWD *)self key];
  v6 = [(WAMessageAWD *)self originalClassName];
  v7 = [v4 stringWithFormat:@"WAMessageAWD %@ (%@) (ID: 0x%02x) fields:\n", v5, v6, -[WAMessageAWD metricID](self, "metricID")];
  [v3 appendString:v7];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(WAMessageAWD *)self mutableFields];
  v9 = [v8 allKeys];

  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [(WAMessageAWD *)self mutableFields];
        v16 = [v15 objectForKeyedSubscript:v14];

        [v3 appendFormat:@"               %@ %@\n", v14, v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  mutableFields = self->_mutableFields;
  v5 = a3;
  [v5 encodeObject:mutableFields forKey:@"_mutableFields"];
  [v5 encodeObject:self->_key forKey:@"_key"];
  [v5 encodeBool:self->_isRootMessage forKey:@"_isRootMessage"];
  [v5 encodeObject:self->_originalClassName forKey:@"_originalClassName"];
  [v5 encodeObject:self->_uuid forKey:@"_uuid"];
  [v5 encodeInteger:self->_metricID forKey:@"_metricID"];
}

- (WAMessageAWD)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = WAMessageAWD;
  v5 = [(WAMessageAWD *)&v25 init];
  if (v5)
  {
    v24 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v24 setWithObjects:{v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"_mutableFields"];
    mutableFields = v5->_mutableFields;
    v5->_mutableFields = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_key"];
    key = v5->_key;
    v5->_key = v17;

    v5->_isRootMessage = [v4 decodeBoolForKey:@"_isRootMessage"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_originalClassName"];
    originalClassName = v5->_originalClassName;
    v5->_originalClassName = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v21;

    v5->_metricID = [v4 decodeIntegerForKey:@"_metricID"];
  }

  return v5;
}

- (void)addField:(id)a3
{
  v4 = a3;
  v6 = [(WAMessageAWD *)self mutableFields];
  v5 = [v4 key];
  [v6 setObject:v4 forKeyedSubscript:v5];
}

@end