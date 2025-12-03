@interface NSObject
+ (BOOL)tsu_object:(id)tsu_object isEqualToObject:(id)object;
- (id)tsu_addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context;
- (void)tsu_performSelector:(SEL)selector withValue:(id)value;
- (void)tsu_removeObserverForToken:(id)token;
@end

@implementation NSObject

- (void)tsu_performSelector:(SEL)selector withValue:(id)value
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
            [value BOOLValue];
            goto LABEL_31;
          case 'C':
            [value unsignedCharValue];
            goto LABEL_31;
          case 'I':
            [value unsignedIntValue];
            goto LABEL_31;
          case 'L':
            [value unsignedLongValue];
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
            [value unsignedLongLongValue];
            goto LABEL_35;
          case 'S':
            [value unsignedShortValue];
            goto LABEL_31;
          case '^':
            [value pointerValue];
            goto LABEL_35;
          case 'c':
            [value charValue];
            goto LABEL_31;
          case 'd':
            [value doubleValue];
            selfCopy5 = self;
            selectorCopy5 = selector;

            goto LABEL_16;
          case 'f':
            [value floatValue];
            selfCopy5 = self;
            selectorCopy5 = selector;

            goto LABEL_16;
          case 'i':
            [value intValue];
            goto LABEL_31;
          case 'l':
            [value longValue];
            goto LABEL_35;
          case 'q':
            [value longLongValue];
LABEL_35:
            selfCopy5 = self;
            selectorCopy5 = selector;
            goto LABEL_36;
          case 's':
            [value shortValue];
LABEL_31:
            selfCopy5 = self;
            selectorCopy5 = selector;

            goto LABEL_16;
          default:
            if (*v9 == 35)
            {
LABEL_10:
              selfCopy5 = self;
              selectorCopy5 = selector;
LABEL_36:

LABEL_16:
              [selfCopy5 selectorCopy5];
              return;
            }

LABEL_11:
            objCType = [value objCType];
            if (objCType)
            {
              v13 = objCType;
              if (!strcmp(v9, objCType))
              {
                v14 = [NSInvocation invocationWithMethodSignature:v8];
                [(NSInvocation *)v14 setTarget:self];
                [(NSInvocation *)v14 setSelector:selector];
                sizep = 0;
                NSGetSizeAndAlignment(v13, &sizep, 0);
                v15 = malloc_type_malloc(sizep, 0x3E329894uLL);
                [value getValue:v15];
                [(NSInvocation *)v14 setArgument:v15 atIndex:2];
                [(NSInvocation *)v14 invoke];
                free(v15);
                return;
              }
            }

            v19 = objc_opt_class();
            value = [NSString stringWithFormat:@"*** [%@ %@] first argument type does not match type of %@.", v19, NSStringFromSelector(selector), value];
            v18 = NSInvalidArgumentException;
            break;
        }

        break;
      }
    }

    else
    {
      v16 = objc_opt_class();
      value = [NSString stringWithFormat:@"*** [%@ %@] does not take one argument.", v16, NSStringFromSelector(selector)];
      v18 = NSInvalidArgumentException;
    }

    objc_exception_throw([NSException exceptionWithName:v18 reason:value userInfo:0]);
  }

  [self doesNotRecognizeSelector:selector];
}

+ (BOOL)tsu_object:(id)tsu_object isEqualToObject:(id)object
{
  if (tsu_object == object)
  {
    return 1;
  }

  if (tsu_object)
  {
    objectCopy2 = tsu_object;
    objectCopy = object;
    return [objectCopy2 isEqual:objectCopy];
  }

  if (object)
  {
    objectCopy2 = object;
    objectCopy = 0;
    return [objectCopy2 isEqual:objectCopy];
  }

  return 0;
}

- (id)tsu_addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context
{
  v11 = [[TSUKVOToken alloc] initWithObserver:observer target:self keyPath:path context:context];
  AssociatedObject = objc_getAssociatedObject(self, off_1001E9970);
  if (!AssociatedObject)
  {
    v15 = [NSMutableSet setWithObjects:v11, 0];
    objc_setAssociatedObject(self, off_1001E9970, v15, 1);
LABEL_9:
    [self addObserver:observer forKeyPath:path options:options context:context];
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
    observerCopy = observer;
    v19 = 2112;
    selfCopy = self;
    v21 = 2112;
    pathCopy = path;
    v23 = 2048;
    contextCopy = context;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@ is already observing %@ for key path %@ using context %p", buf, 0x2Au);
  }

  return v11;
}

- (void)tsu_removeObserverForToken:(id)token
{
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, token);
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