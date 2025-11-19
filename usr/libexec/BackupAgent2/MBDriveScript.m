@interface MBDriveScript
- (MBDriveScript)initWithProgress:(id)a3;
- (void)addOperation:(id)a3;
- (void)addOperations:(id)a3;
- (void)beginPerforming;
- (void)dealloc;
- (void)finishedPerforming;
- (void)insertOperation:(id)a3 atIndex:(unint64_t)a4;
- (void)performingOperation:(id)a3;
@end

@implementation MBDriveScript

- (MBDriveScript)initWithProgress:(id)a3
{
  v6.receiver = self;
  v6.super_class = MBDriveScript;
  v4 = [(MBDriveScript *)&v6 init];
  if (v4)
  {
    v4->_operations = [[NSMutableArray alloc] initWithCapacity:0];
    v4->_progress = a3;
    v4->_state = 0;
    v4->_index = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MBDriveScript;
  [(MBDriveScript *)&v3 dealloc];
}

- (void)addOperation:(id)a3
{
  if (self->_state)
  {
    sub_10009E990();
  }

  [(NSMutableArray *)self->_operations addObject:a3];
  progress = self->_progress;
  [a3 duration];

  [(MBProgress *)progress addDuration:?];
}

- (void)addOperations:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(a3);
        }

        [(MBDriveScript *)self addOperation:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)insertOperation:(id)a3 atIndex:(unint64_t)a4
{
  [(NSMutableArray *)self->_operations insertObject:a3 atIndex:a4];
  progress = self->_progress;
  [a3 duration];

  [(MBProgress *)progress addDuration:?];
}

- (void)beginPerforming
{
  if (self->_state || self->_index)
  {
    sub_10009E9E4();
  }

  self->_state = 1;
}

- (void)performingOperation:(id)a3
{
  state = self->_state;
  if (state)
  {
    if (state != 1)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"MBDriveScript.m" description:72, @"Invalid state"];
    }

    v6 = [(NSMutableArray *)self->_operations objectAtIndexedSubscript:self->_index];
    v7 = [a3 type];
    if (v7 != [v6 type])
    {
      sub_10009EA38();
    }

    progress = self->_progress;
    [v6 duration];
    -[MBProgress updateWithDuration:size:](progress, "updateWithDuration:size:", [v6 size], v9);
    ++self->_index;
  }
}

- (void)finishedPerforming
{
  p_index = &self->_index;
  index = self->_index;
  p_operations = &self->_operations;
  if (index != [(NSMutableArray *)self->_operations count])
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(NSMutableArray *)*p_operations count];
      v8 = *p_index;
      *buf = 134218240;
      v13 = v7;
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "MBDriveScript had (%ld) operations, and performed (%ld)", buf, 0x16u);
      v10 = [(NSMutableArray *)*p_operations count];
      v11 = *p_index;
      _MBLog();
    }

    [(NSMutableArray *)*p_operations mb_enumerateFirstAndLastNObjects:5 fromIndex:*p_index block:&stru_1000FE0E0, v10, v11];
  }

  if (self->_state != 1)
  {
    sub_10009EAE4();
  }

  v9 = *p_index;
  if (v9 != [(NSMutableArray *)*p_operations count])
  {
    sub_10009EB2C();
  }

  if (![(MBProgress *)self->_progress isFinished])
  {
    sub_10009EBA4();
  }

  self->_state = 2;
}

@end