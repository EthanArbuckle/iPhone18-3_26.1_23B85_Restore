@interface NSObject
+ (BOOL)tsu_object:(id)a3 isEqualToObject:(id)a4;
- (id)tsu_addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6;
- (void)tsu_performSelector:(SEL)a3 withValue:(id)a4;
- (void)tsu_removeObserverForToken:(id)a3;
@end

@implementation NSObject

- (void)tsu_performSelector:(SEL)a3 withValue:(id)a4
{
  v7 = [self methodSignatureForSelector:?];
  if (v7)
  {
    v8 = v7;
    if ([(NSMethodSignature *)v7 numberOfArguments]== 3)
    {
      v9 = [(NSMethodSignature *)v8 getArgumentTypeAtIndex:2];
      while (2)
      {
        switch(*v9)
        {
          case '@':
            goto LABEL_10;
          case 'A':
          case 'D':
          case 'E':
          case 'F':
          case 'G':
          case 'H':
          case 'J':
          case 'K':
          case 'M':
          case 'P':
          case 'T':
          case 'U':
          case 'W':
          case 'X':
          case 'Y':
          case 'Z':
          case '[':
          case '\\':
          case ']':
          case '_':
          case 'a':
          case 'b':
          case 'e':
          case 'g':
          case 'h':
          case 'j':
          case 'k':
          case 'm':
          case 'p':
            goto LABEL_11;
          case 'B':
            [a4 BOOLValue];
            goto LABEL_31;
          case 'C':
            [a4 unsignedCharValue];
            goto LABEL_31;
          case 'I':
            [a4 unsignedIntValue];
            goto LABEL_31;
          case 'L':
            [a4 unsignedLongValue];
            goto LABEL_35;
          case 'N':
          case 'O':
          case 'R':
          case 'V':
          case 'n':
          case 'o':
          case 'r':
            ++v9;
            continue;
          case 'Q':
            [a4 unsignedLongLongValue];
            goto LABEL_35;
          case 'S':
            [a4 unsignedShortValue];
            goto LABEL_31;
          case '^':
            [a4 pointerValue];
            goto LABEL_35;
          case 'c':
            [a4 charValue];
            goto LABEL_31;
          case 'd':
            [a4 doubleValue];
            v10 = self;
            v11 = a3;

            goto LABEL_16;
          case 'f':
            [a4 floatValue];
            v10 = self;
            v11 = a3;

            goto LABEL_16;
          case 'i':
            [a4 intValue];
            goto LABEL_31;
          case 'l':
            [a4 longValue];
            goto LABEL_35;
          case 'q':
            [a4 longLongValue];
LABEL_35:
            v10 = self;
            v11 = a3;
            goto LABEL_36;
          case 's':
            [a4 shortValue];
LABEL_31:
            v10 = self;
            v11 = a3;

            goto LABEL_16;
          default:
            if (*v9 == 35)
            {
LABEL_10:
              v10 = self;
              v11 = a3;
LABEL_36:

LABEL_16:
              [v10 v11];
              return;
            }

LABEL_11:
            v12 = [a4 objCType];
            if (v12)
            {
              v13 = v12;
              if (!strcmp(v9, v12))
              {
                v14 = [NSInvocation invocationWithMethodSignature:v8];
                [(NSInvocation *)v14 setTarget:self];
                [(NSInvocation *)v14 setSelector:a3];
                sizep = 0;
                NSGetSizeAndAlignment(v13, &sizep, 0);
                v15 = malloc_type_malloc(sizep, 0x3E329894uLL);
                [a4 getValue:v15];
                [(NSInvocation *)v14 setArgument:v15 atIndex:2];
                [(NSInvocation *)v14 invoke];
                free(v15);
                return;
              }
            }

            v19 = objc_opt_class();
            v17 = [NSString stringWithFormat:@"*** [%@ %@] first argument type does not match type of %@.", v19, NSStringFromSelector(a3), a4];
            v18 = NSInvalidArgumentException;
            break;
        }

        break;
      }
    }

    else
    {
      v16 = objc_opt_class();
      v17 = [NSString stringWithFormat:@"*** [%@ %@] does not take one argument.", v16, NSStringFromSelector(a3)];
      v18 = NSInvalidArgumentException;
    }

    objc_exception_throw([NSException exceptionWithName:v18 reason:v17 userInfo:0]);
  }

  [self doesNotRecognizeSelector:a3];
}

+ (BOOL)tsu_object:(id)a3 isEqualToObject:(id)a4
{
  if (a3 == a4)
  {
    return 1;
  }

  if (a3)
  {
    v4 = a3;
    v5 = a4;
    return [v4 isEqual:v5];
  }

  if (a4)
  {
    v4 = a4;
    v5 = 0;
    return [v4 isEqual:v5];
  }

  return 0;
}

- (id)tsu_addObserver:(id)a3 forKeyPath:(id)a4 options:(unint64_t)a5 context:(void *)a6
{
  v11 = [[TSUKVOToken alloc] initWithObserver:a3 target:self keyPath:a4 context:a6];
  AssociatedObject = objc_getAssociatedObject(self, off_1001E9970);
  if (!AssociatedObject)
  {
    v15 = [NSMutableSet setWithObjects:v11, 0];
    objc_setAssociatedObject(self, off_1001E9970, v15, 1);
LABEL_9:
    [self addObserver:a3 forKeyPath:a4 options:a5 context:a6];
    return v11;
  }

  v13 = AssociatedObject;
  if (([AssociatedObject containsObject:v11] & 1) == 0)
  {
    [v13 addObject:v11];
    goto LABEL_9;
  }

  if (TSUDefaultCat_init_token != -1)
  {
    sub_100159220();
  }

  v14 = TSUDefaultCat_log_t;
  if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 138413058;
    v18 = a3;
    v19 = 2112;
    v20 = self;
    v21 = 2112;
    v22 = a4;
    v23 = 2048;
    v24 = a6;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ is already observing %@ for key path %@ using context %p", buf, 0x2Au);
  }

  return v11;
}

- (void)tsu_removeObserverForToken:(id)a3
{
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, a3);
  if (v6)
  {
    v7 = v6;
    if ([v6 target] != self)
    {
      v8 = +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_100159234();
      }

      v9 = TSUAssertCat_log_t;
      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_100159248(self, v8, v9);
      }

      [TSUAssertionHandler handleFailureInFunction:[NSString stringWithUTF8String:"[NSObject(TSUAdditions) tsu_removeObserverForToken:]"] file:[NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSObject_TSUAdditions.m"] lineNumber:211 isFatal:0 description:"Attempted to stop key-value observing on %@ using a token that it was not associated with", self];
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    AssociatedObject = objc_getAssociatedObject(self, off_1001E9970);
    if ([AssociatedObject containsObject:v7])
    {
      [objc_msgSend(v7 "target")];
      [AssociatedObject removeObject:v7];
    }
  }
}

@end