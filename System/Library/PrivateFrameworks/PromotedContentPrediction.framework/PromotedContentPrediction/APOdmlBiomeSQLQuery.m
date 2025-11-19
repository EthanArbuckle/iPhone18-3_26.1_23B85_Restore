@interface APOdmlBiomeSQLQuery
- (APOdmlBiomeSQLQuery)init;
- (id)getRowsFromResults:(id)a3;
- (id)query:(id)a3 startDate:(id)a4 endDate:(id)a5;
@end

@implementation APOdmlBiomeSQLQuery

- (APOdmlBiomeSQLQuery)init
{
  v6.receiver = self;
  v6.super_class = APOdmlBiomeSQLQuery;
  v2 = [(APOdmlBiomeSQLQuery *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF1A88]);
    objc_msgSend_setDatabase_(v2, v4, v3);
  }

  return v2;
}

- (id)query:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v13 = objc_msgSend_database(self, v11, v12);
  v15 = objc_msgSend_formatEventName_(self, v14, v10);

  if (v8 && v9)
  {
    objc_msgSend_timeIntervalSince1970(v8, v16, v17);
    v19 = v18;
    objc_msgSend_timeIntervalSince1970(v9, v20, v21);
    v24 = objc_msgSend_executeQuery_(v13, v22, @"SELECT * FROM %@ WHERE eventTimestamp > %f AND eventTimestamp < %f", v15, v19, v23);

    v27 = objc_msgSend_error(v24, v25, v26);

    if (v27)
    {
      v29 = OdmlLogForCategory(2uLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v24 = objc_msgSend_executeQuery_(v13, v16, @"SELECT * FROM %@", v15);

    v34 = objc_msgSend_error(v24, v32, v33);

    if (v34)
    {
      v29 = OdmlLogForCategory(2uLL);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:
        v35 = objc_msgSend_error(v24, v30, v31);
        *buf = 138412290;
        v40 = v35;
        _os_log_impl(&dword_260ECB000, v29, OS_LOG_TYPE_DEFAULT, "Biome SQL query error: %@", buf, 0xCu);
      }

LABEL_9:

      v36 = 0;
      goto LABEL_11;
    }
  }

  v36 = objc_msgSend_getRowsFromResults_(self, v28, v24);
LABEL_11:

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)getRowsFromResults:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend_array(MEMORY[0x277CBEB18], v4, v5);
  if (objc_msgSend_next(v3, v7, v8))
  {
    do
    {
      v11 = objc_msgSend_row(v3, v9, v10);
      objc_msgSend_addObject_(v6, v12, v11);
    }

    while ((objc_msgSend_next(v3, v13, v14) & 1) != 0);
  }

  v15 = objc_msgSend_copy(v6, v9, v10);

  return v15;
}

@end