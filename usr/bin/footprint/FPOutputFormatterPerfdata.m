@interface FPOutputFormatterPerfdata
- (void)close;
- (void)endAtTime:(id)a3;
- (void)printGlobalAuxData:(id)a3;
- (void)printProcessAuxData:(id)a3 forProcess:(id)a4;
- (void)printProcessCategories:(id)a3 total:(id *)a4 forProcess:(id)a5;
- (void)printProcessTotal:(id)a3 forProcess:(id)a4;
- (void)printSummaryCategories:(id)a3 total:(id *)a4 hadErrors:(BOOL)a5;
@end

@implementation FPOutputFormatterPerfdata

- (void)printProcessTotal:(id)a3 forProcess:(id)a4
{
  writer = self->_writer;
  v7 = a4;
  [a3 unsignedLongLongValue];
  pdwriter_new_value();
  v8 = self->_writer;
  v9 = [v7 name];
  [v9 UTF8String];
  pdwriter_record_variable_str();

  v10 = self->_writer;
  v11 = [v7 name];
  [v11 UTF8String];
  pdwriter_record_variable_str();

  LODWORD(v10) = [v7 pid];
  snprintf(__str, 0xBuLL, "%d", v10);
  v12 = self->_writer;
  pdwriter_record_label_str();
  v13 = self->_writer;
  pdwriter_record_tag();
}

- (void)printProcessCategories:(id)a3 total:(id *)a4 forProcess:(id)a5
{
  v10 = a3;
  v6 = objc_alloc_init(NSMutableDictionary);
  currentProcessTotals = self->_currentProcessTotals;
  self->_currentProcessTotals = v6;

  v8 = objc_alloc_init(NSMutableDictionary);
  currentProcessAuxDatas = self->_currentProcessAuxDatas;
  self->_currentProcessAuxDatas = v8;

  sub_10001732C(self, v10);
}

- (void)printProcessAuxData:(id)a3 forProcess:(id)a4
{
  v24 = a3;
  v6 = [a4 name];
  v7 = [v6 UTF8String];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_currentProcessTotals;
  v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v26 = *v28;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        v12 = [(NSMutableDictionary *)self->_currentProcessTotals objectForKeyedSubscript:v11];
        v13 = [(NSMutableDictionary *)self->_currentProcessAuxDatas objectForKeyedSubscript:v11];
        v14 = v13;
        writer = self->_writer;
        if (v13)
        {
          v16 = *(v13 + 16);
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          v11 = v16;
        }

        v17 = v11;
        v18 = v16;
        [v11 UTF8String];
        [v12 unsignedLongLongValue];
        pdwriter_new_value();

        v19 = self->_writer;
        pdwriter_record_variable_str();
        v20 = self->_writer;
        pdwriter_record_variable_str();
        if (v14)
        {
          sub_1000177D4(self, v14[1], 0);
        }

        v10 = v10 + 1;
      }

      while (v9 != v10);
      v21 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      v9 = v21;
    }

    while (v21);
  }

  currentProcessTotals = self->_currentProcessTotals;
  self->_currentProcessTotals = 0;

  currentProcessAuxDatas = self->_currentProcessAuxDatas;
  self->_currentProcessAuxDatas = 0;

  sub_1000179A8(self, v24, "aux_data", v7, 0);
}

- (void)printSummaryCategories:(id)a3 total:(id *)a4 hadErrors:(BOOL)a5
{
  v8 = a3;
  writer = self->_writer;
  pdwriter_new_group();
  v10 = self->_writer;
  v11 = a4->var1 + a4->var0;
  pdwriter_new_value();
  v12 = self->_writer;
  pdwriter_record_variable_str();
  v13 = self->_writer;
  pdwriter_record_variable_str();
  v14 = self->_writer;
  pdwriter_record_tag();
  if (v8)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v8;
    v26 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v26)
    {
      goto LABEL_18;
    }

    v25 = *v29;
    while (1)
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [obj objectForKeyedSubscript:*(*(&v28 + 1) + 8 * i)];
        v17 = sub_10001BCE8(v16);
        if (v17)
        {
          v18 = sub_10001BD88(v16);
          v19 = self->_writer;
          if (v18)
          {
            v20 = v18;
            v21 = 0;
            goto LABEL_12;
          }
        }

        else
        {
          v22 = self->_writer;
        }

        v18 = sub_10001BC9C(v16);
        v5 = v18;
        v20 = 0;
        v21 = 1;
LABEL_12:
        [v18 UTF8String];
        [v16 totalDirtySize];
        [v16 totalSwappedSize];
        pdwriter_new_value();
        if (v21)
        {
        }

        v23 = self->_writer;
        pdwriter_record_variable_str();
        v24 = self->_writer;
        pdwriter_record_variable_str();
        if (v17)
        {
          sub_1000177D4(self, v17, 0);
        }
      }

      v26 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (!v26)
      {
LABEL_18:

        break;
      }
    }
  }
}

- (void)printGlobalAuxData:(id)a3
{
  if (a3)
  {
    sub_1000179A8(self, a3, "sys_aux_data", "ALL_PROCESSES", 1);
  }
}

- (void)endAtTime:(id)a3
{
  writer = self->_writer;
  sub_100016F9C(a3);
  sub_100016F9C(self->_startTime);
  pdwriter_new_value();
  v5 = self->_writer;

  pdwriter_record_tag();
}

- (void)close
{
  writer = self->_writer;
  pdwriter_close();
  self->_writer = 0;
}

@end