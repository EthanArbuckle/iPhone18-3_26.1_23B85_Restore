@interface NDTSQStatement
- (BOOL)isEqual:(id)equal;
- (NDTSQStatement)initWithQueue:(id)queue text:(id)text;
- (double)fetchDouble;
- (id)description;
- (id)fetchBlob;
- (id)fetchString;
- (int)bindBlob:(id)blob;
- (int)bindDouble:(double)double;
- (int)bindInteger:(int64_t)integer;
- (int)bindString:(id)string;
- (int)bindUint64:(unint64_t)uint64;
- (int)step;
- (int64_t)fetchInteger;
- (unint64_t)fetchUint64;
- (unint64_t)hash;
- (void)dealloc;
- (void)setParsed:(sqlite3_stmt *)parsed;
@end

@implementation NDTSQStatement

- (NDTSQStatement)initWithQueue:(id)queue text:(id)text
{
  queueCopy = queue;
  textCopy = text;
  v14.receiver = self;
  v14.super_class = NDTSQStatement;
  v9 = [(NDTSQStatement *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_q, queue);
    v11 = [textCopy copy];
    text = v10->_text;
    v10->_text = v11;
  }

  return v10;
}

- (void)dealloc
{
  parsed = self->_parsed;
  if (parsed)
  {
    q = self->_q;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100031EC8;
    block[3] = &unk_10005D940;
    block[4] = parsed;
    dispatch_async(q, block);
  }

  v5.receiver = self;
  v5.super_class = NDTSQStatement;
  [(NDTSQStatement *)&v5 dealloc];
}

- (int)bindInteger:(int64_t)integer
{
  dispatch_assert_queue_V2(self->_q);
  if (self->bindPosition >= self->bindCount)
  {
    v8 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"bindInteger: index out of bounds" userInfo:0];
    objc_exception_throw(v8);
  }

  parsed = [(NDTSQStatement *)self parsed];
  v6 = self->bindPosition + 1;
  self->bindPosition = v6;
  return sqlite3_bind_int64(parsed, v6, integer) == 0;
}

- (int)bindUint64:(unint64_t)uint64
{
  dispatch_assert_queue_V2(self->_q);
  if (self->bindPosition >= self->bindCount)
  {
    v8 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"bindUint64: index out of bounds" userInfo:0];
    objc_exception_throw(v8);
  }

  parsed = [(NDTSQStatement *)self parsed];
  v6 = self->bindPosition + 1;
  self->bindPosition = v6;
  return sqlite3_bind_int64(parsed, v6, uint64) == 0;
}

- (int)bindString:(id)string
{
  stringCopy = string;
  dispatch_assert_queue_V2(self->_q);
  if (self->bindPosition >= self->bindCount)
  {
    v9 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"bindString: index out of bounds" userInfo:0];
    objc_exception_throw(v9);
  }

  parsed = [(NDTSQStatement *)self parsed];
  v6 = self->bindPosition + 1;
  self->bindPosition = v6;
  v7 = sqlite3_bind_text(parsed, v6, [stringCopy UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL) == 0;

  return v7;
}

- (int)bindDouble:(double)double
{
  dispatch_assert_queue_V2(self->_q);
  if (self->bindPosition >= self->bindCount)
  {
    v8 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"bindDouble: index out of bounds" userInfo:0];
    objc_exception_throw(v8);
  }

  parsed = [(NDTSQStatement *)self parsed];
  v6 = self->bindPosition + 1;
  self->bindPosition = v6;
  return sqlite3_bind_double(parsed, v6, double) == 0;
}

- (int)bindBlob:(id)blob
{
  blobCopy = blob;
  dispatch_assert_queue_V2(self->_q);
  if (self->bindPosition >= self->bindCount)
  {
    v9 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"bindBlob: index out of bounds" userInfo:0];
    objc_exception_throw(v9);
  }

  parsed = [(NDTSQStatement *)self parsed];
  v6 = self->bindPosition + 1;
  self->bindPosition = v6;
  v7 = sqlite3_bind_blob(parsed, v6, [blobCopy bytes], objc_msgSend(blobCopy, "length"), 0xFFFFFFFFFFFFFFFFLL) == 0;

  return v7;
}

- (int)step
{
  dispatch_assert_queue_V2(self->_q);
  [(NDTSQStatement *)self resetFetchCursor];
  parsed = [(NDTSQStatement *)self parsed];

  return sqlite3_step(parsed);
}

- (int64_t)fetchInteger
{
  dispatch_assert_queue_V2(self->_q);
  if (self->fetchPosition >= self->columnCount)
  {
    v6 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"fetchInteger: column out of bounds" userInfo:0];
    objc_exception_throw(v6);
  }

  parsed = [(NDTSQStatement *)self parsed];
  fetchPosition = self->fetchPosition;
  self->fetchPosition = fetchPosition + 1;

  return sqlite3_column_int64(parsed, fetchPosition);
}

- (unint64_t)fetchUint64
{
  dispatch_assert_queue_V2(self->_q);
  if (self->fetchPosition >= self->columnCount)
  {
    v6 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"fetchUint64: column out of bounds" userInfo:0];
    objc_exception_throw(v6);
  }

  parsed = [(NDTSQStatement *)self parsed];
  fetchPosition = self->fetchPosition;
  self->fetchPosition = fetchPosition + 1;

  return sqlite3_column_int64(parsed, fetchPosition);
}

- (id)fetchString
{
  dispatch_assert_queue_V2(self->_q);
  if (self->fetchPosition >= self->columnCount)
  {
    v7 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"fetchString: column out of bounds" userInfo:0];
    objc_exception_throw(v7);
  }

  parsed = [(NDTSQStatement *)self parsed];
  fetchPosition = self->fetchPosition;
  self->fetchPosition = fetchPosition + 1;
  v5 = sqlite3_column_text(parsed, fetchPosition);
  if (v5)
  {
    v5 = [NSString stringWithUTF8String:v5];
  }

  return v5;
}

- (double)fetchDouble
{
  dispatch_assert_queue_V2(self->_q);
  if (self->fetchPosition >= self->columnCount)
  {
    v6 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"fetchDouble: column out of bounds" userInfo:0];
    objc_exception_throw(v6);
  }

  parsed = [(NDTSQStatement *)self parsed];
  fetchPosition = self->fetchPosition;
  self->fetchPosition = fetchPosition + 1;

  return sqlite3_column_double(parsed, fetchPosition);
}

- (id)fetchBlob
{
  dispatch_assert_queue_V2(self->_q);
  if (self->fetchPosition >= self->columnCount)
  {
    v8 = [NDTSQException exceptionWithName:@"NDTSQError" reason:@"fetchBlob: column out of bounds" userInfo:0];
    objc_exception_throw(v8);
  }

  v3 = sqlite3_column_bytes([(NDTSQStatement *)self parsed], self->fetchPosition);
  parsed = [(NDTSQStatement *)self parsed];
  fetchPosition = self->fetchPosition;
  self->fetchPosition = fetchPosition + 1;
  v6 = sqlite3_column_blob(parsed, fetchPosition);
  if (v6)
  {
    v6 = [NSData dataWithBytes:v6 length:v3];
  }

  return v6;
}

- (void)setParsed:(sqlite3_stmt *)parsed
{
  dispatch_assert_queue_V2(self->_q);
  if (parsed)
  {
    self->columnCount = sqlite3_column_count(parsed);
    self->bindCount = sqlite3_bind_parameter_count(parsed);
  }

  self->_parsed = parsed;
}

- (id)description
{
  text = [(NDTSQStatement *)self text];
  v4 = [NSString stringWithFormat:@"NDTQSStatement:%p:%@, parsed=%p", self, text, [(NDTSQStatement *)self parsed]];

  return v4;
}

- (unint64_t)hash
{
  text = [(NDTSQStatement *)self text];
  v3 = [text hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = [equalCopy text];
    text2 = [(NDTSQStatement *)self text];
    v7 = [text isEqual:text2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end