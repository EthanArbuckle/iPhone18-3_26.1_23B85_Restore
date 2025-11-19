@interface TSPDocumentRevision
+ (id)documentRevisionAtURL:(id)a3 passphrase:(id)a4 error:(id *)a5;
+ (id)revisionWithRevisionString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)revisionString;
- (TSPDocumentRevision)init;
- (TSPDocumentRevision)initWithCoder:(id)a3;
- (TSPDocumentRevision)initWithRevisionString:(id)a3;
- (TSPDocumentRevision)initWithSequence:(int)a3 identifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)nextRevisionWithIdentifier:(id)a3;
- (int64_t)compareSequenceFromRevision:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TSPDocumentRevision

- (TSPDocumentRevision)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C62C8);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSPDocumentRevision init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDocumentRevision.mm";
    v15 = 1024;
    v16 = 26;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSPDocumentRevision init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDocumentRevision.mm"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:26 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPDocumentRevision init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPDocumentRevision)initWithSequence:(int)a3 identifier:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v15.receiver = self;
    v15.super_class = TSPDocumentRevision;
    v7 = [(TSPDocumentRevision *)&v15 init];
    v8 = v7;
    if (v7)
    {
      v7->_sequence = a3;
      v9 = [v6 copy];
      identifier = v8->_identifier;
      v8->_identifier = v9;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_1001523D0();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001523E4();
    }

    v12 = [NSString stringWithUTF8String:"[TSPDocumentRevision initWithSequence:identifier:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDocumentRevision.mm"];
    [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:31 isFatal:0 description:"Document revision identifier should not be nil."];

    +[TSUAssertionHandler logBacktraceThrottled];
    v11 = 0;
  }

  return v11;
}

- (TSPDocumentRevision)initWithRevisionString:(id)a3
{
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:@"::"];
  if ([v5 count] == 2)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v6 longLongValue];

    if (v7 != v7)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_10015250C();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_100152520();
      }

      v8 = [NSString stringWithUTF8String:"[TSPDocumentRevision initWithRevisionString:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDocumentRevision.mm"];
      [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:53 isFatal:0 description:"Revision string has invalid sequence: %{public}@", v4];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    v10 = [v5 objectAtIndexedSubscript:1];
    if ([v10 length])
    {
      v11 = [[NSUUID alloc] initWithUUIDString:v10];
      if (!v11)
      {
        +[TSUAssertionHandler _atomicIncrementAssertCount];
        if (TSUAssertCat_init_token != -1)
        {
          sub_1001525AC();
        }

        if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_1001525D4();
        }

        v12 = [NSString stringWithUTF8String:"[TSPDocumentRevision initWithRevisionString:]"];
        v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDocumentRevision.mm"];
        [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:66 isFatal:0 description:"Revision string has invalid identifier: %{public}@", v4];

        +[TSUAssertionHandler logBacktraceThrottled];
        v14 = [[NSUUID alloc] initWithUUIDString:@"0d4664c7-0c82-4301-8c01-e2d4a551216e"];
        if (!v14)
        {
          +[TSUAssertionHandler _atomicIncrementAssertCount];
          if (TSUAssertCat_init_token != -1)
          {
            sub_100152660();
          }

          if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
          {
            sub_100152688();
          }

          TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Should be able to create UUID from base UUID string.", v20, v21, v22, v23, v24, v25, v26, "[TSPDocumentRevision initWithRevisionString:]");
          v27 = [NSString stringWithUTF8String:"[TSPDocumentRevision initWithRevisionString:]"];
          v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDocumentRevision.mm"];
          [TSUAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:69 isFatal:1 description:"Should be able to create UUID from base UUID string."];

          TSUCrashBreakpoint();
          abort();
        }

        v15 = [NSUUID tsu_UUIDWithNamespaceUUID:v14 name:v10];

        v11 = v15;
      }
    }

    else
    {
      v29[0] = 0;
      v29[1] = 0;
      v11 = [[NSUUID alloc] initWithUUIDBytes:v29];
    }

    self = [(TSPDocumentRevision *)self initWithSequence:v7 identifier:v11];

    v18 = self;
  }

  else
  {
    if ([v4 length])
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_10015246C();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_100152480();
      }

      v16 = [NSString stringWithUTF8String:"[TSPDocumentRevision initWithRevisionString:]"];
      v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDocumentRevision.mm"];
      [TSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:77 isFatal:0 description:"Revision string is in invalid format: %{public}@", v4];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    v18 = 0;
  }

  return v18;
}

+ (id)revisionWithRevisionString:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithRevisionString:v4];

  return v5;
}

+ (id)documentRevisionAtURL:(id)a3 passphrase:(id)a4 error:(id *)a5
{
  v5 = [TSPDocumentProperties documentRevisionAtURL:a3, a4, a5];
  if (!v5)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100152710();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100152724();
    }

    v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSPDocumentRevision documentRevisionAtURL:passphrase:error:]");
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDocumentRevision.mm"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:95 isFatal:0 description:"Assumed that we'd never need to ask TSPOC for a document revision in iWorkXPC"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return v5;
}

- (NSString)revisionString
{
  sequence = self->_sequence;
  v3 = [(NSUUID *)self->_identifier UUIDString];
  v4 = [NSString stringWithFormat:@"%d%@%@", sequence, @"::", v3];

  return v4;
}

- (id)nextRevisionWithIdentifier:(id)a3
{
  v4 = a3;
  if (self->_sequence == 0x7FFFFFFF)
  {
    v5 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_1001527AC();
    }

    v6 = TSUAssertCat_log_t;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(TSPDocumentRevision *)self revisionString];
      sub_1001527C0(v7, buf, v5, v6);
    }

    v8 = [NSString stringWithUTF8String:"[TSPDocumentRevision nextRevisionWithIdentifier:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDocumentRevision.mm"];
    v10 = [(TSPDocumentRevision *)self revisionString];
    [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:109 isFatal:0 description:"Revision will overflow: %{public}@", v10];

    +[TSUAssertionHandler logBacktraceThrottled];
    v11 = objc_opt_class();
    v12 = 0x80000000;
  }

  else
  {
    v11 = objc_opt_class();
    v12 = (self->_sequence + 1);
  }

  v13 = [v11 revisionWithSequence:v12 identifier:v4];

  return v13;
}

- (int64_t)compareSequenceFromRevision:(id)a3
{
  v4 = a3;
  sequence = self->_sequence;
  if (sequence <= [v4 sequence])
  {
    v7 = self->_sequence;
    if (v7 >= [v4 sequence])
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(TSPDocumentRevision *)self revisionString];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    sequence = self->_sequence;
    if (sequence == [v5 sequence])
    {
      identifier = self->_identifier;
      v8 = [v5 identifier];
      v9 = [(NSUUID *)identifier isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  sequence = self->_sequence;
  identifier = self->_identifier;

  return [v4 initWithSequence:sequence identifier:identifier];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:self->_sequence forKey:@"sequence"];
  identifier = self->_identifier;
  if (identifier)
  {
    [v4 encodeObject:identifier forKey:@"identifier"];
  }
}

- (TSPDocumentRevision)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"sequence"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [(TSPDocumentRevision *)self initWithSequence:v5 identifier:v6];

  return v7;
}

@end