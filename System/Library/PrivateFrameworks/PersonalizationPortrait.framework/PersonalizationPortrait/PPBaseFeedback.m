@interface PPBaseFeedback
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPPBaseFeedback:(id)a3;
- (PPBaseFeedback)initWithCoder:(id)a3;
- (PPBaseFeedback)initWithFeedbackItems:(id)a3 mappingId:(id)a4;
- (PPBaseFeedback)initWithFeedbackItems:(id)a3 timestamp:(id)a4 clientIdentifier:(id)a5 clientBundleId:(id)a6 mappingId:(id)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPBaseFeedback

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"%@: {", v5];

  [v3 appendFormat:@"  clientIdentifier : %@, ", self->_clientIdentifier];
  [v3 appendFormat:@"  clientBundleId : %@, ", self->_clientBundleId];
  [v3 appendFormat:@"  mappingId : %@, ", self->_mappingId];
  [v3 appendFormat:@"  timestamp : %@, ", self->_timestamp];
  [v3 appendString:@"  feedbackItems : ["];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_feedbackItems;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v3 appendFormat:@"%@, ", *(*(&v14 + 1) + 8 * i)];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [v3 appendString:@"] }"];
  v11 = [v3 copy];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)isEqualToPPBaseFeedback:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = self->_feedbackItems;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSArray *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v8 = self->_timestamp;
  v9 = v8;
  if (v8 == v4[5])
  {
  }

  else
  {
    v10 = [(NSDate *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v11 = self->_clientIdentifier;
  v12 = v11;
  if (v11 == v4[1])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v14 = self->_clientBundleId;
  v15 = v14;
  if (v14 == v4[3])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
LABEL_16:
      v17 = 0;
      goto LABEL_17;
    }
  }

  v19 = self->_mappingId;
  v20 = v19;
  if (v19 == v4[4])
  {
    v17 = 1;
  }

  else
  {
    v17 = [(NSString *)v19 isEqual:?];
  }

LABEL_17:
  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPBaseFeedback *)self isEqualToPPBaseFeedback:v5];
  }

  return v6;
}

- (PPBaseFeedback)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v6, v5, 0}];
  objc_autoreleasePoolPop(v7);
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"feedbackItems"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientBundleId"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mappingId"];
  v14 = 0;
  if (v9 && v10)
  {
    self = [(PPBaseFeedback *)self initWithFeedbackItems:v9 timestamp:v10 clientIdentifier:v11 clientBundleId:v12 mappingId:v13];
    v14 = self;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  feedbackItems = self->_feedbackItems;
  v5 = a3;
  [v5 encodeObject:feedbackItems forKey:@"feedbackItems"];
  [v5 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v5 encodeObject:self->_clientIdentifier forKey:@"clientIdentifier"];
  [v5 encodeObject:self->_clientBundleId forKey:@"clientBundleId"];
  [v5 encodeObject:self->_mappingId forKey:@"mappingId"];
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_feedbackItems hash];
  v4 = [(NSDate *)self->_timestamp hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_clientIdentifier hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_clientBundleId hash]- v5 + 32 * v5;
  return [(NSString *)self->_mappingId hash]- v6 + 32 * v6;
}

- (PPBaseFeedback)initWithFeedbackItems:(id)a3 timestamp:(id)a4 clientIdentifier:(id)a5 clientBundleId:(id)a6 mappingId:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = PPBaseFeedback;
  v17 = [(PPBaseFeedback *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_feedbackItems, a3);
    objc_storeStrong(&v18->_timestamp, a4);
    objc_storeStrong(&v18->_clientIdentifier, a5);
    objc_storeStrong(&v18->_clientBundleId, a6);
    objc_storeStrong(&v18->_mappingId, a7);
  }

  return v18;
}

- (PPBaseFeedback)initWithFeedbackItems:(id)a3 mappingId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [MEMORY[0x1E696AAE8] mainBundle];
  v10 = [v9 bundleIdentifier];
  v11 = [(PPBaseFeedback *)self initWithFeedbackItems:v7 timestamp:v8 clientIdentifier:0 clientBundleId:v10 mappingId:v6];

  return v11;
}

@end