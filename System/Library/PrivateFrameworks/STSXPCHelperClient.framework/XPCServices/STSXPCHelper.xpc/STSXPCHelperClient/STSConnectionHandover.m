@interface STSConnectionHandover
+ (id)_connectionHandoverWithNdefMessage:(id)a3;
+ (id)_createNdefWithType:(int64_t)a3 alternativeCarriers:(id)a4 errorRecord:(id)a5;
+ (id)connectionHandoverWithData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (STSConnectionHandover)init;
- (STSConnectionHandover)initWithCoder:(id)a3;
- (void)addAlternativeCarrier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSConnectionHandover

- (void)encodeWithCoder:(id)a3
{
  majorVersion = self->_majorVersion;
  v5 = a3;
  [v5 encodeInteger:majorVersion forKey:@"majorVersion"];
  [v5 encodeInteger:self->_minorVersion forKey:@"minorVersion"];
  [v5 encodeObject:self->_alternativeCarriers forKey:@"alternativeCarriers"];
}

- (STSConnectionHandover)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = STSConnectionHandover;
  v5 = [(STSConnectionHandover *)&v14 init];
  if (v5)
  {
    v5->_majorVersion = [v4 decodeIntForKey:@"majorVersion"];
    v5->_minorVersion = [v4 decodeIntForKey:@"minorVersion"];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v6, v7, v8, v9, objc_opt_class(), 0];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"alternativeCarriers"];
    alternativeCarriers = v5->_alternativeCarriers;
    v5->_alternativeCarriers = v11;
  }

  return v5;
}

- (STSConnectionHandover)init
{
  v6.receiver = self;
  v6.super_class = STSConnectionHandover;
  v2 = [(STSConnectionHandover *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    alternativeCarriers = v2->_alternativeCarriers;
    v2->_alternativeCarriers = v3;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    majorVersion = self->_majorVersion;
    if (majorVersion == [(STSConnectionHandover *)v6 majorVersion]|| (minorVersion = self->_minorVersion, minorVersion == [(STSConnectionHandover *)v6 minorVersion]))
    {
      alternativeCarriers = self->_alternativeCarriers;
      v10 = [(STSConnectionHandover *)v6 alternativeCarriers];
      v11 = [(NSMutableArray *)alternativeCarriers isEqualToArray:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)addAlternativeCarrier:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_alternativeCarriers addObject:?];
  }
}

+ (id)connectionHandoverWithData:(id)a3
{
  v4 = [STSNDEFRecord ndefRecordsWithData:a3];
  v8 = v4;
  if (v4)
  {
    sub_100024938(OS_LOG_TYPE_INFO, 0, "+[STSConnectionHandover connectionHandoverWithData:]", 154, @"NDEF:%@", v5, v6, v7, v4);
    v9 = [a1 _connectionHandoverWithNdefMessage:v8];
  }

  else
  {
    sub_100024938(OS_LOG_TYPE_ERROR, 0, "+[STSConnectionHandover connectionHandoverWithData:]", 148, @"Not a valid NDEF message", v5, v6, v7, v11);
    v9 = 0;
  }

  return v9;
}

+ (id)_connectionHandoverWithNdefMessage:(id)a3
{
  v3 = a3;
  v100 = +[NSMutableArray array];
  v92 = +[NSMutableDictionary dictionary];
  v4 = +[NSMutableDictionary dictionary];
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v114 objects:v121 count:16];
  if (v6)
  {
    v7 = v6;
    obj = v5;
    v93 = 0;
    LOBYTE(v8) = 0;
    v101 = 0;
    v96 = 0;
    v9 = *v115;
    v87 = *v115;
    while (1)
    {
      v10 = 0;
      v89 = v7;
      do
      {
        if (*v115 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v114 + 1) + 8 * v10);
        v12 = [v11 isHandoverSelectRecord];
        v13 = [v11 isHandoverRequestRecord];
        v98 = v10;
        if ((v12 & 1) != 0 || v13)
        {
          if (v96)
          {
            sub_100024938(OS_LOG_TYPE_ERROR, 0, "+[STSConnectionHandover _connectionHandoverWithNdefMessage:]", 174, @"Previous Hr/Hs found.  Invalid handover NDEF", v14, v15, v16, v86);
            v5 = obj;

            goto LABEL_71;
          }

          v29 = [v11 payload];
          v30 = [v29 bytes];

          v31 = [v11 payload];
          v32 = [v31 length];

          v94 = *v30;
          v33 = [NSData dataWithBytes:v30 + 1 length:v32 - 1];
          v34 = [STSNDEFRecord ndefRecordsWithData:v33];

          v35 = [v34 count];
          v96 = v35 != 0;
          if (!v35)
          {
            sub_100024938(OS_LOG_TYPE_ERROR, 0, "+[STSConnectionHandover _connectionHandoverWithNdefMessage:]", 193, @"Missing local records in Hr/Hs record", v36, v37, v38, v86);
          }

          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v39 = v34;
          v40 = [v39 countByEnumeratingWithState:&v110 objects:v120 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v111;
            do
            {
              v43 = 0;
              do
              {
                if (*v111 != v42)
                {
                  objc_enumerationMutation(v39);
                }

                v44 = *(*(&v110 + 1) + 8 * v43);
                if ([v44 typeNameFormat] == 1)
                {
                  if (([v44 isCollisionResolutionRecord] & 1) == 0)
                  {
                    if ([v44 isAlternativeCarrierRecord])
                    {
                      [v100 addObject:v44];
                    }

                    else if (([v44 isHandoverSelectErrorRecord] & v12) == 1)
                    {
                      v49 = v44;

                      v101 = v49;
                    }

                    else
                    {
                      v50 = [NSString alloc];
                      v51 = [v44 type];
                      v52 = [v50 initWithData:v51 encoding:4];

                      sub_100024938(OS_LOG_TYPE_DEFAULT, 0, "+[STSConnectionHandover _connectionHandoverWithNdefMessage:]", 211, @"Unsupported type:%@", v53, v54, v55, v52);
                    }
                  }
                }

                else
                {
                  v45 = [v44 typeNameFormat];
                  sub_100024938(OS_LOG_TYPE_DEFAULT, 0, "+[STSConnectionHandover _connectionHandoverWithNdefMessage:]", 200, @"Unsupported record TNF:%d", v46, v47, v48, v45);
                }

                v43 = v43 + 1;
              }

              while (v41 != v43);
              v56 = [v39 countByEnumeratingWithState:&v110 objects:v120 count:16];
              v41 = v56;
            }

            while (v56);
          }

          v8 = v94 >> 4;
          v93 = v94 & 0xF;

          v9 = v87;
          v7 = v89;
        }

        else
        {
          if (([v11 isWiFiAwareConfigurationRecord] & 1) == 0 && (objc_msgSend(v11, "isBluetoothLEConfigurationRecord") & 1) == 0 && !objc_msgSend(v11, "isNfcConfigurationRecord"))
          {
            v57 = [v11 identifier];

            if (v57)
            {
              v27 = [v11 identifier];
              v28 = v4;
              goto LABEL_15;
            }

            v58 = [NSString alloc];
            v59 = [v11 type];
            v27 = [v58 initWithData:v59 encoding:4];

            v60 = [v11 typeNameFormat];
            sub_100024938(OS_LOG_TYPE_DEFAULT, 0, "+[STSConnectionHandover _connectionHandoverWithNdefMessage:]", 229, @"Unsupported record TNF=%d,type=%@,id=nil", v61, v62, v63, v60);
LABEL_16:

            goto LABEL_38;
          }

          v17 = [v11 identifier];

          if (v17)
          {
            v21 = [v11 identifier];
            v22 = [v92 objectForKey:v21];

            if (v22)
            {
              v23 = [v11 identifier];
              sub_100024938(OS_LOG_TYPE_INFO, 0, "+[STSConnectionHandover _connectionHandoverWithNdefMessage:]", 219, @"Carrier config %@ exists", v24, v25, v26, v23);
            }

            v27 = [v11 identifier];
            v28 = v92;
LABEL_15:
            [v28 setObject:v11 forKey:v27];
            goto LABEL_16;
          }

          sub_100024938(OS_LOG_TYPE_INFO, 0, "+[STSConnectionHandover _connectionHandoverWithNdefMessage:]", 223, @"Missing ID", v18, v19, v20, v86);
        }

LABEL_38:
        v10 = v98 + 1;
      }

      while ((v98 + 1) != v7);
      v64 = [obj countByEnumeratingWithState:&v114 objects:v121 count:16];
      v7 = v64;
      if (!v64)
      {
        v5 = obj;

        if (!v96)
        {
          goto LABEL_70;
        }

        v68 = objc_alloc_init(STSConnectionHandover);
        v68->_majorVersion = v8;
        v68->_minorVersion = v93;
        v90 = v68;
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v88 = v100;
        v97 = [v88 countByEnumeratingWithState:&v106 objects:v119 count:16];
        if (v97)
        {
          v95 = *v107;
          do
          {
            for (i = 0; i != v97; i = i + 1)
            {
              if (*v107 != v95)
              {
                objc_enumerationMutation(v88);
              }

              v70 = *(*(&v106 + 1) + 8 * i);
              v71 = [v70 getCarrierDataReferenceFromAlternativeCarrierRecord];
              if (v71)
              {
                v99 = [v92 objectForKeyedSubscript:v71];
                v72 = +[NSMutableArray array];
                v73 = [v70 getAuxiliaryDataReferencesFromAlternativeCarrierRecord];
                v102 = 0u;
                v103 = 0u;
                v104 = 0u;
                v105 = 0u;
                v74 = [v73 countByEnumeratingWithState:&v102 objects:v118 count:16];
                if (v74)
                {
                  v75 = v74;
                  v76 = *v103;
                  do
                  {
                    for (j = 0; j != v75; j = j + 1)
                    {
                      if (*v103 != v76)
                      {
                        objc_enumerationMutation(v73);
                      }

                      v78 = [v4 objectForKeyedSubscript:*(*(&v102 + 1) + 8 * j)];
                      if (v78)
                      {
                        [v72 addObject:v78];
                      }
                    }

                    v75 = [v73 countByEnumeratingWithState:&v102 objects:v118 count:16];
                  }

                  while (v75);
                }

                v79 = [[STSCHNdefRecordBundle alloc] initWithAlternativeRecord:v70 configurationRecord:v99 auxiliaryRecords:v72 errorRecord:v101];
                v80 = [v99 isWiFiAwareConfigurationRecord];
                v81 = &off_100058598;
                if (v80 & 1) != 0 || (v82 = [v99 isBluetoothLEConfigurationRecord], v81 = off_100058588, (v82) || (v83 = objc_msgSend(v99, "isNfcConfigurationRecord"), v81 = off_100058590, v83))
                {
                  v84 = [(__objc2_class *)*v81 connectionHandoverAlternativeCarrierWithBundle:v79];
                  [(STSConnectionHandover *)v90 addAlternativeCarrier:v84];
                }
              }
            }

            v97 = [v88 countByEnumeratingWithState:&v106 objects:v119 count:16];
          }

          while (v97);
        }

        v5 = obj;
        goto LABEL_72;
      }
    }
  }

  v101 = 0;
LABEL_70:
  sub_100024938(OS_LOG_TYPE_INFO, 0, "+[STSConnectionHandover _connectionHandoverWithNdefMessage:]", 234, @"No Hr record found", v65, v66, v67, v86);
LABEL_71:
  v90 = 0;
LABEL_72:

  return v90;
}

+ (id)_createNdefWithType:(int64_t)a3 alternativeCarriers:(id)a4 errorRecord:(id)a5
{
  v7 = a4;
  v31 = a5;
  if (a3)
  {
    v8 = "Hs";
  }

  else
  {
    v8 = "Hr";
  }

  v30 = [NSData dataWithBytes:v8 length:2];
  v37 = 21;
  v9 = +[NSMutableData data];
  [v9 appendBytes:&v37 length:1];
  v10 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  if (!a3)
  {
    arc4random_buf(__buf, 2uLL);
    v12 = [STSNDEFRecord alloc];
    v13 = [NSData dataWithBytes:"cr" length:2];
    v14 = [NSData dataWithBytes:__buf length:2];
    v15 = [(STSNDEFRecord *)v12 initWithFormat:209 type:v13 identifier:0 payload:v14];

    [v10 addObject:v15];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v32 + 1) + 8 * i) createNdefRecordBundle];
        v22 = [v21 alternativeRecord];
        [v10 addObject:v22];

        v23 = [v21 configurationRecord];
        [v11 addObject:v23];

        v24 = [v21 auxiliaryRecords];
        [v11 addObjectsFromArray:v24];
      }

      v18 = [v16 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v18);
  }

  if (a3 == 1 && v31)
  {
    [v10 addObject:v31];
  }

  v25 = [NSData dataWithSTSNDEFRecords:v10];
  [v9 appendData:v25];

  v26 = [[STSNDEFRecord alloc] initWithFormat:1 type:v30 identifier:0 payload:v9];
  v27 = objc_opt_new();
  [v27 addObject:v26];
  [v27 addObjectsFromArray:v11];
  v28 = [NSData dataWithSTSNDEFRecords:v27];

  return v28;
}

@end