@interface CSHSMObjc
- (BOOL)isIn:(id)in;
- (CSHSMObjc)initWithCategory:(id)category state:(id)state;
- (void)signal:(unint64_t)signal data:(const void *)data;
@end

@implementation CSHSMObjc

- (BOOL)isIn:(id)in
{
  inCopy = in;
  v5 = objc_retainBlock(self->_state);
  if (v5)
  {
    while (v5 != inCopy)
    {
      v6 = (*(v5 + 2))(v5, 2, 0, 0);

      v5 = v6;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    LOBYTE(v5) = 1;
  }

LABEL_6:

  return v5;
}

- (CSHSMObjc)initWithCategory:(id)category state:(id)state
{
  categoryCopy = category;
  stateCopy = state;
  v19.receiver = self;
  v19.super_class = CSHSMObjc;
  v9 = [(CSHSMObjc *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_category, category);
    v11 = objc_retainBlock(stateCopy);
    if (v11)
    {
      do
      {
        v12 = objc_retainBlock(v11);
        state = v10->_state;
        v10->_state = v12;

        v14 = v10->_category;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = (*(v10->_state + 2))();
          *buf = 138412290;
          v21 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "initial, enter(%@)", buf, 0xCu);
        }

        v16 = (*(v10->_state + 2))();
        v17 = (*(v11 + 2))(v11, 0, 0, 0);

        v11 = v17;
      }

      while (v17);
    }
  }

  return v10;
}

- (void)signal:(unint64_t)signal data:(const void *)data
{
  v7 = objc_retainBlock(self->_state);
  if (v7)
  {
    while (1)
    {
      v41 = v7;
      v8 = (*(v7 + 2))(v7, 3, signal, 0);
      if (v8)
      {
        break;
      }

      v9 = v41[2](v41, 2, 0, 0);

      v7 = v9;
      if (!v9)
      {
        return;
      }
    }

    if (v8 == v41)
    {
      v38 = (v41[2])();
    }

    else
    {
      v39 = v8;
      v10 = +[NSMutableArray array];
      v40 = +[NSMutableArray array];
      v11 = objc_retainBlock(self->_state);
      if (v11)
      {
        v12 = v11;
        do
        {
          v13 = objc_retainBlock(v12);
          [v10 addObject:v13];

          v14 = v12[2](v12, 2, 0, 0);

          v12 = v14;
        }

        while (v14);
      }

      v15 = objc_retainBlock(v8);
      if (v15)
      {
        v16 = v15;
        do
        {
          v17 = objc_retainBlock(v16);
          [v40 addObject:v17];

          v18 = v16[2](v16, 2, 0, 0);

          v16 = v18;
        }

        while (v18);
      }

      while (1)
      {
        lastObject = [v10 lastObject];
        if (!lastObject)
        {
          break;
        }

        lastObject2 = [v40 lastObject];

        if (!lastObject2)
        {
          break;
        }

        lastObject3 = [v10 lastObject];
        lastObject4 = [v40 lastObject];

        if (lastObject3 != lastObject4)
        {
          break;
        }

        [v10 removeLastObject];
        [v40 removeLastObject];
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = v10;
      v23 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v23)
      {
        v24 = *v44;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v44 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v43 + 1) + 8 * i);
            v27 = self->_category;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = (*(v26 + 16))(v26, 1, 0, 0);
              *buf = 134218242;
              signalCopy2 = signal;
              v49 = 2112;
              v50 = v28;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "event %llu, exit(%@)", buf, 0x16u);
            }

            v29 = (*(v26 + 16))(v26, 6, signal, data);
          }

          v23 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
        }

        while (v23);
      }

      v30 = (v41[2])(v41, 5, signal, data);
      reverseObjectEnumerator = [v40 reverseObjectEnumerator];
      while (1)
      {
        nextObject = [reverseObjectEnumerator nextObject];
        if (!nextObject)
        {
          break;
        }

        v33 = self->_category;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = nextObject[2](nextObject, 1, 0, 0);
          *buf = 134218242;
          signalCopy2 = signal;
          v49 = 2112;
          v50 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "event %llu, enter(%@)", buf, 0x16u);
        }

        v35 = (nextObject[2])(nextObject, 4, signal, data);
      }

      v36 = objc_retainBlock(v39);
      state = self->_state;
      self->_state = v36;

      v8 = v39;
    }
  }
}

@end