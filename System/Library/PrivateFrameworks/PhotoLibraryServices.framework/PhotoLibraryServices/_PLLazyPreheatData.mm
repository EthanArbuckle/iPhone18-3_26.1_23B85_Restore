@interface _PLLazyPreheatData
+ (id)dataWithContentsOfFile:(id)a3;
- (_PLLazyPreheatData)initWithContentsOfFile:(id)a3;
- (const)bytes;
- (unint64_t)length;
- (void)_loadData;
@end

@implementation _PLLazyPreheatData

- (const)bytes
{
  [(_PLLazyPreheatData *)self _loadData];
  data = self->_data;

  return [(NSData *)data bytes];
}

- (unint64_t)length
{
  [(_PLLazyPreheatData *)self _loadData];
  data = self->_data;

  return [(NSData *)data length];
}

- (void)_loadData
{
  if (!self->_data)
  {
    v3 = objc_alloc(MEMORY[0x1E695DEF0]);
    path = self->_path;
    v8 = 0;
    v5 = [v3 initWithContentsOfFile:path options:2 error:&v8];
    v6 = v8;
    data = self->_data;
    self->_data = v5;
  }
}

- (_PLLazyPreheatData)initWithContentsOfFile:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PLLazyPreheatData;
  v6 = [(_PLLazyPreheatData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, a3);
  }

  return v7;
}

+ (id)dataWithContentsOfFile:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithContentsOfFile:v3];

  return v4;
}

@end