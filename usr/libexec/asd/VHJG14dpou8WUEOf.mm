@interface VHJG14dpou8WUEOf
- (VHJG14dpou8WUEOf)initWithZKQesNL3BCNYUjZw:(id)zw withQueue:(id)queue;
- (void)Dp2N5iuaONVuK1T4:(id)t4 JMJGqFLtbMZn4EGN:(int64_t)n QsX3tfdMvsGwvY0F:(unint64_t)f withCompletion:(id)completion;
@end

@implementation VHJG14dpou8WUEOf

- (VHJG14dpou8WUEOf)initWithZKQesNL3BCNYUjZw:(id)zw withQueue:(id)queue
{
  zwCopy = zw;
  queueCopy = queue;
  v27.receiver = self;
  v27.super_class = VHJG14dpou8WUEOf;
  v9 = [(VHJG14dpou8WUEOf *)&v27 init];
  v10 = v9;
  if (v9)
  {
    v22 = queueCopy;
    objc_storeStrong(&v9->_zKQesNL3BCNYUjZw, zw);
    v11 = +[NSMutableDictionary dictionary];
    expressionDictionary = v10->_expressionDictionary;
    v10->_expressionDictionary = v11;

    objc_storeStrong(&v10->_queue, queue);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = zwCopy;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = [v13 objectForKeyedSubscript:v18];
          v20 = [NSExpression expressionWithFormat:v19];

          if (v20)
          {
            [(NSMutableDictionary *)v10->_expressionDictionary setObject:v20 forKeyedSubscript:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v15);
    }

    queueCopy = v22;
  }

  return v10;
}

- (void)Dp2N5iuaONVuK1T4:(id)t4 JMJGqFLtbMZn4EGN:(int64_t)n QsX3tfdMvsGwvY0F:(unint64_t)f withCompletion:(id)completion
{
  t4Copy = t4;
  completionCopy = completion;
  queue = [(VHJG14dpou8WUEOf *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EDF8;
  block[3] = &unk_10068F3F8;
  fCopy = f;
  nCopy = n;
  v16 = t4Copy;
  selfCopy = self;
  v18 = completionCopy;
  v13 = completionCopy;
  v14 = t4Copy;
  dispatch_async(queue, block);
}

@end