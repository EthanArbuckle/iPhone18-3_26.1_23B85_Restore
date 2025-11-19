@interface BMMultiStreamVectorClock
+ (id)deserialize:(id)a3 error:(id *)a4;
- (BMMultiStreamVectorClock)init;
- (BMMultiStreamVectorClock)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)vectorClockForStreamIdentifier:(id)a3;
- (unint64_t)hash;
- (void)setVectorClockTo:(id)a3 forStreamIdentifier:(id)a4;
@end

@implementation BMMultiStreamVectorClock

- (BMMultiStreamVectorClock)init
{
  v6.receiver = self;
  v6.super_class = BMMultiStreamVectorClock;
  v2 = [(BMMultiStreamVectorClock *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    vectorClock = v2->_vectorClock;
    v2->_vectorClock = v3;
  }

  return v2;
}

- (void)setVectorClockTo:(id)a3 forStreamIdentifier:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      [NSMutableDictionary setValue:"setValue:forKey:" forKey:?];
    }
  }
}

- (id)vectorClockForStreamIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [(NSMutableDictionary *)self->_vectorClock objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = [(NSMutableDictionary *)self->_vectorClock description];
  v5 = [v3 initWithFormat:@"%@", v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = [NSOrderedSet alloc];
  v4 = [(BMMultiStreamVectorClock *)self allKeys];
  v5 = [v3 initWithArray:v4];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_vectorClock valueForKey:v12, v16];
        v14 = [v12 hash];
        v10 ^= v14 ^ [v13 hash];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [NSSet alloc];
    v6 = [(BMMultiStreamVectorClock *)self allKeys];
    v7 = [v5 initWithArray:v6];

    v8 = [NSSet alloc];
    v9 = [v4 allKeys];
    v10 = [v8 initWithArray:v9];

    if ([v7 isEqual:v10])
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v22 = v10;
        v14 = *v24;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v23 + 1) + 8 * i);
            v17 = [(BMMultiStreamVectorClock *)self vectorClockForStreamIdentifier:v16];
            v18 = [v4 vectorClockForStreamIdentifier:v16];
            v19 = [v17 compareToTimestampVector:v18];

            if (v19)
            {
              v20 = 0;
              goto LABEL_15;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }

        v20 = 1;
LABEL_15:
        v10 = v22;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BMMultiStreamVectorClock)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BMMultiStreamVectorClock;
  v5 = [(BMMultiStreamVectorClock *)&v12 init];
  if (v5)
  {
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v13[2] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v13 count:3];
    v7 = [NSSet setWithArray:v6];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"vectorClock"];
    v9 = [v8 mutableCopy];
    vectorClock = v5->_vectorClock;
    v5->_vectorClock = v9;
  }

  return v5;
}

+ (id)deserialize:(id)a3 error:(id *)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end