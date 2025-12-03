@interface TSPDocumentRevision
+ (id)documentRevisionAtURL:(id)l passphrase:(id)passphrase error:(id *)error;
+ (id)revisionWithRevisionString:(id)string;
- (BOOL)isEqual:(id)equal;
- (NSString)revisionString;
- (TSPDocumentRevision)init;
- (TSPDocumentRevision)initWithCoder:(id)coder;
- (TSPDocumentRevision)initWithRevisionString:(id)string;
- (TSPDocumentRevision)initWithSequence:(int)sequence identifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)nextRevisionWithIdentifier:(id)identifier;
- (int64_t)compareSequenceFromRevision:(id)revision;
- (void)encodeWithCoder:(id)coder;
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

- (TSPDocumentRevision)initWithSequence:(int)sequence identifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v15.receiver = self;
    v15.super_class = TSPDocumentRevision;
    v7 = [(TSPDocumentRevision *)&v15 init];
    v8 = v7;
    if (v7)
    {
      v7->_sequence = sequence;
      v9 = [identifierCopy copy];
      identifier = v8->_identifier;
      v8->_identifier = v9;
    }

    self = v8;
    selfCopy = self;
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
    selfCopy = 0;
  }

  return selfCopy;
}

- (TSPDocumentRevision)initWithRevisionString:(id)string
{
  stringCopy = string;
  v5 = [stringCopy componentsSeparatedByString:@"::"];
  if ([v5 count] == 2)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    longLongValue = [v6 longLongValue];

    if (longLongValue != longLongValue)
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
      [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:53 isFatal:0 description:"Revision string has invalid sequence: %{public}@", stringCopy];

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
        [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:66 isFatal:0 description:"Revision string has invalid identifier: %{public}@", stringCopy];

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

    self = [(TSPDocumentRevision *)self initWithSequence:longLongValue identifier:v11];

    selfCopy = self;
  }

  else
  {
    if ([stringCopy length])
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
      [TSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:77 isFatal:0 description:"Revision string is in invalid format: %{public}@", stringCopy];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)revisionWithRevisionString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithRevisionString:stringCopy];

  return v5;
}

+ (id)documentRevisionAtURL:(id)l passphrase:(id)passphrase error:(id *)error
{
  error = [TSPDocumentProperties documentRevisionAtURL:l, passphrase, error];
  if (!error)
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

  return error;
}

- (NSString)revisionString
{
  sequence = self->_sequence;
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  v4 = [NSString stringWithFormat:@"%d%@%@", sequence, @"::", uUIDString];

  return v4;
}

- (id)nextRevisionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
      revisionString = [(TSPDocumentRevision *)self revisionString];
      sub_1001527C0(revisionString, buf, v5, v6);
    }

    v8 = [NSString stringWithUTF8String:"[TSPDocumentRevision nextRevisionWithIdentifier:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDocumentRevision.mm"];
    revisionString2 = [(TSPDocumentRevision *)self revisionString];
    [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:109 isFatal:0 description:"Revision will overflow: %{public}@", revisionString2];

    +[TSUAssertionHandler logBacktraceThrottled];
    v11 = objc_opt_class();
    v12 = 0x80000000;
  }

  else
  {
    v11 = objc_opt_class();
    v12 = (self->_sequence + 1);
  }

  v13 = [v11 revisionWithSequence:v12 identifier:identifierCopy];

  return v13;
}

- (int64_t)compareSequenceFromRevision:(id)revision
{
  revisionCopy = revision;
  sequence = self->_sequence;
  if (sequence <= [revisionCopy sequence])
  {
    v7 = self->_sequence;
    if (v7 >= [revisionCopy sequence])
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
  revisionString = [(TSPDocumentRevision *)self revisionString];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, revisionString];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    sequence = self->_sequence;
    if (sequence == [v5 sequence])
    {
      identifier = self->_identifier;
      identifier = [v5 identifier];
      v9 = [(NSUUID *)identifier isEqual:identifier];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  sequence = self->_sequence;
  identifier = self->_identifier;

  return [v4 initWithSequence:sequence identifier:identifier];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:self->_sequence forKey:@"sequence"];
  identifier = self->_identifier;
  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"identifier"];
  }
}

- (TSPDocumentRevision)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt32ForKey:@"sequence"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v7 = [(TSPDocumentRevision *)self initWithSequence:v5 identifier:v6];

  return v7;
}

@end