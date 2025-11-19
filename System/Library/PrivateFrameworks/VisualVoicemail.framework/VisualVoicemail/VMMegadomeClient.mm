@interface VMMegadomeClient
- (VMMegadomeClient)init;
- (id)getMegadomeLanguages;
- (void)dealloc;
@end

@implementation VMMegadomeClient

- (VMMegadomeClient)init
{
  v9.receiver = self;
  v9.super_class = VMMegadomeClient;
  v2 = [(VMMegadomeClient *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC3vmd15MegadomeWrapper);
    megadomeWrapper = v2->_megadomeWrapper;
    v2->_megadomeWrapper = v3;

    v5 = sub_100024CBC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      *buf = 136315906;
      v11 = "";
      v12 = 2080;
      v13 = "";
      v14 = 2112;
      v15 = v6;
      v16 = 2048;
      v17 = v2;
      v7 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p Created", buf, 0x2Au);
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = sub_100024CBC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v7 = "";
    v8 = 2080;
    v9 = "";
    v10 = 2112;
    v11 = objc_opt_class();
    v12 = 2048;
    v13 = self;
    v4 = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p Deleted", buf, 0x2Au);
  }

  v5.receiver = self;
  v5.super_class = VMMegadomeClient;
  [(VMMegadomeClient *)&v5 dealloc];
}

- (id)getMegadomeLanguages
{
  v2 = [(MegadomeWrapper *)self->_megadomeWrapper readMegadomeLanguages];
  v3 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v2 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v2 objectForKeyedSubscript:v8];
        v10 = v9;
        if (v9)
        {
          [v9 floatValue];
          if (v11 > 0.5)
          {
            v12 = [v8 lowercaseString];
            [v3 addObject:v12];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v5);
  }

  v13 = sub_100024CBC();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v20 = "";
    v21 = 2080;
    v22 = "";
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sgetMegadomeLanguages: %@", buf, 0x20u);
  }

  return v3;
}

@end