@interface RELocationRelevanceProvider
- (BOOL)isEqual:(id)a3;
- (RELocationRelevanceProvider)initWithDictionary:(id)a3;
- (RELocationRelevanceProvider)initWithLocation:(id)a3 radius:(double)a4 accuracy:(double)a5;
- (RELocationRelevanceProvider)initWithLocationType:(unint64_t)a3;
- (RELocationRelevanceProvider)providerWithBundleIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryEncoding;
- (unint64_t)_hash;
@end

@implementation RELocationRelevanceProvider

- (RELocationRelevanceProvider)initWithLocationType:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = RELocationRelevanceProvider;
  v4 = [(RERelevanceProvider *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    v6 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:37.3353672 longitude:-122.011737];
    location = v5->_location;
    v5->_location = v6;

    v5->_radius = 1000.0;
    v5->_accuracy = *&kDefaultAccuracyScaleFactor * 1000.0;
  }

  return v5;
}

- (RELocationRelevanceProvider)initWithLocation:(id)a3 radius:(double)a4 accuracy:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = RELocationRelevanceProvider;
  v10 = [(RERelevanceProvider *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = 0;
    objc_storeStrong(&v10->_location, a3);
    v11->_radius = a4;
    v11->_accuracy = a5;
  }

  return v11;
}

- (RELocationRelevanceProvider)providerWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(RELocationRelevanceProvider *)self copy];
  v6 = [v4 copy];

  v7 = v5[8];
  v5[8] = v6;

  return v5;
}

- (RELocationRelevanceProvider)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"type"];
  v6 = v5;
  if (v5 && [v5 integerValue])
  {
    self = -[RELocationRelevanceProvider initWithLocationType:](self, "initWithLocationType:", [v6 integerValue]);
    v7 = self;
  }

  else
  {
    v8 = [v4 objectForKeyedSubscript:@"lat"];
    v9 = [v4 objectForKeyedSubscript:@"long"];
    v10 = [v4 objectForKeyedSubscript:@"radius"];
    v11 = [v4 objectForKeyedSubscript:@"bundleIdentifier"];
    v7 = 0;
    if (v8 && v9)
    {
      v12 = objc_alloc(MEMORY[0x277CE41F8]);
      [v8 doubleValue];
      v14 = v13;
      [v9 doubleValue];
      v16 = [v12 initWithLatitude:v14 longitude:v15];
      if (v10)
      {
        [v10 doubleValue];
        v18 = v17;
      }

      else
      {
        v18 = 1000.0;
      }

      v19 = [v4 objectForKeyedSubscript:@"accuracy"];
      v20 = v19;
      if (v19)
      {
        [v19 doubleValue];
        v22 = [(RELocationRelevanceProvider *)self initWithLocation:v16 radius:v18 accuracy:v21];
      }

      else
      {
        v22 = [(RELocationRelevanceProvider *)self initWithLocation:v16 radius:v18];
      }

      self = v22;
      objc_storeStrong(&self->_bundleIdentifier, v11);

      v7 = self;
    }
  }

  return v7;
}

- (id)dictionaryEncoding
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CCABB0];
  [(CLLocation *)self->_location coordinate];
  v5 = [v4 numberWithDouble:?];
  [v3 setObject:v5 forKeyedSubscript:@"lat"];

  v6 = MEMORY[0x277CCABB0];
  [(CLLocation *)self->_location coordinate];
  v8 = [v6 numberWithDouble:v7];
  [v3 setObject:v8 forKeyedSubscript:@"long"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_radius];
  [v3 setObject:v9 forKeyedSubscript:@"radius"];

  [v3 setObject:self->_bundleIdentifier forKeyedSubscript:@"bundleIdentifier"];
  v10 = self->_radius * *&kDefaultAccuracyScaleFactor;
  accuracy = self->_accuracy;
  if (vabds_f32(v10, accuracy) >= 0.00000011921)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v3 setObject:v12 forKeyedSubscript:@"accuracy"];
  }

  if (self->_type)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v3 setObject:v13 forKeyedSubscript:@"type"];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = RELocationRelevanceProvider;
  v4 = [(RERelevanceProvider *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 5, self->_location);
  v4[6] = *&self->_radius;
  v4[7] = *&self->_accuracy;
  v4[4] = self->_type;
  objc_storeStrong(v4 + 8, self->_bundleIdentifier);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    v20.receiver = self;
    v20.super_class = RELocationRelevanceProvider;
    if ([(RERelevanceProvider *)&v20 isEqual:v4])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
        type = self->_type;
        if (type == v5->_type)
        {
          if (type)
          {
            v7 = 1;
LABEL_22:

            goto LABEL_23;
          }

          location = self->_location;
          v9 = v5->_location;
          v10 = (location | v9) == 0;
          if (location)
          {
            v11 = v9 == 0;
          }

          else
          {
            v11 = 1;
          }

          if (!v11)
          {
            [(CLLocation *)location coordinate];
            v13 = v12;
            [(CLLocation *)v5->_location coordinate];
            if (v13 == v14)
            {
              [(CLLocation *)self->_location coordinate];
              v16 = v15;
              [(CLLocation *)v5->_location coordinate];
              v10 = v16 == v17;
            }

            else
            {
              v10 = 0;
            }
          }

          bundleIdentifier = self->_bundleIdentifier;
          if (bundleIdentifier == v5->_bundleIdentifier)
          {
            v7 = 1;
          }

          else
          {
            v7 = [(NSString *)bundleIdentifier isEqualToString:?];
          }

          if (self->_radius == v5->_radius && v10 && self->_accuracy == v5->_accuracy)
          {
            goto LABEL_22;
          }
        }

        v7 = 0;
        goto LABEL_22;
      }
    }

    v7 = 0;
  }

LABEL_23:

  return v7;
}

- (unint64_t)_hash
{
  v3 = MEMORY[0x277CCABB0];
  [(CLLocation *)self->_location coordinate];
  v4 = [v3 numberWithDouble:?];
  v5 = [v4 hash];
  v6 = MEMORY[0x277CCABB0];
  [(CLLocation *)self->_location coordinate];
  v8 = [v6 numberWithDouble:v7];
  v9 = [v8 hash] ^ v5;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_radius];
  v11 = [v10 hash];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_accuracy];
  v13 = v11 ^ [v12 hash];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_type];
  v15 = v9 ^ v13 ^ [v14 hash];
  v16 = [(NSString *)self->_bundleIdentifier hash];

  return v15 ^ v16;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = RELocationRelevanceProvider;
  v3 = [(RELocationRelevanceProvider *)&v10 description];
  type = self->_type;
  if (type > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_2785FDDB0[type];
  }

  v6 = [(CLLocation *)self->_location description];
  radius = self->_radius;
  v8 = [v3 stringByAppendingFormat:@" type=%@, location=%@, radius=%f, accuracy=%f, bundleIdentifier=%@", v5, v6, *&radius, *&self->_accuracy, self->_bundleIdentifier];

  return v8;
}

@end