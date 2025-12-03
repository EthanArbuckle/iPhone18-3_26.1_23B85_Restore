@interface PRPosterUsageMetadataAttribute
+ (id)decodeObjectWithJSON:(id)n;
- (NSString)description;
- (PRPosterUsageMetadataAttribute)init;
- (id)encodeJSON;
- (id)usageMetadataForUpdatedLastActivatedDate:(id)date;
- (id)usageMetadataForUpdatedLastModifiedDate:(id)date;
- (id)usageMetadataWithUpdatedLastActivatedDate;
- (id)usageMetadataWithUpdatedLastModifiedDate;
- (id)usageMetadataWithUpdatedLastSelectedDate;
@end

@implementation PRPosterUsageMetadataAttribute

- (PRPosterUsageMetadataAttribute)init
{
  v6.receiver = self;
  v6.super_class = PRPosterUsageMetadataAttribute;
  v2 = [(PRPosterUsageMetadataAttribute *)&v6 init];
  if (v2)
  {
    date = [MEMORY[0x1E695DF00] date];
    creationDate = v2->_creationDate;
    v2->_creationDate = date;
  }

  return v2;
}

- (id)usageMetadataWithUpdatedLastModifiedDate
{
  v3 = objc_opt_new();
  v4 = [(NSDate *)self->_creationDate copy];
  v5 = v3[1];
  v3[1] = v4;

  date = [MEMORY[0x1E695DF00] date];
  v7 = v3[2];
  v3[2] = date;

  v8 = [(NSDate *)self->_lastSelectedDate copy];
  v9 = v3[3];
  v3[3] = v8;

  v10 = [(NSDate *)self->_lastActivatedDate copy];
  v11 = v3[4];
  v3[4] = v10;

  return v3;
}

- (id)usageMetadataWithUpdatedLastSelectedDate
{
  v3 = objc_opt_new();
  v4 = [(NSDate *)self->_creationDate copy];
  v5 = v3[1];
  v3[1] = v4;

  v6 = [(NSDate *)self->_lastModifiedDate copy];
  v7 = v3[2];
  v3[2] = v6;

  date = [MEMORY[0x1E695DF00] date];
  v9 = v3[3];
  v3[3] = date;

  v10 = [(NSDate *)self->_lastActivatedDate copy];
  v11 = v3[4];
  v3[4] = v10;

  return v3;
}

- (id)usageMetadataWithUpdatedLastActivatedDate
{
  v3 = objc_opt_new();
  v4 = [(NSDate *)self->_creationDate copy];
  v5 = v3[1];
  v3[1] = v4;

  v6 = [(NSDate *)self->_lastModifiedDate copy];
  v7 = v3[2];
  v3[2] = v6;

  v8 = [(NSDate *)self->_lastSelectedDate copy];
  v9 = v3[3];
  v3[3] = v8;

  date = [MEMORY[0x1E695DF00] date];
  v11 = v3[4];
  v3[4] = date;

  return v3;
}

- (id)usageMetadataForUpdatedLastActivatedDate:(id)date
{
  dateCopy = date;
  v5 = objc_opt_new();
  v6 = [(NSDate *)self->_creationDate compare:dateCopy];
  creationDate = dateCopy;
  if (v6 == NSOrderedDescending)
  {
    creationDate = self->_creationDate;
  }

  v8 = [(NSDate *)creationDate copy];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSDate *)self->_lastModifiedDate copy];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSDate *)self->_lastSelectedDate copy];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSDate *)dateCopy copy];
  v15 = v5[4];
  v5[4] = v14;

  return v5;
}

- (id)usageMetadataForUpdatedLastModifiedDate:(id)date
{
  dateCopy = date;
  v5 = objc_opt_new();
  v6 = [(NSDate *)self->_creationDate copy];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [dateCopy copy];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSDate *)self->_lastSelectedDate copy];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSDate *)self->_lastActivatedDate copy];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  creationDate = [(PRPosterUsageMetadataAttribute *)self creationDate];
  v5 = [v3 appendObject:creationDate withName:@"creationDate"];

  lastModifiedDate = [(PRPosterUsageMetadataAttribute *)self lastModifiedDate];
  v7 = [v3 appendObject:lastModifiedDate withName:@"lastModifiedDate"];

  lastSelectedDate = [(PRPosterUsageMetadataAttribute *)self lastSelectedDate];
  v9 = [v3 appendObject:lastSelectedDate withName:@"lastSelectedDate"];

  lastActivatedDate = [(PRPosterUsageMetadataAttribute *)self lastActivatedDate];
  v11 = [v3 appendObject:lastActivatedDate withName:@"lastActivatedDate"];

  build = [v3 build];

  return build;
}

+ (id)decodeObjectWithJSON:(id)n
{
  if (n)
  {
    v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:16 error:0];
    if ([v3 count])
    {
      v4 = [v3 objectForKeyedSubscript:@"creationDate"];
      v5 = [v3 objectForKeyedSubscript:@"lastModifiedDate"];
      v6 = [v3 objectForKeyedSubscript:@"lastSelectedDate"];
      v7 = [v3 objectForKeyedSubscript:@"lastActivatedDate"];
      v8 = objc_opt_new();
      if (v4)
      {
        v9 = MEMORY[0x1E695DF00];
        [v4 doubleValue];
        v10 = [v9 dateWithTimeIntervalSince1970:?];
        v11 = v8[1];
        v8[1] = v10;
      }

      if (v5)
      {
        v12 = MEMORY[0x1E695DF00];
        [v5 doubleValue];
        v13 = [v12 dateWithTimeIntervalSince1970:?];
        v14 = v8[2];
        v8[2] = v13;
      }

      if (v6)
      {
        v15 = MEMORY[0x1E695DF00];
        [v6 doubleValue];
        v16 = [v15 dateWithTimeIntervalSince1970:?];
        v17 = v8[3];
        v8[3] = v16;
      }

      if (v7)
      {
        v18 = MEMORY[0x1E695DF00];
        [v7 doubleValue];
        v19 = [v18 dateWithTimeIntervalSince1970:?];
        v20 = v8[4];
        v8[4] = v19;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)encodeJSON
{
  v3 = objc_opt_new();
  creationDate = self->_creationDate;
  if (creationDate)
  {
    v5 = MEMORY[0x1E696AD98];
    [(NSDate *)creationDate timeIntervalSince1970];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:@"creationDate"];
  }

  lastModifiedDate = self->_lastModifiedDate;
  if (lastModifiedDate)
  {
    v8 = MEMORY[0x1E696AD98];
    [(NSDate *)lastModifiedDate timeIntervalSince1970];
    v9 = [v8 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"lastModifiedDate"];
  }

  lastSelectedDate = self->_lastSelectedDate;
  if (lastSelectedDate)
  {
    v11 = MEMORY[0x1E696AD98];
    [(NSDate *)lastSelectedDate timeIntervalSince1970];
    v12 = [v11 numberWithDouble:?];
    [v3 setObject:v12 forKeyedSubscript:@"lastSelectedDate"];
  }

  lastActivatedDate = self->_lastActivatedDate;
  if (lastActivatedDate)
  {
    v14 = MEMORY[0x1E696AD98];
    [(NSDate *)lastActivatedDate timeIntervalSince1970];
    v15 = [v14 numberWithDouble:?];
    [v3 setObject:v15 forKeyedSubscript:@"lastActivatedDate"];
  }

  attributeType = [(PRPosterUsageMetadataAttribute *)self attributeType];
  [v3 setObject:attributeType forKey:@"attributeType"];

  v17 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:0];

  return v17;
}

@end