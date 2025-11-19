@interface VHJG14dpou8WUEOf
- (VHJG14dpou8WUEOf)initWithZKQesNL3BCNYUjZw:(id)a3 withQueue:(id)a4;
- (void)Dp2N5iuaONVuK1T4:(id)a3 JMJGqFLtbMZn4EGN:(int64_t)a4 QsX3tfdMvsGwvY0F:(unint64_t)a5 withCompletion:(id)a6;
@end

@implementation VHJG14dpou8WUEOf

- (VHJG14dpou8WUEOf)initWithZKQesNL3BCNYUjZw:(id)a3 withQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v27.receiver = self;
  v27.super_class = VHJG14dpou8WUEOf;
  v9 = [(VHJG14dpou8WUEOf *)&v27 init];
  v10 = v9;
  if (v9)
  {
    v22 = v8;
    objc_storeStrong(&v9->_zKQesNL3BCNYUjZw, a3);
    v11 = +[NSMutableDictionary dictionary];
    expressionDictionary = v10->_expressionDictionary;
    v10->_expressionDictionary = v11;

    objc_storeStrong(&v10->_queue, a4);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = v7;
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

    v8 = v22;
  }

  return v10;
}

- (void)Dp2N5iuaONVuK1T4:(id)a3 JMJGqFLtbMZn4EGN:(int64_t)a4 QsX3tfdMvsGwvY0F:(unint64_t)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(VHJG14dpou8WUEOf *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EDF8;
  block[3] = &unk_10068F3F8;
  v19 = a5;
  v20 = a4;
  v16 = v10;
  v17 = self;
  v18 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, block);
}

@end