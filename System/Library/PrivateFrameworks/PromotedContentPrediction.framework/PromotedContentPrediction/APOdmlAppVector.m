@interface APOdmlAppVector
- (APOdmlAppVector)initWithString:(id)a3 version:(id)a4;
- (APOdmlAppVector)initWithVersion:(id)a3 header:(APOdmlAppVectorHeader *)a4 floats:(float *)a5;
- (id)data;
- (id)description;
@end

@implementation APOdmlAppVector

- (APOdmlAppVector)initWithVersion:(id)a3 header:(APOdmlAppVectorHeader *)a4 floats:(float *)a5
{
  v5 = self;
  v17 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    var2 = a4->var2;
    v14.receiver = self;
    v14.super_class = APOdmlAppVector;
    v8 = [(APOdmlVector *)&v14 initWithVersion:a3 length:var2 floats:a5];
    if (v8)
    {
      v8->_adamID = a4->var0;
    }

    v5 = v8;
    v9 = v5;
  }

  else
  {
    v10 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = objc_opt_class();
      v11 = v16;
      _os_log_impl(&dword_260ECB000, v10, OS_LOG_TYPE_DEFAULT, "[%@] Attempt to construct APOdmlAppVector without a header.", buf, 0xCu);
    }

    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (APOdmlAppVector)initWithString:(id)a3 version:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v8 = a4;
  if (v6)
  {
    v9 = objc_msgSend_componentsSeparatedByString_(v6, v7, @"\t");
    v12 = objc_msgSend_firstObject(v9, v10, v11);
    v15 = objc_msgSend_integerValue(v12, v13, v14);

    if (objc_msgSend_count(v9, v16, v17) == 2)
    {
      v58 = v8;
      v56 = v15;
      if (qword_27FE60370 != -1)
      {
        sub_260EF80C4();
      }

      v19 = objc_msgSend_objectAtIndex_(v9, v18, 1);
      v22 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v20, v21);
      v24 = objc_msgSend_stringByTrimmingCharactersInSet_(v19, v23, v22);

      v27 = objc_msgSend_array(MEMORY[0x277CBEB18], v25, v26);
      v57 = v24;
      v29 = objc_msgSend_componentsSeparatedByString_(v24, v28, @",");
      if (objc_msgSend_count(v29, v30, v31))
      {
        v33 = 0;
        while (1)
        {
          v34 = objc_msgSend_objectAtIndex_(v29, v32, v33);
          v36 = objc_msgSend_numberFromString_(qword_27FE60368, v35, v34);
          if (!v36)
          {
            break;
          }

          v39 = v36;
          v40 = objc_msgSend_numberFromString_(qword_27FE60368, v37, v34);
          objc_msgSend_addObject_(v27, v41, v40);

          if (++v33 >= objc_msgSend_count(v29, v42, v43))
          {
            goto LABEL_9;
          }
        }

        objc_msgSend_doubleValue(v34, v37, v38);
        v51 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v49, @"The provided string (%@) for doubleValue %.7lf at index %lu was not able to be converted to a number. Full line:\n%@", v34, v50, v33, v6);
        v52 = OdmlLogForCategory(2uLL);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v61 = objc_opt_class();
          v62 = 2112;
          v63 = v51;
          v53 = v61;
          _os_log_impl(&dword_260ECB000, v52, OS_LOG_TYPE_ERROR, "[%@] ERROR: %@", buf, 0x16u);
        }

        APOdmlSimulateCrash(2880291038, v51, 0);
        v45 = 0;
        v8 = v58;
      }

      else
      {
LABEL_9:
        v59.receiver = self;
        v59.super_class = APOdmlAppVector;
        v8 = v58;
        v44 = [(APOdmlVector *)&v59 initWithVersion:v58 andArray:v27];
        if (v44)
        {
          v44->_adamID = v56;
        }

        self = v44;
        v45 = self;
      }

      v47 = v57;
    }

    else
    {
      v47 = OdmlLogForCategory(2uLL);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v61 = objc_opt_class();
        v62 = 2112;
        v63 = v6;
        v48 = v61;
        _os_log_impl(&dword_260ECB000, v47, OS_LOG_TYPE_ERROR, "[%@]: ERROR: The line does not conform to our expectations: %@", buf, 0x16u);
      }

      v45 = 0;
    }
  }

  else
  {
    v9 = OdmlLogForCategory(2uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v61 = objc_opt_class();
      v62 = 2112;
      v63 = 0;
      v46 = v61;
      _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_ERROR, "[%@]: ERROR: nil datastring passed into parser: %@.", buf, 0x16u);
    }

    v45 = 0;
  }

  v54 = *MEMORY[0x277D85DE8];
  return v45;
}

- (id)data
{
  v4 = objc_msgSend_length(self, a2, v2);
  v6 = objc_msgSend_dataWithCapacity_(MEMORY[0x277CBEB28], v5, (4 * v4 + 16));
  v17 = 1447253074;
  v16 = objc_msgSend_adamID(self, v7, v8);
  v18 = objc_msgSend_length(self, v9, v10);
  objc_msgSend_appendBytes_length_(v6, v11, &v16, 16);
  v15.receiver = self;
  v15.super_class = APOdmlAppVector;
  v12 = [(APOdmlVector *)&v15 data];
  objc_msgSend_appendData_(v6, v13, v12);

  return v6;
}

- (id)description
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_arrayOfNumbers(self, a2, v2);
  v18[0] = @"adamID";
  v5 = MEMORY[0x277CCACA8];
  v8 = objc_msgSend_adamID(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v5, v9, @"%llu", v8);
  v18[1] = @"vector";
  v19[0] = v10;
  v19[1] = v4;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v19, v18, 2);

  v15 = objc_msgSend_description(v12, v13, v14);

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end