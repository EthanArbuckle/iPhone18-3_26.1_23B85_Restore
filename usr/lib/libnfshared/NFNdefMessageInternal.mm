@interface NFNdefMessageInternal
+ (id)dataFromNDEFMessage:(id)message;
+ (id)decodeFromNDEFMessage:(id)message;
- (NFNdefMessageInternal)init;
- (NFNdefMessageInternal)initWithCoder:(id)coder;
- (NFNdefMessageInternal)initWithData:(id)data;
- (NFNdefMessageInternal)initWithNDEFMessage:(id)message;
- (NSString)description;
@end

@implementation NFNdefMessageInternal

- (NFNdefMessageInternal)init
{
  v6.receiver = self;
  v6.super_class = NFNdefMessageInternal;
  v2 = [(NFNdefMessageInternal *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    records = v2->_records;
    v2->_records = v3;
  }

  return v2;
}

- (NFNdefMessageInternal)initWithData:(id)data
{
  dataCopy = data;
  dataCopy2 = data;
  v9 = objc_msgSend_bytes(dataCopy2, v7, v8);
  v12 = objc_msgSend_length(dataCopy2, v10, v11);

  return objc_msgSend_initWithBytes_length_(self, v13, v9, v12);
}

- (NFNdefMessageInternal)initWithNDEFMessage:(id)message
{
  v32 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v30.receiver = self;
  v30.super_class = NFNdefMessageInternal;
  v5 = [(NFNdefMessageInternal *)&v30 init];
  if (v5)
  {
    v6 = objc_opt_new();
    records = v5->_records;
    v5->_records = v6;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = objc_msgSend_records(messageCopy, v8, v9, 0);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v26, v31, 16);
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v26 + 1) + 8 * v15);
          v17 = [NFNdefRecordInternal alloc];
          v19 = objc_msgSend_initWithNDEFRecord_(v17, v18, v16);
          if (!v19)
          {

            v23 = 0;
            goto LABEL_13;
          }

          v21 = v19;
          objc_msgSend_addObject_(v5->_records, v20, v19);

          ++v15;
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v22, &v26, v31, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }
  }

  v23 = v5;
LABEL_13:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (id)dataFromNDEFMessage:(id)message
{
  messageCopy = message;
  v4 = objc_opt_new();
  v7 = objc_msgSend_records(messageCopy, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);

  if (v10)
  {
    v13 = 0;
    do
    {
      v14 = objc_msgSend_records(messageCopy, v11, v12);
      v16 = objc_msgSend_objectAtIndex_(v14, v15, v13);

      objc_msgSend_setMessageBegin_(v16, v17, v13 == 0);
      v20 = objc_msgSend_records(messageCopy, v18, v19);
      v23 = v13 == objc_msgSend_count(v20, v21, v22) - 1;
      objc_msgSend_setMessageEnd_(v16, v24, v23);

      v27 = objc_msgSend_asData(v16, v25, v26);
      objc_msgSend_appendData_(v4, v28, v27);

      ++v13;
      v31 = objc_msgSend_records(messageCopy, v29, v30);
      v34 = objc_msgSend_count(v31, v32, v33);
    }

    while (v13 < v34);
  }

  return v4;
}

+ (id)decodeFromNDEFMessage:(id)message
{
  messageCopy = message;
  v4 = objc_opt_new();
  v7 = objc_msgSend_records(messageCopy, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);

  if (v10)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = objc_msgSend_records(messageCopy, v11, v12);
      v17 = objc_msgSend_objectAtIndex_(v15, v16, v13);

      if (objc_msgSend_chunked(v17, v18, v19))
      {
        v22 = objc_opt_new();
        v25 = objc_msgSend_header(v17, v23, v24);
        objc_msgSend_setHeader_(v22, v26, v25);
        objc_msgSend_setChunked_(v22, v27, 0);
        objc_msgSend_setMessageEnd_(v22, v28, 1);
        v31 = objc_msgSend_typeNameFormat(v17, v29, v30);
        objc_msgSend_setTypeNameFormat_(v22, v32, v31);
        v35 = objc_msgSend_type(v17, v33, v34);
        objc_msgSend_setType_(v22, v36, v35);

        v39 = objc_msgSend_identifier(v17, v37, v38);
        objc_msgSend_setIdentifier_(v22, v40, v39);

        v41 = objc_alloc(MEMORY[0x277CBEB28]);
        v44 = objc_msgSend_payload(v17, v42, v43);
        v46 = objc_msgSend_initWithData_(v41, v45, v44);

        v49 = v14 + 1;
        while (1)
        {
          v50 = v49;
          v51 = objc_msgSend_records(messageCopy, v47, v48);
          v54 = objc_msgSend_count(v51, v52, v53);

          if (v54 <= v50)
          {
            break;
          }

          v56 = objc_msgSend_records(messageCopy, v47, v55);
          v58 = objc_msgSend_objectAtIndex_(v56, v57, v50);

          v61 = objc_msgSend_payload(v58, v59, v60);
          objc_msgSend_appendData_(v46, v62, v61);

          v65 = objc_msgSend_chunked(v58, v63, v64);
          v49 = v50 + 1;
          v17 = v58;
          if ((v65 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v58 = v17;
LABEL_12:
        objc_msgSend_setPayload_(v22, v47, v46);
        v71 = objc_msgSend_decode(v22, v69, v70);
        if (objc_msgSend_length(v71, v72, v73))
        {
          objc_msgSend_appendFormat_(v4, v74, @"%@\n", v71);
        }

        v14 = v50;
      }

      else
      {
        v22 = objc_msgSend_decode(v17, v20, v21);
        if (objc_msgSend_length(v22, v66, v67))
        {
          objc_msgSend_appendFormat_(v4, v68, @"%@\n", v22);
        }

        v58 = v17;
      }

      v13 = ++v14;
      v77 = objc_msgSend_records(messageCopy, v75, v76);
      v80 = objc_msgSend_count(v77, v78, v79);
    }

    while (v80 > v14);
  }

  return v4;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v8.receiver = self;
  v8.super_class = NFNdefMessageInternal;
  v4 = [(NFNdefMessageInternal *)&v8 description];
  v6 = objc_msgSend_initWithFormat_(v3, v5, @"%@ { records %@ }", v4, self->_records);

  return v6;
}

- (NFNdefMessageInternal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = NFNdefMessageInternal;
  v5 = [(NFNdefMessageInternal *)&v14 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_coder_decodeArrayOfClass_forKey_(NFNSCheckedDecoder, v7, coderCopy, v6, @"records");
    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    v11 = objc_msgSend_initWithArray_(v9, v10, v8);
    records = v5->_records;
    v5->_records = v11;
  }

  return v5;
}

@end