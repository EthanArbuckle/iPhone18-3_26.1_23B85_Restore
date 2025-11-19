@interface PVTimedObject
+ (id)findTimedObjectInSortedArray:(id)a3 atTime:(id *)a4 returnFirstObjectForTimeBeforeFirst:(BOOL)a5 returnLastObjectForTimeAfterLast:(BOOL)a6;
+ (id)timedObjectWithTime:(id *)a3;
+ (id)timedObjectWithTime:(id *)a3 object:(id)a4;
- (BOOL)isEqual:(id)a3;
- (PVTimedObject)init;
- (PVTimedObject)initWithCoder:(id)a3;
- (PVTimedObject)initWithObject:(id)a3;
- (PVTimedObject)initWithTime:(id *)a3 object:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setTime:(id *)a3;
@end

@implementation PVTimedObject

+ (id)timedObjectWithTime:(id *)a3
{
  v4 = [a1 alloc];
  v7 = *a3;
  v5 = [v4 initWithTime:&v7];

  return v5;
}

+ (id)timedObjectWithTime:(id *)a3 object:(id)a4
{
  v6 = a4;
  v7 = [a1 alloc];
  v10 = *a3;
  v8 = [v7 initWithTime:&v10 object:v6];

  return v8;
}

- (PVTimedObject)init
{
  v3 = *MEMORY[0x277CC08F0];
  v4 = *(MEMORY[0x277CC08F0] + 16);
  return [(PVTimedObject *)self initWithTime:&v3];
}

- (PVTimedObject)initWithObject:(id)a3
{
  v4 = *MEMORY[0x277CC08F0];
  v5 = *(MEMORY[0x277CC08F0] + 16);
  return [(PVTimedObject *)self initWithTime:&v4 object:a3];
}

- (PVTimedObject)initWithTime:(id *)a3 object:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = PVTimedObject;
  v7 = [(PVTimedObject *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v10 = *&a3->var0;
    var3 = a3->var3;
    [(PVTimedObject *)v7 setTime:&v10];
    [(PVTimedObject *)v8 setObject:v6];
  }

  return v8;
}

- (PVTimedObject)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(objc_opt_class());

  if (v5 && [v4 decodeIntForKey:@"PVTimedObject_CodingVersion"] == 1)
  {
    if (v4)
    {
      [v4 decodeCMTimeForKey:@"PVTimedObject_Time"];
    }

    else
    {
      v14 = 0uLL;
      v15 = 0;
    }

    v12 = v14;
    v13 = v15;
    [(PVTimedObject *)v5 setTime:&v12];
    v6 = [v4 allowedClasses];
    v11 = 0;
    v7 = [v4 decodeTopLevelObjectOfClasses:v6 forKey:@"PVTimedObject_Object" error:&v11];
    v8 = v11;
    [(PVTimedObject *)v5 setObject:v7];

    if (v8)
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PVTimedObject_Object"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:1 forKey:@"PVTimedObject_CodingVersion"];
  [(PVTimedObject *)self time];
  [v4 encodeCMTime:v10 forKey:@"PVTimedObject_Time"];
  v5 = [(PVTimedObject *)self object];

  if (v5)
  {
    v6 = [(PVTimedObject *)self object];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v4 encodeObject:v8 forKey:@"PVTimedObject_ObjectClass"];

    v9 = [(PVTimedObject *)self object];
    [v4 encodeObject:v9 forKey:@"PVTimedObject_Object"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  [(PVTimedObject *)self time];
  v4 = [(PVTimedObject *)self object];
  v5 = [v4 copy];
  v6 = [PVTimedObject timedObjectWithTime:v8 object:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  if (self == v4)
  {
    v7 = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    [(PVTimedObject *)self time];
    [(PVTimedObject *)v6 time];
    if (CMTimeCompare(&time1, &v11))
    {
      v7 = 0;
    }

    else
    {
      v8 = [(PVTimedObject *)self object];
      v9 = [(PVTimedObject *)v6 object];
      v7 = [v8 isEqual:v9];
    }
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(PVTimedObject *)self object];
  v4 = [v3 hash];

  v6 = 0;
  v7 = 0;
  v8 = 0;
  [(PVTimedObject *)self time];
  return v6 ^ v4 ^ v7 ^ HIDWORD(v7) ^ v8;
}

- (id)description
{
  v3 = *MEMORY[0x277CBECE8];
  [(PVTimedObject *)self time];
  v4 = CMTimeCopyDescription(v3, &time);
  v5 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = PVTimedObject;
  v6 = [(PVTimedObject *)&v12 description];
  v7 = [(PVTimedObject *)self object];
  v8 = [v7 description];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
  v10 = [v5 stringWithFormat:@"%@\n\ttime:   %@\n\tobject: %@", v6, v4, v9];

  return v10;
}

+ (id)findTimedObjectInSortedArray:(id)a3 atTime:(id *)a4 returnFirstObjectForTimeBeforeFirst:(BOOL)a5 returnLastObjectForTimeAfterLast:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v9 = a3;
  v10 = v9;
  if (!v9 || (v11 = [(__CFArray *)v9 count]) == 0)
  {
    v18 = 0;
    goto LABEL_18;
  }

  v12 = v11;
  time1 = *a4;
  v13 = [PVTimedObject timedObjectWithTime:&time1];
  v24.location = 0;
  v24.length = v12;
  v14 = CFArrayBSearchValues(v10, v24, v13, compareTimedObjects, 0);
  if (v14 < v12)
  {
    v15 = v14;
    if ((v14 & 0x8000000000000000) == 0)
    {
      v16 = [(__CFArray *)v10 objectAtIndexedSubscript:v14];
      v17 = v16;
      if (v16)
      {
        [v16 time];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v21 = *a4;
      if (CMTimeCompare(&time1, &v21) >= 1)
      {
        if (!v15)
        {
          if (v7)
          {
            v18 = [(__CFArray *)v10 firstObject];
          }

          else
          {
            v18 = 0;
          }

          goto LABEL_16;
        }

        v19 = [(__CFArray *)v10 objectAtIndexedSubscript:v15 - 1];

        v17 = v19;
      }

      v18 = v17;
      v17 = v18;
LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (!v6)
  {
LABEL_10:
    v18 = 0;
    goto LABEL_17;
  }

  v18 = [(__CFArray *)v10 lastObject];
LABEL_17:

LABEL_18:

  return v18;
}

- (void)setTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_time.epoch = a3->var3;
  *&self->_time.value = v3;
}

@end