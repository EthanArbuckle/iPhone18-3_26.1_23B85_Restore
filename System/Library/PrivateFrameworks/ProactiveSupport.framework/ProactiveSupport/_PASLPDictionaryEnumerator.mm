@interface _PASLPDictionaryEnumerator
- (_PASLPDictionaryEnumerator)initWithLazyPlistReader:(id)reader context:(id)context;
- (id)nextObject;
@end

@implementation _PASLPDictionaryEnumerator

- (id)nextObject
{
  v3 = objc_autoreleasePoolPush();
  context = self->_context;
  if (context && self->_ofs < context->_count)
  {
    v5 = [_PASLPReaderProtocol keyAtIndex:"keyAtIndex:usingDictionaryContext:" usingDictionaryContext:?];
    ++self->_ofs;
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (_PASLPDictionaryEnumerator)initWithLazyPlistReader:(id)reader context:(id)context
{
  readerCopy = reader;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = _PASLPDictionaryEnumerator;
  v9 = [(_PASLPDictionaryEnumerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_reader, reader);
    objc_storeStrong(&v10->_context, context);
  }

  return v10;
}

@end