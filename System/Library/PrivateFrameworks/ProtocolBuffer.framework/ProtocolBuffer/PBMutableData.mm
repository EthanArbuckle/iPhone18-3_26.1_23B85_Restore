@interface PBMutableData
- (PBMutableData)initWithCapacity:(unint64_t)capacity;
- (void)_pb_growCapacityBy:(void *)by;
- (void)dealloc;
- (void)setLength:(unint64_t)length;
@end

@implementation PBMutableData

- (void)dealloc
{
  free(self->buffer);
  v3.receiver = self;
  v3.super_class = PBMutableData;
  [(PBMutableData *)&v3 dealloc];
}

- (void)setLength:(unint64_t)length
{
  buffer = self->buffer;
  v6 = (self->end - buffer);
  if (length > v6)
  {
    [(PBMutableData *)self _pb_growCapacityBy:?];
    buffer = self->buffer;
  }

  self->p = &buffer[length];
}

- (void)_pb_growCapacityBy:(void *)by
{
  if (by)
  {
    v4 = [by length];
    v5 = by[2];
    v6 = by[3] - v5 + a2;
    v7 = malloc_type_realloc(v5, v6, 0x175D3A40uLL);
    if (!v7)
    {
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:0 userInfo:0];
      [v8 raise];
    }

    by[2] = v7;
    by[3] = &v7[v6];
    by[1] = &v7[v4];
  }
}

- (PBMutableData)initWithCapacity:(unint64_t)capacity
{
  v6.receiver = self;
  v6.super_class = PBMutableData;
  v4 = [(PBMutableData *)&v6 init];
  [(PBMutableData *)v4 _pb_growCapacityBy:capacity];
  return v4;
}

@end