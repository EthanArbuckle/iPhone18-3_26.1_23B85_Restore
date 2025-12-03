@interface NSObject(TSUAdditions)
+ (uint64_t)tsu_object:()TSUAdditions isEqualToObject:;
- (void)tsu_performSelector:()TSUAdditions withValue:;
@end

@implementation NSObject(TSUAdditions)

- (void)tsu_performSelector:()TSUAdditions withValue:
{
  v7 = [self methodSignatureForSelector:?];
  if (v7)
  {
    v8 = v7;
    if ([v7 numberOfArguments] == 3)
    {
      v9 = [v8 getArgumentTypeAtIndex:2];
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
            selfCopy5 = self;
            v11 = a3;

            goto LABEL_16;
          case 'f':
            [a4 floatValue];
            selfCopy5 = self;
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
            selfCopy5 = self;
            v11 = a3;
            goto LABEL_36;
          case 's':
            [a4 shortValue];
LABEL_31:
            selfCopy5 = self;
            v11 = a3;

            goto LABEL_16;
          default:
            if (*v9 == 35)
            {
LABEL_10:
              selfCopy5 = self;
              v11 = a3;
LABEL_36:

LABEL_16:
              [selfCopy5 v11];
              return;
            }

LABEL_11:
            objCType = [a4 objCType];
            if (objCType)
            {
              v13 = objCType;
              if (!strcmp(v9, objCType))
              {
                v14 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v8];
                [v14 setTarget:self];
                [v14 setSelector:a3];
                sizep = 0;
                NSGetSizeAndAlignment(v13, &sizep, 0);
                v15 = malloc_type_malloc(sizep, 0x93B761CDuLL);
                [a4 getValue:v15];
                [v14 setArgument:v15 atIndex:2];
                [v14 invoke];
                free(v15);
                return;
              }
            }

            v23 = MEMORY[0x277CBEAD8];
            v24 = *MEMORY[0x277CBE660];
            v25 = MEMORY[0x277CCACA8];
            v26 = objc_opt_class();
            v20 = [v25 stringWithFormat:@"*** -[%@ %@] first argument type does not match type of %@.", v26, NSStringFromSelector(a3), a4];
            v21 = v23;
            v22 = v24;
            break;
        }

        break;
      }
    }

    else
    {
      v16 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE660];
      v18 = MEMORY[0x277CCACA8];
      v19 = objc_opt_class();
      v20 = [v18 stringWithFormat:@"*** -[%@ %@] does not take one argument.", v19, NSStringFromSelector(a3)];
      v21 = v16;
      v22 = v17;
    }

    objc_exception_throw([v21 exceptionWithName:v22 reason:v20 userInfo:0]);
  }

  [self doesNotRecognizeSelector:a3];
}

+ (uint64_t)tsu_object:()TSUAdditions isEqualToObject:
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

@end