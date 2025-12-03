@interface PVTimedObject
+ (id)findTimedObjectInSortedArray:(id)array atTime:(id *)time returnFirstObjectForTimeBeforeFirst:(BOOL)first returnLastObjectForTimeAfterLast:(BOOL)last;
+ (id)timedObjectWithTime:(id *)time;
+ (id)timedObjectWithTime:(id *)time object:(id)object;
- (BOOL)isEqual:(id)equal;
- (PVTimedObject)init;
- (PVTimedObject)initWithCoder:(id)coder;
- (PVTimedObject)initWithObject:(id)object;
- (PVTimedObject)initWithTime:(id *)time object:(id)object;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setTime:(id *)time;
@end

@implementation PVTimedObject

+ (id)timedObjectWithTime:(id *)time
{
  v4 = [self alloc];
  v7 = *time;
  v5 = [v4 initWithTime:&v7];

  return v5;
}

+ (id)timedObjectWithTime:(id *)time object:(id)object
{
  objectCopy = object;
  v7 = [self alloc];
  v10 = *time;
  v8 = [v7 initWithTime:&v10 object:objectCopy];

  return v8;
}

- (PVTimedObject)init
{
  v3 = *MEMORY[0x277CC08F0];
  v4 = *(MEMORY[0x277CC08F0] + 16);
  return [(PVTimedObject *)self initWithTime:&v3];
}

- (PVTimedObject)initWithObject:(id)object
{
  v4 = *MEMORY[0x277CC08F0];
  v5 = *(MEMORY[0x277CC08F0] + 16);
  return [(PVTimedObject *)self initWithTime:&v4 object:object];
}

- (PVTimedObject)initWithTime:(id *)time object:(id)object
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = PVTimedObject;
  v7 = [(PVTimedObject *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v10 = *&time->var0;
    var3 = time->var3;
    [(PVTimedObject *)v7 setTime:&v10];
    [(PVTimedObject *)v8 setObject:objectCopy];
  }

  return v8;
}

- (PVTimedObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(objc_opt_class());

  if (v5 && [coderCopy decodeIntForKey:@"PVTimedObject_CodingVersion"] == 1)
  {
    if (coderCopy)
    {
      [coderCopy decodeCMTimeForKey:@"PVTimedObject_Time"];
    }

    else
    {
      v14 = 0uLL;
      v15 = 0;
    }

    v12 = v14;
    v13 = v15;
    [(PVTimedObject *)v5 setTime:&v12];
    allowedClasses = [coderCopy allowedClasses];
    v11 = 0;
    v7 = [coderCopy decodeTopLevelObjectOfClasses:allowedClasses forKey:@"PVTimedObject_Object" error:&v11];
    v8 = v11;
    [(PVTimedObject *)v5 setObject:v7];

    if (v8)
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PVTimedObject_Object"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:1 forKey:@"PVTimedObject_CodingVersion"];
  [(PVTimedObject *)self time];
  [coderCopy encodeCMTime:v10 forKey:@"PVTimedObject_Time"];
  object = [(PVTimedObject *)self object];

  if (object)
  {
    object2 = [(PVTimedObject *)self object];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [coderCopy encodeObject:v8 forKey:@"PVTimedObject_ObjectClass"];

    object3 = [(PVTimedObject *)self object];
    [coderCopy encodeObject:object3 forKey:@"PVTimedObject_Object"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  [(PVTimedObject *)self time];
  object = [(PVTimedObject *)self object];
  v5 = [object copy];
  v6 = [PVTimedObject timedObjectWithTime:v8 object:v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_6;
  }

  if (self == equalCopy)
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
      object = [(PVTimedObject *)self object];
      object2 = [(PVTimedObject *)v6 object];
      v7 = [object isEqual:object2];
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
  object = [(PVTimedObject *)self object];
  v4 = [object hash];

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
  object = [(PVTimedObject *)self object];
  v8 = [object description];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
  v10 = [v5 stringWithFormat:@"%@\n\ttime:   %@\n\tobject: %@", v6, v4, v9];

  return v10;
}

+ (id)findTimedObjectInSortedArray:(id)array atTime:(id *)time returnFirstObjectForTimeBeforeFirst:(BOOL)first returnLastObjectForTimeAfterLast:(BOOL)last
{
  lastCopy = last;
  firstCopy = first;
  arrayCopy = array;
  v10 = arrayCopy;
  if (!arrayCopy || (v11 = [(__CFArray *)arrayCopy count]) == 0)
  {
    firstObject = 0;
    goto LABEL_18;
  }

  v12 = v11;
  time1 = *time;
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

      v21 = *time;
      if (CMTimeCompare(&time1, &v21) >= 1)
      {
        if (!v15)
        {
          if (firstCopy)
          {
            firstObject = [(__CFArray *)v10 firstObject];
          }

          else
          {
            firstObject = 0;
          }

          goto LABEL_16;
        }

        v19 = [(__CFArray *)v10 objectAtIndexedSubscript:v15 - 1];

        v17 = v19;
      }

      firstObject = v17;
      v17 = firstObject;
LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (!lastCopy)
  {
LABEL_10:
    firstObject = 0;
    goto LABEL_17;
  }

  firstObject = [(__CFArray *)v10 lastObject];
LABEL_17:

LABEL_18:

  return firstObject;
}

- (void)setTime:(id *)time
{
  v3 = *&time->var0;
  self->_time.epoch = time->var3;
  *&self->_time.value = v3;
}

@end