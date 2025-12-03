@interface DBTDuxburyFormatParser
+ (id)allCodeNodes;
- (DBTDuxburyFormatParser)init;
- (id)LaTeXRepresentationOfString:(id)string error:(id *)error;
- (id)_parseInputString:(id)string error:(id *)error;
- (void)_initState;
- (void)closeENodeIfNeeded;
@end

@implementation DBTDuxburyFormatParser

+ (id)allCodeNodes
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v4[10] = objc_opt_class();
  v4[11] = objc_opt_class();
  v4[12] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:13];

  return v2;
}

- (DBTDuxburyFormatParser)init
{
  v4.receiver = self;
  v4.super_class = DBTDuxburyFormatParser;
  v2 = [(DBTDuxburyFormatParser *)&v4 init];
  [(DBTDuxburyFormatParser *)v2 _initState];
  return v2;
}

- (void)_initState
{
  v3 = objc_alloc_init(DBTDuxburyFormatRootNode);
  v4 = [NSMutableArray arrayWithObject:v3];
  parserStack = self->_parserStack;
  self->_parserStack = v4;

  self->_startIndex = 0;
  self->_advanceIndex = 0;
}

- (id)LaTeXRepresentationOfString:(id)string error:(id *)error
{
  v5 = [(DBTDuxburyFormatParser *)self _parseInputString:string error:?];
  v6 = v5;
  if (error && *error)
  {
    laTeXRepresentation = 0;
  }

  else
  {
    laTeXRepresentation = [v5 LaTeXRepresentation];
  }

  return laTeXRepresentation;
}

- (id)_parseInputString:(id)string error:(id *)error
{
  stringCopy = string;
  [(DBTDuxburyFormatParser *)self _initState];
  v92 = 0;
  v7 = [NSRegularExpression regularExpressionWithPattern:@"\\x{1c}([a-zA-Z0-9]+)\\x{1f}" options:1 error:&v92];
  v8 = v92;
  v91 = v8;
  v78 = [NSRegularExpression regularExpressionWithPattern:@"[^\\x{1c}]*" options:1 error:&v91];
  v9 = v91;

  if (v9)
  {
    if (error)
    {
      v10 = v9;
      lastObject4 = 0;
      *error = v9;
    }

    else
    {
      lastObject4 = 0;
    }

    goto LABEL_67;
  }

  v12 = [stringCopy length];
  v76 = v7;
  if (![stringCopy length])
  {
    v13 = 0;
LABEL_59:
    parserStack = self->_parserStack;
    p_parserStack = &self->_parserStack;
    if ([(NSMutableArray *)parserStack count]>= 2)
    {
      do
      {
        lastObject = [(NSMutableArray *)*p_parserStack lastObject];
        [(NSMutableArray *)*p_parserStack removeLastObject];
        lastObject2 = [(NSMutableArray *)*p_parserStack lastObject];
        children = [lastObject2 children];
        v67 = [children containsObject:lastObject];

        if ((v67 & 1) == 0)
        {
          lastObject3 = [(NSMutableArray *)*p_parserStack lastObject];
          [lastObject3 addChild:lastObject];
        }
      }

      while ([(NSMutableArray *)*p_parserStack count]> 1);
    }

    v69 = DBTLogFormatParser();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      [DBTDuxburyFormatParser _parseInputString:v69 error:?];
    }

    lastObject4 = [(NSMutableArray *)*p_parserStack lastObject];
    goto LABEL_66;
  }

  errorCopy = error;
  v13 = 0;
  v14 = 0;
  v75 = stringCopy;
  while (1)
  {
    v15 = v13;
    v13 = [v7 firstMatchInString:stringCopy options:4 range:{v14, v12}];

    if (v13)
    {
      break;
    }

    v13 = [v78 firstMatchInString:stringCopy options:4 range:{v14, v12}];
    if (v13)
    {
      [(DBTDuxburyFormatParser *)self closeENodeIfNeeded];
      range = [v13 range];
      v18 = [stringCopy substringWithRange:{range, v36}];
      v37 = [[DBTDuxburyFormatTextNode alloc] initWithText:v18];
      lastObject5 = [(NSMutableArray *)self->_parserStack lastObject];
      [lastObject5 addChild:v37];

      range2 = [v13 range];
      v14 = range2 + v40;
      [v13 range];
      v42 = v41;

LABEL_33:
      v12 -= v42;
    }

LABEL_34:
    if (v14 >= [stringCopy length])
    {
      goto LABEL_59;
    }
  }

  if ([v13 numberOfRanges] != &dword_0 + 2)
  {
    goto LABEL_34;
  }

  v77 = v12;
  v16 = [v13 rangeAtIndex:1];
  v18 = [stringCopy substringWithRange:{v16, v17}];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_parserStack reverseObjectEnumerator];
  v20 = [reverseObjectEnumerator countByEnumeratingWithState:&v87 objects:v97 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v88;
LABEL_10:
    v23 = 0;
    while (1)
    {
      if (*v88 != v22)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v24 = *(*(&v87 + 1) + 8 * v23);
      endCode = [objc_opt_class() endCode];
      if ([v18 isEqualToString:endCode])
      {
        isClosed = [v24 isClosed];

        if ((isClosed & 1) == 0)
        {
          [v24 foundEndCode:v18];
          [(NSMutableArray *)self->_parserStack removeObject:v24];
LABEL_30:
          stringCopy = v75;
          v7 = v76;
          v12 = v77;
LABEL_31:

          goto LABEL_32;
        }
      }

      else
      {
      }

      if (v21 == ++v23)
      {
        v21 = [reverseObjectEnumerator countByEnumeratingWithState:&v87 objects:v97 count:16];
        if (!v21)
        {
          break;
        }

        goto LABEL_10;
      }
    }
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  reverseObjectEnumerator2 = [(NSMutableArray *)self->_parserStack reverseObjectEnumerator];
  v28 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v83 objects:v96 count:16];
  if (!v28)
  {
    goto LABEL_27;
  }

  v29 = v28;
  v30 = *v84;
LABEL_21:
  v31 = 0;
  while (1)
  {
    if (*v84 != v30)
    {
      objc_enumerationMutation(reverseObjectEnumerator2);
    }

    v32 = *(*(&v83 + 1) + 8 * v31);
    innerCodes = [objc_opt_class() innerCodes];
    v34 = [innerCodes containsObject:v18];

    if (v34)
    {
      break;
    }

    if (v29 == ++v31)
    {
      v29 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v83 objects:v96 count:16];
      if (!v29)
      {
LABEL_27:

        goto LABEL_40;
      }

      goto LABEL_21;
    }
  }

  v46 = [v32 foundInnerCode:v18];
  while (1)
  {
    lastObject6 = [(NSMutableArray *)self->_parserStack lastObject];

    if (lastObject6 == v32)
    {
      break;
    }

    [(NSMutableArray *)self->_parserStack removeLastObject];
  }

  stringCopy = v75;
  v7 = v76;
  v12 = v77;
  if (v46)
  {
LABEL_32:
    range3 = [v13 range];
    v14 = range3 + v44;
    [v13 range];
    v42 = v45;
    goto LABEL_33;
  }

LABEL_40:
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  reverseObjectEnumerator = [objc_opt_class() allCodeNodes];
  v48 = [reverseObjectEnumerator countByEnumeratingWithState:&v79 objects:v95 count:16];
  if (!v48)
  {
    goto LABEL_70;
  }

  v49 = v48;
  v50 = *v80;
  while (2)
  {
    v51 = 0;
    while (2)
    {
      if (*v80 != v50)
      {
        objc_enumerationMutation(reverseObjectEnumerator);
      }

      v52 = *(*(&v79 + 1) + 8 * v51);
      beginCode = [v52 beginCode];
      v54 = [beginCode isEqualToString:v18];

      if (v54)
      {
        v57 = +[DBTDuxburyFormatENode innerCodes];
        v58 = [v57 containsObject:v18];

        if ((v58 & 1) == 0)
        {
          [(DBTDuxburyFormatParser *)self closeENodeIfNeeded];
        }

        v59 = objc_alloc_init(v52);
        lastObject7 = [(NSMutableArray *)self->_parserStack lastObject];
        [lastObject7 addChild:v59];

        endCode2 = [objc_opt_class() endCode];
        stringCopy = v75;
        v7 = v76;
        v12 = v77;
        if (endCode2)
        {
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_56:

            goto LABEL_31;
          }
        }

        [(NSMutableArray *)self->_parserStack addObject:v59];
        goto LABEL_56;
      }

      endCode3 = [v52 endCode];
      v56 = [endCode3 isEqualToString:v18];

      if (v56)
      {
        goto LABEL_30;
      }

      if (v49 != ++v51)
      {
        continue;
      }

      break;
    }

    v49 = [reverseObjectEnumerator countByEnumeratingWithState:&v79 objects:v95 count:16];
    if (v49)
    {
      continue;
    }

    break;
  }

LABEL_70:

  if (errorCopy)
  {
    v93 = NSLocalizedDescriptionKey;
    v71 = [NSString stringWithFormat:@"Found unexpected Duxbury format code: %@", v18];
    v94 = v71;
    v72 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];

    v73 = [NSError errorWithDomain:@"com.apple.accessibility.duxbury.dbtParserErrorDomain" code:1 userInfo:v72];
    *errorCopy = v73;
  }

  lastObject4 = 0;
  stringCopy = v75;
LABEL_66:
  v7 = v76;

  v9 = 0;
LABEL_67:

  return lastObject4;
}

- (void)closeENodeIfNeeded
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_parserStack reverseObjectEnumerator];
  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;

          if (!(v6 & 1 | (v10 == 0)))
          {
            expressionNode = [v10 expressionNode];

            if (expressionNode)
            {
              while (1)
              {
                lastObject = [(NSMutableArray *)self->_parserStack lastObject];

                if (lastObject == v10)
                {
                  break;
                }

                [(NSMutableArray *)self->_parserStack removeLastObject];
              }

              [(NSMutableArray *)self->_parserStack removeLastObject];
            }
          }

          goto LABEL_18;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        v6 = 1;
      }

      v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_18:
}

- (void)_parseInputString:(id *)a1 error:(NSObject *)a2 .cold.1(id *a1, NSObject *a2)
{
  v3 = [*a1 lastObject];
  v4 = [v3 debugDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "Parsed input to tree:\n%@", &v5, 0xCu);
}

@end