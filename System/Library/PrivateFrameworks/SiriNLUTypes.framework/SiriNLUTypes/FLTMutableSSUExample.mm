@interface FLTMutableSSUExample
+ (Class)data_mutableClassForType:(int64_t)type;
+ (int64_t)data_typeForMutableObject:(id)object;
+ (int64_t)data_typeForObject:(id)object;
- (FLTMutableSSUExample)init;
- (FLTSSUExampleEncodedVector)dataAsFLTSSUExampleEncodedVector;
- (FLTSSUExampleUtterance)dataAsFLTSSUExampleUtterance;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)data_type;
- (void)setData:(id)data;
- (void)setDataAsFLTSSUExampleEncodedVector:(id)vector;
- (void)setDataAsFLTSSUExampleUtterance:(id)utterance;
- (void)setData_type:(int64_t)data_type;
@end

@implementation FLTMutableSSUExample

- (void)setData:(id)data
{
  dataCopy = data;
  -[FLTMutableSSUExample setData_type:](self, "setData_type:", [objc_opt_class() data_typeForObject:dataCopy]);
  v4 = [dataCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"data"];
}

- (void)setDataAsFLTSSUExampleEncodedVector:(id)vector
{
  vectorCopy = vector;
  [(FLTMutableSSUExample *)self setData_type:2];
  v4 = [vectorCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"data"];
}

- (FLTSSUExampleEncodedVector)dataAsFLTSSUExampleEncodedVector
{
  if ([(FLTMutableSSUExample *)self data_type]== 2)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"data"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setDataAsFLTSSUExampleUtterance:(id)utterance
{
  utteranceCopy = utterance;
  [(FLTMutableSSUExample *)self setData_type:1];
  v4 = [utteranceCopy copy];
  [(NSMutableDictionary *)self->super._storage setObject:v4 forKeyedSubscript:@"data"];
}

- (FLTSSUExampleUtterance)dataAsFLTSSUExampleUtterance
{
  if ([(FLTMutableSSUExample *)self data_type]== 1)
  {
    v3 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"data"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setData_type:(int64_t)data_type
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:data_type];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)data_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"data_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (FLTMutableSSUExample)init
{
  v6.receiver = self;
  v6.super_class = FLTMutableSSUExample;
  v2 = [(FLTMutableSSUExample *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

+ (int64_t)data_typeForObject:(id)object
{
  objectCopy = object;
  if ([objectCopy isMemberOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(objectCopy, "isMemberOfClass:", objc_opt_class()))
  {
    v4 = 1;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 2;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)data_typeForMutableObject:(id)object
{
  objectCopy = object;
  if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 1;
  }

  else if ([objectCopy isMemberOfClass:objc_opt_class()])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (Class)data_mutableClassForType:(int64_t)type
{
  if (type == 1)
  {
    v4 = off_1E8323100;
LABEL_5:
    v5 = *v4;
    v6 = objc_opt_class();

    return v6;
  }

  if (type == 2)
  {
    v4 = off_1E83230F8;
    goto LABEL_5;
  }

  v6 = 0;

  return v6;
}

@end