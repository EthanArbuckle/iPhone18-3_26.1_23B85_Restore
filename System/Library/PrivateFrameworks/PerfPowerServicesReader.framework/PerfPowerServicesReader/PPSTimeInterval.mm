@interface PPSTimeInterval
- (BOOL)containsTimeInterval:(id)a3;
- (BOOL)containsTimestamp:(double)a3;
- (BOOL)intersectsTimeInterval:(id)a3;
- (BOOL)isAdjacentToTimeInterval:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)dictionary;
- (PPSTimeInterval)initWithCoder:(id)a3;
- (PPSTimeInterval)initWithStartTimestamp:(double)a3 endTimestamp:(double)a4 payload:(id)a5;
- (double)duration;
- (id)JSONRepresentation;
- (id)debugDescription;
- (id)description;
- (id)intersectionWithTimeInterval:(id)a3;
- (id)subtractTimeInterval:(id)a3;
- (id)unionWithTimeInterval:(id)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPSTimeInterval

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [(PPSTimeInterval *)self endTimestamp];
  [v5 encodeDouble:@"endTimestamp" forKey:?];
  [(PPSTimeInterval *)self startTimestamp];
  [v5 encodeDouble:@"startTimestamp" forKey:?];
  v4 = [(PPSTimeInterval *)self payload];
  [v5 encodeObject:v4 forKey:@"payload"];
}

- (PPSTimeInterval)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PPSTimeInterval;
  v5 = [(PPSTimeInterval *)&v11 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"endTimestamp"];
    v5->_endTimestamp = v6;
    [v4 decodeDoubleForKey:@"startTimestamp"];
    v5->_startTimestamp = v7;
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payload"];
    payload = v5->_payload;
    v5->_payload = v8;
  }

  return v5;
}

- (PPSTimeInterval)initWithStartTimestamp:(double)a3 endTimestamp:(double)a4 payload:(id)a5
{
  v8 = a5;
  if (a3 >= a4)
  {
    v12 = PPSReaderLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PPSTimeInterval initWithStartTimestamp:v12 endTimestamp:? payload:?];
    }

    v10 = 0;
    goto LABEL_7;
  }

  v14.receiver = self;
  v14.super_class = PPSTimeInterval;
  v9 = [(PPSTimeInterval *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_startTimestamp = a3;
    v9->_endTimestamp = a4;
    v11 = v8;
    self = v10->_payload;
    v10->_payload = v11;
LABEL_7:
  }

  return v10;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAA8];
  [(PPSTimeInterval *)self startTimestamp];
  v6 = [v5 dateWithTimeIntervalSince1970:?];
  v7 = MEMORY[0x277CBEAA8];
  [v4 startTimestamp];
  v8 = [v7 dateWithTimeIntervalSince1970:?];
  v9 = [v6 compare:v8];

  return v9;
}

- (unint64_t)hash
{
  v20 = *MEMORY[0x277D85DE8];
  [(PPSTimeInterval *)self startTimestamp];
  if (v3 == 0.0)
  {
    v4 = 2654435769;
  }

  else
  {
    v4 = *&v3 + 2654435769;
  }

  [(PPSTimeInterval *)self endTimestamp];
  v15 = 0u;
  v16 = 0u;
  if (v5 == 0.0)
  {
    v6 = 2654435769;
  }

  else
  {
    v6 = *&v5 + 2654435769;
  }

  v17 = 0uLL;
  v18 = 0uLL;
  v7 = [(PPSTimeInterval *)self payload];
  v8 = [v7 allValues];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  v10 = (v6 + (v4 << 6) + (v4 >> 2)) ^ v4;
  if (v9)
  {
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v10 ^= (v10 << 6) + 2654435769u + (v10 >> 2) + [*(*(&v15 + 1) + 8 * i) hash];
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v7 = 0;
    goto LABEL_18;
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v8 = v5;
    if (self == v8)
    {
      v7 = 1;
    }

    else
    {
      [(PPSTimeInterval *)self startTimestamp];
      v10 = v9;
      [(PPSTimeInterval *)v8 startTimestamp];
      if (v10 == v11)
      {
        [(PPSTimeInterval *)self endTimestamp];
        v13 = v12;
        [(PPSTimeInterval *)v8 endTimestamp];
        if (v13 == v14)
        {
          v15 = [(PPSTimeInterval *)self payload];
          if (v15 || ([(PPSTimeInterval *)v8 payload], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v16 = [(PPSTimeInterval *)self payload];
            v17 = [(PPSTimeInterval *)v8 payload];
            v7 = [v16 isEqualToDictionary:v17];

            if (v15)
            {
LABEL_16:

              goto LABEL_17;
            }
          }

          else
          {
            v7 = 1;
          }

          goto LABEL_16;
        }
      }

      v7 = 0;
    }

LABEL_17:

    goto LABEL_18;
  }

  v19.receiver = self;
  v19.super_class = PPSTimeInterval;
  v7 = [(PPSTimeInterval *)&v19 isEqual:v5];
LABEL_18:

  return v7;
}

- (id)JSONRepresentation
{
  v2 = MEMORY[0x277CCAAA0];
  v3 = [(PPSTimeInterval *)self dictionary];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = PPSReaderLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(PPSTimeSeries *)v5 JSONRepresentation];
    }
  }

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PPSTimeInterval *)self description];
  v7 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, v6];

  return v7;
}

- (id)description
{
  v2 = [(PPSTimeInterval *)self dictionary];
  v3 = [v2 description];

  return v3;
}

- (NSDictionary)dictionary
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"endTimestamp";
  v3 = MEMORY[0x277CCABB0];
  [(PPSTimeInterval *)self startTimestamp];
  v4 = [v3 numberWithDouble:?];
  v13[0] = v4;
  v12[1] = @"startTimestamp";
  v5 = MEMORY[0x277CCABB0];
  [(PPSTimeInterval *)self endTimestamp];
  v6 = [v5 numberWithDouble:?];
  v13[1] = v6;
  v12[2] = @"payload";
  v7 = [(PPSTimeInterval *)self payload];
  v8 = [v7 copy];
  v13[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (double)duration
{
  [(PPSTimeInterval *)self endTimestamp];
  v4 = v3;
  [(PPSTimeInterval *)self startTimestamp];
  return v4 - v5;
}

- (BOOL)containsTimeInterval:(id)a3
{
  v4 = a3;
  [(PPSTimeInterval *)self startTimestamp];
  v6 = v5;
  [v4 startTimestamp];
  if (v6 <= v7)
  {
    [(PPSTimeInterval *)self endTimestamp];
    v10 = v9;
    [v4 endTimestamp];
    v8 = v10 >= v11;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)containsTimestamp:(double)a3
{
  [(PPSTimeInterval *)self startTimestamp];
  if (v5 > a3)
  {
    return 0;
  }

  [(PPSTimeInterval *)self endTimestamp];
  return v7 > a3;
}

- (id)intersectionWithTimeInterval:(id)a3
{
  v4 = a3;
  if ([(PPSTimeInterval *)self intersectsTimeInterval:v4])
  {
    v5 = objc_alloc(objc_opt_class());
    [(PPSTimeInterval *)self startTimestamp];
    v7 = v6;
    [v4 startTimestamp];
    v9 = v8;
    [(PPSTimeInterval *)self endTimestamp];
    v11 = v10;
    [v4 endTimestamp];
    v13 = v12;
    v14 = [(PPSTimeInterval *)self payload];
    v15 = [v5 initWithStartTimestamp:v14 endTimestamp:fmax(v7 payload:{v9), fmin(v11, v13)}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)intersectsTimeInterval:(id)a3
{
  v4 = a3;
  [v4 endTimestamp];
  v6 = v5;
  [(PPSTimeInterval *)self startTimestamp];
  if (v6 <= v7)
  {
    v11 = 0;
  }

  else
  {
    [(PPSTimeInterval *)self endTimestamp];
    v9 = v8;
    [v4 startTimestamp];
    v11 = v9 > v10;
  }

  return v11;
}

- (BOOL)isAdjacentToTimeInterval:(id)a3
{
  v4 = a3;
  [(PPSTimeInterval *)self startTimestamp];
  v6 = v5;
  [v4 endTimestamp];
  if (v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    [v4 startTimestamp];
    v10 = v9;
    [(PPSTimeInterval *)self endTimestamp];
    v8 = v10 == v11;
  }

  return v8;
}

- (id)subtractTimeInterval:(id)a3
{
  v50[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(PPSTimeInterval *)self intersectsTimeInterval:v4])
  {
    v50[0] = self;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
    goto LABEL_19;
  }

  if ([v4 containsTimeInterval:self])
  {
    v5 = MEMORY[0x277CBEBF8];
    goto LABEL_19;
  }

  v6 = [(PPSTimeInterval *)self intersectionWithTimeInterval:v4];
  v7 = [(PPSTimeInterval *)self compare:v4];
  if (v7 == -1)
  {
    v28 = objc_alloc(objc_opt_class());
    [(PPSTimeInterval *)self startTimestamp];
    v30 = v29;
    [v6 startTimestamp];
    v32 = v31;
    v33 = [(PPSTimeInterval *)self payload];
    v17 = [v28 initWithStartTimestamp:v33 endTimestamp:v30 payload:v32];

    [(PPSTimeInterval *)self endTimestamp];
    v35 = v34;
    [v4 endTimestamp];
    if (v35 > v36)
    {
      v37 = objc_alloc(objc_opt_class());
      [v6 endTimestamp];
      v39 = v38;
      [(PPSTimeInterval *)self endTimestamp];
      v41 = v40;
      v42 = [(PPSTimeInterval *)self payload];
      v43 = [v37 initWithStartTimestamp:v42 endTimestamp:v39 payload:v41];

      v48[0] = v17;
      v48[1] = v43;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];

LABEL_17:
      goto LABEL_18;
    }

    v49 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
LABEL_16:
    v5 = v18;
    goto LABEL_17;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      [(PPSTimeInterval *)self endTimestamp];
      v9 = v8;
      [v4 endTimestamp];
      if (v9 > v10)
      {
        v11 = objc_alloc(objc_opt_class());
        [v6 endTimestamp];
        v13 = v12;
        [(PPSTimeInterval *)self endTimestamp];
        v15 = v14;
        v16 = [(PPSTimeInterval *)self payload];
        v17 = [v11 initWithStartTimestamp:v16 endTimestamp:v13 payload:v15];

        v46 = v17;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
        goto LABEL_16;
      }
    }
  }

  else
  {
    [v4 endTimestamp];
    v20 = v19;
    [(PPSTimeInterval *)self endTimestamp];
    if (v20 > v21)
    {
      v22 = objc_alloc(objc_opt_class());
      [v6 endTimestamp];
      v24 = v23;
      [v4 endTimestamp];
      v26 = v25;
      v27 = [v4 payload];
      v17 = [v22 initWithStartTimestamp:v27 endTimestamp:v24 payload:v26];

      v47 = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
      goto LABEL_16;
    }
  }

  v5 = MEMORY[0x277CBEBF8];
LABEL_18:

LABEL_19:
  v44 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)unionWithTimeInterval:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PPSTimeInterval *)self compare:v4];
  if ([(PPSTimeInterval *)self intersectsTimeInterval:v4]|| [(PPSTimeInterval *)self isAdjacentToTimeInterval:v4])
  {
    [(PPSTimeInterval *)self startTimestamp];
    v7 = v6;
    [(PPSTimeInterval *)v4 startTimestamp];
    v9 = v8;
    [(PPSTimeInterval *)self endTimestamp];
    v11 = v10;
    [(PPSTimeInterval *)v4 endTimestamp];
    v13 = v12;
    v14 = objc_alloc(objc_opt_class());
    v15 = [(PPSTimeInterval *)self payload];
    v16 = [v14 initWithStartTimestamp:v15 endTimestamp:fmin(v7 payload:{v9), fmax(v11, v13)}];
    v23[0] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  }

  else
  {
    if (v5 == -1)
    {
      v22 = self;
      v18 = &v22;
      self = v4;
    }

    else
    {
      v21 = v4;
      v18 = &v21;
    }

    v18[1] = self;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:?];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)initWithStartTimestamp:(uint64_t)a1 endTimestamp:(NSObject *)a2 payload:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_25E225000, a2, OS_LOG_TYPE_DEBUG, "Couldn't initialize <PPSTimeInterval>: %p> due to invalid boundaries", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end