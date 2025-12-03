@interface BMMultiStreamTimestampClockVector
+ (id)deserialize:(id)deserialize error:(id *)error;
- (BMMultiStreamTimestampClockVector)init;
- (BMMultiStreamTimestampClockVector)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)timestampClockVectorForStreamIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)setVectorClockTo:(id)to forStreamIdentifier:(id)identifier;
@end

@implementation BMMultiStreamTimestampClockVector

- (BMMultiStreamTimestampClockVector)init
{
  v6.receiver = self;
  v6.super_class = BMMultiStreamTimestampClockVector;
  v2 = [(BMMultiStreamTimestampClockVector *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    vectorClock = v2->_vectorClock;
    v2->_vectorClock = v3;
  }

  return v2;
}

- (void)setVectorClockTo:(id)to forStreamIdentifier:(id)identifier
{
  if (to)
  {
    if (identifier)
    {
      [NSMutableDictionary setValue:"setValue:forKey:" forKey:?];
    }
  }
}

- (id)timestampClockVectorForStreamIdentifier:(id)identifier
{
  if (identifier)
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
  allKeys = [(BMMultiStreamTimestampClockVector *)self allKeys];
  v5 = [v3 initWithArray:allKeys];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [NSSet alloc];
    allKeys = [(BMMultiStreamTimestampClockVector *)self allKeys];
    v7 = [v5 initWithArray:allKeys];

    v8 = [NSSet alloc];
    allKeys2 = [equalCopy allKeys];
    v10 = [v8 initWithArray:allKeys2];

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
            v17 = [(BMMultiStreamTimestampClockVector *)self timestampClockVectorForStreamIdentifier:v16];
            v18 = [equalCopy timestampClockVectorForStreamIdentifier:v16];
            v19 = [v17 compareToVector:v18];

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

- (BMMultiStreamTimestampClockVector)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = BMMultiStreamTimestampClockVector;
  v5 = [(BMMultiStreamTimestampClockVector *)&v12 init];
  if (v5)
  {
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v13[2] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v13 count:3];
    v7 = [NSSet setWithArray:v6];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"vectorClock"];
    v9 = [v8 mutableCopy];
    vectorClock = v5->_vectorClock;
    v5->_vectorClock = v9;
  }

  return v5;
}

+ (id)deserialize:(id)deserialize error:(id *)error
{
  if (deserialize)
  {
    deserializeCopy = deserialize;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:deserializeCopy error:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end