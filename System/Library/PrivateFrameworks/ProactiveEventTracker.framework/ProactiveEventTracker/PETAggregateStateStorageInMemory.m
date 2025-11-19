@interface PETAggregateStateStorageInMemory
- (BOOL)resetLocked;
- (PETAggregateStateStorageInMemory)init;
- (void)dealloc;
- (void)expand:(unint64_t)a3 andRunWithLock:(id)a4;
- (void)reset;
@end

@implementation PETAggregateStateStorageInMemory

- (void)reset
{
  pthread_mutex_lock(&self->_lock);
  v3 = createBlankStorage();
  data = self->_data;
  self->_data = v3;

  pthread_mutex_unlock(&self->_lock);
}

- (BOOL)resetLocked
{
  v3 = createBlankStorage();
  data = self->_data;
  self->_data = v3;

  return 1;
}

- (void)expand:(unint64_t)a3 andRunWithLock:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PETAggregateStateStorage.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  pthread_mutex_lock(&self->_lock);
  if (a3)
  {
    v8 = [(NSMutableData *)self->_data length];
    [(NSMutableData *)self->_data increaseLengthBy:a3];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = 0;
  v9 = v7[2](v7, [(NSMutableData *)self->_data mutableBytes], [(NSMutableData *)self->_data length], v8, &v13);
  if (a3 && (v9 & 1) == 0)
  {
    [(NSMutableData *)self->_data replaceBytesInRange:[(NSMutableData *)self->_data length]- a3 withBytes:a3 length:0, 0];
  }

  if (v13 == 1)
  {
    v10 = createBlankStorage();
    data = self->_data;
    self->_data = v10;
  }

  pthread_mutex_unlock(&self->_lock);
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = PETAggregateStateStorageInMemory;
  [(PETAggregateStateStorageInMemory *)&v3 dealloc];
}

- (PETAggregateStateStorageInMemory)init
{
  v6.receiver = self;
  v6.super_class = PETAggregateStateStorageInMemory;
  v2 = [(PETAggregateStateStorageInMemory *)&v6 init];
  if (v2)
  {
    v3 = createBlankStorage();
    data = v2->_data;
    v2->_data = v3;

    pthread_mutex_init(&v2->_lock, 0);
  }

  return v2;
}

@end